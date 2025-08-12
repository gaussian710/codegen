SELECT DISTINCT T1.creation FROM department AS T1 JOIN management AS T2 ON T1.department_id  =  T2.department_id JOIN head AS T3 ON T2.head_id  =  T3.head_id WHERE T3.born_state  =  'Alabama'	department_management
SELECT T1.name ,  T1.num_employees FROM department AS T1 JOIN management AS T2 ON T1.department_id  =  T2.department_id WHERE T2.temporary_acting  =  'Yes'	department_management
SELECT DISTINCT T1.age FROM management AS T2 JOIN head AS T1 ON T1.head_id  =  T2.head_id WHERE T2.temporary_acting  =  'Yes'	department_management
SELECT T3.born_state FROM department AS T1 JOIN management AS T2 ON T1.department_id  =  T2.department_id JOIN head AS T3 ON T2.head_id  =  T3.head_id WHERE T1.name  =  'Treasury' INTERSECT SELECT T3.born_state FROM department AS T1 JOIN management AS T2 ON T1.department_id  =  T2.department_id JOIN head AS T3 ON T2.head_id  =  T3.head_id WHERE T1.name  =  'Homeland Security'	department_management
SELECT T1.department_id ,  T1.name ,  count(*) FROM management AS T2 JOIN department AS T1 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id HAVING count(*)  >  1	department_management
SELECT T2.Year ,  T1.Official_Name FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID	farm
SELECT T2.Year ,  T1.Official_Name FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID	farm
SELECT T1.Official_Name FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID GROUP BY T2.Host_city_ID HAVING COUNT(*)  >  1	farm
SELECT T1.Official_Name FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID GROUP BY T2.Host_city_ID HAVING COUNT(*)  >  1	farm
SELECT T1.Status FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID GROUP BY T2.Host_city_ID ORDER BY COUNT(*) DESC LIMIT 1	farm
SELECT T1.Status FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID GROUP BY T2.Host_city_ID ORDER BY COUNT(*) DESC LIMIT 1	farm
SELECT T2.Theme FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID WHERE T1.Population  >  1000	farm
SELECT T2.Theme FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID WHERE T1.Population  >  1000	farm
SELECT T1.course_name FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_Id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1	student_assessment
SELECT T1.course_name FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_Id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1	student_assessment
SELECT T2.first_name ,  T2.last_name FROM candidates AS T1 JOIN people AS T2 ON T1.candidate_id = T2.person_id	student_assessment
SELECT T2.first_name ,  T2.last_name FROM candidates AS T1 JOIN people AS T2 ON T1.candidate_id = T2.person_id	student_assessment
SELECT T1.student_id ,  T2.course_name FROM student_course_registrations AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id	student_assessment
SELECT T2.student_details FROM student_course_registrations AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.registration_date DESC LIMIT 1	student_assessment
SELECT T2.student_details FROM student_course_registrations AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.registration_date DESC LIMIT 1	student_assessment
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "English"	student_assessment
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "English"	student_assessment
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T2.student_id = 171	student_assessment
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T2.student_id = 171	student_assessment
SELECT T2.candidate_id FROM people AS T1 JOIN candidates AS T2 ON T1.person_id = T2.candidate_id WHERE T1.email_address = "stanley.monahan@example.org"	student_assessment
SELECT T2.candidate_id FROM people AS T1 JOIN candidates AS T2 ON T1.person_id = T2.candidate_id WHERE T1.email_address = "stanley.monahan@example.org"	student_assessment
SELECT T1.student_details FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	student_assessment
SELECT T1.student_details FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1	student_assessment
SELECT T1.student_id ,  count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id	student_assessment
SELECT T1.student_id ,  count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id	student_assessment
SELECT T3.course_name ,  count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id JOIN courses AS T3 ON T2.course_id = T3.course_id GROUP BY T2.course_id	student_assessment
SELECT T3.course_name ,  count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id JOIN courses AS T3 ON T2.course_id = T3.course_id GROUP BY T2.course_id	student_assessment
SELECT T3.cell_mobile_number FROM candidates AS T1 JOIN candidate_assessments AS T2 ON T1.candidate_id = T2.candidate_id JOIN people AS T3 ON T1.candidate_id = T3.person_id WHERE T2.asessment_outcome_code = "Fail"	student_assessment
SELECT T3.cell_mobile_number FROM candidates AS T1 JOIN candidate_assessments AS T2 ON T1.candidate_id = T2.candidate_id JOIN people AS T3 ON T1.candidate_id = T3.person_id WHERE T2.asessment_outcome_code = "Fail"	student_assessment
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN people_addresses AS T2 ON T1.address_id = T2.address_id	student_assessment
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN people_addresses AS T2 ON T1.address_id = T2.address_id	student_assessment
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN people_addresses AS T2 ON T1.address_id = T2.address_id JOIN students AS T3 ON T2.person_id = T3.student_id	student_assessment
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN people_addresses AS T2 ON T1.address_id = T2.address_id JOIN students AS T3 ON T2.person_id = T3.student_id	student_assessment
SELECT T2.student_id FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "statistics" ORDER BY T2.registration_date	student_assessment
SELECT T2.student_id FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "statistics" ORDER BY T2.registration_date	student_assessment
SELECT T2.student_id FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "statistics" ORDER BY T2.date_of_attendance	student_assessment
SELECT T2.student_id FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "statistics" ORDER BY T2.date_of_attendance	student_assessment
SELECT DISTINCT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id WHERE T2.bikes_available  =  7	bike_1
SELECT DISTINCT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id WHERE T2.bikes_available  =  7	bike_1
SELECT T1.lat ,  T1.long ,  T1.city FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id ORDER BY T2.duration LIMIT 1	bike_1
SELECT T1.lat ,  T1.long ,  T1.city FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id ORDER BY T2.duration LIMIT 1	bike_1
SELECT T1.name ,  T1.id FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id GROUP BY T2.station_id HAVING avg(T2.bikes_available)  >  14 UNION SELECT name ,  id FROM station WHERE installation_date LIKE "12/%"	bike_1
SELECT T1.name ,  T1.id FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id GROUP BY T2.station_id HAVING avg(T2.bikes_available)  >  14 UNION SELECT name ,  id FROM station WHERE installation_date LIKE "12/%"	bike_1
SELECT T1.id FROM trip AS T1 JOIN weather AS T2 ON T1.zip_code  =  T2.zip_code GROUP BY T2.zip_code HAVING avg(T2.mean_temperature_f)  >  60	bike_1
SELECT T1.id FROM trip AS T1 JOIN weather AS T2 ON T1.zip_code  =  T2.zip_code GROUP BY T2.zip_code HAVING avg(T2.mean_temperature_f)  >  60	bike_1
SELECT T1.id ,  T2.installation_date FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id  =  T2.id	bike_1
SELECT T1.id ,  T2.installation_date FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id  =  T2.id	bike_1
SELECT T1.id FROM trip AS T1 JOIN station AS T2 ON T1.start_station_id  =  T2.id ORDER BY T2.dock_count DESC LIMIT 1	bike_1
SELECT T1.id FROM trip AS T1 JOIN station AS T2 ON T1.start_station_id  =  T2.id ORDER BY T2.dock_count DESC LIMIT 1	bike_1
SELECT count(*) FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id  =  T2.id WHERE T2.city !=  "San Francisco"	bike_1
SELECT count(*) FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id  =  T2.id WHERE T2.city != "San Francisco"	bike_1
SELECT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id GROUP BY T2.station_id HAVING avg(bikes_available)  >  10 EXCEPT SELECT name FROM station WHERE city  =  "San Jose"	bike_1
SELECT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id GROUP BY T2.station_id HAVING avg(bikes_available)  >  10 EXCEPT SELECT name FROM station WHERE city  =  "San Jose"	bike_1
SELECT T1.name ,  T1.long ,  avg(T2.duration) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id GROUP BY T2.start_station_id	bike_1
SELECT T1.name ,  T1.long ,  avg(T2.duration) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id GROUP BY T2.start_station_id	bike_1
SELECT T1.name ,  T1.lat ,  min(T2.duration) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.end_station_id GROUP BY T2.end_station_id	bike_1
SELECT T1.name ,  T1.lat ,  min(T2.duration) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.end_station_id GROUP BY T2.end_station_id	bike_1
SELECT DISTINCT T1.id ,  T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id WHERE T2.bikes_available  >  12	bike_1
SELECT DISTINCT T1.id ,  T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id WHERE T2.bikes_available  >  12	bike_1
SELECT count(*) FROM station AS T1 JOIN trip AS T2 JOIN station AS T3 JOIN trip AS T4 ON T1.id  =  T2.start_station_id AND T2.id  =  T4.id AND T3.id  =  T4.end_station_id WHERE T1.city  =  "Mountain View" AND T3.city  =  "Palo Alto"	bike_1
SELECT count(*) FROM station AS T1 JOIN trip AS T2 JOIN station AS T3 JOIN trip AS T4 ON T1.id  =  T2.start_station_id AND T2.id  =  T4.id AND T3.id  =  T4.end_station_id WHERE T1.city  =  "Mountain View" AND T3.city  =  "Palo Alto"	bike_1
SELECT avg(T1.lat) ,  avg(T1.long) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id	bike_1
SELECT avg(T1.lat) ,  avg(T1.long) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id	bike_1
SELECT T1.Title ,  T2.Publication_Date FROM book AS T1 JOIN publication AS T2 ON T1.Book_ID  =  T2.Book_ID	book_2
SELECT T1.Writer FROM book AS T1 JOIN publication AS T2 ON T1.Book_ID  =  T2.Book_ID WHERE T2.Price  >  4000000	book_2
SELECT T1.Title FROM book AS T1 JOIN publication AS T2 ON T1.Book_ID  =  T2.Book_ID ORDER BY T2.Price DESC	book_2
SELECT T1.Name ,  T2.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID	musical
SELECT T1.Name ,  T2.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID	musical
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID WHERE T2.Name  =  "The Phantom of the Opera"	musical
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID WHERE T2.Name  =  "The Phantom of the Opera"	musical
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID ORDER BY T2.Year DESC	musical
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID ORDER BY T2.Year DESC	musical
SELECT T2.Name ,  COUNT(*) FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID GROUP BY T1.Musical_ID	musical
SELECT T2.Name ,  COUNT(*) FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID GROUP BY T1.Musical_ID	musical
SELECT T2.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID GROUP BY T1.Musical_ID HAVING COUNT(*)  >=  3	musical
SELECT T2.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID GROUP BY T1.Musical_ID HAVING COUNT(*)  >=  3	musical
SELECT T1.name FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f1 GROUP BY T2.f1 HAVING count(*)  >  (SELECT count(*) FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f1 WHERE T1.name  =  'Tyler Swift')	twitter_1
SELECT T1.name ,  T1.email FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f1 GROUP BY T2.f1 HAVING count(*)  >  1	twitter_1
SELECT T1.name FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid  =  T2.uid GROUP BY T2.uid HAVING count(*)  >  1	twitter_1
SELECT T2.f1 FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f2 WHERE T1.name  =  "Mary" INTERSECT SELECT T2.f1 FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f2 WHERE T1.name  =  "Susan"	twitter_1
SELECT T2.f1 FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f2 WHERE T1.name  =  "Mary" OR T1.name  =  "Susan"	twitter_1
SELECT T1.name ,  count(*) FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid  =  T2.uid GROUP BY T2.uid	twitter_1
SELECT T1.name ,  T1.partitionid FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid  =  T2.uid GROUP BY T2.uid HAVING count(*)  <  2	twitter_1
SELECT T1.name ,  count(*) FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid  =  T2.uid GROUP BY T2.uid HAVING count(*)  >  1	twitter_1
SELECT t1.catalog_name ,  t1.date_of_publication FROM catalogs AS t1 JOIN catalog_structure AS t2 ON t1.catalog_id  =  t2.catalog_id WHERE catalog_level_number  >  5	product_catalog
SELECT t1.catalog_name ,  t1.date_of_publication FROM catalogs AS t1 JOIN catalog_structure AS t2 ON t1.catalog_id  =  t2.catalog_id WHERE catalog_level_number  >  5	product_catalog
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id  =  t2.catalog_entry_id WHERE t2.attribute_value  =  (SELECT attribute_value FROM Catalog_Contents_Additional_Attributes GROUP BY attribute_value ORDER BY count(*) DESC LIMIT 1)	product_catalog
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id  =  t2.catalog_entry_id WHERE t2.attribute_value  =  (SELECT attribute_value FROM Catalog_Contents_Additional_Attributes GROUP BY attribute_value ORDER BY count(*) DESC LIMIT 1)	product_catalog
SELECT t2.catalog_level_name FROM catalog_contents AS t1 JOIN catalog_structure AS t2 ON t1.catalog_level_number  =  t2.catalog_level_number ORDER BY t1.price_in_dollars LIMIT 1	product_catalog
SELECT t2.catalog_level_name FROM catalog_contents AS t1 JOIN catalog_structure AS t2 ON t1.catalog_level_number  =  t2.catalog_level_number ORDER BY t1.price_in_dollars LIMIT 1	product_catalog
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id  =  t2.catalog_entry_id WHERE t2.catalog_level_number  =  "8"	product_catalog
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id  =  t2.catalog_entry_id WHERE t2.catalog_level_number  =  "8"	product_catalog
SELECT t1.attribute_name ,  t1.attribute_id FROM Attribute_Definitions AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.attribute_id  =  t2.attribute_id WHERE t2.attribute_value  =  0	product_catalog
SELECT t1.attribute_name ,  t1.attribute_id FROM Attribute_Definitions AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.attribute_id  =  t2.attribute_id WHERE t2.attribute_value  =  0	product_catalog
SELECT T2.name FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid WHERE T1.flno  =  99	flight_1
SELECT T2.name FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid WHERE T1.flno  =  99	flight_1
SELECT T1.flno FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid WHERE T2.name  =  "Airbus A340-300"	flight_1
SELECT T1.flno FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid WHERE T2.name  =  "Airbus A340-300"	flight_1
SELECT T2.name ,  count(*) FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid GROUP BY T1.aid	flight_1
SELECT T2.name ,  count(*) FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid GROUP BY T1.aid	flight_1
SELECT T2.name FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid GROUP BY T1.aid HAVING count(*)  >= 2	flight_1
SELECT T2.name FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid GROUP BY T1.aid HAVING count(*)  >= 2	flight_1
SELECT T3.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T1.name  =  "John Williams"	flight_1
SELECT T3.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T1.name  =  "John Williams"	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800"	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800"	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800" INTERSECT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Airbus A340-300"	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800" INTERSECT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Airbus A340-300"	flight_1
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid  =  T1.aid GROUP BY T1.aid ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid  =  T1.aid GROUP BY T1.aid ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid  =  T1.aid WHERE T2.distance  >  5000 GROUP BY T1.aid ORDER BY count(*)  >=  5	flight_1
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid  =  T1.aid WHERE T2.distance  >  5000 GROUP BY T1.aid ORDER BY count(*)  >=  5	flight_1
SELECT T1.name ,  T1.salary FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid GROUP BY T1.eid ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT T1.name ,  T1.salary FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid GROUP BY T1.eid ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.distance  >  5000 GROUP BY T1.eid ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.distance  >  5000 GROUP BY T1.eid ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT count(*) FROM has_allergy AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.sex  =  "F" AND T1.allergy  =  "Milk" OR T1.allergy  =  "Eggs"	allergy_1
SELECT count(*) FROM has_allergy AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.sex  =  "F" AND T1.allergy  =  "Milk" OR T1.allergy  =  "Eggs"	allergy_1
SELECT count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy  =  T2.allergy WHERE T2.allergytype  =  "food"	allergy_1
SELECT count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy  =  T2.allergy WHERE T2.allergytype  =  "food"	allergy_1
SELECT T2.allergytype ,  count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy  =  T2.allergy GROUP BY T2.allergytype	allergy_1
SELECT T2.allergytype ,  count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy  =  T2.allergy GROUP BY T2.allergytype	allergy_1
SELECT T1.Allergy ,  T1.AllergyType FROM Allergy_type AS T1 JOIN Has_allergy AS T2 ON T1.Allergy  =  T2.Allergy JOIN Student AS T3 ON T3.StuID  =  T2.StuID WHERE T3.Fname  =  "Lisa" ORDER BY T1.Allergy	allergy_1
SELECT T1.Allergy ,  T1.AllergyType FROM Allergy_type AS T1 JOIN Has_allergy AS T2 ON T1.Allergy  =  T2.Allergy JOIN Student AS T3 ON T3.StuID  =  T2.StuID WHERE T3.Fname  =  "Lisa" ORDER BY T1.Allergy	allergy_1
SELECT DISTINCT T1.fname ,  T1.city_code FROM Student AS T1 JOIN Has_Allergy AS T2 ON T1.stuid  =  T2.stuid WHERE T2.Allergy  =  "Milk" OR T2.Allergy  =  "Cat"	allergy_1
SELECT DISTINCT T1.fname ,  T1.city_code FROM Student AS T1 JOIN Has_Allergy AS T2 ON T1.stuid  =  T2.stuid WHERE T2.Allergy  =  "Milk" OR T2.Allergy  =  "Cat"	allergy_1
SELECT T1.first_name ,  T1.last_name FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id ORDER BY T2.invoice_date DESC LIMIT 5;	store_1
SELECT T1.first_name ,  T1.last_name FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id ORDER BY T2.invoice_date DESC LIMIT 5;	store_1
SELECT T1.first_name ,  T1.last_name ,  COUNT(*) FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 10;	store_1
SELECT T1.first_name ,  T1.last_name ,  COUNT(*) FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 10;	store_1
SELECT T1.first_name ,  T1.last_name ,  SUM(T2.total) FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id GROUP BY T1.id ORDER BY SUM(T2.total) DESC LIMIT 10;	store_1
SELECT T1.first_name ,  T1.last_name ,  SUM(T2.total) FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id GROUP BY T1.id ORDER BY SUM(T2.total) DESC LIMIT 10;	store_1
SELECT T1.name ,  COUNT(*) FROM genres AS T1 JOIN tracks AS T2 ON T2.genre_id  =  T1.id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 5;	store_1
SELECT T1.name ,  COUNT(*) FROM genres AS T1 JOIN tracks AS T2 ON T2.genre_id  =  T1.id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 5;	store_1
SELECT T1.first_name ,  T1.last_name FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id ORDER BY total LIMIT 10;	store_1
SELECT T1.first_name ,  T1.last_name FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id ORDER BY total LIMIT 10;	store_1
SELECT T1.title FROM albums AS T1 JOIN artists AS T2 ON  T1.artist_id = T2.id WHERE T2.name = "Aerosmith";	store_1
SELECT T1.title FROM albums AS T1 JOIN artists AS T2 ON  T1.artist_id = T2.id WHERE T2.name = "Aerosmith";	store_1
SELECT count(*) FROM albums AS T1 JOIN artists AS T2 ON  T1.artist_id = T2.id WHERE T2.name = "Billy Cobham";	store_1
SELECT count(*) FROM albums AS T1 JOIN artists AS T2 ON  T1.artist_id = T2.id WHERE T2.name = "Billy Cobham";	store_1
SELECT T2.title FROM artists AS T1 JOIN albums AS T2 ON T1.id  =  T2.artist_id WHERE T1.name LIKE '%Led%'	store_1
SELECT T2.title FROM artists AS T1 JOIN albums AS T2 ON T1.id  =  T2.artist_id WHERE T1.name LIKE '%Led%'	store_1
SELECT count(*) FROM employees AS T1 JOIN customers AS T2 ON T2.support_rep_id = T1.id WHERE T1.first_name = "Steve" AND T1.last_name = "Johnson";	store_1
SELECT count(*) FROM employees AS T1 JOIN customers AS T2 ON T2.support_rep_id = T1.id WHERE T1.first_name = "Steve" AND T1.last_name = "Johnson";	store_1
SELECT T2.first_name , T2.last_name FROM employees AS T1 JOIN employees AS T2 ON T1.id = T2.reports_to WHERE T1.first_name = "Nancy" AND T1.last_name = "Edwards";	store_1
SELECT T2.first_name , T2.last_name FROM employees AS T1 JOIN employees AS T2 ON T1.id = T2.reports_to WHERE T1.first_name = "Nancy" AND T1.last_name = "Edwards";	store_1
SELECT T1.first_name , T1.last_name FROM employees AS T1 JOIN customers AS T2 ON T1.id  =  T2.support_rep_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	store_1
SELECT T1.first_name , T1.last_name FROM employees AS T1 JOIN customers AS T2 ON T1.id  =  T2.support_rep_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	store_1
SELECT T2.first_name , T2.last_name ,  count(T1.reports_to) FROM employees AS T1 JOIN employees AS T2 ON T1.reports_to = T2.id GROUP BY T1.reports_to ORDER BY count(T1.reports_to) DESC LIMIT 1;	store_1
SELECT T2.first_name , T2.last_name ,  count(T1.reports_to) FROM employees AS T1 JOIN employees AS T2 ON T1.reports_to = T2.id GROUP BY T1.reports_to ORDER BY count(T1.reports_to) DESC LIMIT 1;	store_1
SELECT count(*) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";	store_1
SELECT count(*) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";	store_1
SELECT sum(T2.total) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";	store_1
SELECT sum(T2.total) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.name = "Rock";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.name = "Rock";	store_1
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T2.name = "Balls to the Wall";	store_1
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T2.name = "Balls to the Wall";	store_1
SELECT T2.name FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.title = "Balls to the Wall";	store_1
SELECT T2.name FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.title = "Balls to the Wall";	store_1
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.album_id GROUP BY T1.id HAVING count(T1.id)  >  10;	store_1
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.album_id GROUP BY T1.id HAVING count(T1.id)  >  10;	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id JOIN media_types AS T3 ON T3.id = T2.media_type_id WHERE T1.name = "Rock" AND T3.name = "MPEG audio file";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id JOIN media_types AS T3 ON T3.id = T2.media_type_id WHERE T1.name = "Rock" AND T3.name = "MPEG audio file";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id JOIN media_types AS T3 ON T3.id = T2.media_type_id WHERE T1.name = "Rock" OR T3.name = "MPEG audio file";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id JOIN media_types AS T3 ON T3.id = T2.media_type_id WHERE T1.name = "Rock" OR T3.name = "MPEG audio file";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.name = "Rock" OR T1.name = "Jazz"	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.name = "Rock" OR T1.name = "Jazz"	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T3.id = T2.playlist_id WHERE T3.name = "Movies";	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T3.id = T2.playlist_id WHERE T3.name = "Movies";	store_1
SELECT T2.name FROM playlist_tracks AS T1 JOIN playlists AS T2 ON T2.id = T1.playlist_id GROUP BY T1.playlist_id HAVING count(T1.track_id)  >  100;	store_1
SELECT T2.name FROM playlist_tracks AS T1 JOIN playlists AS T2 ON T2.id = T1.playlist_id GROUP BY T1.playlist_id HAVING count(T1.track_id)  >  100;	store_1
SELECT T1.name FROM tracks AS T1 JOIN invoice_lines AS T2 ON T1.id = T2.track_id JOIN invoices AS T3 ON T3.id = T2.invoice_id JOIN customers AS T4 ON T4.id = T3.customer_id WHERE T4.first_name = "Daan" AND T4.last_name = "Peeters";	store_1
SELECT T1.name FROM tracks AS T1 JOIN invoice_lines AS T2 ON T1.id = T2.track_id JOIN invoices AS T3 ON T3.id = T2.invoice_id JOIN customers AS T4 ON T4.id = T3.customer_id WHERE T4.first_name = "Daan" AND T4.last_name = "Peeters";	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Movies' EXCEPT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Music'	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Movies' EXCEPT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Music'	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Movies' INTERSECT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Music'	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Movies' INTERSECT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Music'	store_1
SELECT count(*) ,  T1.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id GROUP BY T1.name;	store_1
SELECT count(*) ,  T1.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id GROUP BY T1.name;	store_1
SELECT T2.Name ,  T3.Theme FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID  =  T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID  =  T3.Journal_ID	journal_committee
SELECT T2.Name ,  T3.Theme FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID  =  T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID  =  T3.Journal_ID	journal_committee
SELECT T2.Name ,  T2.age ,  T3.Theme FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID  =  T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID  =  T3.Journal_ID ORDER BY T3.Theme ASC	journal_committee
SELECT T2.Name FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID  =  T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID  =  T3.Journal_ID WHERE T3.Sales  >  3000	journal_committee
SELECT T1.editor_id ,  T1.Name ,  COUNT(*) FROM editor AS T1 JOIN journal_committee AS T2 ON T1.Editor_ID  =  T2.Editor_ID GROUP BY T1.editor_id	journal_committee
SELECT T1.Name FROM editor AS T1 JOIN journal_committee AS T2 ON T1.Editor_ID  =  T2.Editor_ID GROUP BY T1.Name HAVING COUNT(*)  >=  2	journal_committee
SELECT avg(T1.sales) FROM journal AS T1 JOIN journal_committee AS T2 ON T1.journal_ID  =  T2.journal_ID WHERE T2.work_type  =  'Photo'	journal_committee
SELECT T2.customer_first_name ,  T2.customer_last_name ,  T2.customer_phone FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.account_name  =  "162"	customers_card_transactions
SELECT T2.customer_first_name ,  T2.customer_last_name ,  T2.customer_phone FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.account_name  =  "162"	customers_card_transactions
SELECT count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Art" AND T2.customer_last_name  =  "Turcotte"	customers_card_transactions
SELECT count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Art" AND T2.customer_last_name  =  "Turcotte"	customers_card_transactions
SELECT T2.customer_first_name ,  T2.customer_last_name ,  T1.customer_id FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1	customers_card_transactions
SELECT T2.customer_first_name ,  T2.customer_last_name ,  T1.customer_id FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1	customers_card_transactions
SELECT DISTINCT T1.customer_first_name ,  T1.customer_last_name FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id  =  T2.customer_id	customers_card_transactions
SELECT DISTINCT T1.customer_first_name ,  T1.customer_last_name FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id  =  T2.customer_id	customers_card_transactions
SELECT T2.customer_first_name ,  T2.customer_last_name ,  T2.customer_phone FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.card_number  =  "4560596484842"	customers_card_transactions
SELECT T2.customer_first_name ,  T2.customer_last_name ,  T2.customer_phone FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.card_number  =  "4560596484842"	customers_card_transactions
SELECT count(*) FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Art" AND T2.customer_last_name  =  "Turcotte"	customers_card_transactions
SELECT count(*) FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Art" AND T2.customer_last_name  =  "Turcotte"	customers_card_transactions
SELECT count(*) FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Blanche" AND T2.customer_last_name  =  "Huels" AND T1.card_type_code  =  "Credit"	customers_card_transactions
SELECT count(*) FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Blanche" AND T2.customer_last_name  =  "Huels" AND T1.card_type_code  =  "Credit"	customers_card_transactions
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2	customers_card_transactions
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2	customers_card_transactions
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1	customers_card_transactions
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1	customers_card_transactions
SELECT T2.card_type_code ,  count(*) FROM Financial_transactions AS T1 JOIN Customers_cards AS T2 ON T1.card_id  =  T2.card_id GROUP BY T2.card_type_code	customers_card_transactions
SELECT T2.card_type_code ,  count(*) FROM Financial_transactions AS T1 JOIN Customers_cards AS T2 ON T1.card_id  =  T2.card_id GROUP BY T2.card_type_code	customers_card_transactions
SELECT T2.name ,  count(*) FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id	race_track
SELECT T2.name ,  count(*) FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id	race_track
SELECT T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id ORDER BY count(*) DESC LIMIT 1	race_track
SELECT T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id ORDER BY count(*) DESC LIMIT 1	race_track
SELECT T1.name ,  T1.date ,  T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id	race_track
SELECT T1.name ,  T1.date ,  T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id	race_track
SELECT T2.name ,  T2.location FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id HAVING count(*)  =  1	race_track
SELECT T2.name ,  T2.location FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id HAVING count(*)  =  1	race_track
SELECT t1.address ,  t1.shop_id FROM shop AS t1 JOIN happy_hour AS t2 ON t1.shop_id  =  t2.shop_id WHERE MONTH  =  'May'	coffee_shop
SELECT Title FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T2.Name  =  "AC/DC"	chinook_1
SELECT Title FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T2.Name  =  "AC/DC"	chinook_1
SELECT COUNT(*) FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T2.Name  =  "Metallica"	chinook_1
SELECT COUNT(*) FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T2.Name  =  "Metallica"	chinook_1
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T1.Title  =  "Balls to the Wall"	chinook_1
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T1.Title  =  "Balls to the Wall"	chinook_1
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1	chinook_1
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1	chinook_1
SELECT T1.Title ,  T2.AlbumID ,  COUNT(*) FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId  =  T2.AlbumId GROUP BY T2.AlbumID	chinook_1
SELECT T1.Title ,  T2.AlbumID ,  COUNT(*) FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId  =  T2.AlbumId GROUP BY T2.AlbumID	chinook_1
SELECT T1.Name FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId GROUP BY T2.GenreId ORDER BY COUNT(*) DESC LIMIT 1	chinook_1
SELECT T1.Name FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId GROUP BY T2.GenreId ORDER BY COUNT(*) DESC LIMIT 1	chinook_1
SELECT T1.Name FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId  =  T2.MediaTypeId GROUP BY T2.MediaTypeId ORDER BY COUNT(*) ASC LIMIT 1	chinook_1
SELECT T1.Name FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId  =  T2.MediaTypeId GROUP BY T2.MediaTypeId ORDER BY COUNT(*) ASC LIMIT 1	chinook_1
SELECT T1.Title ,  T2.AlbumID FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId  =  T2.AlbumId WHERE T2.UnitPrice  >  1 GROUP BY T2.AlbumID	chinook_1
SELECT T1.Title ,  T2.AlbumID FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId  =  T2.AlbumId WHERE T2.UnitPrice  >  1 GROUP BY T2.AlbumID	chinook_1
SELECT COUNT(*) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Rock"	chinook_1
SELECT COUNT(*) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Rock"	chinook_1
SELECT AVG(UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Jazz"	chinook_1
SELECT AVG(UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Jazz"	chinook_1
SELECT T2.FirstName ,  T2.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.FirstName  =  "Leonie"	chinook_1
SELECT T2.FirstName ,  T2.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.FirstName  =  "Leonie"	chinook_1
SELECT T2.City FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.PostalCode  =  "70174"	chinook_1
SELECT T2.City FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.PostalCode  =  "70174"	chinook_1
SELECT T2.InvoiceDate FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.FirstName  =  "Astrid" AND LastName  =  "Gruber"	chinook_1
SELECT T2.InvoiceDate FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.FirstName  =  "Astrid" AND LastName  =  "Gruber"	chinook_1
SELECT DISTINCT T1.FirstName FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.country  =  "Brazil"	chinook_1
SELECT DISTINCT T1.FirstName FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.country  =  "Brazil"	chinook_1
SELECT DISTINCT T1.Address FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.country  =  "Germany"	chinook_1
SELECT DISTINCT T1.Address FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.country  =  "Germany"	chinook_1
SELECT COUNT(*) FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId  =  T2.MediaTypeId WHERE T1.Name  =  "AAC audio file"	chinook_1
SELECT COUNT(*) FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId  =  T2.MediaTypeId WHERE T1.Name  =  "AAC audio file"	chinook_1
SELECT AVG(Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Latin" OR T1.Name  =  "Pop"	chinook_1
SELECT AVG(Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Latin" OR T1.Name  =  "Pop"	chinook_1
SELECT T1.FirstName ,  T1.SupportRepId FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId GROUP BY T1.SupportRepId HAVING COUNT(*)  >=  10	chinook_1
SELECT T1.FirstName ,  T1.SupportRepId FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId GROUP BY T1.SupportRepId HAVING COUNT(*)  >=  10	chinook_1
SELECT T1.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId GROUP BY T1.SupportRepId HAVING COUNT(*)  <=  20	chinook_1
SELECT T1.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId GROUP BY T1.SupportRepId HAVING COUNT(*)  <=  20	chinook_1
SELECT T2.Name ,  T1.ArtistId FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistID GROUP BY T1.ArtistId HAVING COUNT(*)  >=  3 ORDER BY T2.Name	chinook_1
SELECT T2.Name ,  T1.ArtistId FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistID GROUP BY T1.ArtistId HAVING COUNT(*)  >=  3 ORDER BY T2.Name	chinook_1
SELECT AVG(T2.UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Rock"	chinook_1
SELECT AVG(T2.UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Rock"	chinook_1
SELECT max(Milliseconds) ,  min(Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Pop"	chinook_1
SELECT max(Milliseconds) ,  min(Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Pop"	chinook_1
SELECT T1.Title FROM Album AS T1 JOIN Track AS T2 ON T1.AlbumId  =  T2.AlbumId JOIN Genre AS T3 ON T2.GenreID  =  T3.GenreID WHERE T3.Name  =  'Reggae' INTERSECT SELECT T1.Title FROM Album AS T1 JOIN Track AS T2 ON T1.AlbumId  =  T2.AlbumId JOIN Genre AS T3 ON T2.GenreID  =  T3.GenreID WHERE T3.Name  =  'Rock'	chinook_1
SELECT T1.Title FROM Album AS T1 JOIN Track AS T2 ON T1.AlbumId  =  T2.AlbumId JOIN Genre AS T3 ON T2.GenreID  =  T3.GenreID WHERE T3.Name  =  'Reggae' INTERSECT SELECT T1.Title FROM Album AS T1 JOIN Track AS T2 ON T1.AlbumId  =  T2.AlbumId JOIN Genre AS T3 ON T2.GenreID  =  T3.GenreID WHERE T3.Name  =  'Rock'	chinook_1
SELECT t2.service_name FROM first_notification_of_loss AS t1 JOIN services AS t2 ON t1.service_id  =  t2.service_id GROUP BY t1.service_id HAVING count(*)  >  2	insurance_fnol
SELECT t2.service_name FROM first_notification_of_loss AS t1 JOIN services AS t2 ON t1.service_id  =  t2.service_id GROUP BY t1.service_id HAVING count(*)  >  2	insurance_fnol
SELECT t1.Effective_Date FROM claims AS t1 JOIN settlements AS t2 ON t1.claim_id  =  t2.claim_id GROUP BY t1.claim_id ORDER BY sum(t2.settlement_amount) DESC LIMIT 1	insurance_fnol
SELECT t1.Effective_Date FROM claims AS t1 JOIN settlements AS t2 ON t1.claim_id  =  t2.claim_id GROUP BY t1.claim_id ORDER BY sum(t2.settlement_amount) DESC LIMIT 1	insurance_fnol
SELECT count(*) FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.customer_name  =  "Dayana Robel"	insurance_fnol
SELECT count(*) FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.customer_name  =  "Dayana Robel"	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1	insurance_fnol
SELECT DISTINCT t3.policy_type_code FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id JOIN available_policies AS t3 ON t2.policy_id  =  t3.policy_id WHERE t1.customer_name  =  "Dayana Robel"	insurance_fnol
SELECT DISTINCT t3.policy_type_code FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id JOIN available_policies AS t3 ON t2.policy_id  =  t3.policy_id WHERE t1.customer_name  =  "Dayana Robel"	insurance_fnol
SELECT DISTINCT t3.policy_type_code FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id JOIN available_policies AS t3 ON t2.policy_id  =  t3.policy_id WHERE t1.customer_name  =  (SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1)	insurance_fnol
SELECT DISTINCT t3.policy_type_code FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id JOIN available_policies AS t3 ON t2.policy_id  =  t3.policy_id WHERE t1.customer_name  =  (SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1)	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "Close a policy" OR t3.service_name  =  "Upgrade a policy"	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "Close a policy" OR t3.service_name  =  "Upgrade a policy"	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "Close a policy" INTERSECT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "New policy application"	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "Close a policy" INTERSECT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "New policy application"	insurance_fnol
SELECT t2.date_opened ,  t2.date_closed FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.customer_name LIKE "%Diana%"	insurance_fnol
SELECT t2.date_opened ,  t2.date_closed FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.customer_name LIKE "%Diana%"	insurance_fnol
SELECT T1.name FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T1.id  =  T2.enzyme_id JOIN medicine AS T3 ON T2.medicine_id  =  T3.id WHERE T3.name  =  'Amisulpride' AND T2.interaction_type  =  'inhibitor'	medicine_enzyme_interaction
SELECT T1.name FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T1.id  =  T2.enzyme_id JOIN medicine AS T3 ON T2.medicine_id  =  T3.id WHERE T3.name  =  'Amisulpride' AND T2.interaction_type  =  'inhibitor'	medicine_enzyme_interaction
SELECT T1.id ,  T1.Name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id HAVING count(*)  >=  2	medicine_enzyme_interaction
SELECT T1.id ,  T1.Name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id HAVING count(*)  >=  2	medicine_enzyme_interaction
SELECT T1.id ,  T1.Name ,  T1.FDA_approved FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id ORDER BY count(*) DESC	medicine_enzyme_interaction
SELECT T1.id ,  T1.Name ,  T1.FDA_approved FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id ORDER BY count(*) DESC	medicine_enzyme_interaction
SELECT T1.id ,  T1.name FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T1.id  =  T2.enzyme_id WHERE T2.interaction_type  =  'activitor' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	medicine_enzyme_interaction
SELECT T1.id ,  T1.name FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T1.id  =  T2.enzyme_id WHERE T2.interaction_type  =  'activitor' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	medicine_enzyme_interaction
SELECT T1.interaction_type FROM medicine_enzyme_interaction AS T1 JOIN medicine AS T2 ON T1.medicine_id  =  T2.id JOIN enzyme AS T3 ON T1.enzyme_id  =  T3.id WHERE T3.name  =  'ALA synthase' AND T2.name  =  'Aripiprazole'	medicine_enzyme_interaction
SELECT T1.interaction_type FROM medicine_enzyme_interaction AS T1 JOIN medicine AS T2 ON T1.medicine_id  =  T2.id JOIN enzyme AS T3 ON T1.enzyme_id  =  T3.id WHERE T3.name  =  'ALA synthase' AND T2.name  =  'Aripiprazole'	medicine_enzyme_interaction
SELECT T1.id ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id HAVING COUNT(*)  >=  3	medicine_enzyme_interaction
SELECT T1.id ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id HAVING COUNT(*)  >=  3	medicine_enzyme_interaction
SELECT DISTINCT T1.name ,  T1.location ,  T1.product FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.enzyme_id  =  T1.id WHERE T2.interaction_type  =  'inhibitor'	medicine_enzyme_interaction
SELECT DISTINCT T1.name ,  T1.location ,  T1.product FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.enzyme_id  =  T1.id WHERE T2.interaction_type  =  'inhibitor'	medicine_enzyme_interaction
SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id WHERE interaction_type  =  'inhibitor' INTERSECT SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id WHERE interaction_type  =  'activitor'	medicine_enzyme_interaction
SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id WHERE interaction_type  =  'inhibitor' INTERSECT SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id WHERE interaction_type  =  'activitor'	medicine_enzyme_interaction
SELECT t1.Primary_conference FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id ORDER BY t2.acc_percent LIMIT 1	university_basketball
SELECT t1.Primary_conference FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id ORDER BY t2.acc_percent LIMIT 1	university_basketball
SELECT t2.team_name ,  t2.ACC_Regular_Season FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id ORDER BY t1.founded LIMIT 1	university_basketball
SELECT t2.team_name ,  t2.ACC_Regular_Season FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id ORDER BY t1.founded LIMIT 1	university_basketball
SELECT t2.All_Games ,  t1.location FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id WHERE team_name  =  'Clemson'	university_basketball
SELECT t2.All_Games ,  t1.location FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id WHERE team_name  =  'Clemson'	university_basketball
SELECT t2.team_name FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id WHERE enrollment  <  (SELECT avg(enrollment) FROM university)	university_basketball
SELECT t2.team_name FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id WHERE enrollment  <  (SELECT avg(enrollment) FROM university)	university_basketball
SELECT max(T1.RAM_MiB) ,  min(T1.RAM_MiB) FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model WHERE T2.Company_name = "Nokia Corporation";	phone_1
SELECT avg(T1.ROM_MiB) FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model WHERE T2.Company_name = "Nokia Corporation";	phone_1
SELECT T2.Hardware_Model_name ,  T2.Company_name FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model WHERE T1.Launch_year = 2002 OR T1.RAM_MiB  >  32;	phone_1
SELECT T1.Char_cells ,  T1.Pixels ,  T1.Hardware_colours FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE T2.Hardware_Model_name = "LG-P760";	phone_1
SELECT T2.Hardware_Model_name ,  T2.Company_name FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE T1.Type  =  "Graphics";	phone_1
SELECT T2.Hardware_Model_name FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model WHERE T1.Launch_year = 2002 ORDER BY T1.RAM_MiB DESC LIMIT 1;	phone_1
SELECT T1.WiFi , T3.Type FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model JOIN screen_mode AS T3 ON T2.screen_mode = T3.Graphics_mode WHERE T2.Hardware_Model_name = "LG-P760";	phone_1
SELECT T2.Hardware_Model_name FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model JOIN screen_mode AS T3 ON T2.screen_mode = T3.Graphics_mode WHERE T3.Type = "Text" OR T1.RAM_MiB  >  32;	phone_1
SELECT DISTINCT T2.Hardware_Model_name FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE T1.Type  =  "Graphics" OR t2.Company_name  =  "Nokia Corporation"	phone_1
SELECT DISTINCT T2.Hardware_Model_name FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE t2.Company_name  =  "Nokia Corporation" AND T1.Type != "Text";	phone_1
SELECT DISTINCT T2.Hardware_Model_name , T2.Company_name FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE T1.used_kb BETWEEN 10 AND 15;	phone_1
SELECT t1.pixels FROM screen_mode AS t1 JOIN phone AS t2 ON t1.Graphics_mode  =  t2.screen_mode WHERE t2.Accreditation_type  =  'Provisional' INTERSECT SELECT t1.pixels FROM screen_mode AS t1 JOIN phone AS t2 ON t1.Graphics_mode  =  t2.screen_mode WHERE t2.Accreditation_type  =  'Full'	phone_1
SELECT T2.Season ,  T2.Player ,  T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country	match_season
SELECT T2.Season ,  T2.Player ,  T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country	match_season
SELECT T2.Player FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T1.Country_name  =  "Indonesia"	match_season
SELECT T2.Player FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T1.Country_name  =  "Indonesia"	match_season
SELECT DISTINCT T2.Position FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T1.Capital  =  "Dublin"	match_season
SELECT DISTINCT T2.Position FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T1.Capital  =  "Dublin"	match_season
SELECT T1.Official_native_language FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.College  =  "Maryland" OR T2.College  =  "Duke"	match_season
SELECT T1.Official_native_language FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.College  =  "Maryland" OR T2.College  =  "Duke"	match_season
SELECT count(DISTINCT T1.Official_native_language) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Defender"	match_season
SELECT count(DISTINCT T1.Official_native_language) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Defender"	match_season
SELECT T1.Season ,  T1.Player ,  T2.Name FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id	match_season
SELECT T1.Season ,  T1.Player ,  T2.Name FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id	match_season
SELECT T1.Position FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Ryley Goldner"	match_season
SELECT T1.Position FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Ryley Goldner"	match_season
SELECT count(DISTINCT T1.College) FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Columbus Crew"	match_season
SELECT count(DISTINCT T1.College) FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Columbus Crew"	match_season
SELECT T1.Player , T1.Years_Played FROM player AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Columbus Crew"	match_season
SELECT T1.Player , T1.Years_Played FROM player AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Columbus Crew"	match_season
SELECT Country_name ,  COUNT(*) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country GROUP BY T1.Country_name	match_season
SELECT Country_name ,  COUNT(*) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country GROUP BY T1.Country_name	match_season
SELECT T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Forward" INTERSECT SELECT T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Defender"	match_season
SELECT T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Forward" INTERSECT SELECT T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Defender"	match_season
SELECT T1.Name ,  T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID	climbing
SELECT T1.Name ,  T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID	climbing
SELECT T1.Name ,  T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID	climbing
SELECT T1.Name ,  T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID	climbing
SELECT T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID ORDER BY T1.Points DESC LIMIT 1	climbing
SELECT T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID ORDER BY T1.Points DESC LIMIT 1	climbing
SELECT DISTINCT T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID WHERE T1.Country  =  "West Germany"	climbing
SELECT DISTINCT T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID WHERE T1.Country  =  "West Germany"	climbing
SELECT T1.Time FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID WHERE T2.Country  =  "Uganda"	climbing
SELECT T1.Time FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID WHERE T2.Country  =  "Uganda"	climbing
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID	body_builder
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Total  >  300	body_builder
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Weight DESC LIMIT 1	body_builder
SELECT T2.Birth_Date ,  T2.Birth_Place FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Total DESC LIMIT 1	body_builder
SELECT T2.Height FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Total  <  315	body_builder
SELECT avg(T1.Total) FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Height  >  200	body_builder
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Total DESC	body_builder
SELECT T2.weight FROM body_builder AS T1 JOIN people AS T2 ON T1.people_id  =  T2.people_id WHERE T1.snatch  >  140 OR T2.height  >  200;	body_builder
SELECT T1.total FROM body_builder AS T1 JOIN people AS T2 ON T1.people_id  =  T2.people_id WHERE T2.Birth_Date LIKE "%January%";	body_builder
SELECT T2.Name ,  T1.Date FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID	election_representative
SELECT T2.Name FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID WHERE Votes  >  10000	election_representative
SELECT T2.Name FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID ORDER BY votes DESC	election_representative
SELECT T2.Party FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID ORDER BY votes ASC LIMIT 1	election_representative
SELECT T2.Lifespan FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID ORDER BY Vote_Percent DESC	election_representative
SELECT avg(T1.Votes) FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID WHERE T2.Party  =  "Republican"	election_representative
SELECT T2.apt_number ,  T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id	apartment_rentals
SELECT T2.apt_number ,  T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.apt_type_code  =  "Duplex"	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.apt_type_code  =  "Duplex"	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.bedroom_count  >  2	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.bedroom_count  >  2	apartment_rentals
SELECT T1.booking_status_code FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.apt_number  =  "Suite 634"	apartment_rentals
SELECT T1.booking_status_code FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.apt_number  =  "Suite 634"	apartment_rentals
SELECT DISTINCT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Confirmed"	apartment_rentals
SELECT DISTINCT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Confirmed"	apartment_rentals
SELECT avg(room_count) FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Provisional"	apartment_rentals
SELECT avg(room_count) FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Provisional"	apartment_rentals
SELECT T2.guest_first_name ,  T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id	apartment_rentals
SELECT T2.guest_first_name ,  T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id WHERE T2.gender_code  =  "Female"	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id WHERE T2.gender_code  =  "Female"	apartment_rentals
SELECT T2.guest_first_name ,  T2.guest_last_name FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id WHERE T1.booking_status_code  =  "Confirmed"	apartment_rentals
SELECT T2.guest_first_name ,  T2.guest_last_name FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id WHERE T1.booking_status_code  =  "Confirmed"	apartment_rentals
SELECT T1.facility_code FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.bedroom_count  >  4	apartment_rentals
SELECT T1.facility_code FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.bedroom_count  >  4	apartment_rentals
SELECT sum(T2.room_count) FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.facility_code  =  "Gym"	apartment_rentals
SELECT sum(T2.room_count) FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.facility_code  =  "Gym"	apartment_rentals
SELECT sum(T2.room_count) FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T1.building_short_name  =  "Columbus Square"	apartment_rentals
SELECT sum(T2.room_count) FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T1.building_short_name  =  "Columbus Square"	apartment_rentals
SELECT T1.building_address FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T2.bathroom_count  >  2	apartment_rentals
SELECT T1.building_address FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T2.bathroom_count  >  2	apartment_rentals
SELECT T2.apt_type_code ,  T2.apt_number FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T1.building_manager  =  "Kyle"	apartment_rentals
SELECT T2.apt_type_code ,  T2.apt_number FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T1.building_manager  =  "Kyle"	apartment_rentals
SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Confirmed" INTERSECT SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Provisional"	apartment_rentals
SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Confirmed" INTERSECT SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Provisional"	apartment_rentals
SELECT T1.apt_number FROM Apartments AS T1 JOIN View_Unit_Status AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.available_yn  =  0 INTERSECT SELECT T1.apt_number FROM Apartments AS T1 JOIN View_Unit_Status AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.available_yn  =  1	apartment_rentals
SELECT T1.apt_number FROM Apartments AS T1 JOIN View_Unit_Status AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.available_yn  =  0 INTERSECT SELECT T1.apt_number FROM Apartments AS T1 JOIN View_Unit_Status AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.available_yn  =  1	apartment_rentals
SELECT T1.season FROM game AS T1 JOIN injury_accident AS T2 ON T1.id  =  T2.game_id WHERE T2.player  =  'Walter Samuel'	game_injury
SELECT T1.id ,  T1.score ,  T1.date FROM game AS T1 JOIN injury_accident AS T2 ON T2.game_id  =  T1.id GROUP BY T1.id HAVING count(*)  >=  2	game_injury
SELECT T1.id ,  T1.name FROM stadium AS T1 JOIN game AS T2 ON T1.id  =  T2.stadium_id JOIN injury_accident AS T3 ON T2.id  =  T3.game_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	game_injury
SELECT T1.id ,  T1.name FROM stadium AS T1 JOIN game AS T2 ON T1.id  =  T2.stadium_id JOIN injury_accident AS T3 ON T2.id  =  T3.game_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	game_injury
SELECT T1.season ,  T2.name FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.id JOIN injury_accident AS T3 ON T1.id  =  T3.game_id WHERE T3.injury  =  'Foot injury' OR T3.injury  =  'Knee problem'	game_injury
SELECT count(DISTINCT T1.injury) FROM injury_accident AS T1 JOIN game AS T2 ON T1.game_id  =  T2.id WHERE T2.season  >  2010	game_injury
SELECT T2.name FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.id JOIN injury_accident AS T3 ON T1.id  =  T3.game_id WHERE T3.player  =  'Walter Samuel' INTERSECT SELECT T2.name FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.id JOIN injury_accident AS T3 ON T1.id  =  T3.game_id WHERE T3.player  =  'Thiago Motta'	game_injury
SELECT T1.id ,  count(*) FROM stadium AS T1 JOIN game AS T2 ON T1.id  =  T2.stadium_id GROUP BY T1.id	game_injury
SELECT T1.date ,  T2.player FROM game AS T1 JOIN injury_accident AS T2 ON T1.id  =  T2.game_id ORDER BY T1.season DESC	game_injury
SELECT T1.name ,  T2.name FROM Country AS T1 JOIN League AS T2 ON T1.id  =  T2.country_id	soccer_1
SELECT count(*) FROM Country AS T1 JOIN League AS T2 ON T1.id  =  T2.country_id WHERE T1.name  =  "England"	soccer_1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating  >  ( SELECT avg(overall_rating) FROM Player_Attributes )	soccer_1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.dribbling  =  ( SELECT max(overall_rating) FROM Player_Attributes)	soccer_1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing  >  90 AND T2.preferred_foot  =  "right"	soccer_1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot  =  "left" AND T2.overall_rating  >=  85 AND T2.overall_rating  <=  90	soccer_1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id  =  T2.player_api_id ORDER BY overall_rating DESC LIMIT 3	soccer_1
SELECT DISTINCT T1.player_name ,  T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id  =  T2.player_api_id ORDER BY potential DESC LIMIT 5	soccer_1
SELECT T2.Name ,  T3.Location FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID  =  T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID  =  T3.Performance_ID	performance_attendance
SELECT T2.Name ,  T3.Location FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID  =  T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID  =  T3.Performance_ID ORDER BY T2.Name ASC	performance_attendance
SELECT T3.Date FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID  =  T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID  =  T3.Performance_ID WHERE T2.Role  =  "Violin"	performance_attendance
SELECT T2.Name ,  T3.Date FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID  =  T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID  =  T3.Performance_ID ORDER BY T3.Attendance DESC	performance_attendance
SELECT T1.title FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  =  2	college_2
SELECT T1.title FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  =  2	college_2
SELECT T1.title ,  T1.credits , T1.dept_name FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  >  1	college_2
SELECT T1.title ,  T1.credits , T1.dept_name FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  >  1	college_2
SELECT DISTINCT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id  =  T2.id WHERE YEAR  =  2009 OR YEAR  =  2010	college_2
SELECT DISTINCT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id  =  T2.id WHERE YEAR  =  2009 OR YEAR  =  2010	college_2
SELECT T1.title ,  T3.name FROM course AS T1 JOIN teaches AS T2 ON T1.course_id  =  T2.course_id JOIN instructor AS T3 ON T2.id  =  T3.id WHERE YEAR  =  2008 ORDER BY T1.title	college_2
SELECT T1.title ,  T3.name FROM course AS T1 JOIN teaches AS T2 ON T1.course_id  =  T2.course_id JOIN instructor AS T3 ON T2.id  =  T3.id WHERE YEAR  =  2008 ORDER BY T1.title	college_2
SELECT T1.name FROM instructor AS T1 JOIN advisor AS T2 ON T1.id  =  T2.i_id GROUP BY T2.i_id HAVING count(*)  >  1	college_2
SELECT T1.name FROM instructor AS T1 JOIN advisor AS T2 ON T1.id  =  T2.i_id GROUP BY T2.i_id HAVING count(*)  >  1	college_2
SELECT T1.name FROM student AS T1 JOIN advisor AS T2 ON T1.id  =  T2.s_id GROUP BY T2.s_id HAVING count(*)  >  1	college_2
SELECT T1.name FROM student AS T1 JOIN advisor AS T2 ON T1.id  =  T2.s_id GROUP BY T2.s_id HAVING count(*)  >  1	college_2
SELECT i_id FROM advisor AS T1 JOIN student AS T2 ON T1.s_id  =  T2.id WHERE T2.dept_name  =  'History'	college_2
SELECT i_id FROM advisor AS T1 JOIN student AS T2 ON T1.s_id  =  T2.id WHERE T2.dept_name  =  'History'	college_2
SELECT T2.name ,  T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'History'	college_2
SELECT T2.name ,  T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'History'	college_2
SELECT T1.title FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE building  =  'Chandler' AND semester  =  'Fall' AND YEAR  =  2010	college_2
SELECT T1.title FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE building  =  'Chandler' AND semester  =  'Fall' AND YEAR  =  2010	college_2
SELECT T1.name FROM instructor AS T1 JOIN teaches AS T2 ON T1.id  =  T2.id JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T3.title  =  'C Programming'	college_2
SELECT T1.name FROM instructor AS T1 JOIN teaches AS T2 ON T1.id  =  T2.id JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T3.title  =  'C Programming'	college_2
SELECT T2.name ,  T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math'	college_2
SELECT T2.name ,  T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math'	college_2
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math' ORDER BY T3.tot_cred	college_2
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math' ORDER BY T3.tot_cred	college_2
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id ORDER BY T3.tot_cred DESC LIMIT 1	college_2
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id ORDER BY T3.tot_cred DESC LIMIT 1	college_2
SELECT avg(T1.salary) ,  count(*) FROM instructor AS T1 JOIN department AS T2 ON T1.dept_name  =  T2.dept_name ORDER BY T2.budget DESC LIMIT 1	college_2
SELECT avg(T1.salary) ,  count(*) FROM instructor AS T1 JOIN department AS T2 ON T1.dept_name  =  T2.dept_name ORDER BY T2.budget DESC LIMIT 1	college_2
SELECT T3.title ,  T3.credits FROM classroom AS T1 JOIN SECTION AS T2 ON T1.building  =  T2.building AND T1.room_number  =  T2.room_number JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T1.capacity  =  (SELECT max(capacity) FROM classroom)	college_2
SELECT T3.title ,  T3.credits FROM classroom AS T1 JOIN SECTION AS T2 ON T1.building  =  T2.building AND T1.room_number  =  T2.room_number JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T1.capacity  =  (SELECT max(capacity) FROM classroom)	college_2
SELECT count(DISTINCT T2.id) ,  count(DISTINCT T3.id) ,  T3.dept_name FROM department AS T1 JOIN student AS T2 ON T1.dept_name  =  T2.dept_name JOIN instructor AS T3 ON T1.dept_name  =  T3.dept_name GROUP BY T3.dept_name	college_2
SELECT count(DISTINCT T2.id) ,  count(DISTINCT T3.id) ,  T3.dept_name FROM department AS T1 JOIN student AS T2 ON T1.dept_name  =  T2.dept_name JOIN instructor AS T3 ON T1.dept_name  =  T3.dept_name GROUP BY T3.dept_name	college_2
SELECT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id  =  T2.id WHERE T2.course_id IN (SELECT T4.prereq_id FROM course AS T3 JOIN prereq AS T4 ON T3.course_id  =  T4.course_id WHERE T3.title  =  'International Finance')	college_2
SELECT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id  =  T2.id WHERE T2.course_id IN (SELECT T4.prereq_id FROM course AS T3 JOIN prereq AS T4 ON T3.course_id  =  T4.course_id WHERE T3.title  =  'International Finance')	college_2
SELECT T3.name FROM course AS T1 JOIN takes AS T2 ON T1.course_id  =  T2.course_id JOIN student AS T3 ON T2.id  =  T3.id WHERE T1.dept_name  =  'Statistics'	college_2
SELECT T3.name FROM course AS T1 JOIN takes AS T2 ON T1.course_id  =  T2.course_id JOIN student AS T3 ON T2.id  =  T3.id WHERE T1.dept_name  =  'Statistics'	college_2
SELECT T2.building ,  T2.room_number ,  T2.semester ,  T2.year FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE T1.dept_name  =  'Psychology' ORDER BY T1.title	college_2
SELECT T2.building ,  T2.room_number ,  T2.semester ,  T2.year FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE T1.dept_name  =  'Psychology' ORDER BY T1.title	college_2
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID	college_2
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID	college_2
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID WHERE T1.dept_name  =  'Art'	college_2
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID WHERE T1.dept_name  =  'Art'	college_2
SELECT T3.Name ,  T2.Date ,  T2.Venue FROM debate_people AS T1 JOIN debate AS T2 ON T1.Debate_ID  =  T2.Debate_ID JOIN people AS T3 ON T1.Affirmative  =  T3.People_ID	debate
SELECT T3.Name ,  T2.Date ,  T2.Venue FROM debate_people AS T1 JOIN debate AS T2 ON T1.Debate_ID  =  T2.Debate_ID JOIN people AS T3 ON T1.Negative  =  T3.People_ID ORDER BY T3.Name ASC	debate
SELECT T3.Name FROM debate_people AS T1 JOIN debate AS T2 ON T1.Debate_ID  =  T2.Debate_ID JOIN people AS T3 ON T1.Affirmative  =  T3.People_ID WHERE T2.Num_of_Audience  >  200	debate
SELECT T2.Name ,  COUNT(*) FROM debate_people AS T1 JOIN people AS T2 ON T1.Affirmative  =  T2.People_ID GROUP BY T2.Name	debate
SELECT T2.Name FROM debate_people AS T1 JOIN people AS T2 ON T1.Negative  =  T2.People_ID GROUP BY T2.Name HAVING COUNT(*)  >=  2	debate
SELECT policy_type_code FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t2.customer_details  =  "Dayana Robel"	insurance_and_eClaims
SELECT policy_type_code FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t2.customer_details  =  "Dayana Robel"	insurance_and_eClaims
SELECT sum(t1.amount_claimed) FROM claim_headers AS t1 JOIN claims_documents AS t2 ON t1.claim_header_id  =  t2.claim_id WHERE t2.created_date  =  (SELECT created_date FROM claims_documents ORDER BY created_date LIMIT 1)	insurance_and_eClaims
SELECT sum(t1.amount_claimed) FROM claim_headers AS t1 JOIN claims_documents AS t2 ON t1.claim_header_id  =  t2.claim_id WHERE t2.created_date  =  (SELECT created_date FROM claims_documents ORDER BY created_date LIMIT 1)	insurance_and_eClaims
SELECT t3.customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.policy_id  =  t2.policy_id JOIN customers AS t3 ON t2.customer_id  =  t3.customer_id WHERE t1.amount_claimed  =  (SELECT max(amount_claimed) FROM claim_headers)	insurance_and_eClaims
SELECT t3.customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.policy_id  =  t2.policy_id JOIN customers AS t3 ON t2.customer_id  =  t3.customer_id WHERE t1.amount_claimed  =  (SELECT max(amount_claimed) FROM claim_headers)	insurance_and_eClaims
SELECT t3.customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.policy_id  =  t2.policy_id JOIN customers AS t3 ON t2.customer_id  =  t3.customer_id WHERE t1.amount_piad  =  (SELECT min(amount_piad) FROM claim_headers)	insurance_and_eClaims
SELECT t3.customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.policy_id  =  t2.policy_id JOIN customers AS t3 ON t2.customer_id  =  t3.customer_id WHERE t1.amount_piad  =  (SELECT min(amount_piad) FROM claim_headers)	insurance_and_eClaims
SELECT t2.claim_status_name FROM claims_processing AS t1 JOIN claims_processing_stages AS t2 ON t1.claim_stage_id  =  t2.claim_stage_id GROUP BY t1.claim_stage_id ORDER BY count(*) DESC LIMIT 1	insurance_and_eClaims
SELECT t2.claim_status_name FROM claims_processing AS t1 JOIN claims_processing_stages AS t2 ON t1.claim_stage_id  =  t2.claim_stage_id GROUP BY t1.claim_stage_id ORDER BY count(*) DESC LIMIT 1	insurance_and_eClaims
SELECT DISTINCT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.policy_type_code  =  "Deputy"	insurance_and_eClaims
SELECT DISTINCT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.policy_type_code  =  "Deputy"	insurance_and_eClaims
SELECT DISTINCT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.policy_type_code  =  "Deputy" OR t1.policy_type_code  =  "Uniform"	insurance_and_eClaims
SELECT DISTINCT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.policy_type_code  =  "Deputy" OR t1.policy_type_code  =  "Uniform"	insurance_and_eClaims
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t2.customer_details ORDER BY count(*) DESC LIMIT 1	insurance_and_eClaims
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t2.customer_details ORDER BY count(*) DESC LIMIT 1	insurance_and_eClaims
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.start_date  =  (SELECT max(start_date) FROM policies)	insurance_and_eClaims
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.start_date  =  (SELECT max(start_date) FROM policies)	insurance_and_eClaims
SELECT T1.account_id ,  T1.date_account_opened ,  T1.account_name ,  T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  'Meaghan'	customers_and_invoices
SELECT T1.account_id ,  T1.date_account_opened ,  T1.account_name ,  T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  'Meaghan'	customers_and_invoices
SELECT T1.account_name ,  T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Meaghan" AND T2.customer_last_name  =  "Keeling"	customers_and_invoices
SELECT T1.account_name ,  T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Meaghan" AND T2.customer_last_name  =  "Keeling"	customers_and_invoices
SELECT T2.customer_first_name ,  T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.account_name  =  "900"	customers_and_invoices
SELECT T2.customer_first_name ,  T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.account_name  =  "900"	customers_and_invoices
SELECT DISTINCT T1.customer_first_name ,  T1.customer_last_name ,  T1.phone_number FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id  =  T2.customer_id	customers_and_invoices
SELECT DISTINCT T1.customer_first_name ,  T1.customer_last_name ,  T1.phone_number FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id  =  T2.customer_id	customers_and_invoices
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name ,  count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id	customers_and_invoices
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name ,  count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id	customers_and_invoices
SELECT T2.customer_first_name ,  T1.customer_id FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2	customers_and_invoices
SELECT T2.customer_first_name ,  T1.customer_id FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2	customers_and_invoices
