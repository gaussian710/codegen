import streamlit as st
import pandas as pd
import numpy as np
import os
from warnings import filterwarnings
filterwarnings('ignore')

import spacy
import torch
import sqlglot
import os, re, logging, pickle
import torch.nn.functional as F
from sentence_transformers import SentenceTransformer

from sqlglot import parse_one, exp, parse, table, column, to_identifier
from Levenshtein import distance
from sklearn.metrics.pairwise import cosine_similarity
import time
import requests
import json
from sqlalchemy import create_engine


OLLAMA_URL = 'http://127.0.0.1:9565'
class OLLAMA:
    def __init__(self, OLLAMA_URL, model_name):
        self.model_name = model_name
        self.ollama_url = OLLAMA_URL
        self.ollama_endpoint = '/api/generate'

    def run(self, prompt):
        data = {
            'model': self.model_name,
            'prompt': prompt,
            'stream': False
        }

        headers = {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        }

        resp = requests.post(url = f'{self.ollama_url}{self.ollama_endpoint}',
                             data = json.dumps(data),
                             headers = headers)
        query = resp.json()['response']
        print(f'JSON resp: {query}')
        return query


def getTableDescriptionSQLiteDB(output_fmt):
    engine = create_engine('sqlite:///mysqlitedb.db')
    with engine.connect() as conn, conn.begin():
        sqlite_master = pd.read_sql_query('SELECT * FROM sqlite_master', conn)
    sqlite_master['sql_fmt'] = sqlite_master['sql'].apply(lambda z: [x.strip().strip(',').rsplit(' ', maxsplit=1) for x in z.split('\n')[1:-1]])
    table_desc_dict = {}
    if output_fmt == 'df':
        for _, row in sqlite_master.iterrows():
            table_desc_dict[row['name']] = pd.DataFrame(columns=['name', 'type'], data=row['sql_fmt'])
            table_desc_dict[row['name']]['comment'] = np.nan
    elif output_fmt == 'ddl':
        for _, row in sqlite_master.iterrows():
            table_desc_dict[row['name']] = row['sql']
    return table_desc_dict

def getSQLiteDBQueryResult(query):
    engine = create_engine('sqlite:///mysqlitedb.db')
    try:
        with engine.connect() as conn, conn.begin():
            query_result = pd.read_sql_query(query, conn)
    except Exception as e:
        print(f'Error: {e}, {e.__traceback__}')
        query_result = pd.DataFrame()
    return query_result

def preprocess_table(question, schema, table_name):
    """
        This function generates embeddings for question and table schema and filters relevant columns for prompt creation
        following the the filteration components:
        1. Cosine embedding simlarity
        2. NLP token matching between columns and question
        3. Checking if question concerns date/time and adding date/time based columns
    """
    column_embs, column_descriptions_typed = generate_embeddings(table_name, schema)

    # 1a) get top k columns
    top_k_scores, top_k_indices = knn_(question, column_embs, top_k=8, threshold=0.0)
    topk_table_columns = {}
    table_column_names = set()

    for score, index in zip(top_k_scores, top_k_indices):
        table_name, column_info = column_descriptions_typed[index].split('.', 1)
        column_tuple = re.split(r',\s*(?![^()]*\))', column_info, maxsplit=2) # split only on commas outside parantheses
        if table_name not in topk_table_columns:
            topk_table_columns[table_name] = []
        topk_table_columns[table_name].append(column_tuple)
        table_column_names.add(f'{table_name}.{column_tuple[0]}')
    
    # 1b) get columns which match terms in question
    nlp = spacy.load('en_core_web_trf')
    question_doc = nlp(question)
    q_filtered_tokens = [token.lemma_.lower() for token in question_doc if not token.is_stop]
    q_alpha_tokens = [i for i in q_filtered_tokens if (len(i)>1 and i.isalpha())]

    TIME_TERMS = ['when', 'time', 'hour', 'minute', 'second',
                  'day', 'yesterday', 'today', 'tomorrow',
                  'week', 'month', 'year',
                  'duration', 'date']
    
    time_in_q = False

    nlp_ner = spacy.load('en_core_web_md')
    q_ner_doc = nlp_ner(question)
    ent_types = [w.label_ for w in q_ner_doc.ents]

    if 'DATE' in ent_types or 'TIME' in ent_types:
        time_in_q = True
    elif any([term in question.lower() for term in TIME_TERMS]):
        time_in_q = True
    elif set(q_alpha_tokens).intersection(set(TIME_TERMS)):
        time_in_q = True
    
    for col_details in column_descriptions_typed:
        table_name, column_info = col_details.split('.', 1)
        column_tuple = re.split(r',\s*(?![^()]*\))', column_info, maxsplit=2) # split only on commas outside parantheses
        col_name = column_tuple[0]

        if column_tuple in topk_table_columns[table_name]:
            continue

        # if question concerns time, add time-related columns
        if time_in_q and any([timetype in column_tuple[1] for timetype in ['DATE', 'TIMESTAMP']]):
            if table_name not in topk_table_columns:
                topk_table_columns[table_name] = []
            if column_tuple not in topk_table_columns[table_name]:
                topk_table_columns[table_name].append(column_tuple)
            table_column_names.add(f'{table_name}.{column_tuple[0]}')
            continue

        # if question-token-lemmas overlap with column-token-lemmas, add the column
        column_doc = nlp(col_name.replace('_', ' '))
        col_tokens = [token.lemma_.lower() for token in column_doc if not token.is_stop]
        col_alpha_tokens = [i for i in col_tokens if (len(i)>1 and i.isalpha())]
        if set(col_alpha_tokens).intersection(set(q_alpha_tokens)):
            if table_name not in topk_table_columns:
                topk_table_columns[table_name] = []
            if column_tuple not in topk_table_columns[table_name]:
                topk_table_columns[table_name].append(column_tuple)
            table_column_names.add(f'{table_name}.{column_tuple[0]}')

    # 4) format metadata string
    pruned_schema = format_topk_sql(topk_table_columns, shuffle=False)
    print(f'Pruned schema: {pruned_schema}')
    return pruned_schema

def generate_embeddings(table_name, schema):
    """
        Generate embedding for all the columns in the table schema
    """
    num_cols = 0
    TAB_DETAILS = []

    for col in sqlglot.parse_one(schema, dialect='snowflake').find_all(sqlglot.exp.ColumnDef):
        num_cols += 1
        TAB_DETAILS.append([table_name, col.alias_or_name, col.find(sqlglot.exp.DataType).__str__(), col.find(sqlglot.exp.ColumnConstraint)])
    
    encoder = SentenceTransformer('mixedbread-ai/mxbai-embed-large-v1', device='cpu')

    column_descriptions = []
    column_descriptions_typed = []

    for row in TAB_DETAILS:
        tab_name, col_name, col_dtype, col_desc = row
        col_str = f'{tab_name}.{col_name}:{col_desc}'
        col_str_typed = f'{tab_name}.{col_name},{col_dtype},{col_desc}'
        column_descriptions.append(col_str)
        column_descriptions_typed.append(col_str_typed)

    column_embs = encoder.encode(column_descriptions, convert_to_tensor=True, device='cpu')
    return column_embs, column_descriptions_typed

def knn_(query, all_embs, top_k, threshold):
    """
        Find top k similar embedding using cosine simiarlity
    """
    encoder = SentenceTransformer('mixedbread-ai/mxbai-embed-large-v1', device='cpu')
    query_emb = encoder.encode(query, convert_to_tensor=True, device='cpu').unsqueeze(0)
    similarity_scores = F.cosine_similarity(query_emb, all_embs)
    top_results = torch.nonzero(similarity_scores > threshold).squeeze()

    # if top_results is empty, return empty tensor
    if top_results.numel() == 0:
        return torch.tensor([]), torch.tensor([])
    
    # if only one result in resturned, convert to tensor
    elif top_results.numel() == 1:
        return torch.tensor([similarity_scores[top_results]]), torch.tensor([top_results])
    
    else:
        top_k_scores, top_k_indices = torch.topk(similarity_scores[top_results], k=min(top_k, top_results.numel()))
        return top_k_scores, top_results[top_k_indices]

def format_topk_sql(topk_table_columns, shuffle):
    """
        format top k columns back to original schema definition
    """
    if len(topk_table_columns) == 0:
        return ''
    
    md_str = '\n'
    # shuffle the keys in topk_table_columns
    table_names = list(topk_table_columns.keys())
    if shuffle:
        np.random.seed(0)
        np.random.shuffle(table_names)
    for table_name in table_names:
        columns_str = ''
        columns = topk_table_columns[table_name]
        if shuffle:
            np.random.seed(0)
            np.random.shuffle(columns)
        for column_tuple in columns:
            if len(column_tuple) > 2:
                columns_str += (
                    f'\n  {column_tuple[0]} {column_tuple[1]}, --{column_tuple[2]}'
                )
            else:
                columns_str += f'\n  {column_tuple[0]} {column_tuple[1]}, '
        md_str += f'CREATE TABLE {table_name} ({columns_str}\n);\n'
    md_str += '\n'
    return md_str

class queryPostprocessing:

    def __init__(self, query, table_metadata, embedding_model_name):
        self.query = query.split(';')[0]
        self.table_metadata = table_metadata
        self.col_mapping = {}
        self.table_mapping = {}
        self.embedding_model = SentenceTransformer(embedding_model_name, device='cpu')
    
    def getIncorrectColumns(self):
        """
            Get list of hallucinated or incorrect columns in the generated query
        """
        column_names_query = [col.name.lower() for col in parse_one(self.query).find_all(exp.Column)]
        column_names_query = np.unique(column_names_query).tolist()
        column_names_table = [name.lower() for name in self.table_metadata['columns']['name'].tolist()]

        matching_cols = list(set(column_names_query).intersection(set(column_names_table)))
        invalid_cols = list(set(column_names_query).difference(set(matching_cols)))
        available_set = list(set(column_names_table).difference(set(matching_cols)))

        # check if enough columns are available to substitute (3 columns in query but only 2 in table)
        for col in matching_cols:
            self.col_mapping[col] = col
        
        for col in invalid_cols:
            closest_col = self.embedding_distance(col, available_set)
            self.col_mapping[col] = closest_col
            available_set.remove(closest_col)
        
        return self.col_mapping
    
    def getIncorrectTables(self):
        """
            Get list of hallucinated or incorrect tables in the LLM generated query
        """
        ast = parse_one(self.query)
        table_list = []
        for tbl in ast.find_all(exp.Table):
            tbl.set('alias',None)
            table_name = tbl.sql()
            table_list.append(table_name)
        
        unique_tables = np.unique(table_list).tolist()
        if len(unique_tables):
            table_name = unique_tables[0]
            self.table_mapping[table_name] = self.table_metadata['table_name']
        
        return self.table_mapping
    
    def lv_distance(self, col, available_set):
        """
            Compute levenshtein distance metric between query columns and table schema columns to derive most similar column name to impute in the generated query
        """
        distances = []
        for column in available_set:
            d = distance(col, column)
            distances.append(d)
        most_similar_column = available_set[np.argmin(distances)]
        return most_similar_column
    
    def embedding_distance(self, col, available_set):
        """
            Compute cosine similiarty distance metric between query columns embeddings and table schema columns embeddings to derive most 
            similar column name to impute in the generated query
        """
        col_embedding = self.embedding_model.encode([col])
        available_set_embedding = self.embedding_model.encode(available_set)
        similarity_list = cosine_similarity(col_embedding, available_set_embedding)
        most_similar_column = available_set[np.argmax(similarity_list)]
        return most_similar_column
    
    def formatQuery(self):
        _ = self.getIncorrectColumns()
        _ = self.getIncorrectTables()
        updated_query = self.query
        
        for tbl, updated_tbl in self.table_mapping.items():
            updated_query = updated_query.replace(tbl, updated_tbl)
        
        for col, updated_col in self.col_mapping.items():
            updated_query = updated_query.replace(col, updated_col)
        
        return updated_query
    
    def formatQuerySQLglot(self):
        """
            Parse the LLM generated query to fetch incorrect column and table names, and impute most similar objects from table schema
        """
        _ = self.getIncorrectColumns()
        _ = self.getIncorrectTables()
        query_ast = parse_one(self.query)
        alias_cols = [al.alias for al in query_ast.find_all(exp.Alias)]

        for col in alias_cols:
            self.col_mapping.pop(col, None)
        
        for tbl in query_ast.find_all(exp.Table):
            table_alias = None
            if 'alias' in tbl.args:
                table_alias = tbl.alias
            tbl.set('alias',None)
            table_name = tbl.sql()
            if table_name in self.table_mapping:
                new_table = table(table=self.table_mapping[table_name], quoted=False, alias=table_alias)
                tbl.replace(new_table)
        
        for col in query_ast.find_all(exp.Column):
            column_name = col.this.this
            if column_name in self.col_mapping:
                col.this.set('this',self.col_mapping[column_name])
        
        return query_ast.sql(dialect='snowflake')


def getModelResult(schema, question, model_name, selected_table, table_columns):
    embedding_model_name = 'mixedbread-ai/mxbai-embed-large-v1'
    try:
        print('Running pre-processing...')
        pruned_schema = preprocess_table(question=question, schema=schema, table_name=selected_table)
        print(pruned_schema)
    except Exception as e:
        print('Pre-processing failed!')
        print(e, e.__traceback__)
        pruned_schema = schema
    
    prompt_template = """ 
                        ### Instructions:
                        Your task is to convert a question into a SQL query, given a Postgres database schema.
                        Adhere to these rules:
                        - **Deliberately go through the question and database schema word by word** to appropriately answer the question
                        - **Use Table Aliases** to prevent ambiguity. For example, `SELECT table1.col1, table2.col1 FROM table1 JOIN table2 ON table1.id = table2.id`.
                        - When creating a ratio, always cast the numerator as float
                        
                        ### Input:
                        Generate a SQL query that answers the question {question}.
                        This query will run on a database whose schema is represented in this string:
                        {db_schema}
                        
                        
                        ### Response:
                        Based on your instructions, here is the SQL query I have generated to answer the question {question}:
                        ```sql
                        """

    prompt = prompt_template.format(question=question, db_schema=pruned_schema)
    print(f'prompt: {prompt}')
    print(f'Querying {model_name}...')
    ollama = OLLAMA(OLLAMA_URL=OLLAMA_URL, model_name='sqlcoder')
    generated_query = ollama.run(prompt)

    if 'i do not know' in generated_query.lower():
        print('Failed to get SQL from model')
        return generated_query, prompt
    print(f'Done! Generated query: {generated_query}')

    print('Running post-processing...')
    try:
        qp = queryPostprocessing(generated_query, {'table_name':selected_table, 'columns':table_columns}, embedding_model_name)
        processed_query = qp.formatQuerySQLglot()
        processed_query = processed_query.replace('""', '"')
    except Exception as e:
        print('Post-processing failed!')
        print(e, e.__traceback__)
        processed_query = generated_query
    print(f'Done! Processed query: {processed_query}')
    return processed_query, prompt