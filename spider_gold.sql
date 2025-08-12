SELECT count(*) FROM head WHERE age  >  56	department_management
SELECT name ,  born_state ,  age FROM head ORDER BY age	department_management
SELECT creation ,  name ,  budget_in_billions FROM department	department_management
SELECT max(budget_in_billions) ,  min(budget_in_billions) FROM department	department_management
SELECT avg(num_employees) FROM department WHERE ranking BETWEEN 10 AND 15	department_management
SELECT name FROM head WHERE born_state != 'California'	department_management
SELECT born_state FROM head GROUP BY born_state HAVING count(*)  >=  3	department_management
SELECT creation FROM department GROUP BY creation ORDER BY count(*) DESC LIMIT 1	department_management
SELECT count(DISTINCT temporary_acting) FROM management	department_management
SELECT count(*) FROM department WHERE department_id NOT IN (SELECT department_id FROM management);	department_management
SELECT head_id ,  name FROM head WHERE name LIKE '%Ha%'	department_management
SELECT count(*) FROM farm	farm
SELECT count(*) FROM farm	farm
SELECT Total_Horses FROM farm ORDER BY Total_Horses ASC	farm
SELECT Total_Horses FROM farm ORDER BY Total_Horses ASC	farm
SELECT Hosts FROM farm_competition WHERE Theme !=  'Aliens'	farm
SELECT Hosts FROM farm_competition WHERE Theme !=  'Aliens'	farm
SELECT Theme FROM farm_competition ORDER BY YEAR ASC	farm
SELECT Theme FROM farm_competition ORDER BY YEAR ASC	farm
SELECT avg(Working_Horses) FROM farm WHERE Total_Horses  >  5000	farm
SELECT avg(Working_Horses) FROM farm WHERE Total_Horses  >  5000	farm
SELECT max(Cows) ,  min(Cows) FROM farm	farm
SELECT max(Cows) ,  min(Cows) FROM farm	farm
SELECT count(DISTINCT Status) FROM city	farm
SELECT count(DISTINCT Status) FROM city	farm
SELECT Official_Name FROM city ORDER BY Population DESC	farm
SELECT Official_Name FROM city ORDER BY Population DESC	farm
SELECT Official_Name ,  Status FROM city ORDER BY Population DESC LIMIT 1	farm
SELECT Official_Name ,  Status FROM city ORDER BY Population DESC LIMIT 1	farm
SELECT Status ,  avg(Population) FROM city GROUP BY Status	farm
SELECT Status ,  avg(Population) FROM city GROUP BY Status	farm
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) ASC	farm
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) ASC	farm
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) DESC LIMIT 1	farm
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) DESC LIMIT 1	farm
SELECT Official_Name FROM city WHERE City_ID NOT IN (SELECT Host_city_ID FROM farm_competition)	farm
SELECT Official_Name FROM city WHERE City_ID NOT IN (SELECT Host_city_ID FROM farm_competition)	farm
SELECT Status FROM city WHERE Population  >  1500 INTERSECT SELECT Status FROM city WHERE Population  <  500	farm
SELECT Status FROM city WHERE Population  >  1500 INTERSECT SELECT Status FROM city WHERE Population  <  500	farm
SELECT Official_Name FROM city WHERE Population  >  1500 OR Population  <  500	farm
SELECT Official_Name FROM city WHERE Population  >  1500 OR Population  <  500	farm
SELECT Census_Ranking FROM city WHERE Status !=  "Village"	farm
SELECT Census_Ranking FROM city WHERE Status !=  "Village"	farm
SELECT student_id FROM student_course_registrations GROUP BY student_id ORDER BY count(*) LIMIT 1	student_assessment
SELECT student_id FROM student_course_registrations GROUP BY student_id ORDER BY count(*) LIMIT 1	student_assessment
SELECT student_id FROM students WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance)	student_assessment
SELECT student_id FROM students WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance)	student_assessment
SELECT student_id FROM student_course_attendance	student_assessment
SELECT student_id FROM student_course_attendance	student_assessment
SELECT candidate_id FROM candidate_assessments ORDER BY assessment_date DESC LIMIT 1	student_assessment
SELECT candidate_id FROM candidate_assessments ORDER BY assessment_date DESC LIMIT 1	student_assessment
SELECT candidate_id FROM candidate_assessments WHERE asessment_outcome_code = "Pass"	student_assessment
SELECT candidate_id FROM candidate_assessments WHERE asessment_outcome_code = "Pass"	student_assessment
SELECT student_id FROM student_course_attendance WHERE course_id  =  301	student_assessment
SELECT student_id FROM student_course_attendance WHERE course_id  =  301	student_assessment
SELECT student_id FROM student_course_attendance WHERE course_id = 301 ORDER BY date_of_attendance DESC LIMIT 1	student_assessment
SELECT student_id FROM student_course_attendance WHERE course_id = 301 ORDER BY date_of_attendance DESC LIMIT 1	student_assessment
SELECT course_name FROM courses ORDER BY course_name	student_assessment
SELECT course_name FROM courses ORDER BY course_name	student_assessment
SELECT first_name FROM people ORDER BY first_name	student_assessment
SELECT first_name FROM people ORDER BY first_name	student_assessment
SELECT student_id FROM student_course_registrations UNION SELECT student_id FROM student_course_attendance	student_assessment
SELECT student_id FROM student_course_registrations UNION SELECT student_id FROM student_course_attendance	student_assessment
SELECT course_id FROM student_course_registrations WHERE student_id = 121 UNION SELECT course_id FROM student_course_attendance WHERE student_id = 121	student_assessment
SELECT course_id FROM student_course_registrations WHERE student_id = 121 UNION SELECT course_id FROM student_course_attendance WHERE student_id = 121	student_assessment
SELECT * FROM student_course_registrations WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance)	student_assessment
SELECT * FROM student_course_registrations WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance)	student_assessment
SELECT date FROM weather WHERE max_temperature_f  >  85	bike_1
SELECT date FROM weather WHERE max_temperature_f  >  85	bike_1
SELECT name FROM station WHERE lat  <  37.5	bike_1
SELECT name FROM station WHERE lat  <  37.5	bike_1
SELECT city ,  max(lat) FROM station GROUP BY city	bike_1
SELECT city ,  max(lat) FROM station GROUP BY city	bike_1
SELECT start_station_name ,  end_station_name FROM trip ORDER BY id LIMIT 3	bike_1
SELECT start_station_name ,  end_station_name FROM trip ORDER BY id LIMIT 3	bike_1
SELECT avg(lat) ,  avg(long) FROM station WHERE city  =  "San Jose"	bike_1
SELECT avg(lat) ,  avg(long) FROM station WHERE city  =  "San Jose"	bike_1
SELECT id FROM trip ORDER BY duration LIMIT 1	bike_1
SELECT id FROM trip ORDER BY duration LIMIT 1	bike_1
SELECT sum(duration) ,  max(duration) FROM trip WHERE bike_id  =  636	bike_1
SELECT sum(duration) ,  max(duration) FROM trip WHERE bike_id  =  636	bike_1
SELECT zip_code  ,  avg(mean_temperature_f) FROM weather WHERE date LIKE "8/%" GROUP BY zip_code	bike_1
SELECT zip_code  ,  avg(mean_temperature_f) FROM weather WHERE date LIKE "8/%" GROUP BY zip_code	bike_1
SELECT count(DISTINCT bike_id) FROM trip	bike_1
SELECT count(DISTINCT bike_id) FROM trip	bike_1
SELECT count(DISTINCT city) FROM station	bike_1
SELECT count(DISTINCT city) FROM station	bike_1
SELECT COUNT(*) FROM station WHERE city  =  "Mountain View"	bike_1
SELECT COUNT(*) FROM station WHERE city  =  "Mountain View"	bike_1
SELECT start_station_name ,  start_station_id FROM trip WHERE start_date LIKE "8/%" GROUP BY start_station_name ORDER BY COUNT(*) DESC LIMIT 1	bike_1
SELECT start_station_name ,  start_station_id FROM trip WHERE start_date LIKE "8/%" GROUP BY start_station_name ORDER BY COUNT(*) DESC LIMIT 1	bike_1
SELECT bike_id FROM trip WHERE zip_code  =  94002 GROUP BY bike_id ORDER BY COUNT(*) DESC LIMIT 1	bike_1
SELECT bike_id FROM trip WHERE zip_code  =  94002 GROUP BY bike_id ORDER BY COUNT(*) DESC LIMIT 1	bike_1
SELECT COUNT(*) FROM weather WHERE mean_humidity  >  50 AND mean_visibility_miles  >  8	bike_1
SELECT COUNT(*) FROM weather WHERE mean_humidity  >  50 AND mean_visibility_miles  >  8	bike_1
SELECT id FROM station WHERE city  =  "San Francisco" INTERSECT SELECT station_id FROM status GROUP BY station_id HAVING avg(bikes_available)  >  10	bike_1
SELECT id FROM station WHERE city  =  "San Francisco" INTERSECT SELECT station_id FROM status GROUP BY station_id HAVING avg(bikes_available)  >  10	bike_1
SELECT cloud_cover FROM weather WHERE zip_code  =  94107 GROUP BY cloud_cover ORDER BY COUNT (*) DESC LIMIT 3	bike_1
SELECT cloud_cover FROM weather WHERE zip_code  =  94107 GROUP BY cloud_cover ORDER BY COUNT (*) DESC LIMIT 3	bike_1
SELECT zip_code FROM weather GROUP BY zip_code ORDER BY avg(mean_sea_level_pressure_inches) LIMIT 1	bike_1
SELECT zip_code FROM weather GROUP BY zip_code ORDER BY avg(mean_sea_level_pressure_inches) LIMIT 1	bike_1
SELECT avg(bikes_available) FROM status WHERE station_id NOT IN (SELECT id FROM station WHERE city  =  "Palo Alto")	bike_1
SELECT avg(bikes_available) FROM status WHERE station_id NOT IN (SELECT id FROM station WHERE city  =  "Palo Alto")	bike_1
SELECT avg(long) FROM station WHERE id NOT IN (SELECT station_id FROM status GROUP BY station_id HAVING max(bikes_available)  >  10)	bike_1
SELECT avg(long) FROM station WHERE id NOT IN (SELECT station_id FROM status GROUP BY station_id HAVING max(bikes_available)  >  10)	bike_1
SELECT date ,  zip_code FROM weather WHERE max_temperature_f  >=  80	bike_1
SELECT date ,  zip_code FROM weather WHERE max_temperature_f  >=  80	bike_1
SELECT zip_code , count(*) FROM weather WHERE max_wind_Speed_mph  >=  25 GROUP BY zip_code	bike_1
SELECT zip_code , count(*) FROM weather WHERE max_wind_Speed_mph  >=  25 GROUP BY zip_code	bike_1
SELECT date ,  zip_code FROM weather WHERE min_dew_point_f  <  (SELECT min(min_dew_point_f) FROM weather WHERE zip_code  =  94107)	bike_1
SELECT date ,  zip_code FROM weather WHERE min_dew_point_f  <  (SELECT min(min_dew_point_f) FROM weather WHERE zip_code  =  94107)	bike_1
SELECT date FROM weather WHERE zip_code  =  94107 AND EVENTS != "Fog" AND EVENTS != "Rain"	bike_1
SELECT date FROM weather WHERE zip_code  =  94107 AND EVENTS != "Fog" AND EVENTS != "Rain"	bike_1
SELECT id FROM station WHERE lat  >  37.4 EXCEPT SELECT station_id FROM status GROUP BY station_id HAVING min(bikes_available)  <  7	bike_1
SELECT id FROM station WHERE lat  >  37.4 EXCEPT SELECT station_id FROM status GROUP BY station_id HAVING min(bikes_available)  <  7	bike_1
SELECT name ,  lat ,  city FROM station ORDER BY lat LIMIT 1	bike_1
SELECT name ,  lat ,  city FROM station ORDER BY lat LIMIT 1	bike_1
SELECT date ,  mean_temperature_f ,  mean_humidity FROM weather ORDER BY max_gust_speed_mph DESC LIMIT 3	bike_1
SELECT date ,  mean_temperature_f ,  mean_humidity FROM weather ORDER BY max_gust_speed_mph DESC LIMIT 3	bike_1
SELECT city ,  COUNT(*) FROM station GROUP BY city HAVING COUNT(*)  >=  15	bike_1
SELECT city ,  COUNT(*) FROM station GROUP BY city HAVING COUNT(*)  >=  15	bike_1
SELECT start_station_id ,  start_station_name FROM trip GROUP BY start_station_name HAVING COUNT(*)  >=  200	bike_1
SELECT start_station_id ,  start_station_name FROM trip GROUP BY start_station_name HAVING COUNT(*)  >=  200	bike_1
SELECT zip_code FROM weather GROUP BY zip_code HAVING avg(mean_visibility_miles)  <  10	bike_1
SELECT zip_code FROM weather GROUP BY zip_code HAVING avg(mean_visibility_miles)  <  10	bike_1
SELECT city FROM station GROUP BY city ORDER BY max(lat) DESC	bike_1
SELECT city FROM station GROUP BY city ORDER BY max(lat) DESC	bike_1
SELECT date ,  cloud_cover FROM weather ORDER BY cloud_cover DESC LIMIT 5	bike_1
SELECT date ,  cloud_cover FROM weather ORDER BY cloud_cover DESC LIMIT 5	bike_1
SELECT id ,  duration FROM trip ORDER BY duration DESC LIMIT 3	bike_1
SELECT id ,  duration FROM trip ORDER BY duration DESC LIMIT 3	bike_1
SELECT DISTINCT start_station_name FROM trip WHERE duration  <  100	bike_1
SELECT DISTINCT start_station_name FROM trip WHERE duration  <  100	bike_1
SELECT DISTINCT zip_code FROM weather EXCEPT SELECT DISTINCT zip_code FROM weather WHERE max_dew_point_f  >=  70	bike_1
SELECT DISTINCT zip_code FROM weather EXCEPT SELECT DISTINCT zip_code FROM weather WHERE max_dew_point_f  >=  70	bike_1
SELECT id FROM trip WHERE duration  >=  (SELECT avg(duration) FROM trip WHERE zip_code  =  94103)	bike_1
SELECT id FROM trip WHERE duration  >=  (SELECT avg(duration) FROM trip WHERE zip_code  =  94103)	bike_1
SELECT date FROM weather WHERE mean_sea_level_pressure_inches BETWEEN 30.3 AND 31	bike_1
SELECT date FROM weather WHERE mean_sea_level_pressure_inches BETWEEN 30.3 AND 31	bike_1
SELECT date ,  max_temperature_f - min_temperature_f FROM weather ORDER BY max_temperature_f - min_temperature_f LIMIT 1	bike_1
SELECT date ,  max_temperature_f - min_temperature_f FROM weather ORDER BY max_temperature_f - min_temperature_f LIMIT 1	bike_1
SELECT zip_code FROM weather GROUP BY zip_code HAVING avg(mean_humidity)  <  70 INTERSECT SELECT zip_code FROM trip GROUP BY zip_code HAVING count(*)  >=  100	bike_1
SELECT zip_code FROM weather GROUP BY zip_code HAVING avg(mean_humidity)  <  70 INTERSECT SELECT zip_code FROM trip GROUP BY zip_code HAVING count(*)  >=  100	bike_1
SELECT name FROM station WHERE city  =  "Palo Alto" EXCEPT SELECT end_station_name FROM trip GROUP BY end_station_name HAVING count(*)  >  100	bike_1
SELECT name FROM station WHERE city  =  "Palo Alto" EXCEPT SELECT end_station_name FROM trip GROUP BY end_station_name HAVING count(*)  >  100	bike_1
SELECT count(*) FROM book	book_2
SELECT Writer FROM book ORDER BY Writer ASC	book_2
SELECT Title FROM book ORDER BY Issues ASC	book_2
SELECT Title FROM book WHERE Writer != "Elaine Lee"	book_2
SELECT Title ,  Issues FROM book	book_2
SELECT Publication_Date FROM publication ORDER BY Price DESC	book_2
SELECT DISTINCT Publisher FROM publication WHERE Price  >  5000000	book_2
SELECT Publisher FROM publication ORDER BY Price DESC LIMIT 1	book_2
SELECT Publication_Date FROM publication ORDER BY Price ASC LIMIT 3	book_2
SELECT Publisher FROM publication GROUP BY Publisher HAVING COUNT(*)  >  1	book_2
SELECT Publisher ,  COUNT(*) FROM publication GROUP BY Publisher	book_2
SELECT Publication_Date FROM publication GROUP BY Publication_Date ORDER BY COUNT(*) DESC LIMIT 1	book_2
SELECT Writer FROM book GROUP BY Writer HAVING COUNT(*)  >  1	book_2
SELECT Title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM publication)	book_2
SELECT Publisher FROM publication WHERE Price  >  10000000 INTERSECT SELECT Publisher FROM publication WHERE Price  <  5000000	book_2
SELECT COUNT (DISTINCT Publication_Date) FROM publication	book_2
SELECT COUNT (DISTINCT Publication_Date) FROM publication	book_2
SELECT Price FROM publication WHERE Publisher  =  "Person" OR Publisher  =  "Wiley"	book_2
SELECT count(*) FROM actor	musical
SELECT count(*) FROM actor	musical
SELECT Name FROM actor ORDER BY Name ASC	musical
SELECT Name FROM actor ORDER BY Name ASC	musical
SELECT Character ,  Duration FROM actor	musical
SELECT Character ,  Duration FROM actor	musical
SELECT Name FROM actor WHERE Age != 20	musical
SELECT Name FROM actor WHERE Age != 20	musical
SELECT Character FROM actor ORDER BY age DESC	musical
SELECT Character FROM actor ORDER BY age DESC	musical
SELECT Duration FROM actor ORDER BY Age DESC LIMIT 1	musical
SELECT Duration FROM actor ORDER BY Age DESC LIMIT 1	musical
SELECT Name FROM musical WHERE Nominee  =  "Bob Fosse"	musical
SELECT Name FROM musical WHERE Nominee  =  "Bob Fosse"	musical
SELECT DISTINCT Nominee FROM musical WHERE Award != "Tony Award"	musical
SELECT DISTINCT Nominee FROM musical WHERE Award != "Tony Award"	musical
SELECT Nominee ,  COUNT(*) FROM musical GROUP BY Nominee	musical
SELECT Nominee ,  COUNT(*) FROM musical GROUP BY Nominee	musical
SELECT Nominee FROM musical GROUP BY Nominee ORDER BY COUNT(*) DESC LIMIT 1	musical
SELECT Nominee FROM musical GROUP BY Nominee ORDER BY COUNT(*) DESC LIMIT 1	musical
SELECT RESULT FROM musical GROUP BY RESULT ORDER BY COUNT(*) DESC LIMIT 1	musical
SELECT RESULT FROM musical GROUP BY RESULT ORDER BY COUNT(*) DESC LIMIT 1	musical
SELECT Nominee FROM musical GROUP BY Nominee HAVING COUNT(*)  >  2	musical
SELECT Nominee FROM musical GROUP BY Nominee HAVING COUNT(*)  >  2	musical
SELECT Name FROM musical WHERE Musical_ID NOT IN (SELECT Musical_ID FROM actor)	musical
SELECT Name FROM musical WHERE Musical_ID NOT IN (SELECT Musical_ID FROM actor)	musical
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" INTERSECT SELECT Nominee FROM musical WHERE Award  =  "Drama Desk Award"	musical
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" INTERSECT SELECT Nominee FROM musical WHERE Award  =  "Drama Desk Award"	musical
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" OR Award  =  "Cleavant Derricks"	musical
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" OR Award  =  "Cleavant Derricks"	musical
SELECT email FROM user_profiles WHERE name  =  'Mary'	twitter_1
SELECT partitionid FROM user_profiles WHERE name  =  'Iron Man'	twitter_1
SELECT count(*) FROM user_profiles	twitter_1
SELECT count(*) FROM follows	twitter_1
SELECT count(*) FROM follows GROUP BY f1	twitter_1
SELECT count(*) FROM tweets	twitter_1
SELECT count(DISTINCT UID) FROM tweets	twitter_1
SELECT name ,  email FROM user_profiles WHERE name LIKE '%Swift%'	twitter_1
SELECT name FROM user_profiles WHERE email LIKE '%superstar%' OR email LIKE '%edu%'	twitter_1
SELECT text FROM tweets WHERE text LIKE '%intern%'	twitter_1
SELECT name ,  email FROM user_profiles WHERE followers  >  1000	twitter_1
SELECT name FROM user_profiles ORDER BY followers DESC LIMIT 1	twitter_1
SELECT name ,  email FROM user_profiles ORDER BY followers LIMIT 1	twitter_1
SELECT name ,  followers FROM user_profiles ORDER BY followers DESC	twitter_1
SELECT name FROM user_profiles ORDER BY followers DESC LIMIT 5	twitter_1
SELECT text FROM tweets ORDER BY createdate	twitter_1
SELECT avg(followers) FROM user_profiles WHERE UID NOT IN (SELECT UID FROM tweets)	twitter_1
SELECT avg(followers) FROM user_profiles WHERE UID IN (SELECT UID FROM tweets)	twitter_1
SELECT max(followers) ,  sum(followers) FROM user_profiles	twitter_1
SELECT distinct(catalog_entry_name) FROM catalog_contents	product_catalog
SELECT distinct(catalog_entry_name) FROM catalog_contents	product_catalog
SELECT attribute_data_type FROM Attribute_Definitions GROUP BY attribute_data_type HAVING count(*)  >  3	product_catalog
SELECT attribute_data_type FROM Attribute_Definitions GROUP BY attribute_data_type HAVING count(*)  >  3	product_catalog
SELECT attribute_data_type FROM Attribute_Definitions WHERE attribute_name  =  "Green"	product_catalog
SELECT attribute_data_type FROM Attribute_Definitions WHERE attribute_name  =  "Green"	product_catalog
SELECT catalog_level_name ,  catalog_level_number FROM Catalog_Structure WHERE catalog_level_number BETWEEN 5 AND 10	product_catalog
SELECT catalog_level_name ,  catalog_level_number FROM Catalog_Structure WHERE catalog_level_number BETWEEN 5 AND 10	product_catalog
SELECT distinct(catalog_publisher) FROM catalogs WHERE catalog_publisher LIKE "%Murray%"	product_catalog
SELECT distinct(catalog_publisher) FROM catalogs WHERE catalog_publisher LIKE "%Murray%"	product_catalog
SELECT catalog_publisher FROM catalogs GROUP BY catalog_publisher ORDER BY count(*) DESC LIMIT 1	product_catalog
SELECT catalog_publisher FROM catalogs GROUP BY catalog_publisher ORDER BY count(*) DESC LIMIT 1	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY price_in_dollars DESC LIMIT 1	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY price_in_dollars DESC LIMIT 1	product_catalog
SELECT avg(price_in_euros) ,  min(price_in_euros) FROM catalog_contents	product_catalog
SELECT avg(price_in_euros) ,  min(price_in_euros) FROM catalog_contents	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY height DESC LIMIT 1	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY height DESC LIMIT 1	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY capacity ASC LIMIT 1	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY capacity ASC LIMIT 1	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE product_stock_number LIKE "2%"	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE product_stock_number LIKE "2%"	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE LENGTH  <  3 OR width  >  5	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE LENGTH  <  3 OR width  >  5	product_catalog
SELECT catalog_entry_name ,  capacity FROM Catalog_Contents WHERE price_in_dollars  >  700	product_catalog
SELECT catalog_entry_name ,  capacity FROM Catalog_Contents WHERE price_in_dollars  >  700	product_catalog
SELECT date_of_latest_revision FROM Catalogs GROUP BY date_of_latest_revision HAVING count(*)  >  1	product_catalog
SELECT date_of_latest_revision FROM Catalogs GROUP BY date_of_latest_revision HAVING count(*)  >  1	product_catalog
SELECT count(*) FROM catalog_contents	product_catalog
SELECT count(*) FROM catalog_contents	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE next_entry_id  >  8	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE next_entry_id  >  8	product_catalog
SELECT count(*) FROM Aircraft	flight_1
SELECT count(*) FROM Aircraft	flight_1
SELECT name ,  distance FROM Aircraft	flight_1
SELECT name ,  distance FROM Aircraft	flight_1
SELECT aid FROM Aircraft WHERE distance  >  1000	flight_1
SELECT aid FROM Aircraft WHERE distance  >  1000	flight_1
SELECT count(*) FROM Aircraft WHERE distance BETWEEN 1000 AND 5000	flight_1
SELECT count(*) FROM Aircraft WHERE distance BETWEEN 1000 AND 5000	flight_1
SELECT name ,  distance FROM Aircraft WHERE aid  =  12	flight_1
SELECT name ,  distance FROM Aircraft WHERE aid  =  12	flight_1
SELECT min(distance) ,  avg(distance) ,  max(distance) FROM Aircraft	flight_1
SELECT min(distance) ,  avg(distance) ,  max(distance) FROM Aircraft	flight_1
SELECT aid ,  name FROM Aircraft ORDER BY distance DESC LIMIT 1	flight_1
SELECT aid ,  name FROM Aircraft ORDER BY distance DESC LIMIT 1	flight_1
SELECT name FROM Aircraft ORDER BY distance LIMIT 3	flight_1
SELECT name FROM Aircraft ORDER BY distance LIMIT 3	flight_1
SELECT name FROM Aircraft WHERE distance  >  (SELECT avg(distance) FROM Aircraft)	flight_1
SELECT name FROM Aircraft WHERE distance  >  (SELECT avg(distance) FROM Aircraft)	flight_1
SELECT count(*) FROM Employee	flight_1
SELECT count(*) FROM Employee	flight_1
SELECT name ,  salary FROM Employee ORDER BY salary	flight_1
SELECT name ,  salary FROM Employee ORDER BY salary	flight_1
SELECT eid FROM Employee WHERE salary  >  100000	flight_1
SELECT eid FROM Employee WHERE salary  >  100000	flight_1
SELECT count(*) FROM Employee WHERE salary BETWEEN 100000 AND 200000	flight_1
SELECT count(*) FROM Employee WHERE salary BETWEEN 100000 AND 200000	flight_1
SELECT name ,  salary FROM Employee WHERE eid  =  242518965	flight_1
SELECT name ,  salary FROM Employee WHERE eid  =  242518965	flight_1
SELECT avg(salary) ,  max(salary) FROM Employee	flight_1
SELECT avg(salary) ,  max(salary) FROM Employee	flight_1
SELECT eid ,  name FROM Employee ORDER BY salary DESC LIMIT 1	flight_1
SELECT eid ,  name FROM Employee ORDER BY salary DESC LIMIT 1	flight_1
SELECT name FROM Employee ORDER BY salary ASC LIMIT 3	flight_1
SELECT name FROM Employee ORDER BY salary ASC LIMIT 3	flight_1
SELECT name FROM Employee WHERE salary  >  (SELECT avg(salary) FROM Employee)	flight_1
SELECT name FROM Employee WHERE salary  >  (SELECT avg(salary) FROM Employee)	flight_1
SELECT eid ,  salary FROM Employee WHERE name  =  'Mark Young'	flight_1
SELECT eid ,  salary FROM Employee WHERE name  =  'Mark Young'	flight_1
SELECT count(*) FROM Flight	flight_1
SELECT count(*) FROM Flight	flight_1
SELECT flno ,  origin ,  destination FROM Flight ORDER BY origin	flight_1
SELECT flno ,  origin ,  destination FROM Flight ORDER BY origin	flight_1
SELECT flno FROM Flight WHERE origin  =  "Los Angeles"	flight_1
SELECT flno FROM Flight WHERE origin  =  "Los Angeles"	flight_1
SELECT origin FROM Flight WHERE destination  =  "Honolulu"	flight_1
SELECT origin FROM Flight WHERE destination  =  "Honolulu"	flight_1
SELECT departure_date ,  arrival_date FROM Flight WHERE origin  =  "Los Angeles" AND destination  =  "Honolulu"	flight_1
SELECT departure_date ,  arrival_date FROM Flight WHERE origin  =  "Los Angeles" AND destination  =  "Honolulu"	flight_1
SELECT flno FROM Flight WHERE distance  >  2000	flight_1
SELECT flno FROM Flight WHERE distance  >  2000	flight_1
SELECT avg(price) FROM Flight WHERE origin  =  "Los Angeles" AND destination  =  "Honolulu"	flight_1
SELECT avg(price) FROM Flight WHERE origin  =  "Los Angeles" AND destination  =  "Honolulu"	flight_1
SELECT origin ,  destination FROM Flight WHERE price  >  300	flight_1
SELECT origin ,  destination FROM Flight WHERE price  >  300	flight_1
SELECT flno ,  distance FROM Flight ORDER BY price DESC LIMIT 1	flight_1
SELECT flno ,  distance FROM Flight ORDER BY price DESC LIMIT 1	flight_1
SELECT flno FROM Flight ORDER BY distance ASC LIMIT 3	flight_1
SELECT flno FROM Flight ORDER BY distance ASC LIMIT 3	flight_1
SELECT avg(distance) ,  avg(price) FROM Flight WHERE origin  =  "Los Angeles"	flight_1
SELECT avg(distance) ,  avg(price) FROM Flight WHERE origin  =  "Los Angeles"	flight_1
SELECT origin ,  count(*) FROM Flight GROUP BY origin	flight_1
SELECT origin ,  count(*) FROM Flight GROUP BY origin	flight_1
SELECT destination ,  count(*) FROM Flight GROUP BY destination	flight_1
SELECT destination ,  count(*) FROM Flight GROUP BY destination	flight_1
SELECT origin FROM Flight GROUP BY origin ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT origin FROM Flight GROUP BY origin ORDER BY count(*) DESC LIMIT 1	flight_1
SELECT destination FROM Flight GROUP BY destination ORDER BY count(*) LIMIT 1	flight_1
SELECT destination FROM Flight GROUP BY destination ORDER BY count(*) LIMIT 1	flight_1
SELECT count(DISTINCT eid) FROM Certificate	flight_1
SELECT count(DISTINCT eid) FROM Certificate	flight_1
SELECT eid FROM Employee EXCEPT SELECT eid FROM Certificate	flight_1
SELECT eid FROM Employee EXCEPT SELECT eid FROM Certificate	flight_1
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800"	flight_1
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800"	flight_1
SELECT count(DISTINCT allergy) FROM Allergy_type	allergy_1
SELECT count(DISTINCT allergy) FROM Allergy_type	allergy_1
SELECT count(DISTINCT allergytype) FROM Allergy_type	allergy_1
SELECT count(DISTINCT allergytype) FROM Allergy_type	allergy_1
SELECT DISTINCT allergytype FROM Allergy_type	allergy_1
SELECT DISTINCT allergytype FROM Allergy_type	allergy_1
SELECT allergy ,  allergytype FROM Allergy_type	allergy_1
SELECT allergy ,  allergytype FROM Allergy_type	allergy_1
SELECT DISTINCT allergy FROM Allergy_type WHERE allergytype  =  "food"	allergy_1
SELECT DISTINCT allergy FROM Allergy_type WHERE allergytype  =  "food"	allergy_1
SELECT allergytype FROM Allergy_type WHERE allergy  =  "Cat"	allergy_1
SELECT allergytype FROM Allergy_type WHERE allergy  =  "Cat"	allergy_1
SELECT count(*) FROM Allergy_type WHERE allergytype  =  "animal"	allergy_1
SELECT count(*) FROM Allergy_type WHERE allergytype  =  "animal"	allergy_1
SELECT allergytype ,  count(*) FROM Allergy_type GROUP BY allergytype	allergy_1
SELECT allergytype ,  count(*) FROM Allergy_type GROUP BY allergytype	allergy_1
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) ASC LIMIT 1	allergy_1
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) ASC LIMIT 1	allergy_1
SELECT count(*) FROM Student	allergy_1
SELECT count(*) FROM Student	allergy_1
SELECT Fname ,  Lname FROM Student	allergy_1
SELECT Fname ,  Lname FROM Student	allergy_1
SELECT count(DISTINCT advisor) FROM Student	allergy_1
SELECT count(DISTINCT advisor) FROM Student	allergy_1
SELECT DISTINCT Major FROM Student	allergy_1
SELECT DISTINCT Major FROM Student	allergy_1
SELECT DISTINCT city_code FROM Student	allergy_1
SELECT DISTINCT city_code FROM Student	allergy_1
SELECT Fname ,  Lname ,  Age FROM Student WHERE Sex  =  'F'	allergy_1
SELECT Fname ,  Lname ,  Age FROM Student WHERE Sex  =  'F'	allergy_1
SELECT StuID FROM Student WHERE Sex  =  'M'	allergy_1
SELECT StuID FROM Student WHERE Sex  =  'M'	allergy_1
SELECT count(*) FROM Student WHERE age  =  18	allergy_1
SELECT count(*) FROM Student WHERE age  =  18	allergy_1
SELECT StuID FROM Student WHERE age  >  20	allergy_1
SELECT StuID FROM Student WHERE age  >  20	allergy_1
SELECT city_code FROM Student WHERE LName  =  "Kim"	allergy_1
SELECT city_code FROM Student WHERE LName  =  "Kim"	allergy_1
SELECT Advisor FROM Student WHERE StuID  =  1004	allergy_1
SELECT Advisor FROM Student WHERE StuID  =  1004	allergy_1
SELECT count(*) FROM Student WHERE city_code  =  "HKG" OR city_code  =  "CHI"	allergy_1
SELECT count(*) FROM Student WHERE city_code  =  "HKG" OR city_code  =  "CHI"	allergy_1
SELECT min(age) ,  avg(age) ,  max(age) FROM Student	allergy_1
SELECT min(age) ,  avg(age) ,  max(age) FROM Student	allergy_1
SELECT LName FROM Student WHERE age  =  (SELECT min(age) FROM Student)	allergy_1
SELECT LName FROM Student WHERE age  =  (SELECT min(age) FROM Student)	allergy_1
SELECT StuID FROM Student WHERE age  =  (SELECT max(age) FROM Student)	allergy_1
SELECT StuID FROM Student WHERE age  =  (SELECT max(age) FROM Student)	allergy_1
SELECT major ,  count(*) FROM Student GROUP BY major	allergy_1
SELECT major ,  count(*) FROM Student GROUP BY major	allergy_1
SELECT major FROM Student GROUP BY major ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT major FROM Student GROUP BY major ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT age ,  count(*) FROM Student GROUP BY age	allergy_1
SELECT age ,  count(*) FROM Student GROUP BY age	allergy_1
SELECT avg(age) ,  sex FROM Student GROUP BY sex	allergy_1
SELECT avg(age) ,  sex FROM Student GROUP BY sex	allergy_1
SELECT city_code ,  count(*) FROM Student GROUP BY city_code	allergy_1
SELECT city_code ,  count(*) FROM Student GROUP BY city_code	allergy_1
SELECT advisor ,  count(*) FROM Student GROUP BY advisor	allergy_1
SELECT advisor ,  count(*) FROM Student GROUP BY advisor	allergy_1
SELECT advisor FROM Student GROUP BY advisor ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT advisor FROM Student GROUP BY advisor ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT count(*) FROM Has_allergy WHERE Allergy  =  "Cat"	allergy_1
SELECT count(*) FROM Has_allergy WHERE Allergy  =  "Cat"	allergy_1
SELECT StuID FROM Has_allergy GROUP BY StuID HAVING count(*)  >=  2	allergy_1
SELECT StuID FROM Has_allergy GROUP BY StuID HAVING count(*)  >=  2	allergy_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_allergy	allergy_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_allergy	allergy_1
SELECT Allergy FROM Has_allergy GROUP BY Allergy ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT Allergy FROM Has_allergy GROUP BY Allergy ORDER BY count(*) DESC LIMIT 1	allergy_1
SELECT Allergy ,  count(*) FROM Has_allergy GROUP BY Allergy	allergy_1
SELECT Allergy ,  count(*) FROM Has_allergy GROUP BY Allergy	allergy_1
SELECT lname ,  age FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Milk" INTERSECT SELECT StuID FROM Has_allergy WHERE Allergy  =  "Cat")	allergy_1
SELECT lname ,  age FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Milk" INTERSECT SELECT StuID FROM Has_allergy WHERE Allergy  =  "Cat")	allergy_1
SELECT fname ,  sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Milk" EXCEPT SELECT StuID FROM Has_allergy WHERE Allergy  =  "Cat")	allergy_1
SELECT fname ,  sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Milk" EXCEPT SELECT StuID FROM Has_allergy WHERE Allergy  =  "Cat")	allergy_1
SELECT avg(age) FROM Student WHERE StuID IN ( SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food" INTERSECT SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "animal")	allergy_1
SELECT avg(age) FROM Student WHERE StuID IN ( SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food" INTERSECT SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "animal")	allergy_1
SELECT fname ,  lname FROM Student WHERE StuID NOT IN (SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food")	allergy_1
SELECT fname ,  lname FROM Student WHERE StuID NOT IN (SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food")	allergy_1
SELECT count(*) FROM Student WHERE sex  =  "M" AND StuID IN (SELECT StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food")	allergy_1
SELECT count(*) FROM Student WHERE sex  =  "M" AND StuID IN (SELECT StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food")	allergy_1
SELECT count(*) FROM Student WHERE age  >  18 AND StuID NOT IN ( SELECT StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food" OR T2.allergytype  =  "animal")	allergy_1
SELECT count(*) FROM Student WHERE age  >  18 AND StuID NOT IN ( SELECT StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food" OR T2.allergytype  =  "animal")	allergy_1
SELECT fname ,  major FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Soy")	allergy_1
SELECT fname ,  major FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Soy")	allergy_1
SELECT billing_country ,  COUNT(*) FROM invoices GROUP BY billing_country ORDER BY count(*) DESC LIMIT 5;	store_1
SELECT billing_country ,  COUNT(*) FROM invoices GROUP BY billing_country ORDER BY count(*) DESC LIMIT 5;	store_1
SELECT billing_country ,  SUM(total) FROM invoices GROUP BY billing_country ORDER BY SUM(total) DESC LIMIT 8;	store_1
SELECT billing_country ,  SUM(total) FROM invoices GROUP BY billing_country ORDER BY SUM(total) DESC LIMIT 8;	store_1
SELECT billing_country ,  AVG(total) FROM invoices GROUP BY billing_country ORDER BY AVG(total) DESC LIMIT 10;	store_1
SELECT billing_country ,  AVG(total) FROM invoices GROUP BY billing_country ORDER BY AVG(total) DESC LIMIT 10;	store_1
SELECT title FROM albums;	store_1
SELECT title FROM albums;	store_1
SELECT title FROM albums ORDER BY title;	store_1
SELECT title FROM albums ORDER BY title;	store_1
SELECT title FROM albums WHERE title LIKE 'A%' ORDER BY title;	store_1
SELECT title FROM albums WHERE title LIKE 'A%' ORDER BY title;	store_1
SELECT sum(total) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL";	store_1
SELECT sum(total) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL";	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL";	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL";	store_1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state;	store_1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state;	store_1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1;	store_1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1;	store_1
SELECT billing_state ,  COUNT(*) ,  SUM(total) FROM invoices WHERE billing_state  =  "CA";	store_1
SELECT billing_state ,  COUNT(*) ,  SUM(total) FROM invoices WHERE billing_state  =  "CA";	store_1
SELECT company FROM customers WHERE first_name = "Eduardo" AND last_name = "Martins";	store_1
SELECT company FROM customers WHERE first_name = "Eduardo" AND last_name = "Martins";	store_1
SELECT email ,  phone FROM customers WHERE first_name = "Astrid" AND last_name = "Gruber";	store_1
SELECT email ,  phone FROM customers WHERE first_name = "Astrid" AND last_name = "Gruber";	store_1
SELECT count(*) FROM customers WHERE city = "Prague";	store_1
SELECT count(*) FROM customers WHERE city = "Prague";	store_1
SELECT count(*) FROM customers WHERE state = "CA";	store_1
SELECT count(*) FROM customers WHERE state = "CA";	store_1
SELECT country FROM customers WHERE first_name = "Roberto" AND last_name = "Almeida";	store_1
SELECT country FROM customers WHERE first_name = "Roberto" AND last_name = "Almeida";	store_1
SELECT title ,  phone ,  hire_date FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT title ,  phone ,  hire_date FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT address FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT address FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT count(*) FROM employees WHERE country = "Canada";	store_1
SELECT count(*) FROM employees WHERE country = "Canada";	store_1
SELECT phone FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT phone FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT first_name , last_name FROM employees ORDER BY birth_date DESC LIMIT 1;	store_1
SELECT first_name , last_name FROM employees ORDER BY birth_date DESC LIMIT 1;	store_1
SELECT first_name , last_name FROM employees ORDER BY hire_date ASC LIMIT 10;	store_1
SELECT first_name , last_name FROM employees ORDER BY hire_date ASC LIMIT 10;	store_1
SELECT count(*) ,  city FROM employees WHERE title  =  'IT Staff' GROUP BY city	store_1
SELECT count(*) ,  city FROM employees WHERE title  =  'IT Staff' GROUP BY city	store_1
SELECT name FROM media_types;	store_1
SELECT name FROM media_types;	store_1
SELECT DISTINCT name FROM genres;	store_1
SELECT DISTINCT name FROM genres;	store_1
SELECT name FROM playlists;	store_1
SELECT name FROM playlists;	store_1
SELECT composer FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT composer FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT milliseconds FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT milliseconds FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT unit_price FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT unit_price FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT count(*) FROM editor	journal_committee
SELECT Name FROM editor ORDER BY Age ASC	journal_committee
SELECT Name ,  Age FROM editor	journal_committee
SELECT Name FROM editor WHERE Age  >  25	journal_committee
SELECT Name FROM editor WHERE Age  =  24 OR Age  =  25	journal_committee
SELECT Name FROM editor ORDER BY Age ASC LIMIT 1	journal_committee
SELECT Age ,  COUNT(*) FROM editor GROUP BY Age	journal_committee
SELECT Age FROM editor GROUP BY Age ORDER BY COUNT(*) DESC LIMIT 1	journal_committee
SELECT DISTINCT Theme FROM journal	journal_committee
SELECT Name FROM editor WHERE editor_id NOT IN (SELECT editor_id FROM journal_committee)	journal_committee
SELECT date ,  theme ,  sales FROM journal EXCEPT SELECT T1.date ,  T1.theme ,  T1.sales FROM journal AS T1 JOIN journal_committee AS T2 ON T1.journal_ID  =  T2.journal_ID	journal_committee
SELECT count(*) FROM Accounts	customers_card_transactions
SELECT count(*) FROM Accounts	customers_card_transactions
SELECT account_id ,  customer_id ,  account_name FROM Accounts	customers_card_transactions
SELECT account_id ,  customer_id ,  account_name FROM Accounts	customers_card_transactions
SELECT other_account_details FROM Accounts WHERE account_name  =  "338"	customers_card_transactions
SELECT other_account_details FROM Accounts WHERE account_name  =  "338"	customers_card_transactions
SELECT customer_id ,  count(*) FROM Accounts GROUP BY customer_id	customers_card_transactions
SELECT customer_id ,  count(*) FROM Accounts GROUP BY customer_id	customers_card_transactions
SELECT customer_id ,  count(*) FROM Accounts GROUP BY customer_id ORDER BY count(*) DESC LIMIT 1	customers_card_transactions
SELECT customer_id ,  count(*) FROM Accounts GROUP BY customer_id ORDER BY count(*) DESC LIMIT 1	customers_card_transactions
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)	customers_card_transactions
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)	customers_card_transactions
SELECT customer_first_name ,  customer_last_name FROM Customers EXCEPT SELECT T1.customer_first_name ,  T1.customer_last_name FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id  =  T2.customer_id	customers_card_transactions
SELECT customer_first_name ,  customer_last_name FROM Customers EXCEPT SELECT T1.customer_first_name ,  T1.customer_last_name FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id  =  T2.customer_id	customers_card_transactions
SELECT count(DISTINCT customer_id) FROM Accounts	customers_card_transactions
SELECT count(DISTINCT customer_id) FROM Accounts	customers_card_transactions
SELECT count(*) FROM Customers	customers_card_transactions
SELECT count(*) FROM Customers	customers_card_transactions
SELECT customer_id ,  customer_first_name ,  customer_last_name ,  customer_phone FROM Customers	customers_card_transactions
SELECT customer_id ,  customer_first_name ,  customer_last_name ,  customer_phone FROM Customers	customers_card_transactions
SELECT customer_phone ,  customer_email FROM Customers WHERE customer_first_name  =  "Aniyah" AND customer_last_name  =  "Feest"	customers_card_transactions
SELECT customer_phone ,  customer_email FROM Customers WHERE customer_first_name  =  "Aniyah" AND customer_last_name  =  "Feest"	customers_card_transactions
SELECT count(*) FROM Customers_cards	customers_card_transactions
SELECT count(*) FROM Customers_cards	customers_card_transactions
SELECT card_id ,  customer_id ,  card_type_code ,  card_number FROM Customers_cards	customers_card_transactions
SELECT card_id ,  customer_id ,  card_type_code ,  card_number FROM Customers_cards	customers_card_transactions
SELECT date_valid_from ,  date_valid_to FROM Customers_cards WHERE card_number  =  "4560596484842"	customers_card_transactions
SELECT date_valid_from ,  date_valid_to FROM Customers_cards WHERE card_number  =  "4560596484842"	customers_card_transactions
SELECT count(*) FROM Customers_cards WHERE card_type_code  =  "Debit"	customers_card_transactions
SELECT count(*) FROM Customers_cards WHERE card_type_code  =  "Debit"	customers_card_transactions
SELECT customer_id ,  count(*) FROM Customers_cards GROUP BY customer_id	customers_card_transactions
SELECT customer_id ,  count(*) FROM Customers_cards GROUP BY customer_id	customers_card_transactions
SELECT customer_id ,  count(*) FROM Customers_cards GROUP BY customer_id ORDER BY count(*) DESC LIMIT 1	customers_card_transactions
SELECT customer_id ,  count(*) FROM Customers_cards GROUP BY customer_id ORDER BY count(*) DESC LIMIT 1	customers_card_transactions
SELECT card_type_code ,  count(*) FROM Customers_cards GROUP BY card_type_code	customers_card_transactions
SELECT card_type_code ,  count(*) FROM Customers_cards GROUP BY card_type_code	customers_card_transactions
SELECT card_type_code FROM Customers_cards GROUP BY card_type_code ORDER BY count(*) DESC LIMIT 1	customers_card_transactions
SELECT card_type_code FROM Customers_cards GROUP BY card_type_code ORDER BY count(*) DESC LIMIT 1	customers_card_transactions
SELECT card_type_code FROM Customers_cards GROUP BY card_type_code HAVING count(*)  >=  5	customers_card_transactions
SELECT card_type_code FROM Customers_cards GROUP BY card_type_code HAVING count(*)  >=  5	customers_card_transactions
SELECT card_type_code ,  count(DISTINCT customer_id) FROM Customers_cards GROUP BY card_type_code	customers_card_transactions
SELECT card_type_code ,  count(DISTINCT customer_id) FROM Customers_cards GROUP BY card_type_code	customers_card_transactions
SELECT customer_id ,  customer_first_name FROM Customers EXCEPT SELECT T1.customer_id ,  T2.customer_first_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE card_type_code  =  "Credit"	customers_card_transactions
SELECT customer_id ,  customer_first_name FROM Customers EXCEPT SELECT T1.customer_id ,  T2.customer_first_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE card_type_code  =  "Credit"	customers_card_transactions
SELECT DISTINCT card_type_code FROM Customers_Cards	customers_card_transactions
SELECT DISTINCT card_type_code FROM Customers_Cards	customers_card_transactions
SELECT count(DISTINCT card_type_code) FROM Customers_Cards	customers_card_transactions
SELECT count(DISTINCT card_type_code) FROM Customers_Cards	customers_card_transactions
SELECT DISTINCT transaction_type FROM Financial_Transactions	customers_card_transactions
SELECT DISTINCT transaction_type FROM Financial_Transactions	customers_card_transactions
SELECT count(DISTINCT transaction_type) FROM Financial_Transactions	customers_card_transactions
SELECT count(DISTINCT transaction_type) FROM Financial_Transactions	customers_card_transactions
SELECT avg(transaction_amount) ,  sum(transaction_amount) FROM Financial_transactions	customers_card_transactions
SELECT avg(transaction_amount) ,  sum(transaction_amount) FROM Financial_transactions	customers_card_transactions
SELECT transaction_type ,  count(*) FROM Financial_transactions GROUP BY transaction_type	customers_card_transactions
SELECT transaction_type ,  count(*) FROM Financial_transactions GROUP BY transaction_type	customers_card_transactions
SELECT transaction_type FROM Financial_transactions GROUP BY transaction_type ORDER BY sum(transaction_amount) DESC LIMIT 1	customers_card_transactions
SELECT transaction_type FROM Financial_transactions GROUP BY transaction_type ORDER BY sum(transaction_amount) DESC LIMIT 1	customers_card_transactions
SELECT account_id ,  count(*) FROM Financial_transactions GROUP BY account_id	customers_card_transactions
SELECT account_id ,  count(*) FROM Financial_transactions GROUP BY account_id	customers_card_transactions
SELECT count(*) FROM track	race_track
SELECT count(*) FROM track	race_track
SELECT name ,  LOCATION FROM track	race_track
SELECT name ,  LOCATION FROM track	race_track
SELECT name ,  seating FROM track WHERE year_opened  >  2000 ORDER BY seating	race_track
SELECT name ,  seating FROM track WHERE year_opened  >  2000 ORDER BY seating	race_track
SELECT name ,  LOCATION ,  seating FROM track ORDER BY year_opened DESC LIMIT 1	race_track
SELECT name ,  LOCATION ,  seating FROM track ORDER BY year_opened DESC LIMIT 1	race_track
SELECT min(seating) ,  max(seating) ,  avg(seating) FROM track	race_track
SELECT min(seating) ,  max(seating) ,  avg(seating) FROM track	race_track
SELECT name ,  LOCATION ,  year_opened FROM track WHERE seating  >  (SELECT avg(seating) FROM track)	race_track
SELECT name ,  LOCATION ,  year_opened FROM track WHERE seating  >  (SELECT avg(seating) FROM track)	race_track
SELECT DISTINCT LOCATION FROM track	race_track
SELECT DISTINCT LOCATION FROM track	race_track
SELECT count(*) FROM race	race_track
SELECT count(*) FROM race	race_track
SELECT DISTINCT CLASS FROM race	race_track
SELECT DISTINCT CLASS FROM race	race_track
SELECT name ,  CLASS ,  date FROM race	race_track
SELECT name ,  CLASS ,  date FROM race	race_track
SELECT CLASS ,  count(*) FROM race GROUP BY CLASS	race_track
SELECT CLASS ,  count(*) FROM race GROUP BY CLASS	race_track
SELECT CLASS FROM race GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1	race_track
SELECT CLASS FROM race GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1	race_track
SELECT CLASS FROM race GROUP BY CLASS HAVING count(*)  >=  2	race_track
SELECT CLASS FROM race GROUP BY CLASS HAVING count(*)  >=  2	race_track
SELECT name FROM track EXCEPT SELECT T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id WHERE T1.class  =  'GT'	race_track
SELECT name FROM track EXCEPT SELECT T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id WHERE T1.class  =  'GT'	race_track
SELECT name FROM track WHERE track_id NOT IN (SELECT track_id FROM race)	race_track
SELECT name FROM track WHERE track_id NOT IN (SELECT track_id FROM race)	race_track
SELECT year_opened FROM track WHERE seating BETWEEN 4000 AND 5000	race_track
SELECT year_opened FROM track WHERE seating BETWEEN 4000 AND 5000	race_track
SELECT LOCATION FROM track WHERE seating  >  90000 INTERSECT SELECT LOCATION FROM track WHERE seating  <  70000	race_track
SELECT LOCATION FROM track WHERE seating  >  90000 INTERSECT SELECT LOCATION FROM track WHERE seating  <  70000	race_track
SELECT count(*) FROM member WHERE Membership_card  =  'Black'	coffee_shop
SELECT count(*) ,  address FROM member GROUP BY address	coffee_shop
SELECT name FROM member WHERE address  =  'Harford' OR address  =  'Waterbury'	coffee_shop
SELECT name ,  member_id FROM member WHERE Membership_card  =  'Black' OR age  <  30	coffee_shop
SELECT Time_of_purchase ,  age ,  address FROM member ORDER BY Time_of_purchase	coffee_shop
SELECT Membership_card FROM member GROUP BY Membership_card HAVING count(*)  >  5	coffee_shop
SELECT address FROM member WHERE age  <  30 INTERSECT SELECT address FROM member WHERE age  >  40	coffee_shop
SELECT membership_card FROM member WHERE address  =  'Hartford' INTERSECT SELECT membership_card FROM member WHERE address  =  'Waterbury'	coffee_shop
SELECT count(*) FROM member WHERE address != 'Hartford'	coffee_shop
SELECT address FROM member EXCEPT SELECT address FROM member WHERE Membership_card  =  'Black'	coffee_shop
SELECT address FROM shop ORDER BY open_year	coffee_shop
SELECT avg(num_of_staff) ,  avg(score) FROM shop	coffee_shop
SELECT shop_id ,  address FROM shop WHERE score  <  (SELECT avg(score) FROM shop)	coffee_shop
SELECT address ,  num_of_staff FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM happy_hour)	coffee_shop
SELECT shop_id ,  count(*) FROM happy_hour GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1	coffee_shop
SELECT MONTH FROM happy_hour GROUP BY MONTH ORDER BY count(*) DESC LIMIT 1	coffee_shop
SELECT MONTH FROM happy_hour GROUP BY MONTH HAVING count(*)  >  2	coffee_shop
SELECT count(*) FROM ALBUM	chinook_1
SELECT count(*) FROM ALBUM	chinook_1
SELECT Name FROM GENRE	chinook_1
SELECT Name FROM GENRE	chinook_1
SELECT * FROM CUSTOMER WHERE State  =  "NY"	chinook_1
SELECT * FROM CUSTOMER WHERE State  =  "NY"	chinook_1
SELECT FirstName ,  LastName FROM EMPLOYEE WHERE City  =  "Calgary"	chinook_1
SELECT FirstName ,  LastName FROM EMPLOYEE WHERE City  =  "Calgary"	chinook_1
SELECT distinct(BillingCountry) FROM INVOICE	chinook_1
SELECT distinct(BillingCountry) FROM INVOICE	chinook_1
SELECT Name FROM ARTIST WHERE Name LIKE "%a%"	chinook_1
SELECT Name FROM ARTIST WHERE Name LIKE "%a%"	chinook_1
SELECT Name FROM TRACK WHERE Name LIKE '%you%'	chinook_1
SELECT Name FROM TRACK WHERE Name LIKE '%you%'	chinook_1
SELECT AVG(UnitPrice) FROM TRACK	chinook_1
SELECT AVG(UnitPrice) FROM TRACK	chinook_1
SELECT max(Milliseconds) ,  min(Milliseconds) FROM TRACK	chinook_1
SELECT max(Milliseconds) ,  min(Milliseconds) FROM TRACK	chinook_1
SELECT FirstName ,  LastName FROM CUSTOMER WHERE Email  =  "luisg@embraer.com.br"	chinook_1
SELECT FirstName ,  LastName FROM CUSTOMER WHERE Email  =  "luisg@embraer.com.br"	chinook_1
SELECT COUNT(*) FROM CUSTOMER WHERE Email LIKE "%gmail.com%"	chinook_1
SELECT COUNT(*) FROM CUSTOMER WHERE Email LIKE "%gmail.com%"	chinook_1
SELECT COUNT(DISTINCT city) FROM EMPLOYEE	chinook_1
SELECT COUNT(DISTINCT city) FROM EMPLOYEE	chinook_1
SELECT LastName FROM CUSTOMER EXCEPT SELECT T1.LastName FROM CUSTOMER AS T1 JOIN Invoice AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T2.total  >  20	chinook_1
SELECT LastName FROM CUSTOMER EXCEPT SELECT T1.LastName FROM CUSTOMER AS T1 JOIN Invoice AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T2.total  >  20	chinook_1
SELECT Phone FROM EMPLOYEE	chinook_1
SELECT Phone FROM EMPLOYEE	chinook_1
SELECT Title FROM ALBUM ORDER BY Title	chinook_1
SELECT Title FROM ALBUM ORDER BY Title	chinook_1
SELECT Name FROM ARTIST EXCEPT SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId	chinook_1
SELECT Name FROM ARTIST EXCEPT SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId	chinook_1
SELECT BirthDate FROM EMPLOYEE WHERE City  =  "Edmonton"	chinook_1
SELECT BirthDate FROM EMPLOYEE WHERE City  =  "Edmonton"	chinook_1
SELECT distinct(UnitPrice) FROM TRACK	chinook_1
SELECT distinct(UnitPrice) FROM TRACK	chinook_1
SELECT count(*) FROM ARTIST WHERE artistid NOT IN(SELECT artistid FROM ALBUM)	chinook_1
SELECT count(*) FROM ARTIST WHERE artistid NOT IN(SELECT artistid FROM ALBUM)	chinook_1
SELECT customer_phone FROM available_policies	insurance_fnol
SELECT customer_phone FROM available_policies	insurance_fnol
SELECT customer_phone FROM available_policies WHERE policy_type_code  =  "Life Insurance"	insurance_fnol
SELECT customer_phone FROM available_policies WHERE policy_type_code  =  "Life Insurance"	insurance_fnol
SELECT policy_type_code FROM available_policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_fnol
SELECT policy_type_code FROM available_policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_fnol
SELECT customer_phone FROM available_policies WHERE policy_type_code  =  (SELECT policy_type_code FROM available_policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1)	insurance_fnol
SELECT customer_phone FROM available_policies WHERE policy_type_code  =  (SELECT policy_type_code FROM available_policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1)	insurance_fnol
SELECT policy_type_code FROM available_policies GROUP BY policy_type_code HAVING count(*)  >  4	insurance_fnol
SELECT policy_type_code FROM available_policies GROUP BY policy_type_code HAVING count(*)  >  4	insurance_fnol
SELECT sum(settlement_amount) ,  avg(settlement_amount) FROM settlements	insurance_fnol
SELECT sum(settlement_amount) ,  avg(settlement_amount) FROM settlements	insurance_fnol
SELECT service_name FROM services ORDER BY service_name	insurance_fnol
SELECT service_name FROM services ORDER BY service_name	insurance_fnol
SELECT count(*) FROM services	insurance_fnol
SELECT count(*) FROM services	insurance_fnol
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id	insurance_fnol
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id	insurance_fnol
SELECT customer_id FROM customers WHERE customer_name LIKE "%Diana%"	insurance_fnol
SELECT customer_id FROM customers WHERE customer_name LIKE "%Diana%"	insurance_fnol
SELECT max(settlement_amount) ,  min(settlement_amount) FROM settlements	insurance_fnol
SELECT max(settlement_amount) ,  min(settlement_amount) FROM settlements	insurance_fnol
SELECT customer_id ,  customer_name FROM customers ORDER BY customer_id ASC	insurance_fnol
SELECT customer_id ,  customer_name FROM customers ORDER BY customer_id ASC	insurance_fnol
SELECT count(*) FROM enzyme	medicine_enzyme_interaction
SELECT count(*) FROM enzyme	medicine_enzyme_interaction
SELECT name FROM enzyme ORDER BY name DESC	medicine_enzyme_interaction
SELECT name FROM enzyme ORDER BY name DESC	medicine_enzyme_interaction
SELECT name ,  LOCATION FROM enzyme	medicine_enzyme_interaction
SELECT name ,  LOCATION FROM enzyme	medicine_enzyme_interaction
SELECT max(OMIM) FROM enzyme	medicine_enzyme_interaction
SELECT max(OMIM) FROM enzyme	medicine_enzyme_interaction
SELECT product ,  chromosome ,  porphyria FROM enzyme WHERE LOCATION  =  'Cytosol'	medicine_enzyme_interaction
SELECT product ,  chromosome ,  porphyria FROM enzyme WHERE LOCATION  =  'Cytosol'	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE product != 'Heme'	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE product != 'Heme'	medicine_enzyme_interaction
SELECT name ,  trade_name FROM medicine WHERE FDA_approved  =  'Yes'	medicine_enzyme_interaction
SELECT name ,  trade_name FROM medicine WHERE FDA_approved  =  'Yes'	medicine_enzyme_interaction
SELECT interaction_type ,  count(*) FROM medicine_enzyme_interaction GROUP BY interaction_type ORDER BY count(*) DESC LIMIT 1	medicine_enzyme_interaction
SELECT interaction_type ,  count(*) FROM medicine_enzyme_interaction GROUP BY interaction_type ORDER BY count(*) DESC LIMIT 1	medicine_enzyme_interaction
SELECT count(*) FROM medicine WHERE FDA_approved  =  'No'	medicine_enzyme_interaction
SELECT count(*) FROM medicine WHERE FDA_approved  =  'No'	medicine_enzyme_interaction
SELECT count(*) FROM enzyme WHERE id NOT IN ( SELECT enzyme_id FROM medicine_enzyme_interaction );	medicine_enzyme_interaction
SELECT count(*) FROM enzyme WHERE id NOT IN ( SELECT enzyme_id FROM medicine_enzyme_interaction );	medicine_enzyme_interaction
SELECT name ,  trade_name FROM medicine EXCEPT SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id JOIN enzyme AS T3 ON T3.id  =  T2.enzyme_id WHERE T3.product  =  'Protoporphyrinogen IX'	medicine_enzyme_interaction
SELECT name ,  trade_name FROM medicine EXCEPT SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id JOIN enzyme AS T3 ON T3.id  =  T2.enzyme_id WHERE T3.product  =  'Protoporphyrinogen IX'	medicine_enzyme_interaction
SELECT count(DISTINCT FDA_approved) FROM medicine	medicine_enzyme_interaction
SELECT count(DISTINCT FDA_approved) FROM medicine	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE name LIKE "%ALA%"	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE name LIKE "%ALA%"	medicine_enzyme_interaction
SELECT trade_name ,  count(*) FROM medicine GROUP BY trade_name	medicine_enzyme_interaction
SELECT trade_name ,  count(*) FROM medicine GROUP BY trade_name	medicine_enzyme_interaction
SELECT school ,  nickname FROM university ORDER BY founded	university_basketball
SELECT school ,  nickname FROM university ORDER BY founded	university_basketball
SELECT school ,  LOCATION FROM university WHERE affiliation  =  'Public'	university_basketball
SELECT school ,  LOCATION FROM university WHERE affiliation  =  'Public'	university_basketball
SELECT founded FROM university ORDER BY enrollment DESC LIMIT 1	university_basketball
SELECT founded FROM university ORDER BY enrollment DESC LIMIT 1	university_basketball
SELECT founded FROM university WHERE affiliation != 'Public' ORDER BY founded DESC LIMIT 1	university_basketball
SELECT founded FROM university WHERE affiliation != 'Public' ORDER BY founded DESC LIMIT 1	university_basketball
SELECT count(DISTINCT school_id) FROM basketball_match	university_basketball
SELECT count(DISTINCT school_id) FROM basketball_match	university_basketball
SELECT acc_percent FROM basketball_match ORDER BY acc_percent DESC LIMIT 1	university_basketball
SELECT acc_percent FROM basketball_match ORDER BY acc_percent DESC LIMIT 1	university_basketball
SELECT avg(enrollment) FROM university WHERE founded  <  1850	university_basketball
SELECT avg(enrollment) FROM university WHERE founded  <  1850	university_basketball
SELECT enrollment ,  primary_conference FROM university ORDER BY founded LIMIT 1	university_basketball
SELECT enrollment ,  primary_conference FROM university ORDER BY founded LIMIT 1	university_basketball
SELECT sum(enrollment) ,  min(enrollment) FROM university	university_basketball
SELECT sum(enrollment) ,  min(enrollment) FROM university	university_basketball
SELECT sum(enrollment) ,  affiliation FROM university GROUP BY affiliation	university_basketball
SELECT sum(enrollment) ,  affiliation FROM university GROUP BY affiliation	university_basketball
SELECT count(*) FROM university WHERE school_id NOT IN (SELECT school_id FROM basketball_match)	university_basketball
SELECT count(*) FROM university WHERE school_id NOT IN (SELECT school_id FROM basketball_match)	university_basketball
SELECT school FROM university WHERE founded  >  1850 OR affiliation  =  'Public'	university_basketball
SELECT school FROM university WHERE founded  >  1850 OR affiliation  =  'Public'	university_basketball
SELECT count(DISTINCT affiliation) FROM university	university_basketball
SELECT count(DISTINCT affiliation) FROM university	university_basketball
SELECT count(*) FROM university WHERE LOCATION LIKE "%NY%"	university_basketball
SELECT count(*) FROM university WHERE LOCATION LIKE "%NY%"	university_basketball
SELECT count(*) ,  affiliation FROM university WHERE enrollment  >  20000 GROUP BY affiliation	university_basketball
SELECT count(*) ,  affiliation FROM university WHERE enrollment  >  20000 GROUP BY affiliation	university_basketball
SELECT sum(Enrollment) ,  affiliation FROM university WHERE founded  >  1850 GROUP BY affiliation	university_basketball
SELECT sum(Enrollment) ,  affiliation FROM university WHERE founded  >  1850 GROUP BY affiliation	university_basketball
SELECT max(Enrollment) FROM university	university_basketball
SELECT max(Enrollment) FROM university	university_basketball
SELECT * FROM basketball_match	university_basketball
SELECT * FROM basketball_match	university_basketball
SELECT team_name FROM basketball_match ORDER BY All_Home DESC	university_basketball
SELECT team_name FROM basketball_match ORDER BY All_Home DESC	university_basketball
SELECT Model_name FROM chip_model WHERE Launch_year BETWEEN 2002 AND 2004;	phone_1
SELECT Model_name ,  RAM_MiB FROM chip_model ORDER BY RAM_MiB ASC LIMIT 1;	phone_1
SELECT chip_model ,  screen_mode FROM phone WHERE Hardware_Model_name = "LG-P760";	phone_1
SELECT count(*) FROM phone WHERE Company_name = "Nokia Corporation";	phone_1
SELECT Hardware_Model_name ,  Company_name FROM phone WHERE Accreditation_type LIKE 'Full';	phone_1
SELECT Company_name ,  count(*) FROM phone GROUP BY Company_name ORDER BY count(*) ASC LIMIT 1;	phone_1
SELECT Company_name FROM phone GROUP BY Company_name HAVING count(*)  >  1;	phone_1
SELECT max(used_kb) , min(used_kb) , avg(used_kb) FROM screen_mode;	phone_1
SELECT Accreditation_type ,  count(*) FROM phone GROUP BY Accreditation_type	phone_1
SELECT Accreditation_type ,  count(*) FROM phone GROUP BY Accreditation_type	phone_1
SELECT Accreditation_level FROM phone GROUP BY Accreditation_level HAVING count(*)  >  3	phone_1
SELECT * FROM chip_model	phone_1
SELECT count(*) FROM chip_model WHERE wifi  =  'No'	phone_1
SELECT count(*) FROM chip_model WHERE wifi  =  'No'	phone_1
SELECT model_name FROM chip_model ORDER BY launch_year	phone_1
SELECT avg(RAM_MiB) FROM chip_model WHERE model_name NOT IN (SELECT chip_model FROM phone)	phone_1
SELECT model_name FROM chip_model EXCEPT SELECT chip_model FROM phone WHERE Accreditation_type  =  'Full'	phone_1
SELECT count(*) FROM country	match_season
SELECT count(*) FROM country	match_season
SELECT Country_name ,  Capital FROM country	match_season
SELECT Country_name ,  Capital FROM country	match_season
SELECT Official_native_language FROM country WHERE Official_native_language LIKE "%English%"	match_season
SELECT Official_native_language FROM country WHERE Official_native_language LIKE "%English%"	match_season
SELECT DISTINCT POSITION FROM match_season	match_season
SELECT DISTINCT POSITION FROM match_season	match_season
SELECT Player FROM match_season WHERE College  =  "UCLA"	match_season
SELECT Player FROM match_season WHERE College  =  "UCLA"	match_season
SELECT DISTINCT POSITION FROM match_season WHERE College  =  "UCLA" OR College  =  "Duke"	match_season
SELECT DISTINCT POSITION FROM match_season WHERE College  =  "UCLA" OR College  =  "Duke"	match_season
SELECT Draft_Pick_Number ,  Draft_Class FROM match_season WHERE POSITION  =  "Defender"	match_season
SELECT Draft_Pick_Number ,  Draft_Class FROM match_season WHERE POSITION  =  "Defender"	match_season
SELECT count(DISTINCT Team) FROM match_season	match_season
SELECT count(DISTINCT Team) FROM match_season	match_season
SELECT Player ,  Years_Played FROM player	match_season
SELECT Player ,  Years_Played FROM player	match_season
SELECT Name FROM Team	match_season
SELECT Name FROM Team	match_season
SELECT POSITION ,  COUNT(*) FROM match_season GROUP BY POSITION	match_season
SELECT POSITION ,  COUNT(*) FROM match_season GROUP BY POSITION	match_season
SELECT player FROM match_season ORDER BY College ASC	match_season
SELECT player FROM match_season ORDER BY College ASC	match_season
SELECT POSITION FROM match_season GROUP BY POSITION ORDER BY count(*) DESC LIMIT 1	match_season
SELECT POSITION FROM match_season GROUP BY POSITION ORDER BY count(*) DESC LIMIT 1	match_season
SELECT College FROM match_season GROUP BY College ORDER BY count(*) DESC LIMIT 3	match_season
SELECT College FROM match_season GROUP BY College ORDER BY count(*) DESC LIMIT 3	match_season
SELECT College FROM match_season GROUP BY College HAVING count(*)  >=  2	match_season
SELECT College FROM match_season GROUP BY College HAVING count(*)  >=  2	match_season
SELECT College FROM match_season GROUP BY College HAVING count(*)  >=  2 ORDER BY College DESC	match_season
SELECT College FROM match_season GROUP BY College HAVING count(*)  >=  2 ORDER BY College DESC	match_season
SELECT Name FROM team WHERE Team_id NOT IN (SELECT Team FROM match_season)	match_season
SELECT Name FROM team WHERE Team_id NOT IN (SELECT Team FROM match_season)	match_season
SELECT College FROM match_season WHERE POSITION  =  "Midfielder" INTERSECT SELECT College FROM match_season WHERE POSITION  =  "Defender"	match_season
SELECT College FROM match_season WHERE POSITION  =  "Midfielder" INTERSECT SELECT College FROM match_season WHERE POSITION  =  "Defender"	match_season
SELECT count(*) FROM climber	climbing
SELECT count(*) FROM climber	climbing
SELECT Name FROM climber ORDER BY Points DESC	climbing
SELECT Name FROM climber ORDER BY Points DESC	climbing
SELECT Name FROM climber WHERE Country != "Switzerland"	climbing
SELECT Name FROM climber WHERE Country != "Switzerland"	climbing
SELECT max(Points) FROM climber WHERE Country  =  "United Kingdom"	climbing
SELECT max(Points) FROM climber WHERE Country  =  "United Kingdom"	climbing
SELECT COUNT(DISTINCT Country) FROM climber	climbing
SELECT COUNT(DISTINCT Country) FROM climber	climbing
SELECT Name FROM mountain ORDER BY Name ASC	climbing
SELECT Name FROM mountain ORDER BY Name ASC	climbing
SELECT Country FROM mountain WHERE Height  >  5000	climbing
SELECT Country FROM mountain WHERE Height  >  5000	climbing
SELECT Name FROM mountain ORDER BY Height DESC LIMIT 1	climbing
SELECT Name FROM mountain ORDER BY Height DESC LIMIT 1	climbing
SELECT DISTINCT Range FROM mountain ORDER BY Prominence DESC LIMIT 3	climbing
SELECT DISTINCT Range FROM mountain ORDER BY Prominence DESC LIMIT 3	climbing
SELECT Country ,  COUNT(*) FROM climber GROUP BY Country	climbing
SELECT Country ,  COUNT(*) FROM climber GROUP BY Country	climbing
SELECT Country FROM mountain GROUP BY Country HAVING COUNT(*)  >  1	climbing
SELECT Country FROM mountain GROUP BY Country HAVING COUNT(*)  >  1	climbing
SELECT Name FROM mountain WHERE Mountain_ID NOT IN (SELECT Mountain_ID FROM climber)	climbing
SELECT Name FROM mountain WHERE Mountain_ID NOT IN (SELECT Mountain_ID FROM climber)	climbing
SELECT Country FROM mountain WHERE Height  >  5600 INTERSECT SELECT Country FROM mountain WHERE Height  <  5200	climbing
SELECT Country FROM mountain WHERE Height  >  5600 INTERSECT SELECT Country FROM mountain WHERE Height  <  5200	climbing
SELECT Range FROM mountain GROUP BY Range ORDER BY COUNT(*) DESC LIMIT 1	climbing
SELECT Range FROM mountain GROUP BY Range ORDER BY COUNT(*) DESC LIMIT 1	climbing
SELECT Name FROM mountain WHERE Height  >  5000 OR Prominence  >  1000	climbing
SELECT Name FROM mountain WHERE Height  >  5000 OR Prominence  >  1000	climbing
SELECT count(*) FROM body_builder	body_builder
SELECT Total FROM body_builder ORDER BY Total ASC	body_builder
SELECT Snatch ,  Clean_Jerk FROM body_builder ORDER BY Snatch ASC	body_builder
SELECT avg(Snatch) FROM body_builder	body_builder
SELECT Clean_Jerk FROM body_builder ORDER BY Total DESC LIMIT 1	body_builder
SELECT Birth_Date FROM People ORDER BY Height ASC	body_builder
SELECT Birth_Place ,  COUNT(*) FROM people GROUP BY Birth_Place	body_builder
SELECT Birth_Place FROM people GROUP BY Birth_Place ORDER BY COUNT(*) DESC LIMIT 1	body_builder
SELECT Birth_Place FROM people GROUP BY Birth_Place HAVING COUNT(*)  >=  2	body_builder
SELECT Height ,  Weight FROM people ORDER BY Height DESC	body_builder
SELECT * FROM body_builder	body_builder
SELECT Name ,  birth_place FROM people EXCEPT SELECT T1.Name ,  T1.birth_place FROM people AS T1 JOIN body_builder AS T2 ON T1.people_id  =  T2.people_id	body_builder
SELECT count(DISTINCT Birth_Place) FROM people	body_builder
SELECT count(*) FROM people WHERE people_id NOT IN (SELECT People_ID FROM body_builder)	body_builder
SELECT min(snatch) FROM body_builder	body_builder
SELECT count(*) FROM election	election_representative
SELECT Votes FROM election ORDER BY Votes DESC	election_representative
SELECT Date ,  Vote_Percent FROM election	election_representative
SELECT min(Vote_Percent) ,  max(Vote_Percent) FROM election	election_representative
SELECT Name ,  Party FROM representative	election_representative
SELECT Name FROM Representative WHERE Party != "Republican"	election_representative
SELECT Lifespan FROM representative WHERE State  =  "New York" OR State  =  "Indiana"	election_representative
SELECT Party ,  COUNT(*) FROM representative GROUP BY Party	election_representative
SELECT Party ,  COUNT(*) FROM representative GROUP BY Party ORDER BY COUNT(*) DESC LIMIT 1	election_representative
SELECT Party FROM representative GROUP BY Party HAVING COUNT(*)  >=  3	election_representative
SELECT State FROM representative GROUP BY State HAVING COUNT(*)  >=  2	election_representative
SELECT Name FROM representative WHERE Representative_ID NOT IN (SELECT Representative_ID FROM election)	election_representative
SELECT Party FROM representative WHERE State  =  "New York" INTERSECT SELECT Party FROM representative WHERE State  =  "Pennsylvania"	election_representative
SELECT count(DISTINCT Party) FROM representative	election_representative
SELECT count(*) FROM Apartment_Bookings	apartment_rentals
SELECT count(*) FROM Apartment_Bookings	apartment_rentals
SELECT booking_start_date ,  booking_end_date FROM Apartment_Bookings	apartment_rentals
SELECT booking_start_date ,  booking_end_date FROM Apartment_Bookings	apartment_rentals
SELECT DISTINCT building_description FROM Apartment_Buildings	apartment_rentals
SELECT DISTINCT building_description FROM Apartment_Buildings	apartment_rentals
SELECT building_short_name FROM Apartment_Buildings WHERE building_manager  =  "Emma"	apartment_rentals
SELECT building_short_name FROM Apartment_Buildings WHERE building_manager  =  "Emma"	apartment_rentals
SELECT building_address ,  building_phone FROM Apartment_Buildings WHERE building_manager  =  "Brenden"	apartment_rentals
SELECT building_address ,  building_phone FROM Apartment_Buildings WHERE building_manager  =  "Brenden"	apartment_rentals
SELECT building_full_name FROM Apartment_Buildings WHERE building_full_name LIKE "%court%"	apartment_rentals
SELECT building_full_name FROM Apartment_Buildings WHERE building_full_name LIKE "%court%"	apartment_rentals
SELECT min(bathroom_count) ,  max(bathroom_count) FROM Apartments	apartment_rentals
SELECT min(bathroom_count) ,  max(bathroom_count) FROM Apartments	apartment_rentals
SELECT avg(bedroom_count) FROM Apartments	apartment_rentals
SELECT avg(bedroom_count) FROM Apartments	apartment_rentals
SELECT apt_number ,  room_count FROM Apartments	apartment_rentals
SELECT apt_number ,  room_count FROM Apartments	apartment_rentals
SELECT avg(room_count) FROM Apartments WHERE apt_type_code  =  "Studio"	apartment_rentals
SELECT avg(room_count) FROM Apartments WHERE apt_type_code  =  "Studio"	apartment_rentals
SELECT apt_number FROM Apartments WHERE apt_type_code  =  "Flat"	apartment_rentals
SELECT apt_number FROM Apartments WHERE apt_type_code  =  "Flat"	apartment_rentals
SELECT guest_first_name ,  guest_last_name FROM Guests	apartment_rentals
SELECT guest_first_name ,  guest_last_name FROM Guests	apartment_rentals
SELECT date_of_birth FROM Guests WHERE gender_code  =  "Male"	apartment_rentals
SELECT date_of_birth FROM Guests WHERE gender_code  =  "Male"	apartment_rentals
SELECT  booking_status_code ,  COUNT(*) FROM Apartment_Bookings GROUP BY booking_status_code	apartment_rentals
SELECT  booking_status_code ,  COUNT(*) FROM Apartment_Bookings GROUP BY booking_status_code	apartment_rentals
SELECT apt_number FROM Apartments ORDER BY room_count ASC	apartment_rentals
SELECT apt_number FROM Apartments ORDER BY room_count ASC	apartment_rentals
SELECT apt_number FROM Apartments ORDER BY bedroom_count DESC LIMIT 1	apartment_rentals
SELECT apt_number FROM Apartments ORDER BY bedroom_count DESC LIMIT 1	apartment_rentals
SELECT apt_type_code ,  COUNT(*) FROM Apartments GROUP BY apt_type_code ORDER BY COUNT(*) ASC	apartment_rentals
SELECT apt_type_code ,  COUNT(*) FROM Apartments GROUP BY apt_type_code ORDER BY COUNT(*) ASC	apartment_rentals
SELECT apt_type_code FROM Apartments GROUP BY apt_type_code ORDER BY avg(room_count) DESC LIMIT 3	apartment_rentals
SELECT apt_type_code FROM Apartments GROUP BY apt_type_code ORDER BY avg(room_count) DESC LIMIT 3	apartment_rentals
SELECT apt_type_code ,  bathroom_count ,  bedroom_count FROM Apartments GROUP BY apt_type_code ORDER BY sum(room_count) DESC LIMIT 1	apartment_rentals
SELECT apt_type_code ,  bathroom_count ,  bedroom_count FROM Apartments GROUP BY apt_type_code ORDER BY sum(room_count) DESC LIMIT 1	apartment_rentals
SELECT apt_type_code FROM Apartments GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1	apartment_rentals
SELECT apt_type_code FROM Apartments GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1	apartment_rentals
SELECT apt_type_code FROM Apartments WHERE bathroom_count  >  1 GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1	apartment_rentals
SELECT apt_type_code FROM Apartments WHERE bathroom_count  >  1 GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1	apartment_rentals
SELECT apt_type_code ,  max(room_count) ,  min(room_count) FROM Apartments GROUP BY apt_type_code	apartment_rentals
SELECT apt_type_code ,  max(room_count) ,  min(room_count) FROM Apartments GROUP BY apt_type_code	apartment_rentals
SELECT gender_code ,  COUNT(*) FROM Guests GROUP BY gender_code ORDER BY COUNT(*) DESC	apartment_rentals
SELECT gender_code ,  COUNT(*) FROM Guests GROUP BY gender_code ORDER BY COUNT(*) DESC	apartment_rentals
SELECT count(*) FROM Apartments WHERE apt_id NOT IN (SELECT apt_id FROM Apartment_Facilities)	apartment_rentals
SELECT count(*) FROM Apartments WHERE apt_id NOT IN (SELECT apt_id FROM Apartment_Facilities)	apartment_rentals
SELECT count(*) FROM game WHERE season  >  2007	game_injury
SELECT Date FROM game ORDER BY home_team DESC	game_injury
SELECT season ,  home_team ,  away_team FROM game	game_injury
SELECT max(home_games) ,  min(home_games) ,  avg(home_games) FROM stadium	game_injury
SELECT average_attendance FROM stadium WHERE capacity_percentage  >  100	game_injury
SELECT player ,  number_of_matches ,  SOURCE FROM injury_accident WHERE injury != 'Knee problem'	game_injury
SELECT count(DISTINCT SOURCE) FROM injury_accident	game_injury
SELECT count(*) FROM game WHERE id NOT IN ( SELECT game_id FROM injury_accident )	game_injury
SELECT name ,  average_attendance ,  total_attendance FROM stadium EXCEPT SELECT T2.name ,  T2.average_attendance ,  T2.total_attendance FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.id JOIN injury_accident AS T3 ON T1.id  =  T3.game_id	game_injury
SELECT name FROM stadium WHERE name LIKE "%Bank%"	game_injury
SELECT avg(weight) FROM Player	soccer_1
SELECT max(weight) ,  min(weight) FROM Player	soccer_1
SELECT preferred_foot ,  avg(overall_rating) FROM Player_Attributes GROUP BY preferred_foot	soccer_1
SELECT preferred_foot ,  count(*) FROM Player_Attributes WHERE overall_rating  >  80 GROUP BY preferred_foot	soccer_1
SELECT player_api_id FROM Player WHERE height  >=  180 INTERSECT SELECT player_api_id FROM Player_Attributes WHERE overall_rating  >  85	soccer_1
SELECT player_api_id FROM Player WHERE height  >=  180 AND height  <=  190 INTERSECT SELECT player_api_id FROM Player_Attributes WHERE preferred_foot  =  "left"	soccer_1
SELECT count(*) FROM performance	performance_attendance
SELECT HOST FROM performance ORDER BY Attendance ASC	performance_attendance
SELECT Date ,  LOCATION FROM performance	performance_attendance
SELECT Attendance FROM performance WHERE LOCATION  =  "TD Garden" OR LOCATION  =  "Bell Centre"	performance_attendance
SELECT avg(Attendance) FROM performance	performance_attendance
SELECT Date FROM performance ORDER BY Attendance DESC LIMIT 1	performance_attendance
SELECT LOCATION ,  COUNT(*) FROM performance GROUP BY LOCATION	performance_attendance
SELECT LOCATION FROM performance GROUP BY LOCATION ORDER BY COUNT(*) DESC LIMIT 1	performance_attendance
SELECT LOCATION FROM performance GROUP BY LOCATION HAVING COUNT(*)  >=  2	performance_attendance
SELECT LOCATION FROM performance WHERE Attendance  >  2000 INTERSECT SELECT LOCATION FROM performance WHERE Attendance  <  1000	performance_attendance
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM member_attendance)	performance_attendance
SELECT DISTINCT building FROM classroom WHERE capacity  >  50	college_2
SELECT DISTINCT building FROM classroom WHERE capacity  >  50	college_2
SELECT count(*) FROM classroom WHERE building != 'Lamberton'	college_2
SELECT count(*) FROM classroom WHERE building != 'Lamberton'	college_2
SELECT dept_name ,  building FROM department WHERE budget  >  (SELECT avg(budget) FROM department)	college_2
SELECT dept_name ,  building FROM department WHERE budget  >  (SELECT avg(budget) FROM department)	college_2
SELECT building ,  room_number FROM classroom WHERE capacity BETWEEN 50 AND 100	college_2
SELECT building ,  room_number FROM classroom WHERE capacity BETWEEN 50 AND 100	college_2
SELECT dept_name ,  building FROM department ORDER BY budget DESC LIMIT 1	college_2
SELECT dept_name ,  building FROM department ORDER BY budget DESC LIMIT 1	college_2
SELECT name FROM student WHERE dept_name  =  'History' ORDER BY tot_cred DESC LIMIT 1	college_2
SELECT name FROM student WHERE dept_name  =  'History' ORDER BY tot_cred DESC LIMIT 1	college_2
SELECT count(*) FROM classroom WHERE building  =  'Lamberton'	college_2
SELECT count(*) FROM classroom WHERE building  =  'Lamberton'	college_2
SELECT count(DISTINCT s_id) FROM advisor	college_2
SELECT count(DISTINCT s_id) FROM advisor	college_2
SELECT count(DISTINCT dept_name) FROM course	college_2
SELECT count(DISTINCT dept_name) FROM course	college_2
SELECT count(DISTINCT course_id) FROM course WHERE dept_name  =  'Physics'	college_2
SELECT count(DISTINCT course_id) FROM course WHERE dept_name  =  'Physics'	college_2
SELECT count(*) FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT count(*) FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT COUNT (DISTINCT id) FROM teaches	college_2
SELECT COUNT (DISTINCT id) FROM teaches	college_2
SELECT sum(budget) FROM department WHERE dept_name  =  'Marketing' OR dept_name  =  'Finance'	college_2
SELECT sum(budget) FROM department WHERE dept_name  =  'Marketing' OR dept_name  =  'Finance'	college_2
SELECT dept_name FROM instructor WHERE name LIKE '%Soisalon%'	college_2
SELECT dept_name FROM instructor WHERE name LIKE '%Soisalon%'	college_2
SELECT count(*) FROM classroom WHERE building  =  'Lamberton' AND capacity  <  50	college_2
SELECT count(*) FROM classroom WHERE building  =  'Lamberton' AND capacity  <  50	college_2
SELECT dept_name ,  budget FROM department WHERE budget  >  (SELECT avg(budget) FROM department)	college_2
SELECT dept_name ,  budget FROM department WHERE budget  >  (SELECT avg(budget) FROM department)	college_2
SELECT name FROM instructor WHERE dept_name  =  'Statistics' ORDER BY salary LIMIT 1	college_2
SELECT name FROM instructor WHERE dept_name  =  'Statistics' ORDER BY salary LIMIT 1	college_2
SELECT title FROM course WHERE dept_name  =  'Statistics' INTERSECT SELECT title FROM course WHERE dept_name  =  'Psychology'	college_2
SELECT title FROM course WHERE dept_name  =  'Statistics' INTERSECT SELECT title FROM course WHERE dept_name  =  'Psychology'	college_2
SELECT title FROM course WHERE dept_name  =  'Statistics' EXCEPT SELECT title FROM course WHERE dept_name  =  'Psychology'	college_2
SELECT title FROM course WHERE dept_name  =  'Statistics' EXCEPT SELECT title FROM course WHERE dept_name  =  'Psychology'	college_2
SELECT id FROM teaches WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT id FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT id FROM teaches WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT id FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY count(*) DESC LIMIT 3	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY count(*) DESC LIMIT 3	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY sum(credits) DESC LIMIT 1	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY sum(credits) DESC LIMIT 1	college_2
SELECT title FROM course ORDER BY title ,  credits	college_2
SELECT title FROM course ORDER BY title ,  credits	college_2
SELECT dept_name FROM department ORDER BY budget LIMIT 1	college_2
SELECT dept_name FROM department ORDER BY budget LIMIT 1	college_2
SELECT dept_name ,  building FROM department ORDER BY budget DESC	college_2
SELECT dept_name ,  building FROM department ORDER BY budget DESC	college_2
SELECT name FROM instructor ORDER BY salary DESC LIMIT 1	college_2
SELECT name FROM instructor ORDER BY salary DESC LIMIT 1	college_2
SELECT * FROM instructor ORDER BY salary	college_2
SELECT * FROM instructor ORDER BY salary	college_2
SELECT name ,  dept_name FROM student ORDER BY tot_cred	college_2
SELECT name ,  dept_name FROM student ORDER BY tot_cred	college_2
SELECT count(*) ,  building FROM classroom WHERE capacity  >  50 GROUP BY building	college_2
SELECT count(*) ,  building FROM classroom WHERE capacity  >  50 GROUP BY building	college_2
SELECT max(capacity) ,  avg(capacity) ,  building FROM classroom GROUP BY building	college_2
SELECT max(capacity) ,  avg(capacity) ,  building FROM classroom GROUP BY building	college_2
SELECT title FROM course GROUP BY title HAVING count(*)  >  1	college_2
SELECT title FROM course GROUP BY title HAVING count(*)  >  1	college_2
SELECT sum(credits) ,  dept_name FROM course GROUP BY dept_name	college_2
SELECT sum(credits) ,  dept_name FROM course GROUP BY dept_name	college_2
SELECT min(salary) ,  dept_name FROM instructor GROUP BY dept_name HAVING avg(salary)  >  (SELECT avg(salary) FROM instructor)	college_2
SELECT min(salary) ,  dept_name FROM instructor GROUP BY dept_name HAVING avg(salary)  >  (SELECT avg(salary) FROM instructor)	college_2
SELECT count(*) ,  semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR	college_2
SELECT count(*) ,  semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR	college_2
SELECT YEAR FROM SECTION GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1	college_2
SELECT YEAR FROM SECTION GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1	college_2
SELECT semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR ORDER BY count(*) DESC LIMIT 1	college_2
SELECT semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR ORDER BY count(*) DESC LIMIT 1	college_2
SELECT dept_name FROM student GROUP BY dept_name ORDER BY count(*) DESC LIMIT 1	college_2
SELECT dept_name FROM student GROUP BY dept_name ORDER BY count(*) DESC LIMIT 1	college_2
SELECT count(*) ,  dept_name FROM student GROUP BY dept_name	college_2
SELECT count(*) ,  dept_name FROM student GROUP BY dept_name	college_2
SELECT semester ,  YEAR FROM takes GROUP BY semester ,  YEAR ORDER BY count(*) LIMIT 1	college_2
SELECT semester ,  YEAR FROM takes GROUP BY semester ,  YEAR ORDER BY count(*) LIMIT 1	college_2
SELECT course_id FROM course EXCEPT SELECT course_id FROM prereq	college_2
SELECT course_id FROM course EXCEPT SELECT course_id FROM prereq	college_2
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'International Finance')	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'International Finance')	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.course_id FROM prereq AS T1 JOIN course AS T2 ON T1.prereq_id  =  T2.course_id WHERE T2.title  =  'Differential Geometry')	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.course_id FROM prereq AS T1 JOIN course AS T2 ON T1.prereq_id  =  T2.course_id WHERE T2.title  =  'Differential Geometry')	college_2
SELECT name FROM student WHERE id IN (SELECT id FROM takes WHERE semester  =  'Fall' AND YEAR  =  2003)	college_2
SELECT name FROM student WHERE id IN (SELECT id FROM takes WHERE semester  =  'Fall' AND YEAR  =  2003)	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'Mobile Computing')	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'Mobile Computing')	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches)	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches)	college_2
SELECT id FROM instructor EXCEPT SELECT id FROM teaches	college_2
SELECT id FROM instructor EXCEPT SELECT id FROM teaches	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches WHERE semester  =  'Spring')	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches WHERE semester  =  'Spring')	college_2
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY avg(salary) DESC LIMIT 1	college_2
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY avg(salary) DESC LIMIT 1	college_2
SELECT name FROM student WHERE id NOT IN (SELECT T1.id FROM takes AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.dept_name  =  'Biology')	college_2
SELECT name FROM student WHERE id NOT IN (SELECT T1.id FROM takes AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.dept_name  =  'Biology')	college_2
SELECT name ,  salary FROM instructor WHERE salary  <  (SELECT avg(salary) FROM instructor WHERE dept_name  =  'Physics')	college_2
SELECT name ,  salary FROM instructor WHERE salary  <  (SELECT avg(salary) FROM instructor WHERE dept_name  =  'Physics')	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'  AND salary  >  80000	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'  AND salary  >  80000	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%'	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%'	college_2
SELECT DISTINCT name FROM  instructor ORDER BY name	college_2
SELECT DISTINCT name FROM  instructor ORDER BY name	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 UNION SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 UNION SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 INTERSECT SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 INTERSECT SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT DISTINCT salary FROM instructor WHERE salary  <  (SELECT max(salary) FROM instructor)	college_2
SELECT DISTINCT salary FROM instructor WHERE salary  <  (SELECT max(salary) FROM instructor)	college_2
SELECT COUNT (DISTINCT ID) FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT COUNT (DISTINCT ID) FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010	college_2
SELECT dept_name ,  AVG (salary) FROM instructor GROUP BY dept_name HAVING AVG (salary)  >  42000	college_2
SELECT dept_name ,  AVG (salary) FROM instructor GROUP BY dept_name HAVING AVG (salary)  >  42000	college_2
SELECT name FROM instructor WHERE salary  >  (SELECT min(salary) FROM instructor WHERE dept_name  =  'Biology')	college_2
SELECT name FROM instructor WHERE salary  >  (SELECT min(salary) FROM instructor WHERE dept_name  =  'Biology')	college_2
SELECT name FROM instructor WHERE salary  >  (SELECT max(salary) FROM instructor WHERE dept_name  =  'Biology')	college_2
SELECT name FROM instructor WHERE salary  >  (SELECT max(salary) FROM instructor WHERE dept_name  =  'Biology')	college_2
SELECT count(*) FROM debate	debate
SELECT Venue FROM debate ORDER BY Num_of_Audience ASC	debate
SELECT Date ,  Venue FROM debate	debate
SELECT Date FROM debate WHERE Num_of_Audience  >  150	debate
SELECT Name FROM  people WHERE Age  =  35 OR Age  =  36	debate
SELECT Party FROM people ORDER BY Age ASC LIMIT 1	debate
SELECT Party ,  COUNT(*) FROM people GROUP BY Party	debate
SELECT Party FROM people GROUP BY Party ORDER BY COUNT(*) DESC LIMIT 1	debate
SELECT DISTINCT Venue FROM debate	debate
SELECT Name FROM people WHERE People_id NOT IN (SELECT Affirmative FROM debate_people)	debate
SELECT customer_details FROM customers ORDER BY customer_details	insurance_and_eClaims
SELECT customer_details FROM customers ORDER BY customer_details	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING count(*)  >  2	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING count(*)  >  2	insurance_and_eClaims
SELECT sum(amount_piad) ,  avg(amount_piad) FROM claim_headers	insurance_and_eClaims
SELECT sum(amount_piad) ,  avg(amount_piad) FROM claim_headers	insurance_and_eClaims
SELECT customer_details FROM customers EXCEPT SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id	insurance_and_eClaims
SELECT customer_details FROM customers EXCEPT SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id	insurance_and_eClaims
SELECT count(*) FROM claims_processing_stages	insurance_and_eClaims
SELECT count(*) FROM claims_processing_stages	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE "%Diana%"	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE "%Diana%"	insurance_and_eClaims
SELECT customer_details FROM customers UNION SELECT staff_details FROM staff	insurance_and_eClaims
SELECT customer_details FROM customers UNION SELECT staff_details FROM staff	insurance_and_eClaims
SELECT policy_type_code ,  count(*) FROM policies GROUP BY policy_type_code	insurance_and_eClaims
SELECT policy_type_code ,  count(*) FROM policies GROUP BY policy_type_code	insurance_and_eClaims
SELECT claim_status_description FROM claims_processing_stages WHERE claim_status_name  =  "Open"	insurance_and_eClaims
SELECT claim_status_description FROM claims_processing_stages WHERE claim_status_name  =  "Open"	insurance_and_eClaims
SELECT count(DISTINCT claim_outcome_code) FROM claims_processing	insurance_and_eClaims
SELECT count(DISTINCT claim_outcome_code) FROM claims_processing	insurance_and_eClaims
SELECT count(*) FROM Accounts	customers_and_invoices
SELECT count(*) FROM Accounts	customers_and_invoices
SELECT count(DISTINCT customer_id) FROM Accounts	customers_and_invoices
SELECT count(DISTINCT customer_id) FROM Accounts	customers_and_invoices
SELECT account_id ,  date_account_opened ,  account_name ,  other_account_details FROM Accounts	customers_and_invoices
SELECT account_id ,  date_account_opened ,  account_name ,  other_account_details FROM Accounts	customers_and_invoices
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)	customers_and_invoices
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)	customers_and_invoices
SELECT customer_id FROM Customers EXCEPT SELECT customer_id FROM Accounts	customers_and_invoices
SELECT customer_id FROM Customers EXCEPT SELECT customer_id FROM Accounts	customers_and_invoices
SELECT count(*) ,  customer_id FROM Accounts GROUP BY customer_id	customers_and_invoices
SELECT count(*) ,  customer_id FROM Accounts GROUP BY customer_id	customers_and_invoices
SELECT count(*) FROM Customers	customers_and_invoices
SELECT count(*) FROM Customers	customers_and_invoices
SELECT gender ,  count(*) FROM Customers GROUP BY gender	customers_and_invoices
SELECT gender ,  count(*) FROM Customers GROUP BY gender	customers_and_invoices
SELECT count(*) FROM Financial_transactions	customers_and_invoices
SELECT count(*) FROM Financial_transactions	customers_and_invoices
SELECT count(*) ,  account_id FROM Financial_transactions	customers_and_invoices
SELECT count(*) ,  account_id FROM Financial_transactions	customers_and_invoices
SELECT avg(transaction_amount) ,  min(transaction_amount) ,  max(transaction_amount) ,   sum(transaction_amount) FROM Financial_transactions	customers_and_invoices
SELECT avg(transaction_amount) ,  min(transaction_amount) ,  max(transaction_amount) ,   sum(transaction_amount) FROM Financial_transactions	customers_and_invoices
SELECT transaction_id FROM Financial_transactions WHERE transaction_amount  >  (SELECT avg(transaction_amount) FROM Financial_transactions)	customers_and_invoices
SELECT transaction_id FROM Financial_transactions WHERE transaction_amount  >  (SELECT avg(transaction_amount) FROM Financial_transactions)	customers_and_invoices
SELECT transaction_type ,  sum(transaction_amount) FROM Financial_transactions GROUP BY transaction_type	customers_and_invoices
SELECT transaction_type ,  sum(transaction_amount) FROM Financial_transactions GROUP BY transaction_type	customers_and_invoices
SELECT account_id FROM Financial_transactions GROUP BY account_id ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT account_id FROM Financial_transactions GROUP BY account_id ORDER BY count(*) DESC LIMIT 1	customers_and_invoices
SELECT DISTINCT product_size FROM Products	customers_and_invoices
SELECT DISTINCT product_size FROM Products	customers_and_invoices
SELECT DISTINCT product_color FROM Products	customers_and_invoices
SELECT DISTINCT product_color FROM Products	customers_and_invoices
SELECT invoice_number ,  count(*) FROM Financial_transactions GROUP BY invoice_number	customers_and_invoices
SELECT invoice_number ,  count(*) FROM Financial_transactions GROUP BY invoice_number	customers_and_invoices
SELECT count(*) FROM Invoices	customers_and_invoices
SELECT count(*) FROM Invoices	customers_and_invoices
SELECT order_id ,  count(*) FROM Invoices GROUP BY order_id	customers_and_invoices
SELECT order_id ,  count(*) FROM Invoices GROUP BY order_id	customers_and_invoices
SELECT product_name FROM Products EXCEPT SELECT T1.product_name FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id	customers_and_invoices
SELECT product_name FROM Products EXCEPT SELECT T1.product_name FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id	customers_and_invoices
SELECT order_id ,  count(*) FROM Order_items GROUP BY order_id	customers_and_invoices
SELECT order_id ,  count(*) FROM Order_items GROUP BY order_id	customers_and_invoices
SELECT product_id ,  count(DISTINCT order_id) FROM Order_items GROUP BY product_id	customers_and_invoices
SELECT product_id ,  count(DISTINCT order_id) FROM Order_items GROUP BY product_id	customers_and_invoices
SELECT order_id ,  count(DISTINCT product_id) FROM Order_items GROUP BY order_id	customers_and_invoices
SELECT order_id ,  count(DISTINCT product_id) FROM Order_items GROUP BY order_id	customers_and_invoices
SELECT order_id ,  sum(product_quantity) FROM Order_items GROUP BY order_id	customers_and_invoices
SELECT order_id ,  sum(product_quantity) FROM Order_items GROUP BY order_id	customers_and_invoices
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items )	customers_and_invoices
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items )	customers_and_invoices
SELECT count(*) FROM Church WHERE Open_Date  <  1850	wedding
SELECT name ,  open_date ,  organized_by FROM Church	wedding
SELECT name FROM church ORDER BY open_date DESC	wedding
SELECT open_date FROM church GROUP BY open_date HAVING count(*)  >=  2	wedding
SELECT organized_by ,  name FROM church WHERE open_date BETWEEN 1830 AND 1840	wedding
SELECT open_date ,  count(*) FROM church GROUP BY open_date	wedding
SELECT name ,  open_date FROM church ORDER BY open_date DESC LIMIT 3	wedding
SELECT count(*) FROM people WHERE is_male  =  'F' AND age  >  30	wedding
SELECT country FROM people WHERE age  <  25 INTERSECT SELECT country FROM people WHERE age  >  30	wedding
SELECT min(age) ,  max(age) ,  avg(age) FROM people	wedding
SELECT name ,  country FROM people WHERE age  <  (SELECT avg(age) FROM people)	wedding
SELECT name ,  age FROM people WHERE is_male  =  'T' AND people_id NOT IN (SELECT male_id FROM wedding)	wedding
SELECT name FROM church EXCEPT SELECT T1.name FROM church AS T1 JOIN wedding AS T2 ON T1.church_id  =  T2.church_id WHERE T2.year  =  2015	wedding
SELECT count(*) FROM wedding WHERE YEAR  =  2016	wedding
SELECT country ,  count(*) FROM people GROUP BY country	wedding
SELECT COUNT (DISTINCT church_id) FROM wedding WHERE YEAR  =  2016	wedding
SELECT count(*) FROM artist	theme_gallery
SELECT count(*) FROM artist	theme_gallery
SELECT name ,  age ,  country FROM artist ORDER BY Year_Join	theme_gallery
SELECT name ,  age ,  country FROM artist ORDER BY Year_Join	theme_gallery
SELECT DISTINCT country FROM artist	theme_gallery
SELECT DISTINCT country FROM artist	theme_gallery
SELECT name ,  year_join FROM artist WHERE country != 'United States'	theme_gallery
SELECT name ,  year_join FROM artist WHERE country != 'United States'	theme_gallery
SELECT count(*) FROM artist WHERE age  >  46 AND year_join  >  1990	theme_gallery
SELECT count(*) FROM artist WHERE age  >  46 AND year_join  >  1990	theme_gallery
SELECT avg(age) ,  min(age) FROM artist WHERE country  =  'United States'	theme_gallery
SELECT avg(age) ,  min(age) FROM artist WHERE country  =  'United States'	theme_gallery
SELECT name FROM artist ORDER BY year_join DESC LIMIT 1	theme_gallery
SELECT name FROM artist ORDER BY year_join DESC LIMIT 1	theme_gallery
SELECT count(*) FROM exhibition WHERE YEAR  >=  2005	theme_gallery
SELECT count(*) FROM exhibition WHERE YEAR  >=  2005	theme_gallery
SELECT theme ,  YEAR FROM exhibition WHERE ticket_price  <  15	theme_gallery
SELECT theme ,  YEAR FROM exhibition WHERE ticket_price  <  15	theme_gallery
SELECT name FROM artist WHERE artist_id NOT IN (SELECT artist_id FROM exhibition)	theme_gallery
SELECT name FROM artist WHERE artist_id NOT IN (SELECT artist_id FROM exhibition)	theme_gallery
SELECT avg(ticket_price) ,  min(ticket_price) ,  max(ticket_price) FROM exhibition WHERE YEAR  <  2009	theme_gallery
SELECT avg(ticket_price) ,  min(ticket_price) ,  max(ticket_price) FROM exhibition WHERE YEAR  <  2009	theme_gallery
SELECT theme ,  YEAR FROM exhibition ORDER BY ticket_price DESC	theme_gallery
SELECT theme ,  YEAR FROM exhibition ORDER BY ticket_price DESC	theme_gallery
SELECT name FROM artist EXCEPT SELECT T2.name FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id WHERE T1.year  =  2004	theme_gallery
SELECT name FROM artist EXCEPT SELECT T2.name FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id WHERE T1.year  =  2004	theme_gallery
SELECT i_id FROM item WHERE title  =  "orange"	epinions_1
SELECT * FROM item	epinions_1
SELECT count(*) FROM review	epinions_1
SELECT count(*) FROM useracct	epinions_1
SELECT avg(rating) ,  max(rating) FROM review	epinions_1
SELECT min(rank) FROM review	epinions_1
SELECT count(DISTINCT u_id) FROM review	epinions_1
SELECT count(DISTINCT i_id) FROM review	epinions_1
SELECT count(*) FROM item WHERE i_id NOT IN (SELECT i_id FROM review)	epinions_1
SELECT name FROM useracct WHERE u_id NOT IN (SELECT u_id FROM review)	epinions_1
SELECT title FROM item ORDER BY title	epinions_1
SELECT title FROM item WHERE i_id NOT IN (SELECT i_id FROM review)	epinions_1
SELECT name FROM useracct WHERE u_id NOT IN (SELECT u_id FROM review)	epinions_1
SELECT count(*) FROM useracct WHERE u_id NOT IN (SELECT u_id FROM review)	epinions_1
SELECT count(*) FROM item WHERE i_id NOT IN (SELECT i_id FROM review)	epinions_1
SELECT count(*) FROM player	riding_club
SELECT Player_name FROM player ORDER BY Votes ASC	riding_club
SELECT Gender ,  Occupation FROM player	riding_club
SELECT Player_name ,  residence FROM player WHERE Occupation != "Researcher"	riding_club
SELECT Sponsor_name FROM player WHERE Residence  =  "Brandon" OR Residence  =  "Birtle"	riding_club
SELECT Player_name FROM player ORDER BY Votes DESC LIMIT 1	riding_club
SELECT Occupation ,  COUNT(*) FROM player GROUP BY Occupation	riding_club
SELECT Occupation FROM player GROUP BY Occupation ORDER BY COUNT(*) DESC LIMIT 1	riding_club
SELECT Residence FROM player GROUP BY Residence HAVING COUNT(*)  >=  2	riding_club
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM player_coach)	riding_club
SELECT Residence FROM player WHERE gender  =  "M" INTERSECT SELECT Residence FROM player WHERE gender  =  "F"	riding_club
SELECT count(*) FROM gymnast	gymnast
SELECT count(*) FROM gymnast	gymnast
SELECT Total_Points FROM gymnast ORDER BY Total_Points DESC	gymnast
SELECT Total_Points FROM gymnast ORDER BY Total_Points DESC	gymnast
SELECT Total_Points FROM gymnast ORDER BY Floor_Exercise_Points DESC	gymnast
SELECT Total_Points FROM gymnast ORDER BY Floor_Exercise_Points DESC	gymnast
SELECT avg(Horizontal_Bar_Points) FROM gymnast	gymnast
SELECT avg(Horizontal_Bar_Points) FROM gymnast	gymnast
SELECT Name FROM People ORDER BY Name ASC	gymnast
SELECT Name FROM People ORDER BY Name ASC	gymnast
SELECT Age FROM people ORDER BY Height DESC LIMIT 1	gymnast
SELECT Age FROM people ORDER BY Height DESC LIMIT 1	gymnast
SELECT Name FROM People ORDER BY Age DESC LIMIT 5	gymnast
SELECT Name FROM People ORDER BY Age DESC LIMIT 5	gymnast
SELECT DISTINCT Hometown FROM people EXCEPT SELECT DISTINCT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID	gymnast
SELECT DISTINCT Hometown FROM people EXCEPT SELECT DISTINCT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID	gymnast
SELECT Hometown FROM people WHERE Age  >  23 INTERSECT SELECT Hometown FROM people WHERE Age  <  20	gymnast
SELECT Hometown FROM people WHERE Age  >  23 INTERSECT SELECT Hometown FROM people WHERE Age  <  20	gymnast
SELECT count(DISTINCT Hometown) FROM people	gymnast
SELECT count(DISTINCT Hometown) FROM people	gymnast
SELECT count(*) FROM accounts	small_bank_1
SELECT count(*) FROM accounts	small_bank_1
SELECT sum(balance) FROM checking	small_bank_1
SELECT sum(balance) FROM checking	small_bank_1
SELECT avg(balance) FROM checking	small_bank_1
SELECT avg(balance) FROM checking	small_bank_1
SELECT count(*) FROM savings WHERE balance  >  (SELECT avg(balance) FROM savings)	small_bank_1
SELECT count(*) FROM savings WHERE balance  >  (SELECT avg(balance) FROM savings)	small_bank_1
SELECT name FROM accounts ORDER BY name	small_bank_1
SELECT name FROM accounts ORDER BY name	small_bank_1
SELECT count(*) FROM browser WHERE market_share  >=  5	browser_web
SELECT name FROM browser ORDER BY market_share DESC	browser_web
SELECT id ,  name ,  market_share FROM browser	browser_web
SELECT max(market_share) ,  min(market_share) ,  avg(market_share) FROM browser	browser_web
SELECT id ,  market_share FROM browser WHERE name  =  'Safari'	browser_web
SELECT name ,  operating_system FROM web_client_accelerator WHERE CONNECTION != 'Broadband'	browser_web
SELECT count(DISTINCT client) FROM web_client_accelerator	browser_web
SELECT count(*) FROM web_client_accelerator WHERE id NOT IN ( SELECT accelerator_id FROM accelerator_compatible_browser );	browser_web
SELECT name ,  operating_system FROM web_client_accelerator EXCEPT SELECT T1.name ,  T1.operating_system FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.accelerator_id  =  T1.id JOIN browser AS T3 ON T2.browser_id  =  T3.id WHERE T3.name  =  'Opera'	browser_web
SELECT name FROM web_client_accelerator WHERE name LIKE "%Opera%"	browser_web
SELECT Operating_system ,  count(*) FROM web_client_accelerator GROUP BY Operating_system	browser_web
SELECT count(*) FROM wrestler	wrestler
SELECT count(*) FROM wrestler	wrestler
SELECT Name FROM wrestler ORDER BY Days_held DESC	wrestler
SELECT Name FROM wrestler ORDER BY Days_held DESC	wrestler
SELECT Name FROM wrestler ORDER BY Days_held ASC LIMIT 1	wrestler
SELECT Name FROM wrestler ORDER BY Days_held ASC LIMIT 1	wrestler
SELECT DISTINCT Reign FROM wrestler WHERE LOCATION != "Tokyo , Japan"	wrestler
SELECT DISTINCT Reign FROM wrestler WHERE LOCATION != "Tokyo , Japan"	wrestler
SELECT Name ,  LOCATION FROM wrestler	wrestler
SELECT Name ,  LOCATION FROM wrestler	wrestler
SELECT Elimination_Move FROM Elimination WHERE Team  =  "Team Orton"	wrestler
SELECT Elimination_Move FROM Elimination WHERE Team  =  "Team Orton"	wrestler
SELECT Team ,  COUNT(*) FROM elimination GROUP BY Team	wrestler
SELECT Team ,  COUNT(*) FROM elimination GROUP BY Team	wrestler
SELECT Team FROM elimination GROUP BY Team HAVING COUNT(*)  >  3	wrestler
SELECT Team FROM elimination GROUP BY Team HAVING COUNT(*)  >  3	wrestler
SELECT Reign ,  Days_held FROM wrestler	wrestler
SELECT Reign ,  Days_held FROM wrestler	wrestler
SELECT Name FROM wrestler WHERE Days_held  <  100	wrestler
SELECT Name FROM wrestler WHERE Days_held  <  100	wrestler
SELECT Reign FROM wrestler GROUP BY Reign ORDER BY COUNT(*) DESC LIMIT 1	wrestler
SELECT Reign FROM wrestler GROUP BY Reign ORDER BY COUNT(*) DESC LIMIT 1	wrestler
SELECT LOCATION FROM wrestler GROUP BY LOCATION HAVING COUNT(*)  >  2	wrestler
SELECT LOCATION FROM wrestler GROUP BY LOCATION HAVING COUNT(*)  >  2	wrestler
SELECT Name FROM wrestler WHERE Wrestler_ID NOT IN (SELECT Wrestler_ID FROM elimination)	wrestler
SELECT Name FROM wrestler WHERE Wrestler_ID NOT IN (SELECT Wrestler_ID FROM elimination)	wrestler
SELECT Team FROM Elimination WHERE Eliminated_By  =  "Orton" INTERSECT SELECT Team FROM Elimination WHERE Eliminated_By  =  "Benjamin"	wrestler
SELECT Team FROM Elimination WHERE Eliminated_By  =  "Orton" INTERSECT SELECT Team FROM Elimination WHERE Eliminated_By  =  "Benjamin"	wrestler
SELECT COUNT (DISTINCT team) FROM elimination	wrestler
SELECT COUNT (DISTINCT team) FROM elimination	wrestler
SELECT TIME FROM elimination WHERE Eliminated_By  =  "Punk" OR Eliminated_By  =  "Orton"	wrestler
SELECT TIME FROM elimination WHERE Eliminated_By  =  "Punk" OR Eliminated_By  =  "Orton"	wrestler
SELECT count(*) FROM school	school_finance
SELECT count(*) FROM school	school_finance
SELECT school_name FROM school ORDER BY school_name	school_finance
SELECT school_name ,  LOCATION ,  mascot FROM school	school_finance
SELECT sum(enrollment) ,  avg(enrollment) FROM school	school_finance
SELECT mascot FROM school WHERE enrollment  >  (SELECT avg(enrollment) FROM school)	school_finance
SELECT school_name FROM school ORDER BY enrollment LIMIT 1	school_finance
SELECT avg(enrollment) ,  max(enrollment) ,  min(enrollment) FROM school	school_finance
SELECT county ,  count(*) ,  sum(enrollment) FROM school GROUP BY county	school_finance
SELECT donator_name ,  sum(amount) FROM endowment GROUP BY donator_name ORDER BY sum(amount) DESC	school_finance
SELECT school_name FROM school WHERE school_id NOT IN (SELECT school_id FROM endowment)	school_finance
SELECT donator_name FROM endowment EXCEPT SELECT donator_name FROM endowment WHERE amount  <  9	school_finance
SELECT amount ,  donator_name FROM endowment ORDER BY amount DESC LIMIT 1	school_finance
SELECT count(*) FROM budget WHERE budgeted  >  3000 AND YEAR  <=  2001	school_finance
SELECT count(*) FROM budget WHERE budgeted  >  3000 AND YEAR  <=  2001	school_finance
SELECT DISTINCT donator_name FROM endowment	school_finance
SELECT count(*) FROM budget WHERE budgeted  <  invested	school_finance
SELECT count(*) FROM (SELECT * FROM endowment WHERE amount  >  8.5 GROUP BY school_id HAVING count(*)  >  1)	school_finance
SELECT count(*) FROM building	protein_institute
SELECT name ,  street_address ,  floors FROM building ORDER BY floors	protein_institute
SELECT name FROM building ORDER BY height_feet DESC LIMIT 1	protein_institute
SELECT avg(floors) ,  max(floors) ,  min(floors) FROM building	protein_institute
SELECT count(*) FROM building WHERE height_feet  >  (SELECT avg(height_feet) FROM building) OR floors  >  (SELECT avg(floors) FROM building)	protein_institute
SELECT name FROM building WHERE height_feet  >=  200 AND floors  >=  20	protein_institute
SELECT institution ,  LOCATION FROM institution WHERE founded  >  1990 AND TYPE  =  'Private'	protein_institute
SELECT TYPE ,  count(*) ,  sum(enrollment) FROM institution GROUP BY TYPE	protein_institute
SELECT TYPE FROM institution GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	protein_institute
SELECT TYPE FROM institution WHERE founded  >  1990 AND enrollment  >=  1000	protein_institute
SELECT name FROM building WHERE building_id NOT IN (SELECT building_id FROM institution)	protein_institute
SELECT name FROM building EXCEPT SELECT T1.name FROM building AS T1 JOIN institution AS T2 ON T1.building_id  =  T2.building_id WHERE T2.founded  =  2003	protein_institute
SELECT DISTINCT TYPE FROM institution	protein_institute
SELECT count(*) FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM protein)	protein_institute
SELECT LOCATION FROM cinema EXCEPT SELECT LOCATION FROM cinema WHERE capacity  >  800	cinema
SELECT LOCATION FROM cinema WHERE openning_year  =  2010 INTERSECT SELECT LOCATION FROM cinema WHERE openning_year  =  2011	cinema
SELECT count(*) FROM cinema	cinema
SELECT count(*) FROM cinema	cinema
SELECT name ,  openning_year ,  capacity FROM cinema	cinema
SELECT name ,  LOCATION FROM cinema WHERE capacity  >  (SELECT avg(capacity) FROM cinema)	cinema
SELECT DISTINCT LOCATION FROM cinema	cinema
SELECT DISTINCT LOCATION FROM cinema	cinema
SELECT name ,  openning_year FROM cinema ORDER BY openning_year DESC	cinema
SELECT name ,  LOCATION FROM cinema ORDER BY capacity DESC LIMIT 1	cinema
SELECT avg(capacity) ,  min(capacity) ,  max(capacity) FROM cinema WHERE openning_year  >=  2011	cinema
SELECT LOCATION ,  count(*) FROM cinema GROUP BY LOCATION	cinema
SELECT LOCATION FROM cinema WHERE openning_year  >=  2010 GROUP BY LOCATION ORDER BY count(*) DESC LIMIT 1	cinema
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >=  2	cinema
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >=  2	cinema
SELECT title ,  directed_by FROM film	cinema
SELECT title ,  directed_by FROM film	cinema
SELECT DISTINCT directed_by FROM film	cinema
SELECT DISTINCT directed_by FROM film	cinema
SELECT directed_by ,  count(*) FROM film GROUP BY directed_by	cinema
SELECT title ,  directed_by FROM film WHERE film_id NOT IN (SELECT film_id FROM schedule)	cinema
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >  1	cinema
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >  1	cinema
SELECT count(*) FROM film WHERE title LIKE "%Dummy%"	cinema
SELECT count(*) FROM film WHERE title LIKE "%Dummy%"	cinema
SELECT customer_id ,  sum(amount_paid) FROM Payments GROUP BY customer_id ORDER BY sum(amount_paid) DESC LIMIT 1	products_for_hire
SELECT product_id FROM products_booked GROUP BY product_id HAVING count(*)  =  3	products_for_hire
SELECT count(DISTINCT product_type_code) FROM products_for_hire	products_for_hire
SELECT first_name ,  last_name ,  gender_mf FROM customers WHERE good_or_bad_customer  =  'good' ORDER BY last_name	products_for_hire
SELECT avg(amount_due) FROM payments	products_for_hire
SELECT max(booked_count) ,  min(booked_count) ,  avg(booked_count) FROM products_booked	products_for_hire
SELECT DISTINCT payment_type_code FROM payments	products_for_hire
SELECT daily_hire_cost FROM Products_for_hire WHERE product_name LIKE '%Book%'	products_for_hire
SELECT count(*) FROM Products_for_hire WHERE product_id NOT IN ( SELECT product_id FROM products_booked WHERE booked_amount  >  200 )	products_for_hire
SELECT payment_date FROM payments WHERE amount_paid  >  300 OR payment_type_code  =  'Check'	products_for_hire
SELECT product_name ,  product_description FROM products_for_hire WHERE product_type_code  =  'Cutlery' AND daily_hire_cost  <  20	products_for_hire
SELECT count(*) FROM phone	phone_market
SELECT Name FROM phone ORDER BY Price ASC	phone_market
SELECT Memory_in_G ,  Carrier FROM phone	phone_market
SELECT DISTINCT Carrier FROM phone WHERE Memory_in_G  >  32	phone_market
SELECT Name FROM phone WHERE Carrier  =  "Sprint" OR Carrier  =  "TMobile"	phone_market
SELECT Carrier FROM phone ORDER BY Price DESC LIMIT 1	phone_market
SELECT Carrier ,  COUNT(*) FROM phone GROUP BY Carrier	phone_market
SELECT Carrier FROM phone GROUP BY Carrier ORDER BY COUNT(*) DESC LIMIT 1	phone_market
SELECT Carrier FROM phone WHERE Memory_in_G  <  32 INTERSECT SELECT Carrier FROM phone WHERE Memory_in_G  >  64	phone_market
SELECT Name FROM phone WHERE Phone_id NOT IN (SELECT Phone_ID FROM phone_market)	phone_market
SELECT count(*) FROM company	gas_company
SELECT count(*) FROM company	gas_company
SELECT company ,  rank FROM company ORDER BY Sales_billion DESC	gas_company
SELECT company ,  rank FROM company ORDER BY Sales_billion DESC	gas_company
SELECT company ,  main_industry FROM company WHERE headquarters != 'USA'	gas_company
SELECT company ,  main_industry FROM company WHERE headquarters != 'USA'	gas_company
SELECT company ,  headquarters FROM company ORDER BY market_value DESC	gas_company
SELECT company ,  headquarters FROM company ORDER BY market_value DESC	gas_company
SELECT min(market_value) ,  max(market_value) ,  avg(market_value) FROM company	gas_company
SELECT min(market_value) ,  max(market_value) ,  avg(market_value) FROM company	gas_company
SELECT DISTINCT main_industry FROM company	gas_company
SELECT DISTINCT main_industry FROM company	gas_company
SELECT headquarters ,  count(*) FROM company GROUP BY headquarters	gas_company
SELECT headquarters ,  count(*) FROM company GROUP BY headquarters	gas_company
SELECT main_industry ,  sum(market_value) FROM company GROUP BY main_industry	gas_company
SELECT main_industry ,  sum(market_value) FROM company GROUP BY main_industry	gas_company
SELECT main_industry ,  count(*) FROM company GROUP BY main_industry ORDER BY sum(market_value) DESC LIMIT 1	gas_company
SELECT main_industry ,  count(*) FROM company GROUP BY main_industry ORDER BY sum(market_value) DESC LIMIT 1	gas_company
SELECT headquarters FROM company WHERE main_industry  =  'Banking' GROUP BY headquarters HAVING count(*)  >=  2	gas_company
SELECT headquarters FROM company WHERE main_industry  =  'Banking' GROUP BY headquarters HAVING count(*)  >=  2	gas_company
SELECT station_id ,  LOCATION ,  manager_name FROM gas_station ORDER BY open_year	gas_company
SELECT station_id ,  LOCATION ,  manager_name FROM gas_station ORDER BY open_year	gas_company
SELECT count(*) FROM gas_station WHERE open_year BETWEEN 2000 AND 2005	gas_company
SELECT count(*) FROM gas_station WHERE open_year BETWEEN 2000 AND 2005	gas_company
SELECT LOCATION ,  count(*) FROM gas_station GROUP BY LOCATION ORDER BY count(*)	gas_company
SELECT LOCATION ,  count(*) FROM gas_station GROUP BY LOCATION ORDER BY count(*)	gas_company
SELECT headquarters FROM company WHERE main_industry  =  'Banking' INTERSECT SELECT headquarters FROM company WHERE main_industry  =  'Oil and gas'	gas_company
SELECT headquarters FROM company WHERE main_industry  =  'Banking' INTERSECT SELECT headquarters FROM company WHERE main_industry  =  'Oil and gas'	gas_company
SELECT headquarters FROM company EXCEPT SELECT headquarters FROM company WHERE main_industry  =  'Banking'	gas_company
SELECT headquarters FROM company EXCEPT SELECT headquarters FROM company WHERE main_industry  =  'Banking'	gas_company
SELECT company ,  main_industry FROM company WHERE company_id NOT IN (SELECT company_id FROM station_company)	gas_company
SELECT company ,  main_industry FROM company WHERE company_id NOT IN (SELECT company_id FROM station_company)	gas_company
SELECT manager_name FROM gas_station WHERE open_year  >  2000 GROUP BY manager_name ORDER BY count(*) DESC LIMIT 1	gas_company
SELECT manager_name FROM gas_station WHERE open_year  >  2000 GROUP BY manager_name ORDER BY count(*) DESC LIMIT 1	gas_company
SELECT LOCATION FROM gas_station ORDER BY open_year	gas_company
SELECT LOCATION FROM gas_station ORDER BY open_year	gas_company
SELECT rank ,  company ,  market_value FROM company WHERE main_industry  =  'Banking' ORDER BY sales_billion ,  profits_billion	gas_company
SELECT rank ,  company ,  market_value FROM company WHERE main_industry  =  'Banking' ORDER BY sales_billion ,  profits_billion	gas_company
SELECT count(*) FROM region	party_people
SELECT count(*) FROM region	party_people
SELECT DISTINCT region_name FROM region ORDER BY Label	party_people
SELECT DISTINCT region_name FROM region ORDER BY Label	party_people
SELECT count(DISTINCT party_name) FROM party	party_people
SELECT count(DISTINCT party_name) FROM party	party_people
SELECT minister ,  took_office ,  left_office FROM party ORDER BY left_office	party_people
SELECT minister ,  took_office ,  left_office FROM party ORDER BY left_office	party_people
SELECT minister FROM party WHERE took_office  >  1961 OR took_office  <  1959	party_people
SELECT minister FROM party WHERE took_office  >  1961 OR took_office  <  1959	party_people
SELECT minister FROM party WHERE party_name != 'Progress Party'	party_people
SELECT minister FROM party WHERE party_name != 'Progress Party'	party_people
SELECT minister ,  party_name FROM party ORDER BY took_office DESC	party_people
SELECT minister ,  party_name FROM party ORDER BY took_office DESC	party_people
SELECT minister FROM party ORDER BY left_office DESC LIMIT 1	party_people
SELECT minister FROM party ORDER BY left_office DESC LIMIT 1	party_people
SELECT party_name FROM party WHERE party_id NOT IN (SELECT party_id FROM Member)	party_people
SELECT party_name FROM party WHERE party_id NOT IN (SELECT party_id FROM Member)	party_people
SELECT member_name FROM member WHERE party_id  =  3 INTERSECT SELECT member_name FROM member WHERE party_id  =  1	party_people
SELECT member_name FROM member WHERE party_id  =  3 INTERSECT SELECT member_name FROM member WHERE party_id  =  1	party_people
SELECT count(*) FROM party_events	party_people
SELECT count(*) FROM party_events	party_people
SELECT member_name FROM member EXCEPT SELECT T1.member_name FROM member AS T1 JOIN party_events AS T2 ON T1.member_id  =  T2.member_in_charge_id	party_people
SELECT member_name FROM member EXCEPT SELECT T1.member_name FROM member AS T1 JOIN party_events AS T2 ON T1.member_id  =  T2.member_in_charge_id	party_people
SELECT event_name FROM party_events GROUP BY event_name HAVING count(*)  >  2	party_people
SELECT event_name FROM party_events GROUP BY event_name HAVING count(*)  >  2	party_people
SELECT count(*) FROM pilot	pilot_record
SELECT Pilot_name FROM pilot ORDER BY Rank ASC	pilot_record
SELECT POSITION ,  Team FROM pilot	pilot_record
SELECT DISTINCT POSITION FROM pilot WHERE Age  >  30	pilot_record
SELECT Pilot_name FROM pilot WHERE Team  =  "Bradley" OR Team  =  "Fordham"	pilot_record
SELECT Join_Year FROM pilot ORDER BY Rank ASC LIMIT 1	pilot_record
SELECT Nationality ,  COUNT(*) FROM pilot GROUP BY Nationality	pilot_record
SELECT Nationality FROM pilot GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1	pilot_record
SELECT POSITION FROM pilot WHERE Join_Year  <  2000 INTERSECT SELECT POSITION FROM pilot WHERE Join_Year  >  2005	pilot_record
SELECT Pilot_name FROM pilot WHERE Pilot_ID NOT IN (SELECT Pilot_ID FROM pilot_record)	pilot_record
SELECT document_status_code FROM Ref_Document_Status;	cre_Doc_Control_Systems
SELECT document_status_description FROM Ref_Document_Status WHERE document_status_code = "working";	cre_Doc_Control_Systems
SELECT document_type_code FROM Ref_Document_Types;	cre_Doc_Control_Systems
SELECT document_type_description FROM Ref_Document_Types WHERE document_type_code = "Paper";	cre_Doc_Control_Systems
SELECT shipping_agent_name FROM Ref_Shipping_Agents;	cre_Doc_Control_Systems
SELECT shipping_agent_code FROM Ref_Shipping_Agents WHERE shipping_agent_name = "UPS";	cre_Doc_Control_Systems
SELECT role_code FROM ROLES;	cre_Doc_Control_Systems
SELECT role_description FROM ROLES WHERE role_code = "ED";	cre_Doc_Control_Systems
SELECT count(*) FROM Employees;	cre_Doc_Control_Systems
SELECT document_id ,  receipt_date FROM Documents;	cre_Doc_Control_Systems
SELECT count(*) FROM Documents WHERE document_status_code = "done";	cre_Doc_Control_Systems
SELECT document_type_code FROM Documents WHERE document_id = 2;	cre_Doc_Control_Systems
SELECT document_id FROM Documents WHERE document_status_code = "done" AND document_type_code = "Paper";	cre_Doc_Control_Systems
SELECT receipt_date FROM Documents WHERE document_id = 3;	cre_Doc_Control_Systems
SELECT mailing_date FROM Documents_Mailed WHERE document_id = 7;	cre_Doc_Control_Systems
SELECT document_id FROM Documents WHERE document_status_code  =  "done" AND document_type_code = "Paper" EXCEPT SELECT document_id FROM Documents JOIN Ref_Shipping_Agents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code WHERE Ref_Shipping_Agents.shipping_agent_name = "USPS";	cre_Doc_Control_Systems
SELECT document_id FROM Documents WHERE document_status_code  =  "done" AND document_type_code = "Paper" INTERSECT SELECT document_id FROM Documents JOIN Ref_Shipping_Agents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code WHERE Ref_Shipping_Agents.shipping_agent_name = "USPS";	cre_Doc_Control_Systems
SELECT draft_details FROM Document_Drafts WHERE document_id = 7;	cre_Doc_Control_Systems
SELECT count(*) FROM Draft_Copies WHERE document_id = 2;	cre_Doc_Control_Systems
SELECT document_id , count(copy_number) FROM Draft_Copies GROUP BY document_id ORDER BY count(copy_number) DESC LIMIT 1;	cre_Doc_Control_Systems
SELECT document_id , count(*) FROM Draft_Copies GROUP BY document_id HAVING count(*)  >  1;	cre_Doc_Control_Systems
SELECT employee_name FROM Employees EXCEPT SELECT Employees.employee_name FROM Employees JOIN Circulation_History ON Circulation_History.employee_id = Employees.employee_id	cre_Doc_Control_Systems
SELECT document_id ,  count(DISTINCT employee_id) FROM Circulation_History GROUP BY document_id;	cre_Doc_Control_Systems
SELECT dname FROM department ORDER BY mgr_start_date	company_1
SELECT Dependent_name FROM dependent WHERE relationship  =  'Spouse'	company_1
SELECT count(*) FROM dependent WHERE sex  =  'F'	company_1
SELECT fname ,  lname FROM employee WHERE salary  >  30000	company_1
SELECT count(*) ,  sex FROM employee WHERE salary  <  50000 GROUP BY sex	company_1
SELECT fname ,  lname ,  address FROM employee ORDER BY Bdate	company_1
SELECT Participant_ID ,  Participant_Type_Code ,  Participant_Details FROM  Participants	local_govt_in_alabama
SELECT count(*) FROM participants WHERE participant_type_code  =  'Organizer'	local_govt_in_alabama
SELECT service_type_code FROM services ORDER BY service_type_code	local_govt_in_alabama
SELECT service_id ,  event_details FROM EVENTS	local_govt_in_alabama
SELECT participant_type_code FROM participants GROUP BY participant_type_code ORDER BY count(*) DESC LIMIT 1	local_govt_in_alabama
SELECT Event_ID FROM Participants_in_Events GROUP BY Event_ID ORDER BY count(*) DESC LIMIT 1	local_govt_in_alabama
SELECT event_id FROM EVENTS EXCEPT SELECT T1.event_id FROM Participants_in_Events AS T1 JOIN Participants AS T2 ON T1.Participant_ID  =  T2.Participant_ID WHERE Participant_Details  =  'Kenyatta Kuhn'	local_govt_in_alabama
SELECT count(*) FROM EVENTS WHERE event_id NOT IN (SELECT event_id FROM Participants_in_Events)	local_govt_in_alabama
SELECT count(DISTINCT participant_id) FROM participants_in_Events	local_govt_in_alabama
SELECT name FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT name FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT name ,  date FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT name ,  date FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT name FROM races WHERE YEAR = 2017	formula_1
SELECT name FROM races WHERE YEAR = 2017	formula_1
SELECT DISTINCT name FROM races WHERE YEAR BETWEEN 2014 AND 2017	formula_1
SELECT DISTINCT name FROM races WHERE YEAR BETWEEN 2014 AND 2017	formula_1
SELECT count(DISTINCT driverId) FROM results WHERE raceId NOT IN( SELECT raceId FROM races WHERE YEAR != 2009 )	formula_1
SELECT count(DISTINCT driverId) FROM results WHERE raceId NOT IN( SELECT raceId FROM races WHERE YEAR != 2009 )	formula_1
SELECT forename ,  surname FROM drivers WHERE nationality = "German"	formula_1
SELECT forename ,  surname FROM drivers WHERE nationality = "German"	formula_1
SELECT count(*) ,  nationality FROM constructors GROUP BY nationality	formula_1
SELECT count(*) ,  nationality FROM constructors GROUP BY nationality	formula_1
SELECT count(*) ,  constructorid FROM constructorStandings GROUP BY constructorid	formula_1
SELECT count(*) ,  constructorid FROM constructorStandings GROUP BY constructorid	formula_1
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  <  (SELECT max(duration) FROM pitstops WHERE raceid  =  841)	formula_1
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  <  (SELECT max(duration) FROM pitstops WHERE raceid  =  841)	formula_1
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  >  (SELECT min(duration) FROM pitstops WHERE raceid  =  841)	formula_1
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  >  (SELECT min(duration) FROM pitstops WHERE raceid  =  841)	formula_1
SELECT DISTINCT forename FROM drivers ORDER BY forename ASC	formula_1
SELECT DISTINCT forename FROM drivers ORDER BY forename ASC	formula_1
SELECT DISTINCT name FROM races ORDER BY name DESC	formula_1
SELECT DISTINCT name FROM races ORDER BY name DESC	formula_1
SELECT name FROM races WHERE YEAR BETWEEN 2009 AND 2011	formula_1
SELECT name FROM races WHERE YEAR BETWEEN 2009 AND 2011	formula_1
SELECT name FROM races WHERE TIME > "12:00:00" OR TIME < "09:00:00"	formula_1
SELECT name FROM races WHERE TIME > "12:00:00" OR TIME < "09:00:00"	formula_1
SELECT name FROM circuits WHERE country = "UK" OR country = "Malaysia"	formula_1
SELECT name FROM circuits WHERE country = "UK" OR country = "Malaysia"	formula_1
SELECT circuitid ,  LOCATION FROM circuits WHERE country = "France" OR country = "Belgium"	formula_1
SELECT circuitid ,  LOCATION FROM circuits WHERE country = "France" OR country = "Belgium"	formula_1
SELECT count(*) FROM technician	machine_repair
SELECT count(*) FROM technician	machine_repair
SELECT Name FROM technician ORDER BY Age ASC	machine_repair
SELECT Name FROM technician ORDER BY Age ASC	machine_repair
SELECT Team ,  Starting_Year FROM technician	machine_repair
SELECT Team ,  Starting_Year FROM technician	machine_repair
SELECT Name FROM technician WHERE Team != "NYY"	machine_repair
SELECT Name FROM technician WHERE Team != "NYY"	machine_repair
SELECT Name FROM technician WHERE Age  =  36 OR Age  =  37	machine_repair
SELECT Name FROM technician WHERE Age  =  36 OR Age  =  37	machine_repair
SELECT Starting_Year FROM technician ORDER BY Age DESC LIMIT 1	machine_repair
SELECT Starting_Year FROM technician ORDER BY Age DESC LIMIT 1	machine_repair
SELECT Team ,  COUNT(*) FROM technician GROUP BY Team	machine_repair
SELECT Team ,  COUNT(*) FROM technician GROUP BY Team	machine_repair
SELECT Team FROM technician GROUP BY Team ORDER BY COUNT(*) DESC LIMIT 1	machine_repair
SELECT Team FROM technician GROUP BY Team ORDER BY COUNT(*) DESC LIMIT 1	machine_repair
SELECT Team FROM technician GROUP BY Team HAVING COUNT(*)  >=  2	machine_repair
SELECT Team FROM technician GROUP BY Team HAVING COUNT(*)  >=  2	machine_repair
SELECT Name FROM technician WHERE technician_id NOT IN (SELECT technician_id FROM repair_assignment)	machine_repair
SELECT Name FROM technician WHERE technician_id NOT IN (SELECT technician_id FROM repair_assignment)	machine_repair
SELECT Starting_Year FROM technician WHERE Team  =  "CLE" INTERSECT SELECT Starting_Year FROM technician WHERE Team  =  "CWS"	machine_repair
SELECT Starting_Year FROM technician WHERE Team  =  "CLE" INTERSECT SELECT Starting_Year FROM technician WHERE Team  =  "CWS"	machine_repair
SELECT count(*) FROM entrepreneur	entrepreneur
SELECT count(*) FROM entrepreneur	entrepreneur
SELECT Company FROM entrepreneur ORDER BY Money_Requested DESC	entrepreneur
SELECT Company FROM entrepreneur ORDER BY Money_Requested DESC	entrepreneur
SELECT Company ,  Investor FROM entrepreneur	entrepreneur
SELECT Company ,  Investor FROM entrepreneur	entrepreneur
SELECT avg(Money_Requested) FROM entrepreneur	entrepreneur
SELECT avg(Money_Requested) FROM entrepreneur	entrepreneur
SELECT Name FROM People ORDER BY Weight ASC	entrepreneur
SELECT Name FROM People ORDER BY Weight ASC	entrepreneur
SELECT Weight FROM people ORDER BY Height ASC LIMIT 1	entrepreneur
SELECT Weight FROM people ORDER BY Height ASC LIMIT 1	entrepreneur
SELECT Investor ,  COUNT(*) FROM entrepreneur GROUP BY Investor	entrepreneur
SELECT Investor ,  COUNT(*) FROM entrepreneur GROUP BY Investor	entrepreneur
SELECT Investor FROM entrepreneur GROUP BY Investor ORDER BY COUNT(*) DESC LIMIT 1	entrepreneur
SELECT Investor FROM entrepreneur GROUP BY Investor ORDER BY COUNT(*) DESC LIMIT 1	entrepreneur
SELECT Investor FROM entrepreneur GROUP BY Investor HAVING COUNT(*)  >=  2	entrepreneur
SELECT Investor FROM entrepreneur GROUP BY Investor HAVING COUNT(*)  >=  2	entrepreneur
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM entrepreneur)	entrepreneur
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM entrepreneur)	entrepreneur
SELECT Investor FROM entrepreneur WHERE Money_Requested  >  140000 INTERSECT SELECT Investor FROM entrepreneur WHERE Money_Requested  <  120000	entrepreneur
SELECT Investor FROM entrepreneur WHERE Money_Requested  >  140000 INTERSECT SELECT Investor FROM entrepreneur WHERE Money_Requested  <  120000	entrepreneur
SELECT count(DISTINCT Company) FROM entrepreneur	entrepreneur
SELECT count(DISTINCT Company) FROM entrepreneur	entrepreneur
SELECT count(*) FROM perpetrator	perpetrator
SELECT Date FROM perpetrator ORDER BY Killed DESC	perpetrator
SELECT Injured FROM perpetrator ORDER BY Injured ASC	perpetrator
SELECT avg(Injured) FROM perpetrator	perpetrator
SELECT LOCATION FROM perpetrator ORDER BY Killed DESC LIMIT 1	perpetrator
SELECT Name FROM People ORDER BY Height ASC	perpetrator
SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country	perpetrator
SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1	perpetrator
SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country HAVING COUNT(*)  >=  2	perpetrator
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM perpetrator)	perpetrator
SELECT Country FROM perpetrator WHERE Injured  >  50 INTERSECT SELECT Country FROM perpetrator WHERE Injured  <  20	perpetrator
SELECT count(DISTINCT LOCATION) FROM perpetrator	perpetrator
SELECT max(YEAR) FROM perpetrator;	perpetrator
SELECT campus FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT campus FROM campuses WHERE LOCATION  =  "Chico"	csu_1
SELECT campus FROM campuses WHERE LOCATION  =  "Chico"	csu_1
SELECT campus FROM campuses WHERE YEAR  =  1958	csu_1
SELECT campus FROM campuses WHERE YEAR  =  1958	csu_1
SELECT campus FROM campuses WHERE YEAR  <  1800	csu_1
SELECT campus FROM campuses WHERE YEAR  <  1800	csu_1
SELECT campus FROM campuses WHERE YEAR  >=  1935 AND YEAR  <=  1939	csu_1
SELECT campus FROM campuses WHERE YEAR  >=  1935 AND YEAR  <=  1939	csu_1
SELECT campus FROM campuses WHERE LOCATION  =  "Northridge" AND county  =  "Los Angeles" UNION SELECT campus FROM campuses WHERE LOCATION  =  "San Francisco" AND county  =  "San Francisco"	csu_1
SELECT campus FROM campuses WHERE LOCATION  =  "Northridge" AND county  =  "Los Angeles" UNION SELECT campus FROM campuses WHERE LOCATION  =  "San Francisco" AND county  =  "San Francisco"	csu_1
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees)	csu_1
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees)	csu_1
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees)	csu_1
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees)	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles" AND YEAR  >  1950	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles" AND YEAR  >  1950	csu_1
SELECT YEAR FROM degrees GROUP BY YEAR ORDER BY sum(degrees) DESC LIMIT 1	csu_1
SELECT YEAR FROM degrees GROUP BY YEAR ORDER BY sum(degrees) DESC LIMIT 1	csu_1
SELECT campus FROM degrees GROUP BY campus ORDER BY sum(degrees) DESC LIMIT 1	csu_1
SELECT campus FROM degrees GROUP BY campus ORDER BY sum(degrees) DESC LIMIT 1	csu_1
SELECT avg(campusfee) FROM csu_fees WHERE YEAR  =  1996	csu_1
SELECT avg(campusfee) FROM csu_fees WHERE YEAR  =  1996	csu_1
SELECT avg(campusfee) FROM csu_fees WHERE YEAR  =  2005	csu_1
SELECT avg(campusfee) FROM csu_fees WHERE YEAR  =  2005	csu_1
SELECT count(*) FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT count(*) FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT sum(faculty) FROM faculty WHERE YEAR  =  2002	csu_1
SELECT sum(faculty) FROM faculty WHERE YEAR  =  2002	csu_1
SELECT count(*) FROM campuses	csu_1
SELECT count(*) FROM campuses	csu_1
SELECT count(*) FROM candidate	candidate_poll
SELECT count(*) FROM candidate	candidate_poll
SELECT poll_source FROM candidate GROUP BY poll_source ORDER BY count(*) DESC LIMIT 1	candidate_poll
SELECT poll_source FROM candidate GROUP BY poll_source ORDER BY count(*) DESC LIMIT 1	candidate_poll
SELECT support_rate FROM candidate ORDER BY support_rate DESC LIMIT 3	candidate_poll
SELECT support_rate FROM candidate ORDER BY support_rate DESC LIMIT 3	candidate_poll
SELECT Candidate_ID FROM candidate ORDER BY oppose_rate LIMIT 1	candidate_poll
SELECT Candidate_ID FROM candidate ORDER BY oppose_rate LIMIT 1	candidate_poll
SELECT Support_rate ,  Consider_rate ,  Oppose_rate FROM candidate ORDER BY unsure_rate	candidate_poll
SELECT Support_rate ,  Consider_rate ,  Oppose_rate FROM candidate ORDER BY unsure_rate	candidate_poll
SELECT poll_source FROM candidate ORDER BY oppose_rate DESC LIMIT 1	candidate_poll
SELECT poll_source FROM candidate ORDER BY oppose_rate DESC LIMIT 1	candidate_poll
SELECT name FROM people ORDER BY date_of_birth	candidate_poll
SELECT name FROM people ORDER BY date_of_birth	candidate_poll
SELECT avg(height) ,  avg(weight) FROM people WHERE sex  =  'M'	candidate_poll
SELECT avg(height) ,  avg(weight) FROM people WHERE sex  =  'M'	candidate_poll
SELECT name FROM people WHERE height  >  200 OR height  <  190	candidate_poll
SELECT name FROM people WHERE height  >  200 OR height  <  190	candidate_poll
SELECT avg(weight) ,  min(weight) ,  sex FROM people GROUP BY sex	candidate_poll
SELECT avg(weight) ,  min(weight) ,  sex FROM people GROUP BY sex	candidate_poll
SELECT name FROM people WHERE people_id NOT IN (SELECT people_id FROM candidate)	candidate_poll
SELECT name FROM people WHERE people_id NOT IN (SELECT people_id FROM candidate)	candidate_poll
SELECT count(*) ,  sex FROM people WHERE weight  >  85 GROUP BY sex	candidate_poll
SELECT count(*) ,  sex FROM people WHERE weight  >  85 GROUP BY sex	candidate_poll
SELECT max(support_rate) ,  min(consider_rate) ,  min(oppose_rate) FROM candidate	candidate_poll
SELECT max(support_rate) ,  min(consider_rate) ,  min(oppose_rate) FROM candidate	candidate_poll
SELECT name FROM people WHERE height  <  (SELECT avg(height) FROM people)	candidate_poll
SELECT name FROM people WHERE height  <  (SELECT avg(height) FROM people)	candidate_poll
SELECT * FROM people	candidate_poll
SELECT * FROM people	candidate_poll
SELECT title FROM Movie WHERE director = 'Steven Spielberg'	movie_1
SELECT title FROM Movie WHERE director = 'Steven Spielberg'	movie_1
SELECT title FROM Movie WHERE director = 'James Cameron' AND YEAR  >  2000	movie_1
SELECT title FROM Movie WHERE director = 'James Cameron' AND YEAR  >  2000	movie_1
SELECT count(*) FROM Movie WHERE YEAR  <  2000	movie_1
SELECT count(*) FROM Movie WHERE YEAR  <  2000	movie_1
SELECT director FROM Movie WHERE title  = 'Avatar'	movie_1
SELECT director FROM Movie WHERE title  = 'Avatar'	movie_1
SELECT count(*) FROM Reviewer	movie_1
SELECT count(*) FROM Reviewer	movie_1
SELECT rID FROM Reviewer WHERE name LIKE "%Mike%"	movie_1
SELECT rID FROM Reviewer WHERE name LIKE "%Mike%"	movie_1
SELECT rID FROM Reviewer WHERE name  =  "Daniel Lewis"	movie_1
SELECT rID FROM Reviewer WHERE name  =  "Daniel Lewis"	movie_1
SELECT count(*) FROM Rating WHERE stars  >  3	movie_1
SELECT count(*) FROM Rating WHERE stars  >  3	movie_1
SELECT max(stars) ,  min(stars) FROM Rating	movie_1
SELECT max(stars) ,  min(stars) FROM Rating	movie_1
SELECT title FROM Movie WHERE mID NOT IN (SELECT mID FROM Rating)	movie_1
SELECT title FROM Movie WHERE mID NOT IN (SELECT mID FROM Rating)	movie_1
SELECT title FROM Movie WHERE YEAR  =  (SELECT max(YEAR) FROM Movie)	movie_1
SELECT title FROM Movie WHERE YEAR  =  (SELECT max(YEAR) FROM Movie)	movie_1
SELECT title FROM Movie WHERE YEAR  >  (SELECT max(YEAR) FROM Movie WHERE director  =  "Steven Spielberg")	movie_1
SELECT title FROM Movie WHERE YEAR  >  (SELECT max(YEAR) FROM Movie WHERE director  =  "Steven Spielberg")	movie_1
SELECT name FROM Reviewer UNION SELECT title FROM Movie	movie_1
SELECT name FROM Reviewer UNION SELECT title FROM Movie	movie_1
SELECT DISTINCT title FROM Movie EXCEPT SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T3.name  =  'Chris Jackson'	movie_1
SELECT DISTINCT title FROM Movie EXCEPT SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T3.name  =  'Chris Jackson'	movie_1
SELECT director FROM Movie GROUP BY director HAVING count(*)  =  1	movie_1
SELECT director FROM Movie GROUP BY director HAVING count(*)  =  1	movie_1
SELECT director FROM Movie WHERE director != "null" GROUP BY director HAVING count(*)  =  1	movie_1
SELECT director FROM Movie WHERE director != "null" GROUP BY director HAVING count(*)  =  1	movie_1
SELECT mID ,  avg(stars) FROM Rating WHERE mID NOT IN (SELECT T1.mID FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T2.name  =  "Brittany Harris") GROUP BY mID	movie_1
SELECT mID ,  avg(stars) FROM Rating WHERE mID NOT IN (SELECT T1.mID FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T2.name  =  "Brittany Harris") GROUP BY mID	movie_1
SELECT mID FROM Rating EXCEPT SELECT T1.mID FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T2.name  =  "Brittany Harris"	movie_1
SELECT mID FROM Rating EXCEPT SELECT T1.mID FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T2.name  =  "Brittany Harris"	movie_1
SELECT mID ,  avg(stars) FROM Rating GROUP BY mID HAVING count(*)  >=  2	movie_1
SELECT mID ,  avg(stars) FROM Rating GROUP BY mID HAVING count(*)  >=  2	movie_1
SELECT rID FROM Rating EXCEPT SELECT rID FROM Rating WHERE stars  =  4	movie_1
SELECT rID FROM Rating EXCEPT SELECT rID FROM Rating WHERE stars  =  4	movie_1
SELECT rID FROM Rating WHERE stars != 4	movie_1
SELECT rID FROM Rating WHERE stars != 4	movie_1
SELECT title FROM Movie WHERE director  =  "James Cameron" OR YEAR   <  1980	movie_1
SELECT title FROM Movie WHERE director  =  "James Cameron" OR YEAR   <  1980	movie_1
SELECT count(*) FROM county_public_safety	county_public_safety
SELECT count(*) FROM county_public_safety	county_public_safety
SELECT Name FROM county_public_safety ORDER BY Population DESC	county_public_safety
SELECT Name FROM county_public_safety ORDER BY Population DESC	county_public_safety
SELECT DISTINCT Police_force FROM county_public_safety WHERE LOCATION != "East"	county_public_safety
SELECT DISTINCT Police_force FROM county_public_safety WHERE LOCATION != "East"	county_public_safety
SELECT min(Crime_rate) ,  max(Crime_rate) FROM county_public_safety	county_public_safety
SELECT min(Crime_rate) ,  max(Crime_rate) FROM county_public_safety	county_public_safety
SELECT Crime_rate FROM county_public_safety ORDER BY Police_officers ASC	county_public_safety
SELECT Crime_rate FROM county_public_safety ORDER BY Police_officers ASC	county_public_safety
SELECT Name FROM city ORDER BY Name ASC	county_public_safety
SELECT Name FROM city ORDER BY Name ASC	county_public_safety
SELECT Hispanic FROM city WHERE Black  >  10	county_public_safety
SELECT Hispanic FROM city WHERE Black  >  10	county_public_safety
SELECT Name FROM county_public_safety ORDER BY Population DESC LIMIT 1	county_public_safety
SELECT Name FROM county_public_safety ORDER BY Population DESC LIMIT 1	county_public_safety
SELECT Name FROM city ORDER BY White DESC LIMIT 5	county_public_safety
SELECT Name FROM city ORDER BY White DESC LIMIT 5	county_public_safety
SELECT name FROM city WHERE county_ID  =  (SELECT county_ID FROM county_public_safety ORDER BY Police_officers DESC LIMIT 1)	county_public_safety
SELECT name FROM city WHERE county_ID  =  (SELECT county_ID FROM county_public_safety ORDER BY Police_officers DESC LIMIT 1)	county_public_safety
SELECT count(*) FROM city WHERE county_ID IN (SELECT county_ID FROM county_public_safety WHERE population  >  20000)	county_public_safety
SELECT count(*) FROM city WHERE county_ID IN (SELECT county_ID FROM county_public_safety WHERE population  >  20000)	county_public_safety
SELECT Police_force ,  COUNT(*) FROM county_public_safety GROUP BY Police_force	county_public_safety
SELECT Police_force ,  COUNT(*) FROM county_public_safety GROUP BY Police_force	county_public_safety
SELECT LOCATION FROM county_public_safety GROUP BY LOCATION ORDER BY COUNT(*) DESC LIMIT 1	county_public_safety
SELECT LOCATION FROM county_public_safety GROUP BY LOCATION ORDER BY COUNT(*) DESC LIMIT 1	county_public_safety
SELECT Name FROM county_public_safety WHERE County_ID NOT IN (SELECT County_ID FROM city)	county_public_safety
SELECT Name FROM county_public_safety WHERE County_ID NOT IN (SELECT County_ID FROM city)	county_public_safety
SELECT Police_force FROM county_public_safety WHERE LOCATION  =  "East" INTERSECT SELECT Police_force FROM county_public_safety WHERE LOCATION  =  "West"	county_public_safety
SELECT Police_force FROM county_public_safety WHERE LOCATION  =  "East" INTERSECT SELECT Police_force FROM county_public_safety WHERE LOCATION  =  "West"	county_public_safety
SELECT name FROM city WHERE county_id IN (SELECT county_id FROM county_public_safety WHERE Crime_rate  <  100)	county_public_safety
SELECT name FROM city WHERE county_id IN (SELECT county_id FROM county_public_safety WHERE Crime_rate  <  100)	county_public_safety
SELECT Case_burden FROM county_public_safety ORDER BY Population DESC	county_public_safety
SELECT Case_burden FROM county_public_safety ORDER BY Population DESC	county_public_safety
SELECT roomName FROM Rooms WHERE basePrice  <  160 AND beds =  2 AND decor  =  'modern';	inn_1
SELECT roomName FROM Rooms WHERE basePrice  <  160 AND beds =  2 AND decor  =  'modern';	inn_1
SELECT roomName ,  RoomId FROM Rooms WHERE basePrice  >  160 AND maxOccupancy  >  2;	inn_1
SELECT roomName ,  RoomId FROM Rooms WHERE basePrice  >  160 AND maxOccupancy  >  2;	inn_1
SELECT kids FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY";	inn_1
SELECT kids FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY";	inn_1
SELECT count(*) FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY";	inn_1
SELECT count(*) FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY";	inn_1
SELECT Adults FROM Reservations WHERE CheckIn  =  "2010-10-23" AND FirstName  =  "CONRAD" AND LastName  =  "SELBIG";	inn_1
SELECT Adults FROM Reservations WHERE CheckIn  =  "2010-10-23" AND FirstName  =  "CONRAD" AND LastName  =  "SELBIG";	inn_1
SELECT Kids FROM Reservations WHERE CheckIn  =  "2010-09-21" AND FirstName  =  "DAMIEN" AND LastName  =  "TRACHSEL";	inn_1
SELECT Kids FROM Reservations WHERE CheckIn  =  "2010-09-21" AND FirstName  =  "DAMIEN" AND LastName  =  "TRACHSEL";	inn_1
SELECT sum(beds) FROM Rooms WHERE bedtype  =  'King';	inn_1
SELECT sum(beds) FROM Rooms WHERE bedtype  =  'King';	inn_1
SELECT roomName ,  decor FROM Rooms WHERE bedtype  =  'King' ORDER BY basePrice;	inn_1
SELECT roomName ,  decor FROM Rooms WHERE bedtype  =  'King' ORDER BY basePrice;	inn_1
SELECT roomName ,  basePrice FROM Rooms ORDER BY basePrice ASC LIMIT 1;	inn_1
SELECT roomName ,  basePrice FROM Rooms ORDER BY basePrice ASC LIMIT 1;	inn_1
SELECT decor FROM Rooms WHERE roomName  =  "Recluse and defiance";	inn_1
SELECT decor FROM Rooms WHERE roomName  =  "Recluse and defiance";	inn_1
SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType;	inn_1
SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType;	inn_1
SELECT sum(maxOccupancy) FROM Rooms WHERE decor  =  'modern';	inn_1
SELECT sum(maxOccupancy) FROM Rooms WHERE decor  =  'modern';	inn_1
SELECT count(*) FROM Rooms;	inn_1
SELECT count(*) FROM Rooms;	inn_1
SELECT count(*) FROM Rooms WHERE bedType  =  "King";	inn_1
SELECT count(*) FROM Rooms WHERE bedType  =  "King";	inn_1
SELECT bedType ,  count(*) FROM Rooms GROUP BY bedType;	inn_1
SELECT bedType ,  count(*) FROM Rooms GROUP BY bedType;	inn_1
SELECT roomName FROM Rooms ORDER BY maxOccupancy DESC LIMIT 1;	inn_1
SELECT roomName FROM Rooms ORDER BY maxOccupancy DESC LIMIT 1;	inn_1
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 1;	inn_1
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 1;	inn_1
SELECT roomName ,  bedType FROM Rooms WHERE decor = "traditional";	inn_1
SELECT roomName ,  bedType FROM Rooms WHERE decor = "traditional";	inn_1
SELECT decor ,  count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor;	inn_1
SELECT decor ,  count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor;	inn_1
SELECT decor , avg(basePrice) ,  min(basePrice) FROM Rooms GROUP BY decor;	inn_1
SELECT decor , avg(basePrice) ,  min(basePrice) FROM Rooms GROUP BY decor;	inn_1
SELECT roomName FROM Rooms ORDER BY basePrice;	inn_1
SELECT roomName FROM Rooms ORDER BY basePrice;	inn_1
SELECT decor , count(*) FROM Rooms WHERE basePrice  >  120 GROUP BY decor;	inn_1
SELECT decor , count(*) FROM Rooms WHERE basePrice  >  120 GROUP BY decor;	inn_1
SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType;	inn_1
SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType;	inn_1
SELECT roomName FROM Rooms WHERE bedType  =  "King" OR bedType  =  "Queen";	inn_1
SELECT roomName FROM Rooms WHERE bedType  =  "King" OR bedType  =  "Queen";	inn_1
SELECT count(DISTINCT bedType) FROM Rooms;	inn_1
SELECT count(DISTINCT bedType) FROM Rooms;	inn_1
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 3;	inn_1
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 3;	inn_1
SELECT roomName FROM Rooms WHERE basePrice  >  ( SELECT avg(basePrice) FROM Rooms );	inn_1
SELECT roomName FROM Rooms WHERE basePrice  >  ( SELECT avg(basePrice) FROM Rooms );	inn_1
SELECT count(*) FROM rooms WHERE roomid NOT IN (SELECT DISTINCT room FROM reservations)	inn_1
SELECT count(*) FROM rooms WHERE roomid NOT IN (SELECT DISTINCT room FROM reservations)	inn_1
SELECT roomname FROM rooms WHERE baseprice BETWEEN 120 AND 150	inn_1
SELECT roomname FROM rooms WHERE baseprice BETWEEN 120 AND 150	inn_1
SELECT count(DISTINCT source_system_code) FROM CMI_cross_references	local_govt_mdm
SELECT * FROM customer_master_index ORDER BY cmi_details DESC	local_govt_mdm
SELECT council_tax_id ,  cmi_cross_ref_id FROM parking_fines	local_govt_mdm
SELECT count(*) FROM rent_arrears	local_govt_mdm
SELECT cmi_cross_ref_id FROM cmi_cross_references EXCEPT SELECT cmi_cross_ref_id FROM parking_fines	local_govt_mdm
SELECT DISTINCT source_system_code FROM cmi_cross_references WHERE source_system_code LIKE '%en%'	local_govt_mdm
SELECT count(*) FROM party	party_host
SELECT count(*) FROM party	party_host
SELECT Party_Theme FROM party ORDER BY Number_of_hosts ASC	party_host
SELECT Party_Theme FROM party ORDER BY Number_of_hosts ASC	party_host
SELECT Party_Theme ,  LOCATION FROM party	party_host
SELECT Party_Theme ,  LOCATION FROM party	party_host
SELECT First_year ,  Last_year FROM party WHERE Party_Theme  =  "Spring" OR Party_Theme  =  "Teqnology"	party_host
SELECT First_year ,  Last_year FROM party WHERE Party_Theme  =  "Spring" OR Party_Theme  =  "Teqnology"	party_host
SELECT avg(Number_of_hosts) FROM party	party_host
SELECT avg(Number_of_hosts) FROM party	party_host
SELECT LOCATION FROM party ORDER BY Number_of_hosts DESC LIMIT 1	party_host
SELECT LOCATION FROM party ORDER BY Number_of_hosts DESC LIMIT 1	party_host
SELECT Nationality ,  COUNT(*) FROM HOST GROUP BY Nationality	party_host
SELECT Nationality ,  COUNT(*) FROM HOST GROUP BY Nationality	party_host
SELECT Nationality FROM HOST GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1	party_host
SELECT Nationality FROM HOST GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1	party_host
SELECT Nationality FROM HOST WHERE Age  >  45 INTERSECT SELECT Nationality FROM HOST WHERE Age  <  35	party_host
SELECT Nationality FROM HOST WHERE Age  >  45 INTERSECT SELECT Nationality FROM HOST WHERE Age  <  35	party_host
SELECT Name ,  Nationality FROM HOST ORDER BY Age DESC LIMIT 1	party_host
SELECT Name ,  Nationality FROM HOST ORDER BY Age DESC LIMIT 1	party_host
SELECT Name FROM HOST WHERE Host_ID NOT IN (SELECT Host_ID FROM party_host)	party_host
SELECT Name FROM HOST WHERE Host_ID NOT IN (SELECT Host_ID FROM party_host)	party_host
SELECT count(*) FROM region	storm_record
SELECT count(*) FROM region	storm_record
SELECT region_code ,  region_name FROM region ORDER BY region_code	storm_record
SELECT region_code ,  region_name FROM region ORDER BY region_code	storm_record
SELECT region_name FROM region ORDER BY region_name	storm_record
SELECT region_name FROM region ORDER BY region_name	storm_record
SELECT region_name FROM region WHERE region_name != 'Denmark'	storm_record
SELECT region_name FROM region WHERE region_name != 'Denmark'	storm_record
SELECT count(*) FROM storm WHERE Number_Deaths  >  0	storm_record
SELECT count(*) FROM storm WHERE Number_Deaths  >  0	storm_record
SELECT name ,  dates_active ,  number_deaths FROM storm WHERE number_deaths  >=  1	storm_record
SELECT name ,  dates_active ,  number_deaths FROM storm WHERE number_deaths  >=  1	storm_record
SELECT avg(damage_millions_USD) ,  max(damage_millions_USD) FROM storm WHERE max_speed  >  1000	storm_record
SELECT avg(damage_millions_USD) ,  max(damage_millions_USD) FROM storm WHERE max_speed  >  1000	storm_record
SELECT sum(number_deaths) ,  sum(damage_millions_USD) FROM storm WHERE max_speed  >  (SELECT avg(max_speed) FROM storm)	storm_record
SELECT sum(number_deaths) ,  sum(damage_millions_USD) FROM storm WHERE max_speed  >  (SELECT avg(max_speed) FROM storm)	storm_record
SELECT name ,  damage_millions_USD FROM storm ORDER BY max_speed DESC	storm_record
SELECT name ,  damage_millions_USD FROM storm ORDER BY max_speed DESC	storm_record
SELECT count(DISTINCT region_id) FROM affected_region	storm_record
SELECT count(DISTINCT region_id) FROM affected_region	storm_record
SELECT region_name FROM region WHERE region_id NOT IN (SELECT region_id FROM affected_region)	storm_record
SELECT region_name FROM region WHERE region_id NOT IN (SELECT region_id FROM affected_region)	storm_record
SELECT name FROM storm WHERE storm_id NOT IN (SELECT storm_id FROM affected_region)	storm_record
SELECT name FROM storm WHERE storm_id NOT IN (SELECT storm_id FROM affected_region)	storm_record
SELECT name FROM storm EXCEPT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING count(*)  >=  2	storm_record
SELECT name FROM storm EXCEPT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING count(*)  >=  2	storm_record
SELECT count(*) FROM county	election
SELECT count(*) FROM county	election
SELECT County_name ,  Population FROM county	election
SELECT County_name ,  Population FROM county	election
SELECT avg(Population) FROM county	election
SELECT avg(Population) FROM county	election
SELECT max(Population) ,  min(Population) FROM county	election
SELECT max(Population) ,  min(Population) FROM county	election
SELECT DISTINCT District FROM election	election
SELECT DISTINCT District FROM election	election
SELECT Zip_code FROM county WHERE County_name  =  "Howard"	election
SELECT Zip_code FROM county WHERE County_name  =  "Howard"	election
SELECT Delegate FROM election WHERE District  =  1	election
SELECT Delegate FROM election WHERE District  =  1	election
SELECT Delegate ,  Committee FROM election	election
SELECT Delegate ,  Committee FROM election	election
SELECT count(DISTINCT Governor) FROM party	election
SELECT count(DISTINCT Governor) FROM party	election
SELECT Lieutenant_Governor ,  Comptroller FROM party WHERE Party  =  "Democratic"	election
SELECT Lieutenant_Governor ,  Comptroller FROM party WHERE Party  =  "Democratic"	election
SELECT DISTINCT YEAR FROM party WHERE Governor  =  "Eliot Spitzer"	election
SELECT DISTINCT YEAR FROM party WHERE Governor  =  "Eliot Spitzer"	election
SELECT * FROM election	election
SELECT * FROM election	election
SELECT County_name FROM county ORDER BY Population ASC	election
SELECT County_name FROM county ORDER BY Population ASC	election
SELECT County_name FROM county ORDER BY County_name DESC	election
SELECT County_name FROM county ORDER BY County_name DESC	election
SELECT County_name FROM county ORDER BY Population DESC LIMIT 1	election
SELECT County_name FROM county ORDER BY Population DESC LIMIT 1	election
SELECT County_name FROM county ORDER BY Population ASC LIMIT 3	election
SELECT County_name FROM county ORDER BY Population ASC LIMIT 3	election
SELECT Party FROM party GROUP BY Party HAVING COUNT(*)  >=  2	election
SELECT Party FROM party GROUP BY Party HAVING COUNT(*)  >=  2	election
SELECT Governor FROM party GROUP BY Governor ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT Governor FROM party GROUP BY Governor ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT Comptroller ,  COUNT(*) FROM party GROUP BY Comptroller ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT Comptroller ,  COUNT(*) FROM party GROUP BY Comptroller ORDER BY COUNT(*) DESC LIMIT 1	election
SELECT Party FROM party WHERE Party_ID NOT IN (SELECT Party FROM election)	election
SELECT Party FROM party WHERE Party_ID NOT IN (SELECT Party FROM election)	election
SELECT count(*) FROM journalist	news_report
SELECT Name FROM journalist ORDER BY Years_working ASC	news_report
SELECT Nationality ,  Age FROM journalist	news_report
SELECT Name FROM journalist WHERE Nationality  =  "England" OR Nationality  =  "Wales"	news_report
SELECT avg(Years_working) FROM journalist	news_report
SELECT Nationality FROM journalist ORDER BY Years_working DESC LIMIT 1	news_report
SELECT Nationality ,  COUNT(*) FROM journalist GROUP BY Nationality	news_report
SELECT Nationality FROM journalist GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1	news_report
SELECT Nationality FROM journalist WHERE Years_working  >  10 INTERSECT SELECT Nationality FROM journalist WHERE Years_working  <  3	news_report
SELECT Date ,  Name ,  venue FROM event ORDER BY Event_Attendance DESC	news_report
SELECT Name FROM journalist WHERE journalist_ID NOT IN (SELECT journalist_ID FROM news_report)	news_report
SELECT avg(Event_Attendance) ,  max(Event_Attendance) FROM event	news_report
SELECT venue ,  name FROM event ORDER BY Event_Attendance DESC LIMIT 2	news_report
SELECT ResName FROM Restaurant;	restaurant_1
SELECT Address FROM Restaurant WHERE ResName = "Subway";	restaurant_1
SELECT Rating FROM Restaurant WHERE ResName = "Subway";	restaurant_1
SELECT ResTypeName FROM Restaurant_Type;	restaurant_1
SELECT ResTypeDescription FROM Restaurant_Type WHERE ResTypeName = "Sandwich";	restaurant_1
SELECT ResName , Rating FROM Restaurant ORDER BY Rating DESC LIMIT 1;	restaurant_1
SELECT Age FROM Student WHERE Fname = "Linda" AND Lname = "Smith";	restaurant_1
SELECT Sex FROM Student WHERE Fname = "Linda" AND Lname = "Smith";	restaurant_1
SELECT Fname , Lname FROM Student WHERE Major  =  600;	restaurant_1
SELECT city_code FROM Student WHERE Fname = "Linda" AND Lname = "Smith";	restaurant_1
SELECT count(*) FROM Student WHERE Advisor =  1121;	restaurant_1
SELECT Advisor ,  count(*) FROM Student GROUP BY Advisor ORDER BY count(Advisor) DESC LIMIT 1;	restaurant_1
SELECT Major ,  count(*) FROM Student GROUP BY Major ORDER BY count(Major) ASC LIMIT 1;	restaurant_1
SELECT Major ,  count(*) FROM Student GROUP BY Major HAVING count(Major) BETWEEN 2 AND 30;	restaurant_1
SELECT Fname , Lname FROM Student WHERE Age  >  18 AND Major = 600;	restaurant_1
SELECT Fname , Lname FROM Student WHERE Age  >  18 AND Major != 600 AND Sex = 'F';	restaurant_1
SELECT actual_order_id FROM actual_orders WHERE order_status_code  =  'Success'	customer_deliveries
SELECT count(*) FROM customers	customer_deliveries
SELECT count(DISTINCT payment_method) FROM customers	customer_deliveries
SELECT truck_details FROM trucks ORDER BY truck_licence_number	customer_deliveries
SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1	customer_deliveries
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id  =  t2.customer_id JOIN addresses AS t3 ON t2.address_id  =  t3.address_id WHERE t3.state_province_county  =  'California'	customer_deliveries
SELECT customer_email ,  customer_name FROM customers WHERE payment_method  =  'Visa'	customer_deliveries
SELECT state_province_county FROM addresses WHERE address_id NOT IN (SELECT employee_address_id FROM Employees)	customer_deliveries
SELECT customer_name ,  customer_phone ,  customer_email FROM Customers ORDER BY date_became_customer	customer_deliveries
SELECT customer_name FROM Customers ORDER BY date_became_customer LIMIT 5	customer_deliveries
SELECT payment_method FROM Customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1	customer_deliveries
SELECT route_name FROM Delivery_Routes ORDER BY route_name	customer_deliveries
SELECT count(*) FROM authors	icfp_1
SELECT count(*) FROM authors	icfp_1
SELECT count(*) FROM inst	icfp_1
SELECT count(*) FROM inst	icfp_1
SELECT count(*) FROM papers	icfp_1
SELECT count(*) FROM papers	icfp_1
SELECT title FROM papers WHERE title LIKE "%ML%"	icfp_1
SELECT title FROM papers WHERE title LIKE "%ML%"	icfp_1
SELECT title FROM papers WHERE title LIKE "%Database%"	icfp_1
SELECT title FROM papers WHERE title LIKE "%Database%"	icfp_1
SELECT fname FROM authors WHERE lname  =  "Ueno"	icfp_1
SELECT fname FROM authors WHERE lname  =  "Ueno"	icfp_1
SELECT lname FROM authors WHERE fname  =  "Amal"	icfp_1
SELECT lname FROM authors WHERE fname  =  "Amal"	icfp_1
SELECT fname FROM authors ORDER BY fname	icfp_1
SELECT fname FROM authors ORDER BY fname	icfp_1
SELECT lname FROM authors ORDER BY lname	icfp_1
SELECT lname FROM authors ORDER BY lname	icfp_1
SELECT fname ,  lname FROM authors ORDER BY lname	icfp_1
SELECT fname ,  lname FROM authors ORDER BY lname	icfp_1
SELECT count(DISTINCT last_name) FROM actor	sakila_1
SELECT count(DISTINCT last_name) FROM actor	sakila_1
SELECT first_name FROM actor GROUP BY first_name ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT first_name FROM actor GROUP BY first_name ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT first_name ,  last_name FROM actor GROUP BY first_name ,  last_name ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT first_name ,  last_name FROM actor GROUP BY first_name ,  last_name ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT district FROM address GROUP BY district HAVING count(*)  >=  2	sakila_1
SELECT district FROM address GROUP BY district HAVING count(*)  >=  2	sakila_1
SELECT phone ,  postal_code FROM address WHERE address  =  '1031 Daugavpils Parkway'	sakila_1
SELECT phone ,  postal_code FROM address WHERE address  =  '1031 Daugavpils Parkway'	sakila_1
SELECT count(*) FROM address WHERE district  =  'California'	sakila_1
SELECT count(*) FROM address WHERE district  =  'California'	sakila_1
SELECT title ,  film_id FROM film WHERE rental_rate  =  0.99 INTERSECT SELECT T1.title ,  T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id HAVING count(*)  <  3	sakila_1
SELECT title ,  film_id FROM film WHERE rental_rate  =  0.99 INTERSECT SELECT T1.title ,  T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id HAVING count(*)  <  3	sakila_1
SELECT payment_date FROM payment WHERE amount  >  10 UNION SELECT T1.payment_date FROM payment AS T1 JOIN staff AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.first_name  =  'Elsa'	sakila_1
SELECT payment_date FROM payment WHERE amount  >  10 UNION SELECT T1.payment_date FROM payment AS T1 JOIN staff AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.first_name  =  'Elsa'	sakila_1
SELECT count(*) FROM customer WHERE active = '1'	sakila_1
SELECT count(*) FROM customer WHERE active = '1'	sakila_1
SELECT title ,  rental_rate FROM film ORDER BY rental_rate DESC LIMIT 1	sakila_1
SELECT title ,  rental_rate FROM film ORDER BY rental_rate DESC LIMIT 1	sakila_1
SELECT store_id FROM inventory GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT store_id FROM inventory GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT sum(amount) FROM payment	sakila_1
SELECT sum(amount) FROM payment	sakila_1
SELECT count(DISTINCT language_id) FROM film	sakila_1
SELECT count(DISTINCT language_id) FROM film	sakila_1
SELECT title FROM film WHERE rating  =  'R'	sakila_1
SELECT title FROM film WHERE rating  =  'R'	sakila_1
SELECT count(*) FROM store	sakila_1
SELECT count(*) FROM store	sakila_1
SELECT count(DISTINCT rating) FROM film	sakila_1
SELECT count(DISTINCT rating) FROM film	sakila_1
SELECT title FROM film WHERE special_features LIKE '%Deleted Scenes%'	sakila_1
SELECT title FROM film WHERE special_features LIKE '%Deleted Scenes%'	sakila_1
SELECT count(*) FROM inventory WHERE store_id  =  1	sakila_1
SELECT count(*) FROM inventory WHERE store_id  =  1	sakila_1
SELECT payment_date FROM payment ORDER BY payment_date ASC LIMIT 1	sakila_1
SELECT payment_date FROM payment ORDER BY payment_date ASC LIMIT 1	sakila_1
SELECT title FROM film WHERE LENGTH  >  100 OR rating  =  'PG' EXCEPT SELECT title FROM film WHERE replacement_cost  >  200	sakila_1
SELECT title FROM film WHERE LENGTH  >  100 OR rating  =  'PG' EXCEPT SELECT title FROM film WHERE replacement_cost  >  200	sakila_1
SELECT store_id FROM customer GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT store_id FROM customer GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT amount FROM payment ORDER BY amount DESC LIMIT 1	sakila_1
SELECT amount FROM payment ORDER BY amount DESC LIMIT 1	sakila_1
SELECT first_name FROM customer WHERE customer_id NOT IN( SELECT customer_id FROM rental WHERE rental_date  >  '2005-08-23 02:06:01' )	sakila_1
SELECT first_name FROM customer WHERE customer_id NOT IN( SELECT customer_id FROM rental WHERE rental_date  >  '2005-08-23 02:06:01' )	sakila_1
SELECT count(*) FROM bank	loan_1
SELECT count(*) FROM bank	loan_1
SELECT sum(no_of_customers) FROM bank	loan_1
SELECT sum(no_of_customers) FROM bank	loan_1
SELECT sum(no_of_customers) FROM bank WHERE city  =  'New York City'	loan_1
SELECT sum(no_of_customers) FROM bank WHERE city  =  'New York City'	loan_1
SELECT avg(no_of_customers) FROM bank WHERE state  =  'Utah'	loan_1
SELECT avg(no_of_customers) FROM bank WHERE state  =  'Utah'	loan_1
SELECT avg(no_of_customers) FROM bank	loan_1
SELECT avg(no_of_customers) FROM bank	loan_1
SELECT city ,  state FROM bank WHERE bname  =  'morningside'	loan_1
SELECT city ,  state FROM bank WHERE bname  =  'morningside'	loan_1
SELECT bname FROM bank WHERE state  =  'New York'	loan_1
SELECT bname FROM bank WHERE state  =  'New York'	loan_1
SELECT cust_name FROM customer ORDER BY acc_bal	loan_1
SELECT cust_name FROM customer ORDER BY acc_bal	loan_1
SELECT state ,  acc_type ,  credit_score FROM customer WHERE no_of_loans  =  0	loan_1
SELECT state ,  acc_type ,  credit_score FROM customer WHERE no_of_loans  =  0	loan_1
SELECT count(DISTINCT city) FROM bank	loan_1
SELECT count(DISTINCT city) FROM bank	loan_1
SELECT count(DISTINCT state) FROM bank	loan_1
SELECT count(DISTINCT state) FROM bank	loan_1
SELECT count(DISTINCT acc_type) FROM customer	loan_1
SELECT count(DISTINCT acc_type) FROM customer	loan_1
SELECT cust_name ,  acc_bal FROM customer WHERE cust_name LIKE '%a%'	loan_1
SELECT cust_name ,  acc_bal FROM customer WHERE cust_name LIKE '%a%'	loan_1
SELECT sum(acc_bal) FROM customer WHERE state  =  'Utah' OR state  =  'Texas'	loan_1
SELECT sum(acc_bal) FROM customer WHERE state  =  'Utah' OR state  =  'Texas'	loan_1
SELECT cust_name FROM customer WHERE acc_type  =  'saving' INTERSECT SELECT cust_name FROM customer WHERE acc_type  =  'checking'	loan_1
SELECT cust_name FROM customer WHERE acc_type  =  'saving' INTERSECT SELECT cust_name FROM customer WHERE acc_type  =  'checking'	loan_1
SELECT cust_name FROM customer EXCEPT SELECT cust_name FROM customer WHERE acc_type  =  'saving'	loan_1
SELECT cust_name FROM customer EXCEPT SELECT cust_name FROM customer WHERE acc_type  =  'saving'	loan_1
SELECT cust_name FROM customer EXCEPT SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE T2.loan_type  =  'Mortgages'	loan_1
SELECT cust_name FROM customer EXCEPT SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE T2.loan_type  =  'Mortgages'	loan_1
SELECT cust_name FROM customer WHERE credit_score  <  (SELECT avg(credit_score) FROM customer)	loan_1
SELECT cust_name FROM customer WHERE credit_score  <  (SELECT avg(credit_score) FROM customer)	loan_1
SELECT bname FROM bank ORDER BY no_of_customers DESC LIMIT 1	loan_1
SELECT bname FROM bank ORDER BY no_of_customers DESC LIMIT 1	loan_1
SELECT cust_name FROM customer ORDER BY credit_score LIMIT 1	loan_1
SELECT cust_name FROM customer ORDER BY credit_score LIMIT 1	loan_1
SELECT cust_name ,  acc_type ,  acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1	loan_1
SELECT cust_name ,  acc_type ,  acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1	loan_1
SELECT state FROM bank GROUP BY state ORDER BY sum(no_of_customers) DESC LIMIT 1	loan_1
SELECT state FROM bank GROUP BY state ORDER BY sum(no_of_customers) DESC LIMIT 1	loan_1
SELECT avg(acc_bal) ,  acc_type FROM customer WHERE credit_score  <  50 GROUP BY acc_type	loan_1
SELECT avg(acc_bal) ,  acc_type FROM customer WHERE credit_score  <  50 GROUP BY acc_type	loan_1
SELECT sum(acc_bal) ,  state FROM customer WHERE credit_score  >  100 GROUP BY state	loan_1
SELECT sum(acc_bal) ,  state FROM customer WHERE credit_score  >  100 GROUP BY state	loan_1
SELECT avg(credit_score) FROM customer WHERE cust_id IN (SELECT cust_id FROM loan)	loan_1
SELECT avg(credit_score) FROM customer WHERE cust_id IN (SELECT cust_id FROM loan)	loan_1
SELECT avg(credit_score) FROM customer WHERE cust_id NOT IN (SELECT cust_id FROM loan)	loan_1
SELECT avg(credit_score) FROM customer WHERE cust_id NOT IN (SELECT cust_id FROM loan)	loan_1
SELECT count(*) FROM ASSESSMENT_NOTES	behavior_monitoring
SELECT date_of_notes FROM Assessment_Notes	behavior_monitoring
SELECT count(*) FROM ADDRESSES WHERE zip_postcode  =  "197"	behavior_monitoring
SELECT count(DISTINCT incident_type_code) FROM Behavior_Incident	behavior_monitoring
SELECT DISTINCT detention_type_code FROM Detention	behavior_monitoring
SELECT date_incident_start ,  date_incident_end FROM Behavior_Incident WHERE incident_type_code  =  "NOISE"	behavior_monitoring
SELECT detention_summary FROM Detention	behavior_monitoring
SELECT cell_mobile_number ,  email_address FROM STUDENTS	behavior_monitoring
SELECT email_address FROM Students WHERE first_name  =  "Emma" AND last_name  =  "Rohan"	behavior_monitoring
SELECT count(DISTINCT student_id) FROM Students_in_Detention	behavior_monitoring
SELECT gender FROM TEACHERS WHERE last_name  =  "Medhurst"	behavior_monitoring
SELECT incident_type_description FROM Ref_Incident_Type WHERE incident_type_code  =  "VIOLENCE"	behavior_monitoring
SELECT max(monthly_rental) ,  min(monthly_rental) FROM Student_Addresses	behavior_monitoring
SELECT first_name FROM Teachers WHERE email_address LIKE '%man%'	behavior_monitoring
SELECT * FROM Assessment_Notes ORDER BY date_of_notes ASC	behavior_monitoring
SELECT city FROM Addresses ORDER BY city	behavior_monitoring
SELECT first_name ,  last_name FROM Teachers ORDER BY last_name	behavior_monitoring
SELECT * FROM Student_Addresses ORDER BY monthly_rental DESC	behavior_monitoring
SELECT count(*) FROM STUDENTS WHERE student_id NOT IN ( SELECT student_id FROM Behavior_Incident )	behavior_monitoring
SELECT last_name FROM Teachers EXCEPT SELECT T1.last_name FROM Teachers AS T1 JOIN Detention AS T2 ON T1.teacher_id  =  T2.teacher_id	behavior_monitoring
SELECT DISTINCT last_name FROM Maintenance_Engineers	assets_maintenance
SELECT DISTINCT fault_status FROM Fault_Log_Parts	assets_maintenance
SELECT first_name ,  last_name FROM Maintenance_Engineers WHERE engineer_id NOT IN (SELECT engineer_id FROM Engineer_Visits)	assets_maintenance
SELECT asset_id ,  asset_details ,  asset_make ,  asset_model FROM Assets	assets_maintenance
SELECT asset_acquired_date FROM Assets ORDER BY asset_acquired_date ASC LIMIT 1	assets_maintenance
SELECT DISTINCT asset_model FROM Assets	assets_maintenance
SELECT asset_make ,  asset_model ,  asset_details FROM Assets ORDER BY asset_disposed_date ASC	assets_maintenance
SELECT part_id ,  chargeable_amount FROM Parts ORDER BY chargeable_amount ASC LIMIT 1	assets_maintenance
SELECT gender FROM staff GROUP BY gender ORDER BY count(*) DESC LIMIT 1	assets_maintenance
SELECT asset_model FROM Assets WHERE asset_id NOT IN (SELECT asset_id FROM Fault_Log)	assets_maintenance
SELECT local_authority ,  services FROM station	station_weather
SELECT train_number ,  name FROM train ORDER BY TIME	station_weather
SELECT TIME ,  train_number FROM train WHERE destination  =  'Chennai' ORDER BY TIME	station_weather
SELECT count(*) FROM train WHERE name LIKE "%Express%"	station_weather
SELECT train_number ,  TIME FROM train WHERE origin  =  'Chennai' AND destination  =  'Guruvayur'	station_weather
SELECT origin ,  count(*) FROM train GROUP BY origin	station_weather
SELECT avg(high_temperature) ,  day_of_week FROM weekly_weather GROUP BY day_of_week	station_weather
SELECT count(DISTINCT services) FROM station	station_weather
SELECT min(low_temperature) ,  max(wind_speed_mph) FROM weekly_weather	station_weather
SELECT origin FROM train GROUP BY origin HAVING count(*)  >  1	station_weather
SELECT count(DISTINCT PROF_NUM) FROM CLASS WHERE CRS_CODE  =  "ACCT-211"	college_1
SELECT count(DISTINCT PROF_NUM) FROM CLASS WHERE CRS_CODE  =  "ACCT-211"	college_1
SELECT school_code FROM department WHERE dept_name  =  "Accounting"	college_1
SELECT school_code FROM department WHERE dept_name  =  "Accounting"	college_1
SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'CIS-220'	college_1
SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'CIS-220'	college_1
SELECT dept_address FROM department WHERE dept_name  =  'History'	college_1
SELECT dept_address FROM department WHERE dept_name  =  'History'	college_1
SELECT count(DISTINCT dept_address) FROM department WHERE school_code  =  'BUS'	college_1
SELECT count(DISTINCT dept_address) FROM department WHERE school_code  =  'BUS'	college_1
SELECT count(DISTINCT dept_address) ,  school_code FROM department GROUP BY school_code	college_1
SELECT count(DISTINCT dept_address) ,  school_code FROM department GROUP BY school_code	college_1
SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'QM-261'	college_1
SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'QM-261'	college_1
SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code	college_1
SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code	college_1
SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code HAVING count(DISTINCT dept_name)  <  5	college_1
SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code HAVING count(DISTINCT dept_name)  <  5	college_1
SELECT count(*) ,  crs_code FROM CLASS GROUP BY crs_code	college_1
SELECT count(*) ,  crs_code FROM CLASS GROUP BY crs_code	college_1
SELECT sum(crs_credit) ,  dept_code FROM course GROUP BY dept_code	college_1
SELECT sum(crs_credit) ,  dept_code FROM course GROUP BY dept_code	college_1
SELECT count(*) ,  class_room FROM CLASS GROUP BY class_room HAVING count(*)  >=  2	college_1
SELECT count(*) ,  class_room FROM CLASS GROUP BY class_room HAVING count(*)  >=  2	college_1
SELECT emp_jobcode ,  count(*) FROM employee GROUP BY emp_jobcode ORDER BY count(*) DESC LIMIT 1	college_1
SELECT emp_jobcode ,  count(*) FROM employee GROUP BY emp_jobcode ORDER BY count(*) DESC LIMIT 1	college_1
SELECT count(*) ,  dept_code FROM professor WHERE prof_high_degree  =  'Ph.D.' GROUP BY dept_code	college_1
SELECT count(*) ,  dept_code FROM professor WHERE prof_high_degree  =  'Ph.D.' GROUP BY dept_code	college_1
SELECT count(*) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT count(*) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT sum(stu_hrs) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT sum(stu_hrs) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT max(stu_gpa) ,  avg(stu_gpa) ,  min(stu_gpa) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT max(stu_gpa) ,  avg(stu_gpa) ,  min(stu_gpa) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT count(DISTINCT school_code) FROM department	college_1
SELECT count(DISTINCT school_code) FROM department	college_1
SELECT count(DISTINCT class_code) FROM CLASS	college_1
SELECT count(DISTINCT class_code) FROM CLASS	college_1
SELECT count(DISTINCT crs_code) FROM CLASS	college_1
SELECT count(DISTINCT crs_code) FROM CLASS	college_1
SELECT count(DISTINCT dept_name) FROM department	college_1
SELECT count(DISTINCT dept_name) FROM department	college_1
SELECT count(DISTINCT class_section) FROM CLASS WHERE crs_code  =  'ACCT-211'	college_1
SELECT count(DISTINCT class_section) FROM CLASS WHERE crs_code  =  'ACCT-211'	college_1
SELECT count(*) FROM employee	college_1
SELECT count(*) FROM employee	college_1
SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.'	college_1
SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.'	college_1
SELECT dept_name FROM department ORDER BY dept_name	college_1
SELECT dept_name FROM department ORDER BY dept_name	college_1
SELECT class_code FROM CLASS WHERE class_room  =  'KLR209'	college_1
SELECT class_code FROM CLASS WHERE class_room  =  'KLR209'	college_1
SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' ORDER BY emp_dob	college_1
SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' ORDER BY emp_dob	college_1
SELECT emp_fname ,  emp_lname FROM employee ORDER BY emp_dob LIMIT 1	college_1
SELECT emp_fname ,  emp_lname FROM employee ORDER BY emp_dob LIMIT 1	college_1
SELECT stu_fname ,  stu_lname ,  stu_gpa FROM student WHERE stu_gpa  >  3 ORDER BY stu_dob DESC LIMIT 1	college_1
SELECT stu_fname ,  stu_lname ,  stu_gpa FROM student WHERE stu_gpa  >  3 ORDER BY stu_dob DESC LIMIT 1	college_1
SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' EXCEPT SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num  =  T2.prof_num	college_1
SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' EXCEPT SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num  =  T2.prof_num	college_1
SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.' OR prof_high_degree  =  'MA'	college_1
SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.' OR prof_high_degree  =  'MA'	college_1
SELECT stu_gpa ,  stu_phone ,  stu_fname FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1
SELECT stu_gpa ,  stu_phone ,  stu_fname FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1
SELECT stu_fname ,  stu_gpa FROM student WHERE stu_gpa  <  (SELECT avg(stu_gpa) FROM student)	college_1
SELECT stu_fname ,  stu_gpa FROM student WHERE stu_gpa  <  (SELECT avg(stu_gpa) FROM student)	college_1
SELECT count(*) FROM club	sports_competition
SELECT count(*) FROM club	sports_competition
SELECT DISTINCT Region FROM club ORDER BY Region ASC	sports_competition
SELECT DISTINCT Region FROM club ORDER BY Region ASC	sports_competition
SELECT avg(Gold) FROM club_rank	sports_competition
SELECT avg(Gold) FROM club_rank	sports_competition
SELECT Competition_type ,  Country FROM competition	sports_competition
SELECT Competition_type ,  Country FROM competition	sports_competition
SELECT DISTINCT YEAR FROM competition WHERE Competition_type != "Tournament"	sports_competition
SELECT DISTINCT YEAR FROM competition WHERE Competition_type != "Tournament"	sports_competition
SELECT max(Silver) ,  min(Silver) FROM club_rank	sports_competition
SELECT max(Silver) ,  min(Silver) FROM club_rank	sports_competition
SELECT count(*) FROM club_rank WHERE Total  <  10	sports_competition
SELECT count(*) FROM club_rank WHERE Total  <  10	sports_competition
SELECT name FROM club ORDER BY Start_year ASC	sports_competition
SELECT name FROM club ORDER BY Start_year ASC	sports_competition
SELECT name FROM club ORDER BY name DESC	sports_competition
SELECT name FROM club ORDER BY name DESC	sports_competition
SELECT POSITION ,  avg(Points) FROM player GROUP BY POSITION	sports_competition
SELECT POSITION ,  avg(Points) FROM player GROUP BY POSITION	sports_competition
SELECT POSITION FROM player GROUP BY name HAVING avg(Points)  >=  20	sports_competition
SELECT POSITION FROM player GROUP BY name HAVING avg(Points)  >=  20	sports_competition
SELECT Competition_type ,  COUNT(*) FROM competition GROUP BY Competition_type	sports_competition
SELECT Competition_type ,  COUNT(*) FROM competition GROUP BY Competition_type	sports_competition
SELECT Competition_type FROM competition GROUP BY Competition_type ORDER BY COUNT(*) DESC LIMIT 1	sports_competition
SELECT Competition_type FROM competition GROUP BY Competition_type ORDER BY COUNT(*) DESC LIMIT 1	sports_competition
SELECT Competition_type FROM competition GROUP BY Competition_type HAVING COUNT(*)  <=  5	sports_competition
SELECT Competition_type FROM competition GROUP BY Competition_type HAVING COUNT(*)  <=  5	sports_competition
SELECT name FROM CLub WHERE Club_ID NOT IN (SELECT Club_ID FROM player)	sports_competition
SELECT name FROM CLub WHERE Club_ID NOT IN (SELECT Club_ID FROM player)	sports_competition
SELECT POSITION FROM player WHERE Points  >  20 INTERSECT SELECT POSITION FROM player WHERE Points  <  10	sports_competition
SELECT POSITION FROM player WHERE Points  >  20 INTERSECT SELECT POSITION FROM player WHERE Points  <  10	sports_competition
SELECT sum(Points) FROM player	sports_competition
SELECT sum(Points) FROM player	sports_competition
SELECT count(DISTINCT POSITION) FROM player	sports_competition
SELECT count(DISTINCT POSITION) FROM player	sports_competition
SELECT name FROM player WHERE points  >  (SELECT avg(points) FROM player)	sports_competition
SELECT name FROM player WHERE points  >  (SELECT avg(points) FROM player)	sports_competition
SELECT count(*) ,  POSITION FROM player WHERE points  <  30 GROUP BY POSITION	sports_competition
SELECT count(*) ,  POSITION FROM player WHERE points  <  30 GROUP BY POSITION	sports_competition
SELECT country FROM competition WHERE competition_type  =  'Tournament' GROUP BY country ORDER BY count(*) DESC LIMIT 1	sports_competition
SELECT country FROM competition WHERE competition_type  =  'Tournament' GROUP BY country ORDER BY count(*) DESC LIMIT 1	sports_competition
SELECT country FROM competition WHERE competition_type  =  'Friendly' INTERSECT SELECT country FROM competition WHERE competition_type  =  'Tournament'	sports_competition
SELECT country FROM competition WHERE competition_type  =  'Friendly' INTERSECT SELECT country FROM competition WHERE competition_type  =  'Tournament'	sports_competition
SELECT country FROM competition EXCEPT SELECT country FROM competition WHERE competition_type  =  'Friendly'	sports_competition
SELECT country FROM competition EXCEPT SELECT country FROM competition WHERE competition_type  =  'Friendly'	sports_competition
SELECT sum(num_of_component) FROM furniture	manufacturer
SELECT name ,  furniture_id FROM furniture ORDER BY market_rate DESC LIMIT 1	manufacturer
SELECT sum(market_rate) FROM furniture ORDER BY market_rate DESC LIMIT 2	manufacturer
SELECT Num_of_Component ,  name FROM furniture WHERE Num_of_Component  >  10	manufacturer
SELECT name ,  Num_of_Component FROM furniture ORDER BY market_rate LIMIT 1	manufacturer
SELECT open_year ,  name FROM manufacturer ORDER BY num_of_shops DESC LIMIT 1	manufacturer
SELECT avg(Num_of_Factories) FROM manufacturer WHERE num_of_shops  >  20	manufacturer
SELECT name ,  manufacturer_id FROM manufacturer ORDER BY open_year	manufacturer
SELECT name ,  open_year FROM manufacturer WHERE num_of_shops  >  10 OR Num_of_Factories  <  10	manufacturer
SELECT max(num_of_shops) ,  avg(Num_of_Factories) FROM manufacturer WHERE open_year  <  1990	manufacturer
SELECT Market_Rate ,  name FROM furniture WHERE Furniture_ID NOT IN (SELECT Furniture_ID FROM furniture_manufacte)	manufacturer
SELECT first_name ,  last_name ,  salary FROM employees WHERE salary  <  6000	hr_1
SELECT first_name ,  last_name ,  salary FROM employees WHERE salary  <  6000	hr_1
SELECT first_name ,  department_id FROM employees WHERE last_name  =  'McEwen'	hr_1
SELECT first_name ,  department_id FROM employees WHERE last_name  =  'McEwen'	hr_1
SELECT * FROM employees WHERE department_id  =  "null"	hr_1
SELECT * FROM employees WHERE department_id  =  "null"	hr_1
SELECT * FROM  departments WHERE department_name  =  'Marketing'	hr_1
SELECT * FROM  departments WHERE department_name  =  'Marketing'	hr_1
SELECT hire_date FROM employees WHERE first_name NOT LIKE '%M%'	hr_1
SELECT hire_date FROM employees WHERE first_name NOT LIKE '%M%'	hr_1
SELECT first_name ,  last_name ,  hire_date ,  salary ,  department_id FROM employees WHERE first_name NOT LIKE '%M%'	hr_1
SELECT first_name ,  last_name ,  hire_date ,  salary ,  department_id FROM employees WHERE first_name NOT LIKE '%M%'	hr_1
SELECT first_name ,  last_name ,  hire_date ,  salary ,  department_id FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY department_id	hr_1
SELECT first_name ,  last_name ,  hire_date ,  salary ,  department_id FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY department_id	hr_1
SELECT phone_number FROM employees WHERE salary BETWEEN 8000 AND 12000	hr_1
SELECT phone_number FROM employees WHERE salary BETWEEN 8000 AND 12000	hr_1
SELECT * FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR  department_id != 40	hr_1
SELECT * FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR  department_id != 40	hr_1
SELECT first_name ,  last_name ,  salary FROM  employees WHERE commission_pct  =  "null"	hr_1
SELECT first_name ,  last_name ,  salary FROM  employees WHERE commission_pct  =  "null"	hr_1
SELECT first_name ,  last_name ,  salary FROM employees WHERE first_name LIKE '%m'	hr_1
SELECT first_name ,  last_name ,  salary FROM employees WHERE first_name LIKE '%m'	hr_1
SELECT job_id ,  hire_date FROM employees WHERE hire_date BETWEEN '2007-11-05' AND '2009-07-05'	hr_1
SELECT job_id ,  hire_date FROM employees WHERE hire_date BETWEEN '2007-11-05' AND '2009-07-05'	hr_1
SELECT first_name ,  last_name FROM employees WHERE department_id  =  70 OR department_id  =  90	hr_1
SELECT first_name ,  last_name FROM employees WHERE department_id  =  70 OR department_id  =  90	hr_1
SELECT salary ,  manager_id FROM employees WHERE manager_id != "null"	hr_1
SELECT salary ,  manager_id FROM employees WHERE manager_id != "null"	hr_1
SELECT * FROM employees WHERE hire_date  <  '2002-06-21'	hr_1
SELECT * FROM employees WHERE hire_date  <  '2002-06-21'	hr_1
SELECT * FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY salary DESC	hr_1
SELECT * FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY salary DESC	hr_1
SELECT * FROM employees WHERE hire_date  >  '1987-09-07'	hr_1
SELECT * FROM employees WHERE hire_date  >  '1987-09-07'	hr_1
SELECT job_title FROM jobs WHERE min_salary  >  9000	hr_1
SELECT job_title FROM jobs WHERE min_salary  >  9000	hr_1
SELECT job_title ,  max_salary - min_salary FROM jobs WHERE max_salary BETWEEN 12000 AND 18000	hr_1
SELECT job_title ,  max_salary - min_salary FROM jobs WHERE max_salary BETWEEN 12000 AND 18000	hr_1
SELECT email FROM employees WHERE commission_pct  =  "null" AND salary BETWEEN 7000 AND 12000 AND department_id = 50	hr_1
SELECT email FROM employees WHERE commission_pct  =  "null" AND salary BETWEEN 7000 AND 12000 AND department_id = 50	hr_1
SELECT employee_id ,  MAX(end_date) FROM job_history GROUP BY employee_id	hr_1
SELECT employee_id ,  MAX(end_date) FROM job_history GROUP BY employee_id	hr_1
SELECT department_id FROM employees GROUP BY department_id HAVING COUNT(commission_pct) > 10	hr_1
SELECT department_id FROM employees GROUP BY department_id HAVING COUNT(commission_pct) > 10	hr_1
SELECT DISTINCT department_id FROM employees GROUP BY department_id ,  manager_id HAVING COUNT(employee_id)  >= 4	hr_1
SELECT DISTINCT department_id FROM employees GROUP BY department_id ,  manager_id HAVING COUNT(employee_id)  >= 4	hr_1
SELECT department_id ,  AVG(salary) FROM employees WHERE commission_pct != "null" GROUP BY department_id	hr_1
SELECT department_id ,  AVG(salary) FROM employees WHERE commission_pct != "null" GROUP BY department_id	hr_1
SELECT country_id ,  COUNT(*) FROM locations GROUP BY country_id	hr_1
SELECT country_id ,  COUNT(*) FROM locations GROUP BY country_id	hr_1
SELECT job_id FROM job_history WHERE end_date - start_date  > 300 GROUP BY job_id HAVING COUNT(*) >= 2	hr_1
SELECT job_id FROM job_history WHERE end_date - start_date  > 300 GROUP BY job_id HAVING COUNT(*) >= 2	hr_1
SELECT employee_id FROM job_history GROUP BY employee_id HAVING COUNT(*)  >= 2	hr_1
SELECT employee_id FROM job_history GROUP BY employee_id HAVING COUNT(*)  >= 2	hr_1
SELECT first_name ,  last_name FROM employees WHERE salary  >  (SELECT salary FROM employees WHERE employee_id = 163 )	hr_1
SELECT first_name ,  last_name FROM employees WHERE salary  >  (SELECT salary FROM employees WHERE employee_id = 163 )	hr_1
SELECT MIN(salary) ,  department_id FROM employees GROUP BY department_id	hr_1
SELECT MIN(salary) ,  department_id FROM employees GROUP BY department_id	hr_1
SELECT first_name ,  last_name ,  department_id FROM employees WHERE salary IN (SELECT MIN(salary) FROM employees GROUP BY department_id)	hr_1
SELECT first_name ,  last_name ,  department_id FROM employees WHERE salary IN (SELECT MIN(salary) FROM employees GROUP BY department_id)	hr_1
SELECT employee_id FROM employees WHERE salary  >  (SELECT AVG(salary) FROM employees)	hr_1
SELECT employee_id FROM employees WHERE salary  >  (SELECT AVG(salary) FROM employees)	hr_1
SELECT employee_id ,  salary FROM employees WHERE manager_id  =  (SELECT employee_id FROM employees WHERE first_name  =  'Payam' )	hr_1
SELECT employee_id ,  salary FROM employees WHERE manager_id  =  (SELECT employee_id FROM employees WHERE first_name  =  'Payam' )	hr_1
SELECT * FROM  departments WHERE department_name  =  'Marketing'	hr_1
SELECT * FROM  departments WHERE department_name  =  'Marketing'	hr_1
SELECT employee_id FROM job_history GROUP BY employee_id HAVING COUNT(*)  >= 2	hr_1
SELECT employee_id FROM job_history GROUP BY employee_id HAVING COUNT(*)  >= 2	hr_1
SELECT DISTINCT department_id FROM employees GROUP BY department_id ,  manager_id HAVING COUNT(employee_id)  >= 4	hr_1
SELECT DISTINCT department_id FROM employees GROUP BY department_id ,  manager_id HAVING COUNT(employee_id)  >= 4	hr_1
SELECT job_id FROM employees GROUP BY job_id HAVING AVG(salary) > 8000	hr_1
SELECT job_id FROM employees GROUP BY job_id HAVING AVG(salary) > 8000	hr_1
SELECT * FROM employees WHERE salary BETWEEN (SELECT MIN(salary) FROM employees) AND 2500	hr_1
SELECT * FROM employees WHERE salary BETWEEN (SELECT MIN(salary) FROM employees) AND 2500	hr_1
SELECT * FROM employees WHERE department_id NOT IN (SELECT department_id FROM departments WHERE manager_id BETWEEN 100 AND 200)	hr_1
SELECT * FROM employees WHERE department_id NOT IN (SELECT department_id FROM departments WHERE manager_id BETWEEN 100 AND 200)	hr_1
SELECT first_name ,  last_name ,  hire_date FROM employees WHERE department_id  =  (SELECT department_id FROM employees WHERE first_name  =  "Clara")	hr_1
SELECT first_name ,  last_name ,  hire_date FROM employees WHERE department_id  =  (SELECT department_id FROM employees WHERE first_name  =  "Clara")	hr_1
SELECT first_name ,  last_name ,  hire_date FROM employees WHERE department_id  =  ( SELECT department_id FROM employees WHERE first_name  =  "Clara") AND first_name != "Clara"	hr_1
SELECT first_name ,  last_name ,  hire_date FROM employees WHERE department_id  =  ( SELECT department_id FROM employees WHERE first_name  =  "Clara") AND first_name != "Clara"	hr_1
SELECT employee_id ,  first_name ,  last_name FROM employees WHERE department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%T%' )	hr_1
SELECT employee_id ,  first_name ,  last_name FROM employees WHERE department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%T%' )	hr_1
SELECT employee_id ,  first_name ,  last_name ,  salary FROM employees WHERE salary  >  ( SELECT AVG (salary) FROM employees ) AND department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%J%')	hr_1
SELECT employee_id ,  first_name ,  last_name ,  salary FROM employees WHERE salary  >  ( SELECT AVG (salary) FROM employees ) AND department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%J%')	hr_1
SELECT employee_id ,  job_id FROM employees WHERE salary  <  ( SELECT min(salary) FROM employees WHERE job_id  =  'MK_MAN' )	hr_1
SELECT employee_id ,  job_id FROM employees WHERE salary  <  ( SELECT min(salary) FROM employees WHERE job_id  =  'MK_MAN' )	hr_1
SELECT employee_id ,  first_name ,  last_name ,  job_id FROM employees WHERE salary  >  ( SELECT max(salary) FROM employees WHERE job_id  =  'PU_MAN' )	hr_1
SELECT employee_id ,  first_name ,  last_name ,  job_id FROM employees WHERE salary  >  ( SELECT max(salary) FROM employees WHERE job_id  =  'PU_MAN' )	hr_1
SELECT department_id ,  SUM(salary) FROM employees GROUP BY department_id HAVING count(*)  >=  2	hr_1
SELECT department_id ,  SUM(salary) FROM employees GROUP BY department_id HAVING count(*)  >=  2	hr_1
SELECT * FROM employees WHERE employee_id NOT IN (SELECT employee_id FROM job_history)	hr_1
SELECT * FROM employees WHERE employee_id NOT IN (SELECT employee_id FROM job_history)	hr_1
SELECT first_name ,   last_name ,   salary ,  department_id ,  MAX(salary) FROM employees GROUP BY department_id	hr_1
SELECT first_name ,   last_name ,   salary ,  department_id ,  MAX(salary) FROM employees GROUP BY department_id	hr_1
SELECT song_name ,  releasedate FROM song ORDER BY releasedate DESC LIMIT 1	music_1
SELECT song_name ,  releasedate FROM song ORDER BY releasedate DESC LIMIT 1	music_1
SELECT f_id FROM files ORDER BY duration DESC LIMIT 1	music_1
SELECT f_id FROM files ORDER BY duration DESC LIMIT 1	music_1
SELECT song_name FROM song WHERE languages  =  "english"	music_1
SELECT song_name FROM song WHERE languages  =  "english"	music_1
SELECT f_id FROM files WHERE formats  =  "mp3"	music_1
SELECT f_id FROM files WHERE formats  =  "mp3"	music_1
SELECT count(*) FROM files WHERE duration LIKE "4:%"	music_1
SELECT count(*) FROM files WHERE duration LIKE "4:%"	music_1
SELECT count(*) FROM artist WHERE country  =  "Bangladesh"	music_1
SELECT count(*) FROM artist WHERE country  =  "Bangladesh"	music_1
SELECT formats FROM files GROUP BY formats ORDER BY COUNT (*) DESC LIMIT 1	music_1
SELECT formats FROM files GROUP BY formats ORDER BY COUNT (*) DESC LIMIT 1	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" INTERSECT SELECT artist_name FROM song WHERE languages  =  "english"	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" INTERSECT SELECT artist_name FROM song WHERE languages  =  "english"	music_1
SELECT f_id FROM files WHERE formats  =  "mp4" INTERSECT SELECT f_id FROM song WHERE resolution  <  1000	music_1
SELECT f_id FROM files WHERE formats  =  "mp4" INTERSECT SELECT f_id FROM song WHERE resolution  <  1000	music_1
SELECT count(*) ,  gender FROM artist GROUP BY gender	music_1
SELECT count(*) ,  gender FROM artist GROUP BY gender	music_1
SELECT avg(rating) ,  languages FROM song GROUP BY languages	music_1
SELECT avg(rating) ,  languages FROM song GROUP BY languages	music_1
SELECT count(*) ,  formats FROM files GROUP BY formats	music_1
SELECT count(*) ,  formats FROM files GROUP BY formats	music_1
SELECT DISTINCT song_name FROM song WHERE resolution  >  (SELECT min(resolution) FROM song WHERE languages  =  "english")	music_1
SELECT DISTINCT song_name FROM song WHERE resolution  >  (SELECT min(resolution) FROM song WHERE languages  =  "english")	music_1
SELECT song_name FROM song WHERE rating  <  (SELECT max(rating) FROM song WHERE genre_is  =  "blues")	music_1
SELECT song_name FROM song WHERE rating  <  (SELECT max(rating) FROM song WHERE genre_is  =  "blues")	music_1
SELECT g_name ,  rating FROM genre ORDER BY g_name	music_1
SELECT g_name ,  rating FROM genre ORDER BY g_name	music_1
SELECT song_name FROM song ORDER BY resolution	music_1
SELECT song_name FROM song ORDER BY resolution	music_1
SELECT f_id FROM files WHERE formats  =  "mp4" UNION SELECT f_id FROM song WHERE resolution  >  720	music_1
SELECT f_id FROM files WHERE formats  =  "mp4" UNION SELECT f_id FROM song WHERE resolution  >  720	music_1
SELECT languages FROM song GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
SELECT languages FROM song GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
SELECT artist_name FROM song WHERE resolution  >  500 GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
SELECT artist_name FROM song WHERE resolution  >  500 GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" AND gender  =  "Male"	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" AND gender  =  "Male"	music_1
SELECT song_name FROM song WHERE genre_is  =  "modern" OR languages  =  "english"	music_1
SELECT song_name FROM song WHERE genre_is  =  "modern" OR languages  =  "english"	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" INTERSECT SELECT T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.languages  =  "english"	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" INTERSECT SELECT T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.languages  =  "english"	music_1
SELECT avg(rating) ,  avg(resolution) FROM song WHERE languages  =  "bangla"	music_1
SELECT avg(rating) ,  avg(resolution) FROM song WHERE languages  =  "bangla"	music_1
SELECT song_name FROM song WHERE rating  <   (SELECT min(rating) FROM song WHERE languages  =  'english')	music_1
SELECT song_name FROM song WHERE rating  <   (SELECT min(rating) FROM song WHERE languages  =  'english')	music_1
SELECT f_id FROM song WHERE resolution  >  (SELECT max(resolution) FROM song WHERE rating  <  8)	music_1
SELECT f_id FROM song WHERE resolution  >  (SELECT max(resolution) FROM song WHERE rating  <  8)	music_1
SELECT f_id FROM song WHERE resolution  >  (SELECT avg(resolution) FROM song WHERE genre_is  =  "modern")	music_1
SELECT f_id FROM song WHERE resolution  >  (SELECT avg(resolution) FROM song WHERE genre_is  =  "modern")	music_1
SELECT f_id ,  genre_is ,  artist_name FROM song WHERE languages  =   "english" ORDER BY rating	music_1
SELECT f_id ,  genre_is ,  artist_name FROM song WHERE languages  =   "english" ORDER BY rating	music_1
SELECT DISTINCT artist_name FROM song WHERE languages  =  "english" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  8	music_1
SELECT DISTINCT artist_name FROM song WHERE languages  =  "english" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  8	music_1
SELECT DISTINCT artist_name FROM artist WHERE country  =  "Bangladesh" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  7	music_1
SELECT DISTINCT artist_name FROM artist WHERE country  =  "Bangladesh" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  7	music_1
SELECT yearid ,  count(*) FROM hall_of_fame GROUP BY yearid;	baseball_1
SELECT yearid ,  count(*) FROM hall_of_fame GROUP BY yearid;	baseball_1
SELECT YEAR ,  avg(attendance) FROM home_game GROUP BY YEAR;	baseball_1
SELECT YEAR ,  avg(attendance) FROM home_game GROUP BY YEAR;	baseball_1
SELECT count(*) FROM park WHERE state  =  'NY';	baseball_1
SELECT count(*) FROM park WHERE state  =  'NY';	baseball_1
SELECT birth_country FROM player GROUP BY birth_country ORDER BY count(*) ASC LIMIT 3;	baseball_1
SELECT birth_country FROM player GROUP BY birth_country ORDER BY count(*) ASC LIMIT 3;	baseball_1
SELECT name_first ,  name_last FROM player WHERE death_year = '';	baseball_1
SELECT name_first ,  name_last FROM player WHERE death_year = '';	baseball_1
SELECT count(*) FROM player WHERE birth_country = 'USA' AND bats  =  'R';	baseball_1
SELECT count(*) FROM player WHERE birth_country = 'USA' AND bats  =  'R';	baseball_1
SELECT name_first ,  name_last FROM player WHERE weight  >  220 OR height  <  75	baseball_1
SELECT name_first ,  name_last FROM player WHERE weight  >  220 OR height  <  75	baseball_1
SELECT count(*) FROM ( SELECT * FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner  =  T2.team_id_br WHERE T2.name  =  'Boston Red Stockings' UNION SELECT * FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_loser  =  T2.team_id_br WHERE T2.name  =  'Boston Red Stockings' );	baseball_1
SELECT count(*) FROM ( SELECT * FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner  =  T2.team_id_br WHERE T2.name  =  'Boston Red Stockings' UNION SELECT * FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_loser  =  T2.team_id_br WHERE T2.name  =  'Boston Red Stockings' );	baseball_1
SELECT count(*) FROM postseason WHERE YEAR  =  1885 AND ties  =  1;	baseball_1
SELECT count(*) FROM postseason WHERE YEAR  =  1885 AND ties  =  1;	baseball_1
SELECT salary FROM salary WHERE YEAR  =  2001 ORDER BY salary DESC LIMIT 3;	baseball_1
SELECT salary FROM salary WHERE YEAR  =  2001 ORDER BY salary DESC LIMIT 3;	baseball_1
SELECT salary FROM salary WHERE YEAR  =  2010 UNION SELECT salary FROM salary WHERE YEAR  =  2001	baseball_1
SELECT salary FROM salary WHERE YEAR  =  2010 UNION SELECT salary FROM salary WHERE YEAR  =  2001	baseball_1
SELECT yearid FROM hall_of_fame GROUP BY yearid ORDER BY count(*) ASC LIMIT 1;	baseball_1
SELECT yearid FROM hall_of_fame GROUP BY yearid ORDER BY count(*) ASC LIMIT 1;	baseball_1
SELECT count(*) FROM park WHERE city = 'Atlanta';	baseball_1
SELECT count(*) FROM park WHERE city = 'Atlanta';	baseball_1
SELECT state FROM park GROUP BY state HAVING count(*)  >  2;	baseball_1
SELECT state FROM park GROUP BY state HAVING count(*)  >  2;	baseball_1
SELECT count(*) FROM team_franchise WHERE active = 'Y';	baseball_1
SELECT count(*) FROM team_franchise WHERE active = 'Y';	baseball_1
SELECT city FROM park GROUP BY city HAVING count(*) BETWEEN 2 AND 4;	baseball_1
SELECT city FROM park GROUP BY city HAVING count(*) BETWEEN 2 AND 4;	baseball_1
SELECT count(*) FROM camera_lens WHERE focal_length_mm  >  15	mountain_photos
SELECT brand ,  name FROM camera_lens ORDER BY max_aperture DESC	mountain_photos
SELECT id ,  color ,  name FROM photos	mountain_photos
SELECT max(height) ,  avg(height) FROM mountain	mountain_photos
SELECT avg(prominence) FROM mountain WHERE country  =  'Morocco'	mountain_photos
SELECT name ,  height ,  prominence FROM mountain WHERE range != 'Aberdare Range'	mountain_photos
SELECT count(DISTINCT brand) FROM camera_lens	mountain_photos
SELECT count(*) FROM camera_lens WHERE id NOT IN ( SELECT camera_lens_id FROM photos )	mountain_photos
SELECT name ,  prominence FROM mountain EXCEPT SELECT T1.name ,  T1.prominence FROM mountain AS T1 JOIN photos AS T2 ON T1.id  =  T2.mountain_id JOIN camera_lens AS T3 ON T2.camera_lens_id  =  T3.id WHERE T3.brand  =  'Sigma'	mountain_photos
SELECT name FROM camera_lens WHERE name LIKE "%Digital%"	mountain_photos
SELECT name FROM channel WHERE OWNER != 'CCTV'	program_share
SELECT name FROM channel WHERE OWNER != 'CCTV'	program_share
SELECT name FROM channel ORDER BY rating_in_percent DESC	program_share
SELECT name FROM channel ORDER BY rating_in_percent DESC	program_share
SELECT OWNER FROM channel ORDER BY rating_in_percent DESC LIMIT 1	program_share
SELECT OWNER FROM channel ORDER BY rating_in_percent DESC LIMIT 1	program_share
SELECT count(*) FROM program	program_share
SELECT count(*) FROM program	program_share
SELECT name FROM program ORDER BY launch	program_share
SELECT name FROM program ORDER BY launch	program_share
SELECT name ,  origin ,  OWNER FROM program	program_share
SELECT name ,  origin ,  OWNER FROM program	program_share
SELECT name FROM program ORDER BY launch DESC LIMIT 1	program_share
SELECT name FROM program ORDER BY launch DESC LIMIT 1	program_share
SELECT sum(Share_in_percent) FROM channel WHERE OWNER  =  'CCTV'	program_share
SELECT sum(Share_in_percent) FROM channel WHERE OWNER  =  'CCTV'	program_share
SELECT count(*) ,  time_of_day FROM broadcast GROUP BY time_of_day	program_share
SELECT count(*) ,  time_of_day FROM broadcast GROUP BY time_of_day	program_share
SELECT count(DISTINCT program_id) FROM broadcast WHERE time_of_day  =  'Night'	program_share
SELECT count(DISTINCT program_id) FROM broadcast WHERE time_of_day  =  'Night'	program_share
SELECT name FROM program EXCEPT SELECT t1.name FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id  =  t2.program_id WHERE t2.Time_of_day  =  "Morning"	program_share
SELECT name FROM program EXCEPT SELECT t1.name FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id  =  t2.program_id WHERE t2.Time_of_day  =  "Morning"	program_share
SELECT origin FROM program ORDER BY origin	program_share
SELECT origin FROM program ORDER BY origin	program_share
SELECT count(DISTINCT OWNER) FROM channel	program_share
SELECT count(DISTINCT OWNER) FROM channel	program_share
SELECT name FROM program WHERE origin != 'Beijing'	program_share
SELECT name FROM program WHERE origin != 'Beijing'	program_share
SELECT name FROM channel WHERE OWNER  =  'CCTV' OR OWNER  =  'HBS'	program_share
SELECT name FROM channel WHERE OWNER  =  'CCTV' OR OWNER  =  'HBS'	program_share
SELECT sum(Rating_in_percent) ,  OWNER FROM channel GROUP BY OWNER	program_share
SELECT sum(Rating_in_percent) ,  OWNER FROM channel GROUP BY OWNER	program_share
SELECT count(*) FROM COURSES	e_learning
SELECT count(*) FROM COURSES	e_learning
SELECT course_description FROM COURSES WHERE course_name  =  "database"	e_learning
SELECT course_description FROM COURSES WHERE course_name  =  "database"	e_learning
SELECT address_line_1 FROM Course_Authors_and_Tutors WHERE personal_name  =  "Cathrine"	e_learning
SELECT address_line_1 FROM Course_Authors_and_Tutors WHERE personal_name  =  "Cathrine"	e_learning
SELECT address_line_1 FROM Course_Authors_and_Tutors	e_learning
SELECT address_line_1 FROM Course_Authors_and_Tutors	e_learning
SELECT login_name ,  family_name FROM Course_Authors_and_Tutors	e_learning
SELECT login_name ,  family_name FROM Course_Authors_and_Tutors	e_learning
SELECT date_of_enrolment ,  date_of_completion FROM Student_Course_Enrolment	e_learning
SELECT date_of_enrolment ,  date_of_completion FROM Student_Course_Enrolment	e_learning
SELECT count(DISTINCT student_id) FROM Student_Course_Enrolment	e_learning
SELECT count(DISTINCT student_id) FROM Student_Course_Enrolment	e_learning
SELECT count(course_id) FROM Student_Course_Enrolment	e_learning
SELECT count(course_id) FROM Student_Course_Enrolment	e_learning
SELECT date_test_taken FROM Student_Tests_Taken WHERE test_result  =  "Pass"	e_learning
SELECT date_test_taken FROM Student_Tests_Taken WHERE test_result  =  "Pass"	e_learning
SELECT count(*) FROM Student_Tests_Taken WHERE test_result  =  "Fail"	e_learning
SELECT count(*) FROM Student_Tests_Taken WHERE test_result  =  "Fail"	e_learning
SELECT login_name FROM Students WHERE family_name  =  "Ward"	e_learning
SELECT login_name FROM Students WHERE family_name  =  "Ward"	e_learning
SELECT date_of_latest_logon FROM Students WHERE family_name  =  "Jaskolski" OR family_name  =  "Langosh"	e_learning
SELECT date_of_latest_logon FROM Students WHERE family_name  =  "Jaskolski" OR family_name  =  "Langosh"	e_learning
SELECT COUNT(*) FROM Students WHERE personal_name LIKE "%son%"	e_learning
SELECT COUNT(*) FROM Students WHERE personal_name LIKE "%son%"	e_learning
SELECT subject_name FROM SUBJECTS	e_learning
SELECT subject_name FROM SUBJECTS	e_learning
SELECT * FROM Course_Authors_and_Tutors ORDER BY personal_name	e_learning
SELECT * FROM Course_Authors_and_Tutors ORDER BY personal_name	e_learning
SELECT personal_name ,  family_name FROM Students ORDER BY family_name	e_learning
SELECT personal_name ,  family_name FROM Students ORDER BY family_name	e_learning
SELECT test_result ,  COUNT(*) FROM Student_Tests_Taken GROUP BY test_result ORDER BY COUNT(*) DESC	e_learning
SELECT test_result ,  COUNT(*) FROM Student_Tests_Taken GROUP BY test_result ORDER BY COUNT(*) DESC	e_learning
SELECT personal_name FROM Students EXCEPT SELECT T1.personal_name FROM Students AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.student_id  =  T2.student_id	e_learning
SELECT personal_name FROM Students EXCEPT SELECT T1.personal_name FROM Students AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.student_id  =  T2.student_id	e_learning
SELECT count(*) FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Course_Enrolment)	e_learning
SELECT count(*) FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Course_Enrolment)	e_learning
SELECT login_name FROM Course_Authors_and_Tutors INTERSECT SELECT login_name FROM Students	e_learning
SELECT login_name FROM Course_Authors_and_Tutors INTERSECT SELECT login_name FROM Students	e_learning
SELECT personal_name FROM Course_Authors_and_Tutors INTERSECT SELECT personal_name FROM Students	e_learning
SELECT personal_name FROM Course_Authors_and_Tutors INTERSECT SELECT personal_name FROM Students	e_learning
SELECT Payment_Method_Code ,  Date_Payment_Made ,  Amount_Payment FROM Payments ORDER BY Date_Payment_Made ASC	insurance_policies
SELECT Payment_Method_Code ,  Date_Payment_Made ,  Amount_Payment FROM Payments ORDER BY Date_Payment_Made ASC	insurance_policies
SELECT Amount_Settled ,  Amount_Claimed FROM Claims ORDER BY Amount_Claimed DESC LIMIT 1	insurance_policies
SELECT Amount_Settled ,  Amount_Claimed FROM Claims ORDER BY Amount_Claimed DESC LIMIT 1	insurance_policies
SELECT Amount_Settled ,  Amount_Claimed FROM Claims ORDER BY Amount_Settled ASC LIMIT 1	insurance_policies
SELECT Amount_Settled ,  Amount_Claimed FROM Claims ORDER BY Amount_Settled ASC LIMIT 1	insurance_policies
SELECT Date_Claim_Made ,  Date_Claim_Settled FROM Claims WHERE Amount_Claimed  >  ( SELECT avg(Amount_Claimed) FROM Claims )	insurance_policies
SELECT Date_Claim_Made ,  Date_Claim_Settled FROM Claims WHERE Amount_Claimed  >  ( SELECT avg(Amount_Claimed) FROM Claims )	insurance_policies
SELECT Date_Claim_Made FROM Claims WHERE Amount_Settled  <=  ( SELECT avg(Amount_Settled) FROM Claims )	insurance_policies
SELECT Date_Claim_Made FROM Claims WHERE Amount_Settled  <=  ( SELECT avg(Amount_Settled) FROM Claims )	insurance_policies
SELECT Date_Claim_Made FROM Claims ORDER BY Date_Claim_Made ASC LIMIT 1	insurance_policies
SELECT Date_Claim_Made FROM Claims ORDER BY Date_Claim_Made ASC LIMIT 1	insurance_policies
SELECT sum(Amount_Settled) FROM Settlements	insurance_policies
SELECT sum(Amount_Settled) FROM Settlements	insurance_policies
SELECT Date_Claim_Made ,  Date_Claim_Settled FROM Settlements	insurance_policies
SELECT Date_Claim_Made ,  Date_Claim_Settled FROM Settlements	insurance_policies
SELECT Payment_Method_Code FROM Payments GROUP BY Payment_Method_Code ORDER BY count(*) DESC LIMIT 1	insurance_policies
SELECT Payment_Method_Code FROM Payments GROUP BY Payment_Method_Code ORDER BY count(*) DESC LIMIT 1	insurance_policies
SELECT Payment_Method_Code FROM Payments GROUP BY Payment_Method_Code ORDER BY count(*) ASC LIMIT 1	insurance_policies
SELECT Payment_Method_Code FROM Payments GROUP BY Payment_Method_Code ORDER BY count(*) ASC LIMIT 1	insurance_policies
SELECT sum(Amount_Payment) FROM Payments	insurance_policies
SELECT sum(Amount_Payment) FROM Payments	insurance_policies
SELECT DISTINCT customer_details FROM Customers	insurance_policies
SELECT DISTINCT customer_details FROM Customers	insurance_policies
SELECT Policy_Type_Code FROM Customer_Policies GROUP BY Policy_Type_Code ORDER BY count(*) DESC LIMIT 1	insurance_policies
SELECT Policy_Type_Code FROM Customer_Policies GROUP BY Policy_Type_Code ORDER BY count(*) DESC LIMIT 1	insurance_policies
SELECT count(*) FROM Settlements	insurance_policies
SELECT count(*) FROM Settlements	insurance_policies
SELECT Payment_ID ,  Date_Payment_Made ,  Amount_Payment FROM Payments WHERE Payment_Method_Code  =  'Visa'	insurance_policies
SELECT Payment_ID ,  Date_Payment_Made ,  Amount_Payment FROM Payments WHERE Payment_Method_Code  =  'Visa'	insurance_policies
SELECT customer_details FROM Customers EXCEPT SELECT T1.customer_details FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.customer_id  =  T2.customer_id	insurance_policies
SELECT customer_details FROM Customers EXCEPT SELECT T1.customer_details FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.customer_id  =  T2.customer_id	insurance_policies
SELECT sum(Amount_Claimed) FROM Claims	insurance_policies
SELECT sum(Amount_Claimed) FROM Claims	insurance_policies
SELECT name FROM department GROUP BY departmentID ORDER BY count(departmentID) DESC LIMIT 1;	hospital_1
SELECT name FROM department GROUP BY departmentID ORDER BY count(departmentID) DESC LIMIT 1;	hospital_1
SELECT head FROM department GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1;	hospital_1
SELECT head FROM department GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1;	hospital_1
SELECT appointmentid FROM appointment ORDER BY START DESC LIMIT 1	hospital_1
SELECT appointmentid FROM appointment ORDER BY START DESC LIMIT 1	hospital_1
SELECT name FROM physician EXCEPT SELECT T2.name FROM appointment AS T1 JOIN physician AS T2 ON T1.Physician  =  T2.EmployeeID	hospital_1
SELECT name FROM physician EXCEPT SELECT T2.name FROM appointment AS T1 JOIN physician AS T2 ON T1.Physician  =  T2.EmployeeID	hospital_1
SELECT count(patient) FROM stay WHERE room  =  112	hospital_1
SELECT count(patient) FROM stay WHERE room  =  112	hospital_1
SELECT patient FROM stay WHERE room  =  111 ORDER BY staystart DESC LIMIT 1	hospital_1
SELECT patient FROM stay WHERE room  =  111 ORDER BY staystart DESC LIMIT 1	hospital_1
SELECT DISTINCT blockcode FROM room WHERE unavailable  =  0	hospital_1
SELECT DISTINCT blockcode FROM room WHERE unavailable  =  0	hospital_1
SELECT count(DISTINCT roomtype) FROM room	hospital_1
SELECT count(DISTINCT roomtype) FROM room	hospital_1
SELECT name FROM physician WHERE POSITION LIKE '%senior%'	hospital_1
SELECT name FROM physician WHERE POSITION LIKE '%senior%'	hospital_1
SELECT patient FROM undergoes ORDER BY dateundergoes LIMIT 1	hospital_1
SELECT patient FROM undergoes ORDER BY dateundergoes LIMIT 1	hospital_1
SELECT DISTINCT name FROM nurse ORDER BY name	hospital_1
SELECT DISTINCT name FROM nurse ORDER BY name	hospital_1
SELECT DISTINCT name FROM medication ORDER BY name	hospital_1
SELECT DISTINCT name FROM medication ORDER BY name	hospital_1
SELECT physician ,  department FROM affiliated_with WHERE primaryaffiliation  =  1	hospital_1
SELECT physician ,  department FROM affiliated_with WHERE primaryaffiliation  =  1	hospital_1
SELECT nurse FROM on_call WHERE blockfloor  =  1 AND blockcode  =  1	hospital_1
SELECT nurse FROM on_call WHERE blockfloor  =  1 AND blockcode  =  1	hospital_1
SELECT MAX(cost) ,  MIN(cost) ,  AVG(cost) FROM procedures	hospital_1
SELECT MAX(cost) ,  MIN(cost) ,  AVG(cost) FROM procedures	hospital_1
SELECT name ,  cost FROM procedures ORDER BY cost DESC	hospital_1
SELECT name ,  cost FROM procedures ORDER BY cost DESC	hospital_1
SELECT name FROM procedures ORDER BY cost LIMIT 3	hospital_1
SELECT name FROM procedures ORDER BY cost LIMIT 3	hospital_1
SELECT name FROM procedures WHERE cost  >  1000 UNION SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"	hospital_1
SELECT name FROM procedures WHERE cost  >  1000 UNION SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"	hospital_1
SELECT name FROM procedures WHERE cost  >  1000 EXCEPT SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"	hospital_1
SELECT name FROM procedures WHERE cost  >  1000 EXCEPT SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"	hospital_1
SELECT name FROM procedures WHERE cost  <  5000 INTERSECT SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"	hospital_1
SELECT name FROM procedures WHERE cost  <  5000 INTERSECT SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"	hospital_1
SELECT name FROM patient EXCEPT SELECT T1.name FROM patient AS T1 JOIN Prescribes AS T2 ON T2.Patient  =  T1.SSN JOIN Medication AS T3 ON T2.Medication  =  T3.Code WHERE T3.name  =  'Procrastin-X'	hospital_1
SELECT name FROM patient EXCEPT SELECT T1.name FROM patient AS T1 JOIN Prescribes AS T2 ON T2.Patient  =  T1.SSN JOIN Medication AS T3 ON T2.Medication  =  T3.Code WHERE T3.name  =  'Procrastin-X'	hospital_1
SELECT count(*) FROM patient WHERE SSN NOT IN ( SELECT T1.patient FROM Prescribes AS T1 JOIN Medication AS T2 ON T1.Medication  =  T2.Code WHERE T2.name  =  'Procrastin-X' )	hospital_1
SELECT count(*) FROM patient WHERE SSN NOT IN ( SELECT T1.patient FROM Prescribes AS T1 JOIN Medication AS T2 ON T1.Medication  =  T2.Code WHERE T2.name  =  'Procrastin-X' )	hospital_1
SELECT count(*) FROM appointment	hospital_1
SELECT count(*) FROM appointment	hospital_1
SELECT count(*) FROM ship	ship_mission
SELECT count(*) FROM ship	ship_mission
SELECT Name FROM ship ORDER BY Tonnage ASC	ship_mission
SELECT Name FROM ship ORDER BY Tonnage ASC	ship_mission
SELECT TYPE ,  Nationality FROM ship	ship_mission
SELECT TYPE ,  Nationality FROM ship	ship_mission
SELECT Name FROM ship WHERE Nationality != "United States"	ship_mission
SELECT Name FROM ship WHERE Nationality != "United States"	ship_mission
SELECT Name FROM ship WHERE Nationality  =  "United States" OR Nationality  =  "United Kingdom"	ship_mission
SELECT Name FROM ship WHERE Nationality  =  "United States" OR Nationality  =  "United Kingdom"	ship_mission
SELECT Name FROM ship ORDER BY Tonnage DESC LIMIT 1	ship_mission
SELECT Name FROM ship ORDER BY Tonnage DESC LIMIT 1	ship_mission
SELECT TYPE ,  COUNT(*) FROM ship GROUP BY TYPE	ship_mission
SELECT TYPE ,  COUNT(*) FROM ship GROUP BY TYPE	ship_mission
SELECT TYPE FROM ship GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1	ship_mission
SELECT TYPE FROM ship GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1	ship_mission
SELECT Nationality FROM ship GROUP BY Nationality HAVING COUNT(*)  >  2	ship_mission
SELECT Nationality FROM ship GROUP BY Nationality HAVING COUNT(*)  >  2	ship_mission
SELECT TYPE ,  avg(Tonnage) FROM ship GROUP BY TYPE	ship_mission
SELECT TYPE ,  avg(Tonnage) FROM ship GROUP BY TYPE	ship_mission
SELECT Name FROM ship WHERE Ship_ID NOT IN (SELECT Ship_ID FROM mission)	ship_mission
SELECT Name FROM ship WHERE Ship_ID NOT IN (SELECT Ship_ID FROM mission)	ship_mission
SELECT TYPE FROM ship WHERE Tonnage  >  6000 INTERSECT SELECT TYPE FROM ship WHERE Tonnage  <  4000	ship_mission
SELECT TYPE FROM ship WHERE Tonnage  >  6000 INTERSECT SELECT TYPE FROM ship WHERE Tonnage  <  4000	ship_mission
SELECT count(*) FROM list	student_1
SELECT count(*) FROM list	student_1
SELECT lastname FROM list WHERE classroom  =  111	student_1
SELECT lastname FROM list WHERE classroom  =  111	student_1
SELECT firstname FROM list WHERE classroom  =  108	student_1
SELECT firstname FROM list WHERE classroom  =  108	student_1
SELECT DISTINCT firstname FROM list WHERE classroom  =  107	student_1
SELECT DISTINCT firstname FROM list WHERE classroom  =  107	student_1
SELECT DISTINCT classroom ,  grade FROM list	student_1
SELECT DISTINCT classroom ,  grade FROM list	student_1
SELECT DISTINCT grade FROM list WHERE classroom  =  103	student_1
SELECT DISTINCT grade FROM list WHERE classroom  =  103	student_1
SELECT DISTINCT grade FROM list WHERE classroom  =  105	student_1
SELECT DISTINCT grade FROM list WHERE classroom  =  105	student_1
SELECT DISTINCT classroom FROM list WHERE grade  =  4	student_1
SELECT DISTINCT classroom FROM list WHERE grade  =  4	student_1
SELECT DISTINCT classroom FROM list WHERE grade  =  5	student_1
SELECT DISTINCT classroom FROM list WHERE grade  =  5	student_1
SELECT firstname FROM teachers WHERE classroom  =  110	student_1
SELECT firstname FROM teachers WHERE classroom  =  110	student_1
SELECT lastname FROM teachers WHERE classroom  =  109	student_1
SELECT lastname FROM teachers WHERE classroom  =  109	student_1
SELECT DISTINCT firstname ,  lastname FROM teachers	student_1
SELECT DISTINCT firstname ,  lastname FROM teachers	student_1
SELECT DISTINCT firstname ,  lastname FROM list	student_1
SELECT DISTINCT firstname ,  lastname FROM list	student_1
SELECT grade ,  count(DISTINCT classroom) ,  count(*) FROM list GROUP BY grade	student_1
SELECT grade ,  count(DISTINCT classroom) ,  count(*) FROM list GROUP BY grade	student_1
SELECT classroom ,  count(DISTINCT grade) FROM list GROUP BY classroom	student_1
SELECT classroom ,  count(DISTINCT grade) FROM list GROUP BY classroom	student_1
SELECT classroom FROM list GROUP BY classroom ORDER BY count(*) DESC LIMIT 1	student_1
SELECT classroom FROM list GROUP BY classroom ORDER BY count(*) DESC LIMIT 1	student_1
SELECT classroom ,  count(*) FROM list GROUP BY classroom	student_1
SELECT classroom ,  count(*) FROM list GROUP BY classroom	student_1
SELECT classroom ,  count(*) FROM list WHERE grade  =  "0" GROUP BY classroom	student_1
SELECT classroom ,  count(*) FROM list WHERE grade  =  "0" GROUP BY classroom	student_1
SELECT classroom ,  count(*) FROM list WHERE grade  =  "4" GROUP BY classroom	student_1
SELECT classroom ,  count(*) FROM list WHERE grade  =  "4" GROUP BY classroom	student_1
SELECT count(*) ,  classroom FROM list GROUP BY classroom	student_1
SELECT count(*) ,  classroom FROM list GROUP BY classroom	student_1
SELECT count(*) FROM company WHERE Headquarters  =  'USA'	company_employee
SELECT Name FROM company ORDER BY Sales_in_Billion ASC	company_employee
SELECT Headquarters ,  Industry FROM company	company_employee
SELECT Name FROM company WHERE Industry  =  "Banking" OR Industry  =  "Retailing"	company_employee
SELECT max(Market_Value_in_Billion) ,  min(Market_Value_in_Billion) FROM company	company_employee
SELECT Headquarters FROM company ORDER BY Sales_in_Billion DESC LIMIT 1	company_employee
SELECT Headquarters ,  COUNT(*) FROM company GROUP BY Headquarters	company_employee
SELECT Headquarters FROM company GROUP BY Headquarters ORDER BY COUNT(*) DESC LIMIT 1	company_employee
SELECT Headquarters FROM company GROUP BY Headquarters HAVING COUNT(*)  >=  2	company_employee
SELECT Headquarters FROM company WHERE Industry  =  "Banking" INTERSECT SELECT Headquarters FROM company WHERE Industry  =  "Oil and gas"	company_employee
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM employment)	company_employee
SELECT name FROM company WHERE Sales_in_Billion  >  200 ORDER BY Sales_in_Billion ,  Profits_in_Billion DESC	company_employee
SELECT count(*) FROM film	film_rank
SELECT count(*) FROM film	film_rank
SELECT DISTINCT Director FROM film	film_rank
SELECT DISTINCT Director FROM film	film_rank
SELECT avg(Gross_in_dollar) FROM film	film_rank
SELECT avg(Gross_in_dollar) FROM film	film_rank
SELECT Low_Estimate ,  High_Estimate FROM film_market_estimation	film_rank
SELECT Low_Estimate ,  High_Estimate FROM film_market_estimation	film_rank
SELECT TYPE FROM film_market_estimation WHERE YEAR  =  1995	film_rank
SELECT TYPE FROM film_market_estimation WHERE YEAR  =  1995	film_rank
SELECT max(Number_cities) ,  min(Number_cities) FROM market	film_rank
SELECT max(Number_cities) ,  min(Number_cities) FROM market	film_rank
SELECT count(*) FROM market WHERE Number_cities  <  300	film_rank
SELECT count(*) FROM market WHERE Number_cities  <  300	film_rank
SELECT Country FROM market ORDER BY Country ASC	film_rank
SELECT Country FROM market ORDER BY Country ASC	film_rank
SELECT Country FROM market ORDER BY Number_cities DESC	film_rank
SELECT Country FROM market ORDER BY Number_cities DESC	film_rank
SELECT Studio ,  COUNT(*) FROM film GROUP BY Studio	film_rank
SELECT Studio ,  COUNT(*) FROM film GROUP BY Studio	film_rank
SELECT Studio FROM film GROUP BY Studio ORDER BY COUNT(*) DESC LIMIT 1	film_rank
SELECT Studio FROM film GROUP BY Studio ORDER BY COUNT(*) DESC LIMIT 1	film_rank
SELECT Studio FROM film GROUP BY Studio HAVING COUNT(*)  >=  2	film_rank
SELECT Studio FROM film GROUP BY Studio HAVING COUNT(*)  >=  2	film_rank
SELECT Title FROM film WHERE Film_ID NOT IN (SELECT Film_ID FROM film_market_estimation)	film_rank
SELECT Title FROM film WHERE Film_ID NOT IN (SELECT Film_ID FROM film_market_estimation)	film_rank
SELECT Studio FROM film WHERE Director  =  "Nicholas Meyer" INTERSECT SELECT Studio FROM film WHERE Director  =  "Walter Hill"	film_rank
SELECT Studio FROM film WHERE Director  =  "Nicholas Meyer" INTERSECT SELECT Studio FROM film WHERE Director  =  "Walter Hill"	film_rank
SELECT title ,  Studio FROM film WHERE Studio LIKE "%Universal%"	film_rank
SELECT title ,  Studio FROM film WHERE Studio LIKE "%Universal%"	film_rank
SELECT Studio FROM film EXCEPT SELECT Studio FROM film WHERE Director  =  "Walter Hill"	film_rank
SELECT Studio FROM film EXCEPT SELECT Studio FROM film WHERE Director  =  "Walter Hill"	film_rank
SELECT Studio FROM film GROUP BY Studio HAVING avg(Gross_in_dollar)  >=  4500000	film_rank
SELECT Studio FROM film GROUP BY Studio HAVING avg(Gross_in_dollar)  >=  4500000	film_rank
SELECT title ,  director FROM film WHERE film_id NOT IN (SELECT film_id FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.market_id  =  T2.Market_ID WHERE country  =  'China')	film_rank
SELECT title ,  director FROM film WHERE film_id NOT IN (SELECT film_id FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.market_id  =  T2.Market_ID WHERE country  =  'China')	film_rank
SELECT count(*) FROM Ref_calendar	cre_Doc_Tracking_DB
SELECT count(*) FROM Ref_calendar	cre_Doc_Tracking_DB
SELECT calendar_date ,  day_Number FROM Ref_calendar	cre_Doc_Tracking_DB
SELECT calendar_date ,  day_Number FROM Ref_calendar	cre_Doc_Tracking_DB
SELECT count(*) FROM Ref_document_types	cre_Doc_Tracking_DB
SELECT count(*) FROM Ref_document_types	cre_Doc_Tracking_DB
SELECT document_type_code ,  document_type_name FROM Ref_document_types	cre_Doc_Tracking_DB
SELECT document_type_code ,  document_type_name FROM Ref_document_types	cre_Doc_Tracking_DB
SELECT document_type_name ,  document_type_description FROM Ref_document_types WHERE document_type_code  =  "RV"	cre_Doc_Tracking_DB
SELECT document_type_name ,  document_type_description FROM Ref_document_types WHERE document_type_code  =  "RV"	cre_Doc_Tracking_DB
SELECT document_type_code FROM Ref_document_types WHERE document_type_name  =  "Paper"	cre_Doc_Tracking_DB
SELECT document_type_code FROM Ref_document_types WHERE document_type_name  =  "Paper"	cre_Doc_Tracking_DB
SELECT count(*) FROM All_documents WHERE document_type_code  =  "CV" OR document_type_code  =  "BK"	cre_Doc_Tracking_DB
SELECT count(*) FROM All_documents WHERE document_type_code  =  "CV" OR document_type_code  =  "BK"	cre_Doc_Tracking_DB
SELECT date_stored FROM All_documents WHERE Document_name  =  "Marry CV"	cre_Doc_Tracking_DB
SELECT date_stored FROM All_documents WHERE Document_name  =  "Marry CV"	cre_Doc_Tracking_DB
SELECT count(*) FROM Ref_locations	cre_Doc_Tracking_DB
SELECT count(*) FROM Ref_locations	cre_Doc_Tracking_DB
SELECT location_code ,  location_name FROM Ref_locations	cre_Doc_Tracking_DB
SELECT location_code ,  location_name FROM Ref_locations	cre_Doc_Tracking_DB
SELECT location_name ,  location_description FROM Ref_locations WHERE location_code  =  "x"	cre_Doc_Tracking_DB
SELECT location_name ,  location_description FROM Ref_locations WHERE location_code  =  "x"	cre_Doc_Tracking_DB
SELECT location_code FROM Ref_locations WHERE location_name  =  "Canada"	cre_Doc_Tracking_DB
SELECT location_code FROM Ref_locations WHERE location_name  =  "Canada"	cre_Doc_Tracking_DB
SELECT count(*) FROM ROLES	cre_Doc_Tracking_DB
SELECT count(*) FROM ROLES	cre_Doc_Tracking_DB
SELECT role_code ,  role_name ,  role_description FROM ROLES	cre_Doc_Tracking_DB
SELECT role_code ,  role_name ,  role_description FROM ROLES	cre_Doc_Tracking_DB
SELECT role_name ,  role_description FROM ROLES WHERE role_code  =  "MG"	cre_Doc_Tracking_DB
SELECT role_name ,  role_description FROM ROLES WHERE role_code  =  "MG"	cre_Doc_Tracking_DB
SELECT role_description FROM ROLES WHERE role_name  =  "Proof Reader"	cre_Doc_Tracking_DB
SELECT role_description FROM ROLES WHERE role_name  =  "Proof Reader"	cre_Doc_Tracking_DB
SELECT count(*) FROM Employees	cre_Doc_Tracking_DB
SELECT count(*) FROM Employees	cre_Doc_Tracking_DB
SELECT employee_name ,  role_code ,  date_of_birth FROM Employees WHERE employee_Name  =  'Armani'	cre_Doc_Tracking_DB
SELECT employee_name ,  role_code ,  date_of_birth FROM Employees WHERE employee_Name  =  'Armani'	cre_Doc_Tracking_DB
SELECT employee_ID FROM Employees WHERE employee_name  =  "Ebba"	cre_Doc_Tracking_DB
SELECT employee_ID FROM Employees WHERE employee_name  =  "Ebba"	cre_Doc_Tracking_DB
SELECT employee_name FROM Employees WHERE role_code  =  "HR"	cre_Doc_Tracking_DB
SELECT employee_name FROM Employees WHERE role_code  =  "HR"	cre_Doc_Tracking_DB
SELECT role_code ,  count(*) FROM Employees GROUP BY role_code	cre_Doc_Tracking_DB
SELECT role_code ,  count(*) FROM Employees GROUP BY role_code	cre_Doc_Tracking_DB
SELECT role_code FROM Employees GROUP BY role_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Tracking_DB
SELECT role_code FROM Employees GROUP BY role_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Tracking_DB
SELECT role_code FROM Employees GROUP BY role_code HAVING count(*)  >=  3	cre_Doc_Tracking_DB
SELECT role_code FROM Employees GROUP BY role_code HAVING count(*)  >=  3	cre_Doc_Tracking_DB
SELECT role_code FROM Employees GROUP BY role_code ORDER BY count(*) ASC LIMIT 1	cre_Doc_Tracking_DB
SELECT role_code FROM Employees GROUP BY role_code ORDER BY count(*) ASC LIMIT 1	cre_Doc_Tracking_DB
SELECT DISTINCT location_code FROM Document_locations	cre_Doc_Tracking_DB
SELECT DISTINCT location_code FROM Document_locations	cre_Doc_Tracking_DB
SELECT location_code ,  date_in_location_from ,  date_in_locaton_to FROM Document_locations	cre_Doc_Tracking_DB
SELECT location_code ,  date_in_location_from ,  date_in_locaton_to FROM Document_locations	cre_Doc_Tracking_DB
SELECT location_code ,  count(*) FROM Document_locations GROUP BY location_code	cre_Doc_Tracking_DB
SELECT location_code ,  count(*) FROM Document_locations GROUP BY location_code	cre_Doc_Tracking_DB
SELECT location_code FROM Document_locations GROUP BY location_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Tracking_DB
SELECT location_code FROM Document_locations GROUP BY location_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Tracking_DB
SELECT location_code FROM Document_locations GROUP BY location_code HAVING count(*)  >=  3	cre_Doc_Tracking_DB
SELECT location_code FROM Document_locations GROUP BY location_code HAVING count(*)  >=  3	cre_Doc_Tracking_DB
SELECT Destruction_Authorised_by_Employee_ID ,  count(*) FROM Documents_to_be_destroyed GROUP BY Destruction_Authorised_by_Employee_ID	cre_Doc_Tracking_DB
SELECT Destruction_Authorised_by_Employee_ID ,  count(*) FROM Documents_to_be_destroyed GROUP BY Destruction_Authorised_by_Employee_ID	cre_Doc_Tracking_DB
SELECT Destroyed_by_Employee_ID ,  count(*) FROM Documents_to_be_destroyed GROUP BY Destroyed_by_Employee_ID	cre_Doc_Tracking_DB
SELECT Destroyed_by_Employee_ID ,  count(*) FROM Documents_to_be_destroyed GROUP BY Destroyed_by_Employee_ID	cre_Doc_Tracking_DB
SELECT employee_id FROM Employees EXCEPT SELECT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT employee_id FROM Employees EXCEPT SELECT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT DISTINCT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT DISTINCT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT DISTINCT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT DISTINCT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT employee_id FROM Employees EXCEPT SELECT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT employee_id FROM Employees EXCEPT SELECT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed UNION SELECT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed UNION SELECT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed	cre_Doc_Tracking_DB
SELECT count(*) FROM club	club_1
SELECT count(*) FROM club	club_1
SELECT clubname FROM club	club_1
SELECT clubname FROM club	club_1
SELECT count(*) FROM student	club_1
SELECT count(*) FROM student	club_1
SELECT DISTINCT fname FROM student	club_1
SELECT DISTINCT fname FROM student	club_1
SELECT clubdesc FROM club WHERE clubname  =  "Tennis Club"	club_1
SELECT clubdesc FROM club WHERE clubname  =  "Tennis Club"	club_1
SELECT clubdesc FROM club WHERE clubname  =  "Pen and Paper Gaming"	club_1
SELECT clubdesc FROM club WHERE clubname  =  "Pen and Paper Gaming"	club_1
SELECT clublocation FROM club WHERE clubname  =  "Tennis Club"	club_1
SELECT clublocation FROM club WHERE clubname  =  "Tennis Club"	club_1
SELECT clublocation FROM club WHERE clubname  =  "Pen and Paper Gaming"	club_1
SELECT clublocation FROM club WHERE clubname  =  "Pen and Paper Gaming"	club_1
SELECT clublocation FROM club WHERE clubname  =  "Hopkins Student Enterprises"	club_1
SELECT clublocation FROM club WHERE clubname  =  "Hopkins Student Enterprises"	club_1
SELECT clubname FROM club WHERE clublocation  =  "AKW"	club_1
SELECT clubname FROM club WHERE clublocation  =  "AKW"	club_1
SELECT count(*) FROM club WHERE clublocation  =  "HHH"	club_1
SELECT count(*) FROM club WHERE clublocation  =  "HHH"	club_1
SELECT date_from ,  date_to FROM Project_Staff WHERE project_id IN( SELECT project_id FROM Project_Staff GROUP BY project_id ORDER BY count(*) DESC LIMIT 1 ) UNION SELECT date_from ,  date_to FROM Project_Staff WHERE role_code  =  'leader'	tracking_grants_for_research
SELECT date_from ,  date_to FROM Project_Staff WHERE project_id IN( SELECT project_id FROM Project_Staff GROUP BY project_id ORDER BY count(*) DESC LIMIT 1 ) UNION SELECT date_from ,  date_to FROM Project_Staff WHERE role_code  =  'leader'	tracking_grants_for_research
SELECT project_details FROM Projects WHERE project_id NOT IN ( SELECT project_id FROM Project_Staff WHERE role_code  =  'researcher' )	tracking_grants_for_research
SELECT project_details FROM Projects WHERE project_id NOT IN ( SELECT project_id FROM Project_Staff WHERE role_code  =  'researcher' )	tracking_grants_for_research
SELECT date_from ,  date_to FROM Project_Staff WHERE role_code  =  'researcher'	tracking_grants_for_research
SELECT date_from ,  date_to FROM Project_Staff WHERE role_code  =  'researcher'	tracking_grants_for_research
SELECT count(DISTINCT role_code) FROM Project_Staff	tracking_grants_for_research
SELECT count(DISTINCT role_code) FROM Project_Staff	tracking_grants_for_research
SELECT sum(grant_amount) ,  organisation_id FROM Grants GROUP BY organisation_id	tracking_grants_for_research
SELECT sum(grant_amount) ,  organisation_id FROM Grants GROUP BY organisation_id	tracking_grants_for_research
SELECT role_description FROM Staff_Roles WHERE role_code  =  'researcher'	tracking_grants_for_research
SELECT role_description FROM Staff_Roles WHERE role_code  =  'researcher'	tracking_grants_for_research
SELECT date_from FROM Project_Staff ORDER BY date_from ASC LIMIT 1	tracking_grants_for_research
SELECT date_from FROM Project_Staff ORDER BY date_from ASC LIMIT 1	tracking_grants_for_research
SELECT project_details FROM Projects WHERE project_id NOT IN ( SELECT project_id FROM Project_outcomes )	tracking_grants_for_research
SELECT project_details FROM Projects WHERE project_id NOT IN ( SELECT project_id FROM Project_outcomes )	tracking_grants_for_research
SELECT document_type_code FROM Document_Types WHERE document_description LIKE 'Initial%'	tracking_grants_for_research
SELECT document_type_code FROM Document_Types WHERE document_description LIKE 'Initial%'	tracking_grants_for_research
SELECT grant_id ,  count(*) FROM Documents GROUP BY grant_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT grant_id ,  count(*) FROM Documents GROUP BY grant_id ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT count(*) FROM Project_outcomes WHERE outcome_code  =  'Patent'	tracking_grants_for_research
SELECT count(*) FROM Project_outcomes WHERE outcome_code  =  'Patent'	tracking_grants_for_research
SELECT count(*) FROM Project_Staff WHERE role_code  =  'leader' OR date_from  <  '1989-04-24 23:51:54'	tracking_grants_for_research
SELECT count(*) FROM Project_Staff WHERE role_code  =  'leader' OR date_from  <  '1989-04-24 23:51:54'	tracking_grants_for_research
SELECT date_to FROM Project_Staff ORDER BY date_to DESC LIMIT 1	tracking_grants_for_research
SELECT date_to FROM Project_Staff ORDER BY date_to DESC LIMIT 1	tracking_grants_for_research
SELECT project_details FROM Projects WHERE organisation_id IN ( SELECT organisation_id FROM Projects GROUP BY organisation_id ORDER BY count(*) DESC LIMIT 1 )	tracking_grants_for_research
SELECT project_details FROM Projects WHERE organisation_id IN ( SELECT organisation_id FROM Projects GROUP BY organisation_id ORDER BY count(*) DESC LIMIT 1 )	tracking_grants_for_research
SELECT staff_details FROM Research_Staff ORDER BY staff_details ASC	tracking_grants_for_research
SELECT staff_details FROM Research_Staff ORDER BY staff_details ASC	tracking_grants_for_research
SELECT count(*) FROM Tasks	tracking_grants_for_research
SELECT count(*) FROM Tasks	tracking_grants_for_research
SELECT role_code FROM Project_Staff WHERE date_from  >  '2003-04-19 15:06:20' AND date_to  <  '2016-03-15 00:33:18'	tracking_grants_for_research
SELECT role_code FROM Project_Staff WHERE date_from  >  '2003-04-19 15:06:20' AND date_to  <  '2016-03-15 00:33:18'	tracking_grants_for_research
SELECT role_code FROM Project_Staff GROUP BY role_code ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT role_code FROM Project_Staff GROUP BY role_code ORDER BY count(*) DESC LIMIT 1	tracking_grants_for_research
SELECT count(*) FROM Person WHERE gender  =  'female'	network_2
SELECT count(*) FROM Person WHERE gender  =  'female'	network_2
SELECT avg(age) FROM Person	network_2
SELECT avg(age) FROM Person	network_2
SELECT count(DISTINCT city) FROM Person	network_2
SELECT count(DISTINCT city) FROM Person	network_2
SELECT count(DISTINCT job) FROM Person	network_2
SELECT count(DISTINCT job) FROM Person	network_2
SELECT name FROM Person WHERE age  =  (SELECT max(age) FROM person)	network_2
SELECT name FROM Person WHERE age  =  (SELECT max(age) FROM person)	network_2
SELECT name FROM Person WHERE job  =  'student' AND age  =  (SELECT max(age) FROM person WHERE job  =  'student' )	network_2
SELECT name FROM Person WHERE job  =  'student' AND age  =  (SELECT max(age) FROM person WHERE job  =  'student' )	network_2
SELECT name FROM Person WHERE gender  =  'male' AND age  =  (SELECT min(age) FROM person WHERE gender  =  'male' )	network_2
SELECT name FROM Person WHERE gender  =  'male' AND age  =  (SELECT min(age) FROM person WHERE gender  =  'male' )	network_2
SELECT age FROM Person WHERE job  =  'doctor' AND name  =  'Zach'	network_2
SELECT age FROM Person WHERE job  =  'doctor' AND name  =  'Zach'	network_2
SELECT name FROM Person WHERE age  <  30	network_2
SELECT name FROM Person WHERE age  <  30	network_2
SELECT count(*) FROM Person WHERE age  >  30 AND job  =  'engineer'	network_2
SELECT count(*) FROM Person WHERE age  >  30 AND job  =  'engineer'	network_2
SELECT avg(age) ,  gender FROM Person GROUP BY gender	network_2
SELECT avg(age) ,  gender FROM Person GROUP BY gender	network_2
SELECT avg(age) ,  job FROM Person GROUP BY job	network_2
SELECT avg(age) ,  job FROM Person GROUP BY job	network_2
SELECT avg(age) ,  job FROM Person WHERE gender  =  'male' GROUP BY job	network_2
SELECT avg(age) ,  job FROM Person WHERE gender  =  'male' GROUP BY job	network_2
SELECT min(age) ,  job FROM Person GROUP BY job	network_2
SELECT min(age) ,  job FROM Person GROUP BY job	network_2
SELECT count(*) ,  gender FROM Person WHERE age  <  40 GROUP BY gender	network_2
SELECT count(*) ,  gender FROM Person WHERE age  <  40 GROUP BY gender	network_2
SELECT name FROM Person WHERE age  >  (SELECT min(age) FROM person WHERE job  =  'engineer') ORDER BY age	network_2
SELECT name FROM Person WHERE age  >  (SELECT min(age) FROM person WHERE job  =  'engineer') ORDER BY age	network_2
SELECT count(*) FROM Person WHERE age  >  (SELECT max(age) FROM person WHERE job  =  'engineer')	network_2
SELECT count(*) FROM Person WHERE age  >  (SELECT max(age) FROM person WHERE job  =  'engineer')	network_2
SELECT name ,  job FROM Person ORDER BY name	network_2
SELECT name ,  job FROM Person ORDER BY name	network_2
SELECT name FROM Person ORDER BY age DESC	network_2
SELECT name FROM Person ORDER BY age DESC	network_2
SELECT name FROM Person WHERE gender  =  'male' ORDER BY age	network_2
SELECT name FROM Person WHERE gender  =  'male' ORDER BY age	network_2
SELECT name FROM person EXCEPT SELECT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T1.job  =  'student'	network_2
SELECT name FROM person EXCEPT SELECT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T1.job  =  'student'	network_2
SELECT name FROM PersonFriend GROUP BY name HAVING count(*)  =  1	network_2
SELECT name FROM PersonFriend GROUP BY name HAVING count(*)  =  1	network_2
SELECT friend FROM PersonFriend WHERE name =  'Zach' AND YEAR  =  (SELECT max(YEAR) FROM PersonFriend WHERE name =  'Zach')	network_2
SELECT friend FROM PersonFriend WHERE name =  'Zach' AND YEAR  =  (SELECT max(YEAR) FROM PersonFriend WHERE name =  'Zach')	network_2
SELECT name FROM PersonFriend WHERE friend =  'Alice' AND YEAR  =  (SELECT min(YEAR) FROM PersonFriend WHERE friend =  'Alice')	network_2
SELECT name FROM PersonFriend WHERE friend =  'Alice' AND YEAR  =  (SELECT min(YEAR) FROM PersonFriend WHERE friend =  'Alice')	network_2
SELECT name FROM person EXCEPT SELECT name FROM PersonFriend	network_2
SELECT name FROM person EXCEPT SELECT name FROM PersonFriend	network_2
SELECT count(DISTINCT name) FROM PersonFriend WHERE friend NOT IN (SELECT name FROM person WHERE city  =  'Austin')	network_2
SELECT count(DISTINCT name) FROM PersonFriend WHERE friend NOT IN (SELECT name FROM person WHERE city  =  'Austin')	network_2
SELECT count(*) FROM member	decoration_competition
SELECT Name FROM member ORDER BY Name ASC	decoration_competition
SELECT Name ,  Country FROM member	decoration_competition
SELECT Name FROM member WHERE Country  =  "United States" OR Country  =  "Canada"	decoration_competition
SELECT Country ,  COUNT(*) FROM member GROUP BY Country	decoration_competition
SELECT Country FROM member GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1	decoration_competition
SELECT Country FROM member GROUP BY Country HAVING COUNT(*)  >  2	decoration_competition
SELECT Leader_Name ,  College_Location FROM college	decoration_competition
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM round)	decoration_competition
SELECT document_name ,  access_count FROM documents ORDER BY document_name	document_management
SELECT document_name ,  access_count FROM documents ORDER BY document_name	document_management
SELECT document_name ,  access_count FROM documents ORDER BY access_count DESC LIMIT 1	document_management
SELECT document_name ,  access_count FROM documents ORDER BY access_count DESC LIMIT 1	document_management
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING count(*)  >  4	document_management
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING count(*)  >  4	document_management
SELECT sum(access_count) FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT sum(access_count) FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT avg(access_count) FROM documents	document_management
SELECT avg(access_count) FROM documents	document_management
SELECT document_type_code FROM documents WHERE document_name  =  "David CV"	document_management
SELECT document_type_code FROM documents WHERE document_name  =  "David CV"	document_management
SELECT document_name FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 3 INTERSECT SELECT document_name FROM documents GROUP BY document_structure_code ORDER BY count(*) DESC LIMIT 3	document_management
SELECT document_name FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 3 INTERSECT SELECT document_name FROM documents GROUP BY document_structure_code ORDER BY count(*) DESC LIMIT 3	document_management
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING sum(access_count)  >  10000	document_management
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING sum(access_count)  >  10000	document_management
SELECT document_name FROM documents WHERE document_code NOT IN (SELECT document_code FROM document_sections)	document_management
SELECT document_name FROM documents WHERE document_code NOT IN (SELECT document_code FROM document_sections)	document_management
SELECT user_name ,  password FROM users GROUP BY role_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT user_name ,  password FROM users GROUP BY role_code ORDER BY count(*) DESC LIMIT 1	document_management
SELECT document_name FROM documents EXCEPT SELECT t1.document_name FROM documents AS t1 JOIN document_sections AS t2 ON t1.document_code  =  t2.document_code JOIN document_sections_images AS t3 ON t2.section_id  =  t3.section_id	document_management
SELECT document_name FROM documents EXCEPT SELECT t1.document_name FROM documents AS t1 JOIN document_sections AS t2 ON t1.document_code  =  t2.document_code JOIN document_sections_images AS t3 ON t2.section_id  =  t3.section_id	document_management
SELECT document_name FROM documents WHERE document_name LIKE "%CV%"	document_management
SELECT document_name FROM documents WHERE document_name LIKE "%CV%"	document_management
SELECT count(*) FROM users WHERE user_login  =  1	document_management
SELECT count(*) FROM users WHERE user_login  =  1	document_management
SELECT role_description FROM ROLES WHERE role_code  =  (SELECT role_code FROM users WHERE user_login  =  1 GROUP BY role_code ORDER BY count(*) DESC LIMIT 1)	document_management
SELECT role_description FROM ROLES WHERE role_code  =  (SELECT role_code FROM users WHERE user_login  =  1 GROUP BY role_code ORDER BY count(*) DESC LIMIT 1)	document_management
SELECT avg(access_count) FROM documents GROUP BY document_structure_code ORDER BY count(*) ASC LIMIT 1	document_management
SELECT avg(access_count) FROM documents GROUP BY document_structure_code ORDER BY count(*) ASC LIMIT 1	document_management
SELECT image_name ,  image_url FROM images ORDER BY image_name	document_management
SELECT image_name ,  image_url FROM images ORDER BY image_name	document_management
SELECT count(*) ,  role_code FROM users GROUP BY role_code	document_management
SELECT count(*) ,  role_code FROM users GROUP BY role_code	document_management
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING count(*)  >  2	document_management
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING count(*)  >  2	document_management
SELECT count(*) FROM Companies	company_office
SELECT count(*) FROM Companies	company_office
SELECT name FROM Companies ORDER BY Market_Value_billion DESC	company_office
SELECT name FROM Companies ORDER BY Market_Value_billion DESC	company_office
SELECT name FROM Companies WHERE Headquarters != 'USA'	company_office
SELECT name FROM Companies WHERE Headquarters != 'USA'	company_office
SELECT name ,  Assets_billion FROM Companies ORDER BY name ASC	company_office
SELECT name ,  Assets_billion FROM Companies ORDER BY name ASC	company_office
SELECT avg(Profits_billion) FROM Companies	company_office
SELECT avg(Profits_billion) FROM Companies	company_office
SELECT max(Sales_billion) ,  min(Sales_billion) FROM Companies WHERE Industry != "Banking"	company_office
SELECT max(Sales_billion) ,  min(Sales_billion) FROM Companies WHERE Industry != "Banking"	company_office
SELECT count(DISTINCT Industry) FROM Companies	company_office
SELECT count(DISTINCT Industry) FROM Companies	company_office
SELECT name FROM buildings ORDER BY Height DESC	company_office
SELECT name FROM buildings ORDER BY Height DESC	company_office
SELECT Stories FROM buildings ORDER BY Height DESC LIMIT 1	company_office
SELECT Stories FROM buildings ORDER BY Height DESC LIMIT 1	company_office
SELECT name FROM buildings WHERE Status  =  "on-hold" ORDER BY Stories ASC	company_office
SELECT name FROM buildings WHERE Status  =  "on-hold" ORDER BY Stories ASC	company_office
SELECT Industry ,  COUNT(*) FROM Companies GROUP BY Industry	company_office
SELECT Industry ,  COUNT(*) FROM Companies GROUP BY Industry	company_office
SELECT Industry FROM Companies GROUP BY Industry ORDER BY COUNT(*) DESC	company_office
SELECT Industry FROM Companies GROUP BY Industry ORDER BY COUNT(*) DESC	company_office
SELECT Industry FROM Companies GROUP BY Industry ORDER BY COUNT(*) DESC LIMIT 1	company_office
SELECT Industry FROM Companies GROUP BY Industry ORDER BY COUNT(*) DESC LIMIT 1	company_office
SELECT name FROM buildings WHERE id NOT IN (SELECT building_id FROM Office_locations)	company_office
SELECT name FROM buildings WHERE id NOT IN (SELECT building_id FROM Office_locations)	company_office
SELECT Industry FROM Companies WHERE Headquarters  =  "USA" INTERSECT SELECT Industry FROM Companies WHERE Headquarters  =  "China"	company_office
SELECT Industry FROM Companies WHERE Headquarters  =  "USA" INTERSECT SELECT Industry FROM Companies WHERE Headquarters  =  "China"	company_office
SELECT count(*) FROM Companies WHERE Industry  =  "Banking" OR Industry  =  "Conglomerate"	company_office
SELECT count(*) FROM Companies WHERE Industry  =  "Banking" OR Industry  =  "Conglomerate"	company_office
SELECT Headquarters FROM Companies GROUP BY Headquarters HAVING COUNT(*)  >  2	company_office
SELECT Headquarters FROM Companies GROUP BY Headquarters HAVING COUNT(*)  >  2	company_office
SELECT count(*) FROM Products	solvency_ii
SELECT Product_Name FROM Products ORDER BY Product_Price ASC	solvency_ii
SELECT Product_Name ,  Product_Type_Code FROM Products	solvency_ii
SELECT Product_Price FROM Products WHERE Product_Name  =  "Dining" OR Product_Name  =  "Trading Policy"	solvency_ii
SELECT avg(Product_Price) FROM Products	solvency_ii
SELECT Product_Name FROM Products ORDER BY Product_Price DESC LIMIT 1	solvency_ii
SELECT Product_Type_Code ,  COUNT(*) FROM Products GROUP BY Product_Type_Code	solvency_ii
SELECT Product_Type_Code FROM Products GROUP BY Product_Type_Code ORDER BY COUNT(*) DESC LIMIT 1	solvency_ii
SELECT Product_Type_Code FROM Products GROUP BY Product_Type_Code HAVING COUNT(*)  >=  2	solvency_ii
SELECT Product_Type_Code FROM Products WHERE Product_Price  >  4500 INTERSECT SELECT Product_Type_Code FROM Products WHERE Product_Price  <  3000	solvency_ii
SELECT Product_Name FROM Products WHERE Product_ID NOT IN (SELECT Product_ID FROM Products_in_Events)	solvency_ii
SELECT count(*) FROM artwork	entertainment_awards
SELECT Name FROM artwork ORDER BY Name ASC	entertainment_awards
SELECT Name FROM artwork WHERE TYPE != "Program Talent Show"	entertainment_awards
SELECT Festival_Name ,  LOCATION FROM festival_detail	entertainment_awards
SELECT Chair_Name FROM festival_detail ORDER BY YEAR ASC	entertainment_awards
SELECT LOCATION FROM festival_detail ORDER BY Num_of_Audience DESC LIMIT 1	entertainment_awards
SELECT Festival_Name FROM festival_detail WHERE YEAR  =  2007	entertainment_awards
SELECT avg(Num_of_Audience) FROM festival_detail	entertainment_awards
SELECT Festival_Name FROM festival_detail ORDER BY YEAR DESC LIMIT 3	entertainment_awards
SELECT TYPE ,  COUNT(*) FROM artwork GROUP BY TYPE	entertainment_awards
SELECT TYPE FROM artwork GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1	entertainment_awards
SELECT YEAR FROM festival_detail GROUP BY YEAR HAVING COUNT(*)  >  1	entertainment_awards
SELECT Name FROM Artwork WHERE Artwork_ID NOT IN (SELECT Artwork_ID FROM nomination)	entertainment_awards
SELECT Num_of_Audience FROM festival_detail WHERE YEAR  =  2008 OR YEAR  =  2010	entertainment_awards
SELECT sum(Num_of_Audience) FROM festival_detail	entertainment_awards
SELECT YEAR FROM festival_detail WHERE LOCATION  =  'United States' INTERSECT SELECT YEAR FROM festival_detail WHERE LOCATION != 'United States'	entertainment_awards
SELECT count(*) FROM premises	customers_campaigns_ecommerce
SELECT DISTINCT premises_type FROM premises	customers_campaigns_ecommerce
SELECT premises_type ,  premise_details FROM premises ORDER BY premises_type	customers_campaigns_ecommerce
SELECT premises_type ,  count(*) FROM premises GROUP BY premises_type	customers_campaigns_ecommerce
SELECT product_category ,  count(*) FROM mailshot_campaigns GROUP BY product_category	customers_campaigns_ecommerce
SELECT customer_name ,  customer_phone FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM mailshot_customers)	customers_campaigns_ecommerce
SELECT outcome_code ,  count(*) FROM mailshot_customers GROUP BY outcome_code	customers_campaigns_ecommerce
SELECT DISTINCT address_type_code FROM customer_addresses	customers_campaigns_ecommerce
SELECT order_shipping_charges ,  customer_id FROM customer_orders WHERE order_status_code  =  'Cancelled' OR order_status_code  =  'Paid'	customers_campaigns_ecommerce
SELECT count(*) FROM COURSE	college_3
SELECT count(*) FROM COURSE	college_3
SELECT count(*) FROM COURSE WHERE Credits  >  2	college_3
SELECT count(*) FROM COURSE WHERE Credits  >  2	college_3
SELECT CName FROM COURSE WHERE Credits  =  1	college_3
SELECT CName FROM COURSE WHERE Credits  =  1	college_3
SELECT CName FROM COURSE WHERE Days  =  "MTW"	college_3
SELECT CName FROM COURSE WHERE Days  =  "MTW"	college_3
SELECT count(*) FROM DEPARTMENT WHERE Division  =  "AS"	college_3
SELECT count(*) FROM DEPARTMENT WHERE Division  =  "AS"	college_3
SELECT DPhone FROM DEPARTMENT WHERE Room  =  268	college_3
SELECT DPhone FROM DEPARTMENT WHERE Room  =  268	college_3
SELECT COUNT(DISTINCT StuID) FROM ENROLLED_IN WHERE Grade  =  "B"	college_3
SELECT COUNT(DISTINCT StuID) FROM ENROLLED_IN WHERE Grade  =  "B"	college_3
SELECT max(gradepoint) ,  min(gradepoint) FROM GRADECONVERSION	college_3
SELECT max(gradepoint) ,  min(gradepoint) FROM GRADECONVERSION	college_3
SELECT DISTINCT Fname FROM STUDENT WHERE Fname LIKE '%a%'	college_3
SELECT DISTINCT Fname FROM STUDENT WHERE Fname LIKE '%a%'	college_3
SELECT Fname ,  Lname FROM FACULTY WHERE sex  =  "M" AND Building  =  "NEB"	college_3
SELECT Fname ,  Lname FROM FACULTY WHERE sex  =  "M" AND Building  =  "NEB"	college_3
SELECT Room FROM FACULTY WHERE Rank  =  "Professor" AND Building  =  "NEB"	college_3
SELECT Room FROM FACULTY WHERE Rank  =  "Professor" AND Building  =  "NEB"	college_3
SELECT DName FROM DEPARTMENT WHERE Building  =  "Mergenthaler"	college_3
SELECT DName FROM DEPARTMENT WHERE Building  =  "Mergenthaler"	college_3
SELECT * FROM COURSE ORDER BY Credits	college_3
SELECT * FROM COURSE ORDER BY Credits	college_3
SELECT CName FROM COURSE ORDER BY Credits	college_3
SELECT CName FROM COURSE ORDER BY Credits	college_3
SELECT Fname FROM STUDENT ORDER BY Age DESC	college_3
SELECT Fname FROM STUDENT ORDER BY Age DESC	college_3
SELECT LName FROM STUDENT WHERE Sex  =  "F" ORDER BY Age DESC	college_3
SELECT LName FROM STUDENT WHERE Sex  =  "F" ORDER BY Age DESC	college_3
SELECT Lname FROM FACULTY WHERE Building  =  "Barton" ORDER BY Lname	college_3
SELECT Lname FROM FACULTY WHERE Building  =  "Barton" ORDER BY Lname	college_3
SELECT Fname FROM FACULTY WHERE Rank  =  "Professor" ORDER BY Fname	college_3
SELECT Fname FROM FACULTY WHERE Rank  =  "Professor" ORDER BY Fname	college_3
SELECT DName FROM DEPARTMENT EXCEPT SELECT T1.DName FROM DEPARTMENT AS T1 JOIN MINOR_IN AS T2 ON T1.DNO  =  T2.DNO	college_3
SELECT DName FROM DEPARTMENT EXCEPT SELECT T1.DName FROM DEPARTMENT AS T1 JOIN MINOR_IN AS T2 ON T1.DNO  =  T2.DNO	college_3
SELECT Rank FROM FACULTY GROUP BY Rank ORDER BY count(*) ASC LIMIT 1	college_3
SELECT Rank FROM FACULTY GROUP BY Rank ORDER BY count(*) ASC LIMIT 1	college_3
SELECT CName FROM COURSE WHERE Credits  =  3 UNION SELECT CName FROM COURSE WHERE Credits  =  1 AND Hours  =  4	college_3
SELECT CName FROM COURSE WHERE Credits  =  3 UNION SELECT CName FROM COURSE WHERE Credits  =  1 AND Hours  =  4	college_3
SELECT DName FROM DEPARTMENT WHERE Division  =  "AS" UNION SELECT DName FROM DEPARTMENT WHERE Division  =  "EN" AND Building  =  "NEB"	college_3
SELECT DName FROM DEPARTMENT WHERE Division  =  "AS" UNION SELECT DName FROM DEPARTMENT WHERE Division  =  "EN" AND Building  =  "NEB"	college_3
SELECT Fname FROM STUDENT WHERE StuID NOT IN (SELECT StuID FROM ENROLLED_IN)	college_3
SELECT Fname FROM STUDENT WHERE StuID NOT IN (SELECT StuID FROM ENROLLED_IN)	college_3
SELECT product_id FROM product_suppliers ORDER BY total_amount_purchased DESC LIMIT 3	department_store
SELECT product_id FROM product_suppliers ORDER BY total_amount_purchased DESC LIMIT 3	department_store
SELECT product_id ,  product_type_code FROM products ORDER BY product_price LIMIT 1	department_store
SELECT product_id ,  product_type_code FROM products ORDER BY product_price LIMIT 1	department_store
SELECT count(DISTINCT product_type_code) FROM products	department_store
SELECT count(DISTINCT product_type_code) FROM products	department_store
SELECT payment_method_code ,  count(*) FROM customers GROUP BY payment_method_code	department_store
SELECT payment_method_code ,  count(*) FROM customers GROUP BY payment_method_code	department_store
SELECT product_id FROM order_items GROUP BY product_id ORDER BY count(*) DESC LIMIT 1	department_store
SELECT product_id FROM order_items GROUP BY product_id ORDER BY count(*) DESC LIMIT 1	department_store
SELECT product_type_code ,  avg(product_price) FROM products GROUP BY product_type_code	department_store
SELECT product_type_code ,  avg(product_price) FROM products GROUP BY product_type_code	department_store
SELECT dept_store_chain_id FROM department_stores GROUP BY dept_store_chain_id ORDER BY count(*) DESC LIMIT 2	department_store
SELECT dept_store_chain_id FROM department_stores GROUP BY dept_store_chain_id ORDER BY count(*) DESC LIMIT 2	department_store
SELECT department_id FROM staff_department_assignments GROUP BY department_id ORDER BY count(*) LIMIT 1	department_store
SELECT department_id FROM staff_department_assignments GROUP BY department_id ORDER BY count(*) LIMIT 1	department_store
SELECT product_type_code ,  max(product_price) ,  min(product_price) FROM products GROUP BY product_type_code	department_store
SELECT product_type_code ,  max(product_price) ,  min(product_price) FROM products GROUP BY product_type_code	department_store
SELECT product_type_code FROM products GROUP BY product_type_code HAVING avg(product_price)  >  (SELECT avg(product_price) FROM products)	department_store
SELECT product_type_code FROM products GROUP BY product_type_code HAVING avg(product_price)  >  (SELECT avg(product_price) FROM products)	department_store
SELECT product_name ,  product_id FROM products WHERE product_price BETWEEN 600 AND 700	department_store
SELECT product_name ,  product_id FROM products WHERE product_price BETWEEN 600 AND 700	department_store
SELECT DISTINCT customer_id FROM Customer_Orders WHERE order_date  >  (SELECT min(order_date) FROM Customer_Orders WHERE order_status_code  =  "Cancelled")	department_store
SELECT DISTINCT customer_id FROM Customer_Orders WHERE order_date  >  (SELECT min(order_date) FROM Customer_Orders WHERE order_status_code  =  "Cancelled")	department_store
SELECT staff_id FROM Staff_Department_Assignments WHERE date_assigned_to  <  (SELECT max(date_assigned_to) FROM Staff_Department_Assignments WHERE job_title_code  =  'Clerical Staff')	department_store
SELECT staff_id FROM Staff_Department_Assignments WHERE date_assigned_to  <  (SELECT max(date_assigned_to) FROM Staff_Department_Assignments WHERE job_title_code  =  'Clerical Staff')	department_store
SELECT customer_name ,  customer_id FROM customers WHERE customer_address LIKE "%TN%"	department_store
SELECT customer_name ,  customer_id FROM customers WHERE customer_address LIKE "%TN%"	department_store
SELECT customer_phone FROM customers UNION SELECT supplier_phone FROM suppliers	department_store
SELECT customer_phone FROM customers UNION SELECT supplier_phone FROM suppliers	department_store
SELECT product_id FROM Order_Items GROUP BY product_id HAVING count(*)  >  3 UNION SELECT product_id FROM Product_Suppliers GROUP BY product_id HAVING sum(total_amount_purchased)  >  80000	department_store
SELECT product_id FROM Order_Items GROUP BY product_id HAVING count(*)  >  3 UNION SELECT product_id FROM Product_Suppliers GROUP BY product_id HAVING sum(total_amount_purchased)  >  80000	department_store
SELECT product_id ,  product_name FROM products WHERE product_price  <  600 OR product_price  >  900	department_store
SELECT product_id ,  product_name FROM products WHERE product_price  <  600 OR product_price  >  900	department_store
SELECT supplier_id FROM Product_Suppliers GROUP BY supplier_id HAVING avg(total_amount_purchased)  >  50000 OR avg(total_amount_purchased)  <  30000	department_store
SELECT supplier_id FROM Product_Suppliers GROUP BY supplier_id HAVING avg(total_amount_purchased)  >  50000 OR avg(total_amount_purchased)  <  30000	department_store
SELECT avg(total_amount_purchased) ,  avg(total_value_purchased) FROM Product_Suppliers WHERE supplier_id  =  (SELECT supplier_id FROM Product_Suppliers GROUP BY supplier_id ORDER BY count(*) DESC LIMIT 1)	department_store
SELECT avg(total_amount_purchased) ,  avg(total_value_purchased) FROM Product_Suppliers WHERE supplier_id  =  (SELECT supplier_id FROM Product_Suppliers GROUP BY supplier_id ORDER BY count(*) DESC LIMIT 1)	department_store
SELECT max(customer_code) ,  min(customer_code) FROM Customers	department_store
SELECT max(customer_code) ,  min(customer_code) FROM Customers	department_store
SELECT max(product_price) ,  min(product_price) ,  product_type_code FROM products GROUP BY product_type_code ORDER BY product_type_code	department_store
SELECT max(product_price) ,  min(product_price) ,  product_type_code FROM products GROUP BY product_type_code ORDER BY product_type_code	department_store
SELECT order_id ,  customer_id FROM customer_orders WHERE order_status_code  =   "Cancelled" ORDER BY order_date	department_store
SELECT order_id ,  customer_id FROM customer_orders WHERE order_status_code  =   "Cancelled" ORDER BY order_date	department_store
SELECT customer_id ,  customer_name FROM customers WHERE customer_address LIKE "%WY%" AND payment_method_code != "Credit Card"	department_store
SELECT customer_id ,  customer_name FROM customers WHERE customer_address LIKE "%WY%" AND payment_method_code != "Credit Card"	department_store
SELECT avg(product_price) FROM products WHERE product_type_code  =  'Clothes'	department_store
SELECT avg(product_price) FROM products WHERE product_type_code  =  'Clothes'	department_store
SELECT product_name FROM products WHERE product_type_code  =  'Hardware' ORDER BY product_price DESC LIMIT 1	department_store
SELECT product_name FROM products WHERE product_type_code  =  'Hardware' ORDER BY product_price DESC LIMIT 1	department_store
SELECT count(*) FROM aircraft	aircraft
SELECT count(*) FROM aircraft	aircraft
SELECT Description FROM aircraft	aircraft
SELECT Description FROM aircraft	aircraft
SELECT avg(International_Passengers) FROM airport	aircraft
SELECT avg(International_Passengers) FROM airport	aircraft
SELECT International_Passengers ,  Domestic_Passengers FROM airport WHERE Airport_Name  =  "London Heathrow"	aircraft
SELECT International_Passengers ,  Domestic_Passengers FROM airport WHERE Airport_Name  =  "London Heathrow"	aircraft
SELECT sum(Domestic_Passengers) FROM airport WHERE Airport_Name LIKE "%London%"	aircraft
SELECT sum(Domestic_Passengers) FROM airport WHERE Airport_Name LIKE "%London%"	aircraft
SELECT max(Transit_Passengers) ,  min(Transit_Passengers) FROM airport	aircraft
SELECT max(Transit_Passengers) ,  min(Transit_Passengers) FROM airport	aircraft
SELECT Name FROM pilot WHERE Age  >=  25	aircraft
SELECT Name FROM pilot WHERE Age  >=  25	aircraft
SELECT Name FROM pilot ORDER BY Name ASC	aircraft
SELECT Name FROM pilot ORDER BY Name ASC	aircraft
SELECT Name FROM pilot WHERE Age  <=  30 ORDER BY Name DESC	aircraft
SELECT Name FROM pilot WHERE Age  <=  30 ORDER BY Name DESC	aircraft
SELECT Name FROM pilot ORDER BY Age DESC	aircraft
SELECT Name FROM pilot ORDER BY Age DESC	aircraft
SELECT Aircraft FROM aircraft WHERE Aircraft_ID NOT IN (SELECT Winning_Aircraft FROM MATCH)	aircraft
SELECT Aircraft FROM aircraft WHERE Aircraft_ID NOT IN (SELECT Winning_Aircraft FROM MATCH)	aircraft
SELECT * FROM airport ORDER BY International_Passengers DESC LIMIT 1	aircraft
SELECT * FROM airport ORDER BY International_Passengers DESC LIMIT 1	aircraft
SELECT name FROM pilot WHERE pilot_id NOT IN (SELECT Winning_Pilot  FROM MATCH WHERE country  =  'Australia')	aircraft
SELECT name FROM pilot WHERE pilot_id NOT IN (SELECT Winning_Pilot  FROM MATCH WHERE country  =  'Australia')	aircraft
SELECT count(DISTINCT Status_of_Thing_Code) FROM Timed_Status_of_Things	local_govt_and_lot
SELECT organization_id FROM organizations EXCEPT SELECT parent_organization_id FROM organizations	local_govt_and_lot
SELECT max(date_moved_in) FROM Residents	local_govt_and_lot
SELECT other_details FROM Residents WHERE other_details LIKE '%Miss%'	local_govt_and_lot
SELECT customer_event_id ,  date_moved_in ,  property_id FROM customer_events	local_govt_and_lot
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_events )	local_govt_and_lot
SELECT DISTINCT date_moved_in FROM residents	local_govt_and_lot
SELECT count(*) FROM school	school_player
SELECT count(*) FROM school	school_player
SELECT LOCATION FROM school ORDER BY Enrollment ASC	school_player
SELECT LOCATION FROM school ORDER BY Enrollment ASC	school_player
SELECT LOCATION FROM school ORDER BY Founded DESC	school_player
SELECT LOCATION FROM school ORDER BY Founded DESC	school_player
SELECT Enrollment FROM school WHERE Denomination != "Catholic"	school_player
SELECT Enrollment FROM school WHERE Denomination != "Catholic"	school_player
SELECT avg(Enrollment) FROM school	school_player
SELECT avg(Enrollment) FROM school	school_player
SELECT Team FROM player ORDER BY Team ASC	school_player
SELECT Team FROM player ORDER BY Team ASC	school_player
SELECT count(DISTINCT POSITION) FROM player	school_player
SELECT count(DISTINCT POSITION) FROM player	school_player
SELECT Team FROM player ORDER BY Age DESC LIMIT 1	school_player
SELECT Team FROM player ORDER BY Age DESC LIMIT 1	school_player
SELECT Team FROM player ORDER BY Age DESC LIMIT 5	school_player
SELECT Team FROM player ORDER BY Age DESC LIMIT 5	school_player
SELECT Denomination ,  COUNT(*) FROM school GROUP BY Denomination	school_player
SELECT Denomination ,  COUNT(*) FROM school GROUP BY Denomination	school_player
SELECT Denomination ,  COUNT(*) FROM school GROUP BY Denomination ORDER BY COUNT(*) DESC	school_player
SELECT Denomination ,  COUNT(*) FROM school GROUP BY Denomination ORDER BY COUNT(*) DESC	school_player
SELECT School_Colors FROM school ORDER BY Enrollment DESC LIMIT 1	school_player
SELECT School_Colors FROM school ORDER BY Enrollment DESC LIMIT 1	school_player
SELECT LOCATION FROM school WHERE School_ID NOT IN (SELECT School_ID FROM Player)	school_player
SELECT LOCATION FROM school WHERE School_ID NOT IN (SELECT School_ID FROM Player)	school_player
SELECT Denomination FROM school WHERE Founded  <  1890 INTERSECT SELECT Denomination FROM school WHERE Founded  >  1900	school_player
SELECT Denomination FROM school WHERE Founded  <  1890 INTERSECT SELECT Denomination FROM school WHERE Founded  >  1900	school_player
SELECT Nickname FROM school_details WHERE Division != "Division 1"	school_player
SELECT Nickname FROM school_details WHERE Division != "Division 1"	school_player
SELECT Denomination FROM school GROUP BY Denomination HAVING COUNT(*)  >  1	school_player
SELECT Denomination FROM school GROUP BY Denomination HAVING COUNT(*)  >  1	school_player
SELECT DISTINCT District_name FROM district ORDER BY city_area DESC	store_product
SELECT DISTINCT District_name FROM district ORDER BY city_area DESC	store_product
SELECT max_page_size FROM product GROUP BY max_page_size HAVING count(*)  >  3	store_product
SELECT max_page_size FROM product GROUP BY max_page_size HAVING count(*)  >  3	store_product
SELECT District_name ,  City_Population FROM district WHERE City_Population BETWEEN 200000 AND 2000000	store_product
SELECT District_name ,  City_Population FROM district WHERE City_Population BETWEEN 200000 AND 2000000	store_product
SELECT district_name FROM district WHERE city_area  >  10 OR City_Population  >  100000	store_product
SELECT district_name FROM district WHERE city_area  >  10 OR City_Population  >  100000	store_product
SELECT district_name FROM district ORDER BY city_population DESC LIMIT 1	store_product
SELECT district_name FROM district ORDER BY city_population DESC LIMIT 1	store_product
SELECT district_name FROM district ORDER BY city_area ASC LIMIT 1	store_product
SELECT district_name FROM district ORDER BY city_area ASC LIMIT 1	store_product
SELECT sum(city_population) FROM district ORDER BY city_area DESC LIMIT 3	store_product
SELECT sum(city_population) FROM district ORDER BY city_area DESC LIMIT 3	store_product
SELECT TYPE ,  count(*) FROM store GROUP BY TYPE	store_product
SELECT TYPE ,  count(*) FROM store GROUP BY TYPE	store_product
SELECT avg(pages_per_minute_color) FROM product	store_product
SELECT avg(pages_per_minute_color) FROM product	store_product
SELECT product FROM product WHERE max_page_size  =  "A4" AND pages_per_minute_color  <  5	store_product
SELECT product FROM product WHERE max_page_size  =  "A4" AND pages_per_minute_color  <  5	store_product
SELECT product FROM product WHERE max_page_size  =  "A4" OR pages_per_minute_color  <  5	store_product
SELECT product FROM product WHERE max_page_size  =  "A4" OR pages_per_minute_color  <  5	store_product
SELECT product FROM product WHERE product LIKE "%Scanner%"	store_product
SELECT product FROM product WHERE product LIKE "%Scanner%"	store_product
SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1	store_product
SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1	store_product
SELECT product FROM product WHERE product != (SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1)	store_product
SELECT product FROM product WHERE product != (SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1)	store_product
SELECT sum(city_population) FROM district WHERE city_area  >  (SELECT avg(city_area) FROM district)	store_product
SELECT sum(city_population) FROM district WHERE city_area  >  (SELECT avg(city_area) FROM district)	store_product
SELECT sum(enr) FROM College	soccer_2
SELECT sum(enr) FROM College	soccer_2
SELECT avg(enr) FROM College	soccer_2
SELECT avg(enr) FROM College	soccer_2
SELECT count(*) FROM College	soccer_2
SELECT count(*) FROM College	soccer_2
SELECT count(*) FROM Player WHERE HS  >  1000	soccer_2
SELECT count(*) FROM Player WHERE HS  >  1000	soccer_2
SELECT count(*) FROM College WHERE enr  >  15000	soccer_2
SELECT count(*) FROM College WHERE enr  >  15000	soccer_2
SELECT avg(HS) FROM Player	soccer_2
SELECT avg(HS) FROM Player	soccer_2
SELECT pName ,  HS FROM Player WHERE HS  <  1500	soccer_2
SELECT pName ,  HS FROM Player WHERE HS  <  1500	soccer_2
SELECT count(DISTINCT cName) FROM tryout	soccer_2
SELECT count(DISTINCT cName) FROM tryout	soccer_2
SELECT count(DISTINCT pPos) FROM tryout	soccer_2
SELECT count(DISTINCT pPos) FROM tryout	soccer_2
SELECT count(*) FROM tryout WHERE decision  =  'yes'	soccer_2
SELECT count(*) FROM tryout WHERE decision  =  'yes'	soccer_2
SELECT count(*) FROM tryout WHERE pPos  =  'goalie'	soccer_2
SELECT count(*) FROM tryout WHERE pPos  =  'goalie'	soccer_2
SELECT avg(HS) ,  max(HS) ,  min(HS) FROM Player	soccer_2
SELECT avg(HS) ,  max(HS) ,  min(HS) FROM Player	soccer_2
SELECT avg(enr) FROM College WHERE state  =  'FL'	soccer_2
SELECT avg(enr) FROM College WHERE state  =  'FL'	soccer_2
SELECT pName FROM Player WHERE HS BETWEEN 500 AND 1500	soccer_2
SELECT pName FROM Player WHERE HS BETWEEN 500 AND 1500	soccer_2
SELECT DISTINCT pName FROM Player WHERE pName LIKE '%a%'	soccer_2
SELECT DISTINCT pName FROM Player WHERE pName LIKE '%a%'	soccer_2
SELECT cName ,  enr FROM College WHERE enr  >  10000 AND state = "LA"	soccer_2
SELECT cName ,  enr FROM College WHERE enr  >  10000 AND state = "LA"	soccer_2
SELECT * FROM College ORDER BY enr	soccer_2
SELECT * FROM College ORDER BY enr	soccer_2
SELECT cName FROM College WHERE enr  >  18000 ORDER BY cName	soccer_2
SELECT cName FROM College WHERE enr  >  18000 ORDER BY cName	soccer_2
SELECT pName FROM Player WHERE yCard  =  'yes' ORDER BY HS DESC	soccer_2
SELECT pName FROM Player WHERE yCard  =  'yes' ORDER BY HS DESC	soccer_2
SELECT DISTINCT cName FROM tryout ORDER BY cName	soccer_2
SELECT DISTINCT cName FROM tryout ORDER BY cName	soccer_2
SELECT pPos FROM tryout GROUP BY pPos ORDER BY count(*) DESC LIMIT 1	soccer_2
SELECT pPos FROM tryout GROUP BY pPos ORDER BY count(*) DESC LIMIT 1	soccer_2
SELECT count(*) ,  cName FROM tryout GROUP BY cName ORDER BY count(*) DESC	soccer_2
SELECT count(*) ,  cName FROM tryout GROUP BY cName ORDER BY count(*) DESC	soccer_2
SELECT cName FROM college ORDER BY enr DESC LIMIT 3	soccer_2
SELECT cName FROM college ORDER BY enr DESC LIMIT 3	soccer_2
SELECT cName ,  state ,  min(enr) FROM college GROUP BY state	soccer_2
SELECT cName ,  state ,  min(enr) FROM college GROUP BY state	soccer_2
SELECT cName FROM  tryout WHERE decision  =  'yes' AND pPos  =  'goalie'	soccer_2
SELECT cName FROM  tryout WHERE decision  =  'yes' AND pPos  =  'goalie'	soccer_2
SELECT cName FROM College WHERE enr  <  13000 AND state = "AZ" UNION SELECT cName FROM College WHERE enr  >  15000 AND state = "LA"	soccer_2
SELECT cName FROM College WHERE enr  <  13000 AND state = "AZ" UNION SELECT cName FROM College WHERE enr  >  15000 AND state = "LA"	soccer_2
SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid'	soccer_2
SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid'	soccer_2
SELECT COUNT(*) FROM (SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid')	soccer_2
SELECT COUNT(*) FROM (SELECT cName FROM  tryout WHERE pPos  =  'goalie' INTERSECT SELECT cName FROM  tryout WHERE pPos  =  'mid')	soccer_2
SELECT cName FROM  tryout WHERE pPos  =  'mid' EXCEPT SELECT cName FROM  tryout WHERE pPos  =  'goalie'	soccer_2
SELECT cName FROM  tryout WHERE pPos  =  'mid' EXCEPT SELECT cName FROM  tryout WHERE pPos  =  'goalie'	soccer_2
SELECT COUNT(*) FROM (SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'mid' EXCEPT SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'goalie')	soccer_2
SELECT COUNT(*) FROM (SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'mid' EXCEPT SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'goalie')	soccer_2
SELECT DISTINCT state FROM college WHERE enr  <  (SELECT max(enr) FROM college)	soccer_2
SELECT DISTINCT state FROM college WHERE enr  <  (SELECT max(enr) FROM college)	soccer_2
SELECT DISTINCT cName FROM college WHERE enr  >  (SELECT min(enr) FROM college WHERE state  =  'FL')	soccer_2
SELECT DISTINCT cName FROM college WHERE enr  >  (SELECT min(enr) FROM college WHERE state  =  'FL')	soccer_2
SELECT cName FROM college WHERE enr  >  (SELECT max(enr) FROM college WHERE state  =  'FL')	soccer_2
SELECT cName FROM college WHERE enr  >  (SELECT max(enr) FROM college WHERE state  =  'FL')	soccer_2
SELECT sum(enr) FROM college WHERE cName NOT IN (SELECT cName FROM tryout WHERE pPos  =  "goalie")	soccer_2
SELECT sum(enr) FROM college WHERE cName NOT IN (SELECT cName FROM tryout WHERE pPos  =  "goalie")	soccer_2
SELECT count(DISTINCT state) FROM college WHERE enr  >  (SELECT avg(enr) FROM college)	soccer_2
SELECT count(DISTINCT state) FROM college WHERE enr  >  (SELECT avg(enr) FROM college)	soccer_2
SELECT count(DISTINCT state) FROM college WHERE enr  <  (SELECT avg(enr) FROM college)	soccer_2
SELECT count(DISTINCT state) FROM college WHERE enr  <  (SELECT avg(enr) FROM college)	soccer_2
SELECT count(*) FROM device	device
SELECT count(*) FROM device	device
SELECT Carrier FROM device ORDER BY Carrier ASC	device
SELECT Carrier FROM device ORDER BY Carrier ASC	device
SELECT Carrier FROM device WHERE Software_Platform != 'Android'	device
SELECT Carrier FROM device WHERE Software_Platform != 'Android'	device
SELECT Shop_Name FROM shop ORDER BY Open_Year ASC	device
SELECT Shop_Name FROM shop ORDER BY Open_Year ASC	device
SELECT avg(Quantity) FROM stock	device
SELECT avg(Quantity) FROM stock	device
SELECT Shop_Name ,  LOCATION FROM shop ORDER BY Shop_Name ASC	device
SELECT Shop_Name ,  LOCATION FROM shop ORDER BY Shop_Name ASC	device
SELECT count(DISTINCT Software_Platform) FROM device	device
SELECT count(DISTINCT Software_Platform) FROM device	device
SELECT Open_Date ,  Open_Year FROM shop WHERE Shop_Name  =  "Apple"	device
SELECT Open_Date ,  Open_Year FROM shop WHERE Shop_Name  =  "Apple"	device
SELECT Shop_Name FROM shop ORDER BY Open_Year DESC LIMIT 1	device
SELECT Shop_Name FROM shop ORDER BY Open_Year DESC LIMIT 1	device
SELECT Software_Platform ,  COUNT(*) FROM device GROUP BY Software_Platform	device
SELECT Software_Platform ,  COUNT(*) FROM device GROUP BY Software_Platform	device
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC	device
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC	device
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC LIMIT 1	device
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC LIMIT 1	device
SELECT Shop_Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM stock)	device
SELECT Shop_Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM stock)	device
SELECT LOCATION FROM shop WHERE Open_Year  >  2012 INTERSECT SELECT LOCATION FROM shop WHERE Open_Year  <  2008	device
SELECT LOCATION FROM shop WHERE Open_Year  >  2012 INTERSECT SELECT LOCATION FROM shop WHERE Open_Year  <  2008	device
SELECT Carrier FROM device WHERE Device_ID NOT IN (SELECT Device_ID FROM stock)	device
SELECT Carrier FROM device WHERE Device_ID NOT IN (SELECT Device_ID FROM stock)	device
SELECT count(*) FROM BOOKINGS	cre_Drama_Workshop_Groups
SELECT count(*) FROM BOOKINGS	cre_Drama_Workshop_Groups
SELECT Order_Date FROM BOOKINGS	cre_Drama_Workshop_Groups
SELECT Order_Date FROM BOOKINGS	cre_Drama_Workshop_Groups
SELECT Planned_Delivery_Date ,  Actual_Delivery_Date FROM BOOKINGS	cre_Drama_Workshop_Groups
SELECT Planned_Delivery_Date ,  Actual_Delivery_Date FROM BOOKINGS	cre_Drama_Workshop_Groups
SELECT count(*) FROM CUSTOMERS	cre_Drama_Workshop_Groups
SELECT count(*) FROM CUSTOMERS	cre_Drama_Workshop_Groups
SELECT Customer_Phone ,  Customer_Email_Address FROM CUSTOMERS WHERE Customer_Name  =  "Harold"	cre_Drama_Workshop_Groups
SELECT Customer_Phone ,  Customer_Email_Address FROM CUSTOMERS WHERE Customer_Name  =  "Harold"	cre_Drama_Workshop_Groups
SELECT Store_Name FROM Drama_Workshop_Groups	cre_Drama_Workshop_Groups
SELECT Store_Name FROM Drama_Workshop_Groups	cre_Drama_Workshop_Groups
SELECT min(Order_Quantity) ,  avg(Order_Quantity) ,  max(Order_Quantity) FROM INVOICES	cre_Drama_Workshop_Groups
SELECT min(Order_Quantity) ,  avg(Order_Quantity) ,  max(Order_Quantity) FROM INVOICES	cre_Drama_Workshop_Groups
SELECT DISTINCT payment_method_code FROM INVOICES	cre_Drama_Workshop_Groups
SELECT DISTINCT payment_method_code FROM INVOICES	cre_Drama_Workshop_Groups
SELECT Marketing_Region_Descriptrion FROM Marketing_Regions WHERE Marketing_Region_Name  =  "China"	cre_Drama_Workshop_Groups
SELECT Marketing_Region_Descriptrion FROM Marketing_Regions WHERE Marketing_Region_Name  =  "China"	cre_Drama_Workshop_Groups
SELECT DISTINCT Product_Name FROM PRODUCTS WHERE Product_Price  >  (SELECT avg(Product_Price) FROM PRODUCTS)	cre_Drama_Workshop_Groups
SELECT DISTINCT Product_Name FROM PRODUCTS WHERE Product_Price  >  (SELECT avg(Product_Price) FROM PRODUCTS)	cre_Drama_Workshop_Groups
SELECT Product_Name FROM PRODUCTS ORDER BY Product_Price DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT Product_Name FROM PRODUCTS ORDER BY Product_Price DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT Product_Name FROM Products ORDER BY Product_Price ASC	cre_Drama_Workshop_Groups
SELECT Product_Name FROM Products ORDER BY Product_Price ASC	cre_Drama_Workshop_Groups
SELECT Customer_Phone FROM PERFORMERS WHERE Customer_Name  =  "Ashley"	cre_Drama_Workshop_Groups
SELECT Customer_Phone FROM PERFORMERS WHERE Customer_Name  =  "Ashley"	cre_Drama_Workshop_Groups
SELECT payment_method_code ,  count(*) FROM INVOICES GROUP BY payment_method_code	cre_Drama_Workshop_Groups
SELECT payment_method_code ,  count(*) FROM INVOICES GROUP BY payment_method_code	cre_Drama_Workshop_Groups
SELECT payment_method_code FROM INVOICES GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT payment_method_code FROM INVOICES GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT Product_Name ,  avg(Product_Price) FROM PRODUCTS GROUP BY Product_Name	cre_Drama_Workshop_Groups
SELECT Product_Name ,  avg(Product_Price) FROM PRODUCTS GROUP BY Product_Name	cre_Drama_Workshop_Groups
SELECT Product_Name FROM PRODUCTS GROUP BY Product_Name HAVING avg(Product_Price)  <  1000000	cre_Drama_Workshop_Groups
SELECT Product_Name FROM PRODUCTS GROUP BY Product_Name HAVING avg(Product_Price)  <  1000000	cre_Drama_Workshop_Groups
SELECT count(DISTINCT Currency_Code) FROM Drama_Workshop_Groups	cre_Drama_Workshop_Groups
SELECT count(DISTINCT Currency_Code) FROM Drama_Workshop_Groups	cre_Drama_Workshop_Groups
SELECT Marketing_Region_Code FROM Drama_Workshop_Groups GROUP BY Marketing_Region_Code ORDER BY count(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT Marketing_Region_Code FROM Drama_Workshop_Groups GROUP BY Marketing_Region_Code ORDER BY count(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT Status_Code FROM BOOKINGS GROUP BY Status_Code ORDER BY count(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT Status_Code FROM BOOKINGS GROUP BY Status_Code ORDER BY count(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT Customer_Name FROM Clients EXCEPT SELECT T2.Customer_Name FROM Bookings AS T1 JOIN Clients AS T2 ON T1.Customer_ID  =  T2.Client_ID	cre_Drama_Workshop_Groups
SELECT Customer_Name FROM Clients EXCEPT SELECT T2.Customer_Name FROM Bookings AS T1 JOIN Clients AS T2 ON T1.Customer_ID  =  T2.Client_ID	cre_Drama_Workshop_Groups
SELECT avg(Order_Quantity) FROM Invoices WHERE payment_method_code  =  "MasterCard"	cre_Drama_Workshop_Groups
SELECT avg(Order_Quantity) FROM Invoices WHERE payment_method_code  =  "MasterCard"	cre_Drama_Workshop_Groups
SELECT Product_ID FROM INVOICES GROUP BY Product_ID ORDER BY COUNT(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT Product_ID FROM INVOICES GROUP BY Product_ID ORDER BY COUNT(*) DESC LIMIT 1	cre_Drama_Workshop_Groups
SELECT count(*) FROM Band	music_2
SELECT count(*) FROM Band	music_2
SELECT DISTINCT label FROM Albums	music_2
SELECT DISTINCT label FROM Albums	music_2
SELECT * FROM Albums WHERE YEAR  =  2012	music_2
SELECT * FROM Albums WHERE YEAR  =  2012	music_2
SELECT count(*) FROM Songs	music_2
SELECT count(*) FROM Songs	music_2
SELECT count(DISTINCT label) FROM albums	music_2
SELECT count(DISTINCT label) FROM albums	music_2
SELECT label FROM albums GROUP BY label ORDER BY count(*) DESC LIMIT 1	music_2
SELECT label FROM albums GROUP BY label ORDER BY count(*) DESC LIMIT 1	music_2
SELECT title FROM songs WHERE title LIKE '% the %'	music_2
SELECT title FROM songs WHERE title LIKE '% the %'	music_2
SELECT DISTINCT instrument FROM Instruments	music_2
SELECT DISTINCT instrument FROM Instruments	music_2
SELECT instrument FROM instruments GROUP BY instrument ORDER BY count(*) DESC LIMIT 1	music_2
SELECT instrument FROM instruments GROUP BY instrument ORDER BY count(*) DESC LIMIT 1	music_2
SELECT count(*) FROM instruments WHERE instrument  =  "drums"	music_2
SELECT count(*) FROM instruments WHERE instrument  =  "drums"	music_2
SELECT TYPE FROM vocals GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	music_2
SELECT TYPE FROM vocals GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	music_2
SELECT DISTINCT TYPE FROM vocals	music_2
SELECT DISTINCT TYPE FROM vocals	music_2
SELECT * FROM Albums WHERE YEAR  =  2010	music_2
SELECT * FROM Albums WHERE YEAR  =  2010	music_2
SELECT founder FROM manufacturers WHERE name  =  'Sony'	manufactory_1
SELECT founder FROM manufacturers WHERE name  =  'Sony'	manufactory_1
SELECT headquarter FROM manufacturers WHERE founder  =  'James'	manufactory_1
SELECT headquarter FROM manufacturers WHERE founder  =  'James'	manufactory_1
SELECT name ,  headquarter FROM manufacturers ORDER BY revenue DESC	manufactory_1
SELECT name ,  headquarter FROM manufacturers ORDER BY revenue DESC	manufactory_1
SELECT avg(revenue) ,  max(revenue) ,  sum(revenue) FROM manufacturers	manufactory_1
SELECT avg(revenue) ,  max(revenue) ,  sum(revenue) FROM manufacturers	manufactory_1
SELECT count(*) FROM manufacturers WHERE founder  =  'Andy'	manufactory_1
SELECT count(*) FROM manufacturers WHERE founder  =  'Andy'	manufactory_1
SELECT sum(revenue) FROM manufacturers WHERE headquarter  =  'Austin'	manufactory_1
SELECT sum(revenue) FROM manufacturers WHERE headquarter  =  'Austin'	manufactory_1
SELECT DISTINCT headquarter FROM manufacturers	manufactory_1
SELECT DISTINCT headquarter FROM manufacturers	manufactory_1
SELECT count(*) FROM manufacturers WHERE headquarter  =  'Tokyo' OR headquarter  =  'Beijing'	manufactory_1
SELECT count(*) FROM manufacturers WHERE headquarter  =  'Tokyo' OR headquarter  =  'Beijing'	manufactory_1
SELECT founder FROM manufacturers WHERE name LIKE 'S%'	manufactory_1
SELECT founder FROM manufacturers WHERE name LIKE 'S%'	manufactory_1
SELECT name FROM manufacturers WHERE revenue BETWEEN 100 AND 150	manufactory_1
SELECT name FROM manufacturers WHERE revenue BETWEEN 100 AND 150	manufactory_1
SELECT sum(revenue) FROM manufacturers WHERE Headquarter  =  'Tokyo' OR Headquarter  =  'Taiwan'	manufactory_1
SELECT sum(revenue) FROM manufacturers WHERE Headquarter  =  'Tokyo' OR Headquarter  =  'Taiwan'	manufactory_1
SELECT name ,  headquarter ,  founder FROM manufacturers ORDER BY revenue DESC LIMIT 1	manufactory_1
SELECT name ,  headquarter ,  founder FROM manufacturers ORDER BY revenue DESC LIMIT 1	manufactory_1
SELECT name ,  headquarter ,  revenue FROM manufacturers ORDER BY revenue DESC	manufactory_1
SELECT name ,  headquarter ,  revenue FROM manufacturers ORDER BY revenue DESC	manufactory_1
SELECT name FROM manufacturers WHERE revenue  >  (SELECT avg(revenue) FROM manufacturers)	manufactory_1
SELECT name FROM manufacturers WHERE revenue  >  (SELECT avg(revenue) FROM manufacturers)	manufactory_1
SELECT name FROM manufacturers WHERE revenue  <  (SELECT min(revenue) FROM manufacturers WHERE headquarter  =  'Austin')	manufactory_1
SELECT name FROM manufacturers WHERE revenue  <  (SELECT min(revenue) FROM manufacturers WHERE headquarter  =  'Austin')	manufactory_1
SELECT sum(revenue) FROM manufacturers WHERE revenue  >  (SELECT min(revenue) FROM manufacturers WHERE headquarter  =  'Austin')	manufactory_1
SELECT sum(revenue) FROM manufacturers WHERE revenue  >  (SELECT min(revenue) FROM manufacturers WHERE headquarter  =  'Austin')	manufactory_1
SELECT sum(revenue) ,  founder FROM manufacturers GROUP BY founder	manufactory_1
SELECT sum(revenue) ,  founder FROM manufacturers GROUP BY founder	manufactory_1
SELECT name ,  max(revenue) ,  Headquarter FROM manufacturers GROUP BY Headquarter	manufactory_1
SELECT name ,  max(revenue) ,  Headquarter FROM manufacturers GROUP BY Headquarter	manufactory_1
SELECT sum(revenue) ,  name FROM manufacturers GROUP BY name	manufactory_1
SELECT sum(revenue) ,  name FROM manufacturers GROUP BY name	manufactory_1
SELECT count(DISTINCT name) FROM products WHERE name NOT IN (SELECT T1.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code WHERE T2.name  =  'Sony')	manufactory_1
SELECT count(DISTINCT name) FROM products WHERE name NOT IN (SELECT T1.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code WHERE T2.name  =  'Sony')	manufactory_1
SELECT name FROM manufacturers EXCEPT SELECT T2.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code WHERE T1.name  =  'DVD drive'	manufactory_1
SELECT name FROM manufacturers EXCEPT SELECT T2.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code WHERE T1.name  =  'DVD drive'	manufactory_1
SELECT Name FROM Products	manufactory_1
SELECT Name FROM Products	manufactory_1
SELECT name ,  price FROM products	manufactory_1
SELECT name ,  price FROM products	manufactory_1
SELECT name FROM products WHERE price  <=  200	manufactory_1
SELECT name FROM products WHERE price  <=  200	manufactory_1
SELECT * FROM products WHERE price BETWEEN 60 AND 120	manufactory_1
SELECT * FROM products WHERE price BETWEEN 60 AND 120	manufactory_1
SELECT avg(price) FROM products	manufactory_1
SELECT avg(price) FROM products	manufactory_1
SELECT avg(price) FROM products WHERE Manufacturer  =  2	manufactory_1
SELECT avg(price) FROM products WHERE Manufacturer  =  2	manufactory_1
SELECT count(*) FROM products WHERE price >= 180	manufactory_1
SELECT count(*) FROM products WHERE price >= 180	manufactory_1
SELECT name ,  price FROM products WHERE price  >=  180 ORDER BY price DESC ,  name ASC	manufactory_1
SELECT name ,  price FROM products WHERE price  >=  180 ORDER BY price DESC ,  name ASC	manufactory_1
SELECT AVG(Price) ,  Manufacturer FROM Products GROUP BY Manufacturer	manufactory_1
SELECT AVG(Price) ,  Manufacturer FROM Products GROUP BY Manufacturer	manufactory_1
SELECT name ,  price FROM Products ORDER BY price ASC LIMIT 1	manufactory_1
SELECT name ,  price FROM Products ORDER BY price ASC LIMIT 1	manufactory_1
SELECT code ,  name ,  min(price) FROM products GROUP BY name	manufactory_1
SELECT code ,  name ,  min(price) FROM products GROUP BY name	manufactory_1
SELECT problem_log_id FROM problem_log ORDER BY log_entry_date DESC LIMIT 1	tracking_software_problems
SELECT problem_log_id FROM problem_log ORDER BY log_entry_date DESC LIMIT 1	tracking_software_problems
SELECT problem_log_id ,  problem_id FROM problem_log ORDER BY log_entry_date LIMIT 1	tracking_software_problems
SELECT problem_log_id ,  problem_id FROM problem_log ORDER BY log_entry_date LIMIT 1	tracking_software_problems
SELECT problem_log_id ,  log_entry_date FROM problem_log WHERE problem_id = 10	tracking_software_problems
SELECT problem_log_id ,  log_entry_date FROM problem_log WHERE problem_id = 10	tracking_software_problems
SELECT problem_log_id ,  log_entry_description FROM problem_log	tracking_software_problems
SELECT problem_log_id ,  log_entry_description FROM problem_log	tracking_software_problems
SELECT problem_id FROM problems WHERE date_problem_reported > "1978-06-26"	tracking_software_problems
SELECT problem_id FROM problems WHERE date_problem_reported > "1978-06-26"	tracking_software_problems
SELECT problem_id FROM problems WHERE date_problem_reported < "1978-06-26"	tracking_software_problems
SELECT problem_id FROM problems WHERE date_problem_reported < "1978-06-26"	tracking_software_problems
SELECT DISTINCT product_name FROM product ORDER BY product_name	tracking_software_problems
SELECT DISTINCT product_name FROM product ORDER BY product_name	tracking_software_problems
SELECT DISTINCT product_name FROM product ORDER BY product_id	tracking_software_problems
SELECT DISTINCT product_name FROM product ORDER BY product_id	tracking_software_problems
SELECT count(*) FROM branch WHERE membership_amount  >  (SELECT avg(membership_amount) FROM branch)	shop_membership
SELECT count(*) FROM branch WHERE membership_amount  >  (SELECT avg(membership_amount) FROM branch)	shop_membership
SELECT name ,  address_road ,  city FROM branch ORDER BY open_year	shop_membership
SELECT name ,  address_road ,  city FROM branch ORDER BY open_year	shop_membership
SELECT name FROM branch ORDER BY membership_amount DESC LIMIT 3	shop_membership
SELECT name FROM branch ORDER BY membership_amount DESC LIMIT 3	shop_membership
SELECT DISTINCT city FROM branch WHERE membership_amount  >=  100	shop_membership
SELECT DISTINCT city FROM branch WHERE membership_amount  >=  100	shop_membership
SELECT open_year FROM branch GROUP BY open_year HAVING count(*)  >=  2	shop_membership
SELECT open_year FROM branch GROUP BY open_year HAVING count(*)  >=  2	shop_membership
SELECT min(membership_amount) ,  max(membership_amount) FROM branch WHERE open_year  =  2011 OR city  =  'London'	shop_membership
SELECT min(membership_amount) ,  max(membership_amount) FROM branch WHERE open_year  =  2011 OR city  =  'London'	shop_membership
SELECT city ,  count(*) FROM branch WHERE open_year  <  2010 GROUP BY city	shop_membership
SELECT city ,  count(*) FROM branch WHERE open_year  <  2010 GROUP BY city	shop_membership
SELECT count(DISTINCT LEVEL) FROM member	shop_membership
SELECT count(DISTINCT LEVEL) FROM member	shop_membership
SELECT card_number ,  name ,  hometown FROM member ORDER BY LEVEL DESC	shop_membership
SELECT card_number ,  name ,  hometown FROM member ORDER BY LEVEL DESC	shop_membership
SELECT LEVEL FROM member GROUP BY LEVEL ORDER BY count(*) DESC LIMIT 1	shop_membership
SELECT LEVEL FROM member GROUP BY LEVEL ORDER BY count(*) DESC LIMIT 1	shop_membership
SELECT name FROM member WHERE member_id NOT IN (SELECT member_id FROM membership_register_branch)	shop_membership
SELECT name FROM member WHERE member_id NOT IN (SELECT member_id FROM membership_register_branch)	shop_membership
SELECT name ,  city FROM branch WHERE branch_id NOT IN (SELECT branch_id FROM membership_register_branch)	shop_membership
SELECT name ,  city FROM branch WHERE branch_id NOT IN (SELECT branch_id FROM membership_register_branch)	shop_membership
SELECT city FROM branch WHERE open_year  =  2001 AND membership_amount  >  100	shop_membership
SELECT city FROM branch WHERE open_year  =  2001 AND membership_amount  >  100	shop_membership
SELECT city FROM branch EXCEPT SELECT city FROM branch WHERE membership_amount  >  100	shop_membership
SELECT city FROM branch EXCEPT SELECT city FROM branch WHERE membership_amount  >  100	shop_membership
SELECT card_number FROM member WHERE Hometown LIKE "%Kentucky%"	shop_membership
SELECT card_number FROM member WHERE Hometown LIKE "%Kentucky%"	shop_membership
SELECT count(*) FROM STUDENT	voter_2
SELECT count(*) FROM STUDENT	voter_2
SELECT count(*) FROM VOTING_RECORD	voter_2
SELECT count(*) FROM VOTING_RECORD	voter_2
SELECT count(DISTINCT President_Vote) FROM VOTING_RECORD	voter_2
SELECT count(DISTINCT President_Vote) FROM VOTING_RECORD	voter_2
SELECT max(Age) FROM STUDENT	voter_2
SELECT max(Age) FROM STUDENT	voter_2
SELECT LName FROM STUDENT WHERE Major  =  50	voter_2
SELECT LName FROM STUDENT WHERE Major  =  50	voter_2
SELECT Fname FROM STUDENT WHERE Age  >  22	voter_2
SELECT Fname FROM STUDENT WHERE Age  >  22	voter_2
SELECT Major FROM STUDENT WHERE Sex  =  "M"	voter_2
SELECT Major FROM STUDENT WHERE Sex  =  "M"	voter_2
SELECT avg(Age) FROM STUDENT WHERE Sex  =  "F"	voter_2
SELECT avg(Age) FROM STUDENT WHERE Sex  =  "F"	voter_2
SELECT max(Age) ,  min(Age) FROM STUDENT WHERE Major  =  600	voter_2
SELECT max(Age) ,  min(Age) FROM STUDENT WHERE Major  =  600	voter_2
SELECT Advisor FROM STUDENT WHERE city_code  =  "BAL"	voter_2
SELECT Advisor FROM STUDENT WHERE city_code  =  "BAL"	voter_2
SELECT DISTINCT Secretary_Vote FROM VOTING_RECORD WHERE ELECTION_CYCLE  =  "Fall"	voter_2
SELECT DISTINCT Secretary_Vote FROM VOTING_RECORD WHERE ELECTION_CYCLE  =  "Fall"	voter_2
SELECT DISTINCT PRESIDENT_Vote FROM VOTING_RECORD WHERE Registration_Date  =  "08/30/2015"	voter_2
SELECT DISTINCT PRESIDENT_Vote FROM VOTING_RECORD WHERE Registration_Date  =  "08/30/2015"	voter_2
SELECT DISTINCT Registration_Date ,  Election_Cycle FROM VOTING_RECORD	voter_2
SELECT DISTINCT Registration_Date ,  Election_Cycle FROM VOTING_RECORD	voter_2
SELECT DISTINCT President_Vote ,  VICE_President_Vote FROM VOTING_RECORD	voter_2
SELECT DISTINCT President_Vote ,  VICE_President_Vote FROM VOTING_RECORD	voter_2
SELECT Advisor ,  count(*) FROM STUDENT GROUP BY Advisor	voter_2
SELECT Advisor ,  count(*) FROM STUDENT GROUP BY Advisor	voter_2
SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING COUNT(*)  >  2	voter_2
SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING COUNT(*)  >  2	voter_2
SELECT Major FROM STUDENT GROUP BY Major HAVING COUNT(*)  <  3	voter_2
SELECT Major FROM STUDENT GROUP BY Major HAVING COUNT(*)  <  3	voter_2
SELECT Election_Cycle ,  count(*) FROM VOTING_RECORD GROUP BY Election_Cycle	voter_2
SELECT Election_Cycle ,  count(*) FROM VOTING_RECORD GROUP BY Election_Cycle	voter_2
SELECT Major FROM STUDENT GROUP BY major ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT Major FROM STUDENT GROUP BY major ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT Major FROM STUDENT WHERE Sex  =  "F" GROUP BY major ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT Major FROM STUDENT WHERE Sex  =  "F" GROUP BY major ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT city_code FROM STUDENT GROUP BY city_code ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT city_code FROM STUDENT GROUP BY city_code ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING count(*)  >  2	voter_2
SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING count(*)  >  2	voter_2
SELECT count(*) FROM products	products_gen_characteristics
SELECT count(*) FROM products	products_gen_characteristics
SELECT count(*) FROM ref_colors	products_gen_characteristics
SELECT count(*) FROM ref_colors	products_gen_characteristics
SELECT count(*) FROM CHARACTERISTICS	products_gen_characteristics
SELECT count(*) FROM CHARACTERISTICS	products_gen_characteristics
SELECT product_name ,  typical_buying_price FROM products	products_gen_characteristics
SELECT product_name ,  typical_buying_price FROM products	products_gen_characteristics
SELECT color_description FROM ref_colors	products_gen_characteristics
SELECT color_description FROM ref_colors	products_gen_characteristics
SELECT DISTINCT characteristic_name FROM CHARACTERISTICS	products_gen_characteristics
SELECT DISTINCT characteristic_name FROM CHARACTERISTICS	products_gen_characteristics
SELECT product_name FROM products WHERE product_category_code  =  "Spices"	products_gen_characteristics
SELECT product_name FROM products WHERE product_category_code  =  "Spices"	products_gen_characteristics
SELECT count(*) FROM products WHERE product_category_code  =  "Seeds"	products_gen_characteristics
SELECT count(*) FROM products WHERE product_category_code  =  "Seeds"	products_gen_characteristics
SELECT count(*) FROM products WHERE product_category_code  =  "Spices" AND typical_buying_price  >  1000	products_gen_characteristics
SELECT count(*) FROM products WHERE product_category_code  =  "Spices" AND typical_buying_price  >  1000	products_gen_characteristics
SELECT product_category_code ,  typical_buying_price FROM products WHERE product_name  =  "cumin"	products_gen_characteristics
SELECT product_category_code ,  typical_buying_price FROM products WHERE product_name  =  "cumin"	products_gen_characteristics
SELECT product_category_code FROM products WHERE product_name  =  "flax"	products_gen_characteristics
SELECT product_category_code FROM products WHERE product_name  =  "flax"	products_gen_characteristics
SELECT unit_of_measure FROM ref_product_categories WHERE product_category_code  =  "Herbs"	products_gen_characteristics
SELECT unit_of_measure FROM ref_product_categories WHERE product_category_code  =  "Herbs"	products_gen_characteristics
SELECT product_category_description FROM ref_product_categories WHERE product_category_code  =  "Spices"	products_gen_characteristics
SELECT product_category_description FROM ref_product_categories WHERE product_category_code  =  "Spices"	products_gen_characteristics
SELECT product_category_description ,  unit_of_measure FROM ref_product_categories WHERE product_category_code  =  "Herbs"	products_gen_characteristics
SELECT product_category_description ,  unit_of_measure FROM ref_product_categories WHERE product_category_code  =  "Herbs"	products_gen_characteristics
SELECT characteristic_name ,  other_characteristic_details ,  characteristic_data_type FROM CHARACTERISTICS EXCEPT SELECT t1.characteristic_name ,  t1.other_characteristic_details ,  t1.characteristic_data_type FROM CHARACTERISTICS AS t1 JOIN product_characteristics AS t2 ON t1.characteristic_id  =  t2.characteristic_id	products_gen_characteristics
SELECT characteristic_name ,  other_characteristic_details ,  characteristic_data_type FROM CHARACTERISTICS EXCEPT SELECT t1.characteristic_name ,  t1.other_characteristic_details ,  t1.characteristic_data_type FROM CHARACTERISTICS AS t1 JOIN product_characteristics AS t2 ON t1.characteristic_id  =  t2.characteristic_id	products_gen_characteristics
SELECT count(*) FROM Ref_colors WHERE color_code NOT IN ( SELECT color_code FROM products )	products_gen_characteristics
SELECT count(*) FROM Ref_colors WHERE color_code NOT IN ( SELECT color_code FROM products )	products_gen_characteristics
SELECT count(*) FROM event	swimming
SELECT name FROM event ORDER BY YEAR DESC	swimming
SELECT name FROM event ORDER BY YEAR DESC LIMIT 1	swimming
SELECT count(*) FROM stadium	swimming
SELECT name FROM stadium ORDER BY capacity DESC LIMIT 1	swimming
SELECT name FROM stadium WHERE capacity  <  (SELECT avg(capacity) FROM stadium)	swimming
SELECT country FROM stadium GROUP BY country ORDER BY count(*) DESC LIMIT 1	swimming
SELECT country FROM stadium GROUP BY country HAVING count(*)  <=  3	swimming
SELECT country FROM stadium WHERE capacity  >  60000 INTERSECT SELECT country FROM stadium WHERE capacity  <  50000	swimming
SELECT count(DISTINCT city) FROM stadium WHERE opening_year  <  2006	swimming
SELECT country ,  count(*) FROM stadium GROUP BY country	swimming
SELECT country FROM stadium EXCEPT SELECT country FROM stadium WHERE opening_year  >  2006	swimming
SELECT count(*) FROM stadium WHERE country != 'Russia'	swimming
SELECT name FROM swimmer ORDER BY meter_100	swimming
SELECT count(DISTINCT nationality) FROM swimmer	swimming
SELECT nationality ,  count(*) FROM swimmer GROUP BY nationality HAVING count(*)  >  1	swimming
SELECT meter_200 ,  meter_300 FROM swimmer WHERE nationality  =  'Australia'	swimming
SELECT name FROM stadium WHERE id NOT IN (SELECT stadium_id FROM event)	swimming
SELECT name FROM swimmer WHERE id NOT IN (SELECT swimmer_id FROM record)	swimming
SELECT * FROM swimmer	swimming
SELECT avg(capacity) FROM stadium WHERE opening_year  =  2005	swimming
SELECT count(*) FROM railway	railway
SELECT Builder FROM railway ORDER BY Builder ASC	railway
SELECT Wheels ,  LOCATION FROM railway	railway
SELECT max(LEVEL) FROM manager WHERE Country != "Australia "	railway
SELECT avg(Age) FROM manager	railway
SELECT Name FROM manager ORDER BY LEVEL ASC	railway
SELECT Name ,  Arrival FROM train	railway
SELECT Name FROM manager ORDER BY Age DESC LIMIT 1	railway
SELECT Builder ,  COUNT(*) FROM railway GROUP BY Builder	railway
SELECT Builder FROM railway GROUP BY Builder ORDER BY COUNT(*) DESC LIMIT 1	railway
SELECT LOCATION ,  COUNT(*) FROM railway GROUP BY LOCATION	railway
SELECT LOCATION FROM railway GROUP BY LOCATION HAVING COUNT(*)  >  1	railway
SELECT ObjectNumber FROM railway WHERE Railway_ID NOT IN (SELECT Railway_ID FROM train)	railway
SELECT Country FROM manager WHERE Age  >  50 INTERSECT SELECT Country FROM manager WHERE Age  <  46	railway
SELECT DISTINCT Country FROM manager	railway
SELECT Working_year_starts FROM manager ORDER BY LEVEL DESC	railway
SELECT Country FROM manager WHERE Age  >  50 OR Age  <  46	railway
SELECT count(*) FROM addresses WHERE country  =  'USA'	customers_and_products_contacts
SELECT DISTINCT city FROM addresses	customers_and_products_contacts
SELECT state_province_county ,  count(*) FROM addresses GROUP BY state_province_county	customers_and_products_contacts
SELECT customer_name ,  customer_phone FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_address_history)	customers_and_products_contacts
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*)  >=  2	customers_and_products_contacts
SELECT customer_name ,  customer_phone ,  payment_method_code FROM customers ORDER BY customer_number DESC	customers_and_products_contacts
SELECT min(product_price) ,  max(product_price) ,  avg(product_price) FROM products	customers_and_products_contacts
SELECT count(*) FROM products WHERE product_price  >  (SELECT avg(product_price) FROM products)	customers_and_products_contacts
SELECT product_type_code ,  product_name FROM products WHERE product_price  >  1000 OR product_price  <  500	customers_and_products_contacts
SELECT dorm_name FROM dorm WHERE gender  =  'F'	dorm_1
SELECT dorm_name FROM dorm WHERE gender  =  'F'	dorm_1
SELECT dorm_name FROM dorm WHERE student_capacity  >  300	dorm_1
SELECT dorm_name FROM dorm WHERE student_capacity  >  300	dorm_1
SELECT count(*) FROM student WHERE sex  =  'F' AND age  <  25	dorm_1
SELECT count(*) FROM student WHERE sex  =  'F' AND age  <  25	dorm_1
SELECT fname FROM student WHERE age  >  20	dorm_1
SELECT fname FROM student WHERE age  >  20	dorm_1
SELECT fname FROM student WHERE city_code  =  'PHL' AND age BETWEEN 20 AND 25	dorm_1
SELECT fname FROM student WHERE city_code  =  'PHL' AND age BETWEEN 20 AND 25	dorm_1
SELECT count(*) FROM dorm	dorm_1
SELECT count(*) FROM dorm	dorm_1
SELECT count(*) FROM dorm_amenity	dorm_1
SELECT count(*) FROM dorm_amenity	dorm_1
SELECT sum(student_capacity) FROM dorm	dorm_1
SELECT sum(student_capacity) FROM dorm	dorm_1
SELECT count(*) FROM student	dorm_1
SELECT count(*) FROM student	dorm_1
SELECT avg(age) ,  city_code FROM student GROUP BY city_code	dorm_1
SELECT avg(age) ,  city_code FROM student GROUP BY city_code	dorm_1
SELECT avg(student_capacity) ,  sum(student_capacity) FROM dorm WHERE gender  =  'X'	dorm_1
SELECT avg(student_capacity) ,  sum(student_capacity) FROM dorm WHERE gender  =  'X'	dorm_1
SELECT count(DISTINCT dormid) FROM has_amenity	dorm_1
SELECT count(DISTINCT dormid) FROM has_amenity	dorm_1
SELECT dorm_name FROM dorm WHERE dormid NOT IN (SELECT dormid FROM has_amenity)	dorm_1
SELECT dorm_name FROM dorm WHERE dormid NOT IN (SELECT dormid FROM has_amenity)	dorm_1
SELECT count(DISTINCT gender) FROM dorm	dorm_1
SELECT count(DISTINCT gender) FROM dorm	dorm_1
SELECT student_capacity ,  gender FROM dorm WHERE dorm_name LIKE '%Donor%'	dorm_1
SELECT student_capacity ,  gender FROM dorm WHERE dorm_name LIKE '%Donor%'	dorm_1
SELECT dorm_name ,  gender FROM dorm WHERE student_capacity  >  300 OR student_capacity  <  100	dorm_1
SELECT dorm_name ,  gender FROM dorm WHERE student_capacity  >  300 OR student_capacity  <  100	dorm_1
SELECT count(DISTINCT major) ,  count(DISTINCT city_code) FROM student	dorm_1
SELECT count(DISTINCT major) ,  count(DISTINCT city_code) FROM student	dorm_1
SELECT lname FROM student WHERE sex  =  'F' AND city_code  =  'BAL' UNION SELECT lname FROM student WHERE sex  =  'M' AND age  <  20	dorm_1
SELECT lname FROM student WHERE sex  =  'F' AND city_code  =  'BAL' UNION SELECT lname FROM student WHERE sex  =  'M' AND age  <  20	dorm_1
SELECT dorm_name FROM dorm ORDER BY student_capacity DESC LIMIT 1	dorm_1
SELECT dorm_name FROM dorm ORDER BY student_capacity DESC LIMIT 1	dorm_1
SELECT amenity_name FROM dorm_amenity ORDER BY amenity_name	dorm_1
SELECT amenity_name FROM dorm_amenity ORDER BY amenity_name	dorm_1
SELECT city_code FROM student GROUP BY city_code ORDER BY count(*) DESC LIMIT 1	dorm_1
SELECT city_code FROM student GROUP BY city_code ORDER BY count(*) DESC LIMIT 1	dorm_1
SELECT fname ,  lname FROM student WHERE age  <  (SELECT avg(age) FROM student)	dorm_1
SELECT fname ,  lname FROM student WHERE age  <  (SELECT avg(age) FROM student)	dorm_1
SELECT fname ,  lname FROM student WHERE city_code != 'HKG' ORDER BY age	dorm_1
SELECT fname ,  lname FROM student WHERE city_code != 'HKG' ORDER BY age	dorm_1
SELECT count(*) ,  sum(student_capacity) ,  gender FROM dorm GROUP BY gender	dorm_1
SELECT count(*) ,  sum(student_capacity) ,  gender FROM dorm GROUP BY gender	dorm_1
SELECT avg(age) ,  max(age) ,  sex FROM student GROUP BY sex	dorm_1
SELECT avg(age) ,  max(age) ,  sex FROM student GROUP BY sex	dorm_1
SELECT count(*) ,  major FROM student GROUP BY major	dorm_1
SELECT count(*) ,  major FROM student GROUP BY major	dorm_1
SELECT count(*) ,  avg(age) ,  city_code FROM student GROUP BY city_code	dorm_1
SELECT count(*) ,  avg(age) ,  city_code FROM student GROUP BY city_code	dorm_1
SELECT count(*) ,  avg(age) ,  city_code FROM student WHERE sex  =  'M' GROUP BY city_code	dorm_1
SELECT count(*) ,  avg(age) ,  city_code FROM student WHERE sex  =  'M' GROUP BY city_code	dorm_1
SELECT count(*) ,  city_code FROM student GROUP BY city_code HAVING count(*)  >  1	dorm_1
SELECT count(*) ,  city_code FROM student GROUP BY city_code HAVING count(*)  >  1	dorm_1
SELECT fname ,  lname FROM student WHERE major != (SELECT major FROM student GROUP BY major ORDER BY count(*) DESC LIMIT 1)	dorm_1
SELECT fname ,  lname FROM student WHERE major != (SELECT major FROM student GROUP BY major ORDER BY count(*) DESC LIMIT 1)	dorm_1
SELECT count(*) ,  sex FROM student WHERE age  >  (SELECT avg(age) FROM student) GROUP BY sex	dorm_1
SELECT count(*) ,  sex FROM student WHERE age  >  (SELECT avg(age) FROM student) GROUP BY sex	dorm_1
SELECT dorm_name FROM dorm EXCEPT SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T3.amenity_name  =  'TV Lounge'	dorm_1
SELECT dorm_name FROM dorm EXCEPT SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T3.amenity_name  =  'TV Lounge'	dorm_1
SELECT count(*) FROM customers	customer_complaints
SELECT count(*) FROM customers	customer_complaints
SELECT email_address ,  phone_number FROM customers ORDER BY email_address ,  phone_number	customer_complaints
SELECT email_address ,  phone_number FROM customers ORDER BY email_address ,  phone_number	customer_complaints
SELECT town_city FROM customers WHERE customer_type_code  =  "Good Credit Rating" GROUP BY town_city ORDER BY count(*) LIMIT 1	customer_complaints
SELECT town_city FROM customers WHERE customer_type_code  =  "Good Credit Rating" GROUP BY town_city ORDER BY count(*) LIMIT 1	customer_complaints
SELECT email_address ,  phone_number FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM complaints)	customer_complaints
SELECT email_address ,  phone_number FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM complaints)	customer_complaints
SELECT phone_number FROM customers UNION SELECT phone_number FROM staff	customer_complaints
SELECT phone_number FROM customers UNION SELECT phone_number FROM staff	customer_complaints
SELECT product_description FROM products WHERE product_name  =  "Chocolate"	customer_complaints
SELECT product_description FROM products WHERE product_name  =  "Chocolate"	customer_complaints
SELECT product_name ,  product_category_code FROM products ORDER BY product_price DESC LIMIT 1	customer_complaints
SELECT product_name ,  product_category_code FROM products ORDER BY product_price DESC LIMIT 1	customer_complaints
SELECT product_price FROM products WHERE product_id NOT IN (SELECT product_id FROM complaints)	customer_complaints
SELECT product_price FROM products WHERE product_id NOT IN (SELECT product_id FROM complaints)	customer_complaints
SELECT avg(product_price) ,  product_category_code FROM products GROUP BY product_category_code	customer_complaints
SELECT avg(product_price) ,  product_category_code FROM products GROUP BY product_category_code	customer_complaints
SELECT complaint_status_code FROM complaints GROUP BY complaint_status_code HAVING count(*)  >  3	customer_complaints
SELECT complaint_status_code FROM complaints GROUP BY complaint_status_code HAVING count(*)  >  3	customer_complaints
SELECT last_name FROM staff WHERE email_address LIKE "%wrau%"	customer_complaints
SELECT last_name FROM staff WHERE email_address LIKE "%wrau%"	customer_complaints
SELECT count(*) FROM customers GROUP BY customer_type_code ORDER BY count(*) DESC LIMIT 1	customer_complaints
SELECT count(*) FROM customers GROUP BY customer_type_code ORDER BY count(*) DESC LIMIT 1	customer_complaints
SELECT count(DISTINCT complaint_type_code) FROM complaints	customer_complaints
SELECT count(DISTINCT complaint_type_code) FROM complaints	customer_complaints
SELECT address_line_1 ,  address_line_2 FROM customers WHERE email_address  =  "vbogisich@example.org"	customer_complaints
SELECT address_line_1 ,  address_line_2 FROM customers WHERE email_address  =  "vbogisich@example.org"	customer_complaints
SELECT complaint_status_code ,  count(*) FROM complaints WHERE complaint_type_code  =  "Product Failure" GROUP BY complaint_status_code	customer_complaints
SELECT complaint_status_code ,  count(*) FROM complaints WHERE complaint_type_code  =  "Product Failure" GROUP BY complaint_status_code	customer_complaints
SELECT state FROM customers GROUP BY state ORDER BY count(*) LIMIT 1	customer_complaints
SELECT state FROM customers GROUP BY state ORDER BY count(*) LIMIT 1	customer_complaints
SELECT count(*) FROM submission	workshop_paper
SELECT count(*) FROM submission	workshop_paper
SELECT Author FROM submission ORDER BY Scores ASC	workshop_paper
SELECT Author FROM submission ORDER BY Scores ASC	workshop_paper
SELECT Author ,  College FROM submission	workshop_paper
SELECT Author ,  College FROM submission	workshop_paper
SELECT Author FROM submission WHERE College  =  "Florida" OR College  =  "Temple"	workshop_paper
SELECT Author FROM submission WHERE College  =  "Florida" OR College  =  "Temple"	workshop_paper
SELECT avg(Scores) FROM submission	workshop_paper
SELECT avg(Scores) FROM submission	workshop_paper
SELECT Author FROM submission ORDER BY Scores DESC LIMIT 1	workshop_paper
SELECT Author FROM submission ORDER BY Scores DESC LIMIT 1	workshop_paper
SELECT College ,  COUNT(*) FROM submission GROUP BY College	workshop_paper
SELECT College ,  COUNT(*) FROM submission GROUP BY College	workshop_paper
SELECT College FROM submission GROUP BY College ORDER BY COUNT(*) DESC LIMIT 1	workshop_paper
SELECT College FROM submission GROUP BY College ORDER BY COUNT(*) DESC LIMIT 1	workshop_paper
SELECT College FROM submission WHERE Scores  >  90 INTERSECT SELECT College FROM submission WHERE Scores  <  80	workshop_paper
SELECT College FROM submission WHERE Scores  >  90 INTERSECT SELECT College FROM submission WHERE Scores  <  80	workshop_paper
SELECT Date ,  Venue FROM workshop ORDER BY Venue	workshop_paper
SELECT Date ,  Venue FROM workshop ORDER BY Venue	workshop_paper
SELECT Author FROM submission WHERE Submission_ID NOT IN (SELECT Submission_ID FROM acceptance)	workshop_paper
SELECT Author FROM submission WHERE Submission_ID NOT IN (SELECT Submission_ID FROM acceptance)	workshop_paper
SELECT count(*) FROM INVESTORS	tracking_share_transactions
SELECT Investor_details FROM INVESTORS	tracking_share_transactions
SELECT DISTINCT lot_details FROM LOTS	tracking_share_transactions
SELECT max(amount_of_transaction) FROM TRANSACTIONS	tracking_share_transactions
SELECT date_of_transaction ,  share_count FROM TRANSACTIONS	tracking_share_transactions
SELECT sum(share_count) FROM TRANSACTIONS	tracking_share_transactions
SELECT transaction_id FROM TRANSACTIONS WHERE transaction_type_code  =  'PUR'	tracking_share_transactions
SELECT date_of_transaction FROM TRANSACTIONS WHERE transaction_type_code  =  "SALE"	tracking_share_transactions
SELECT avg(amount_of_transaction) FROM TRANSACTIONS WHERE transaction_type_code  =  "SALE"	tracking_share_transactions
SELECT transaction_type_description FROM Ref_Transaction_Types WHERE transaction_type_code   =  "PUR"	tracking_share_transactions
SELECT min(amount_of_transaction) FROM TRANSACTIONS WHERE transaction_type_code  =  "PUR" AND share_count  >  50	tracking_share_transactions
SELECT max(share_count) FROM TRANSACTIONS WHERE amount_of_transaction  <  10000	tracking_share_transactions
SELECT date_of_transaction FROM TRANSACTIONS WHERE share_count  >  100 OR amount_of_transaction  >  1000	tracking_share_transactions
SELECT COUNT(DISTINCT transaction_type_code) FROM TRANSACTIONS	tracking_share_transactions
SELECT lot_details ,  investor_id FROM LOTS	tracking_share_transactions
SELECT transaction_type_code ,  avg(amount_of_transaction) FROM TRANSACTIONS GROUP BY transaction_type_code	tracking_share_transactions
SELECT transaction_type_code ,  max(share_count) ,  min(share_count) FROM TRANSACTIONS GROUP BY transaction_type_code	tracking_share_transactions
SELECT investor_id ,  avg(share_count) FROM TRANSACTIONS GROUP BY investor_id	tracking_share_transactions
SELECT investor_id ,  avg(share_count) FROM TRANSACTIONS GROUP BY investor_id ORDER BY avg(share_count)	tracking_share_transactions
SELECT investor_id ,  avg(amount_of_transaction) FROM TRANSACTIONS GROUP BY investor_id	tracking_share_transactions
SELECT investor_id ,  COUNT(*) FROM TRANSACTIONS WHERE transaction_type_code  =  "SALE" GROUP BY investor_id	tracking_share_transactions
SELECT investor_id ,  COUNT(*) FROM TRANSACTIONS GROUP BY investor_id	tracking_share_transactions
SELECT transaction_type_code FROM TRANSACTIONS GROUP BY transaction_type_code ORDER BY COUNT(*) ASC LIMIT 1	tracking_share_transactions
SELECT transaction_type_code FROM TRANSACTIONS GROUP BY transaction_type_code ORDER BY COUNT(*) DESC LIMIT 1	tracking_share_transactions
SELECT date_of_transaction FROM TRANSACTIONS WHERE share_count  >=  100 OR amount_of_transaction  >=  100	tracking_share_transactions
SELECT sales_details FROM sales UNION SELECT purchase_details FROM purchases	tracking_share_transactions
SELECT lot_details FROM Lots EXCEPT SELECT T1.lot_details FROM Lots AS T1 JOIN transactions_lots AS T2 ON T1.lot_id  =  T2.lot_id	tracking_share_transactions
SELECT count(*) FROM HOTELS	cre_Theme_park
SELECT count(*) FROM HOTELS	cre_Theme_park
SELECT price_range FROM HOTELS	cre_Theme_park
SELECT price_range FROM HOTELS	cre_Theme_park
SELECT DISTINCT Location_Name FROM LOCATIONS	cre_Theme_park
SELECT DISTINCT Location_Name FROM LOCATIONS	cre_Theme_park
SELECT Name ,  Other_Details FROM Staff	cre_Theme_park
SELECT Name ,  Other_Details FROM Staff	cre_Theme_park
SELECT Tourist_Details FROM VISITORS	cre_Theme_park
SELECT Tourist_Details FROM VISITORS	cre_Theme_park
SELECT price_range FROM HOTELS WHERE star_rating_code  =  "5"	cre_Theme_park
SELECT price_range FROM HOTELS WHERE star_rating_code  =  "5"	cre_Theme_park
SELECT avg(price_range) FROM HOTELS WHERE star_rating_code  =  "5" AND pets_allowed_yn  =  1	cre_Theme_park
SELECT avg(price_range) FROM HOTELS WHERE star_rating_code  =  "5" AND pets_allowed_yn  =  1	cre_Theme_park
SELECT Address FROM LOCATIONS WHERE Location_Name  =  "UK Gallery"	cre_Theme_park
SELECT Address FROM LOCATIONS WHERE Location_Name  =  "UK Gallery"	cre_Theme_park
SELECT Other_Details FROM LOCATIONS WHERE Location_Name  =  "UK Gallery"	cre_Theme_park
SELECT Other_Details FROM LOCATIONS WHERE Location_Name  =  "UK Gallery"	cre_Theme_park
SELECT Location_Name FROM LOCATIONS WHERE Location_Name LIKE "%film%"	cre_Theme_park
SELECT Location_Name FROM LOCATIONS WHERE Location_Name LIKE "%film%"	cre_Theme_park
SELECT count(DISTINCT Name) FROM PHOTOS	cre_Theme_park
SELECT count(DISTINCT Name) FROM PHOTOS	cre_Theme_park
SELECT DISTINCT Visit_Date FROM VISITS	cre_Theme_park
SELECT DISTINCT Visit_Date FROM VISITS	cre_Theme_park
SELECT Name FROM TOURIST_ATTRACTIONS WHERE How_to_Get_There  =  "bus"	cre_Theme_park
SELECT Name FROM TOURIST_ATTRACTIONS WHERE How_to_Get_There  =  "bus"	cre_Theme_park
SELECT Name ,  Opening_Hours FROM TOURIST_ATTRACTIONS WHERE How_to_Get_There  =  "bus" OR How_to_Get_There  =  "walk"	cre_Theme_park
SELECT Name ,  Opening_Hours FROM TOURIST_ATTRACTIONS WHERE How_to_Get_There  =  "bus" OR How_to_Get_There  =  "walk"	cre_Theme_park
SELECT star_rating_code ,  avg(price_range) FROM HOTELS GROUP BY star_rating_code	cre_Theme_park
SELECT star_rating_code ,  avg(price_range) FROM HOTELS GROUP BY star_rating_code	cre_Theme_park
SELECT pets_allowed_yn ,  avg(price_range) FROM HOTELS GROUP BY pets_allowed_yn	cre_Theme_park
SELECT pets_allowed_yn ,  avg(price_range) FROM HOTELS GROUP BY pets_allowed_yn	cre_Theme_park
SELECT hotel_id ,  star_rating_code FROM HOTELS ORDER BY price_range ASC	cre_Theme_park
SELECT hotel_id ,  star_rating_code FROM HOTELS ORDER BY price_range ASC	cre_Theme_park
SELECT other_hotel_details FROM HOTELS ORDER BY price_range DESC LIMIT 3	cre_Theme_park
SELECT other_hotel_details FROM HOTELS ORDER BY price_range DESC LIMIT 3	cre_Theme_park
SELECT other_hotel_details ,  star_rating_code FROM HOTELS ORDER BY price_range ASC LIMIT 3	cre_Theme_park
SELECT other_hotel_details ,  star_rating_code FROM HOTELS ORDER BY price_range ASC LIMIT 3	cre_Theme_park
SELECT How_to_Get_There FROM Tourist_Attractions GROUP BY How_to_Get_There ORDER BY COUNT(*) DESC LIMIT 1	cre_Theme_park
SELECT How_to_Get_There FROM Tourist_Attractions GROUP BY How_to_Get_There ORDER BY COUNT(*) DESC LIMIT 1	cre_Theme_park
SELECT How_to_Get_There ,  COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There	cre_Theme_park
SELECT How_to_Get_There ,  COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There	cre_Theme_park
SELECT count(*) FROM Visitors WHERE Tourist_ID NOT IN ( SELECT Tourist_ID FROM Visits )	cre_Theme_park
SELECT count(*) FROM Visitors WHERE Tourist_ID NOT IN ( SELECT Tourist_ID FROM Visits )	cre_Theme_park
SELECT count(*) FROM Video_games	game_1
SELECT count(*) FROM Video_games	game_1
SELECT count(DISTINCT gtype) FROM Video_games	game_1
SELECT count(DISTINCT gtype) FROM Video_games	game_1
SELECT DISTINCT gtype FROM Video_games	game_1
SELECT DISTINCT gtype FROM Video_games	game_1
SELECT gname ,  gtype FROM Video_games ORDER BY gname	game_1
SELECT gname ,  gtype FROM Video_games ORDER BY gname	game_1
SELECT gname FROM Video_games WHERE gtype  =  "Collectible card game"	game_1
SELECT gname FROM Video_games WHERE gtype  =  "Collectible card game"	game_1
SELECT gtype FROM Video_games WHERE gname  =  "Call of Destiny"	game_1
SELECT gtype FROM Video_games WHERE gname  =  "Call of Destiny"	game_1
SELECT count(*) FROM Video_games WHERE gtype  =  "Massively multiplayer online game"	game_1
SELECT count(*) FROM Video_games WHERE gtype  =  "Massively multiplayer online game"	game_1
SELECT gtype ,  count(*) FROM Video_games GROUP BY gtype	game_1
SELECT gtype ,  count(*) FROM Video_games GROUP BY gtype	game_1
SELECT gtype FROM Video_games GROUP BY gtype ORDER BY count(*) DESC LIMIT 1	game_1
SELECT gtype FROM Video_games GROUP BY gtype ORDER BY count(*) DESC LIMIT 1	game_1
SELECT gtype FROM Video_games GROUP BY gtype ORDER BY count(*) LIMIT 1	game_1
SELECT gtype FROM Video_games GROUP BY gtype ORDER BY count(*) LIMIT 1	game_1
SELECT StuID FROM Student WHERE city_code  =  "CHI"	game_1
SELECT StuID FROM Student WHERE city_code  =  "CHI"	game_1
SELECT StuID FROM Student WHERE Advisor  =  1121	game_1
SELECT StuID FROM Student WHERE Advisor  =  1121	game_1
SELECT Fname FROM Student WHERE Major  =  600	game_1
SELECT Fname FROM Student WHERE Major  =  600	game_1
SELECT major ,  avg(age) ,  min(age) ,  max(age) FROM Student GROUP BY major	game_1
SELECT major ,  avg(age) ,  min(age) ,  max(age) FROM Student GROUP BY major	game_1
SELECT advisor FROM Student GROUP BY advisor HAVING count(*)  >=  2	game_1
SELECT advisor FROM Student GROUP BY advisor HAVING count(*)  >=  2	game_1
SELECT count(DISTINCT sportname) FROM Sportsinfo	game_1
SELECT count(DISTINCT sportname) FROM Sportsinfo	game_1
SELECT count(DISTINCT StuID) FROM Sportsinfo	game_1
SELECT count(DISTINCT StuID) FROM Sportsinfo	game_1
SELECT StuID FROM Sportsinfo WHERE onscholarship  =  'Y'	game_1
SELECT StuID FROM Sportsinfo WHERE onscholarship  =  'Y'	game_1
SELECT sum(gamesplayed) FROM Sportsinfo	game_1
SELECT sum(gamesplayed) FROM Sportsinfo	game_1
SELECT sum(gamesplayed) FROM Sportsinfo WHERE sportname  =  "Football" AND onscholarship  =  'Y'	game_1
SELECT sum(gamesplayed) FROM Sportsinfo WHERE sportname  =  "Football" AND onscholarship  =  'Y'	game_1
SELECT sportname ,  count(*) FROM Sportsinfo GROUP BY sportname	game_1
SELECT sportname ,  count(*) FROM Sportsinfo GROUP BY sportname	game_1
SELECT StuID ,  count(*) ,  sum(gamesplayed) FROM Sportsinfo GROUP BY StuID	game_1
SELECT StuID ,  count(*) ,  sum(gamesplayed) FROM Sportsinfo GROUP BY StuID	game_1
SELECT StuID FROM Sportsinfo GROUP BY StuID HAVING sum(hoursperweek)  >  10	game_1
SELECT StuID FROM Sportsinfo GROUP BY StuID HAVING sum(hoursperweek)  >  10	game_1
SELECT sportname FROM Sportsinfo WHERE onscholarship  =  'Y' GROUP BY sportname ORDER BY count(*) DESC LIMIT 1	game_1
SELECT sportname FROM Sportsinfo WHERE onscholarship  =  'Y' GROUP BY sportname ORDER BY count(*) DESC LIMIT 1	game_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Sportsinfo	game_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Sportsinfo	game_1
SELECT StuID FROM Student WHERE major  =  600 INTERSECT SELECT StuID FROM Sportsinfo WHERE onscholarship  =  'Y'	game_1
SELECT StuID FROM Student WHERE major  =  600 INTERSECT SELECT StuID FROM Sportsinfo WHERE onscholarship  =  'Y'	game_1
SELECT StuID FROM Student WHERE sex  =  'F' INTERSECT SELECT StuID FROM Sportsinfo WHERE sportname  =  "Football"	game_1
SELECT StuID FROM Student WHERE sex  =  'F' INTERSECT SELECT StuID FROM Sportsinfo WHERE sportname  =  "Football"	game_1
SELECT StuID FROM Student WHERE sex  =  'M' EXCEPT SELECT StuID FROM Sportsinfo WHERE sportname  =  "Football"	game_1
SELECT StuID FROM Student WHERE sex  =  'M' EXCEPT SELECT StuID FROM Sportsinfo WHERE sportname  =  "Football"	game_1
SELECT count(DISTINCT StuID) FROM Plays_games	game_1
SELECT count(DISTINCT StuID) FROM Plays_games	game_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Plays_games	game_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Plays_games	game_1
SELECT StuID FROM Sportsinfo INTERSECT SELECT StuID FROM Plays_games	game_1
SELECT StuID FROM Sportsinfo INTERSECT SELECT StuID FROM Plays_games	game_1
SELECT gameid ,  sum(hours_played) FROM Plays_games GROUP BY gameid	game_1
SELECT gameid ,  sum(hours_played) FROM Plays_games GROUP BY gameid	game_1
SELECT Stuid ,  sum(hours_played) FROM Plays_games GROUP BY Stuid	game_1
SELECT Stuid ,  sum(hours_played) FROM Plays_games GROUP BY Stuid	game_1
SELECT fname ,  age FROM Student WHERE StuID IN (SELECT StuID FROM Sportsinfo WHERE SportName  =  "Football" INTERSECT SELECT StuID FROM Sportsinfo WHERE SportName  =  "Lacrosse")	game_1
SELECT fname ,  age FROM Student WHERE StuID IN (SELECT StuID FROM Sportsinfo WHERE SportName  =  "Football" INTERSECT SELECT StuID FROM Sportsinfo WHERE SportName  =  "Lacrosse")	game_1
SELECT lname ,  sex FROM Student WHERE StuID IN (SELECT T1.StuID FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.GameID  =  T2.GameID WHERE T2.Gname  =  "Call of Destiny" INTERSECT SELECT T1.StuID FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.GameID  =  T2.GameID WHERE T2.Gname  =  "Works of Widenius")	game_1
SELECT lname ,  sex FROM Student WHERE StuID IN (SELECT T1.StuID FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.GameID  =  T2.GameID WHERE T2.Gname  =  "Call of Destiny" INTERSECT SELECT T1.StuID FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.GameID  =  T2.GameID WHERE T2.Gname  =  "Works of Widenius")	game_1
SELECT customer_name FROM customers	customers_and_addresses
SELECT customer_name FROM customers	customers_and_addresses
SELECT count(*) FROM customers	customers_and_addresses
SELECT count(*) FROM customers	customers_and_addresses
SELECT avg(order_quantity) FROM order_items	customers_and_addresses
SELECT avg(order_quantity) FROM order_items	customers_and_addresses
SELECT customer_name FROM customers WHERE payment_method  =  "Cash"	customers_and_addresses
SELECT customer_name FROM customers WHERE payment_method  =  "Cash"	customers_and_addresses
SELECT date_became_customer FROM customers WHERE customer_id BETWEEN 10 AND 20	customers_and_addresses
SELECT date_became_customer FROM customers WHERE customer_id BETWEEN 10 AND 20	customers_and_addresses
SELECT payment_method FROM customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1	customers_and_addresses
SELECT payment_method FROM customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1	customers_and_addresses
SELECT customer_name FROM customers WHERE payment_method  =  (SELECT payment_method FROM customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1)	customers_and_addresses
SELECT customer_name FROM customers WHERE payment_method  =  (SELECT payment_method FROM customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1)	customers_and_addresses
SELECT DISTINCT payment_method FROM customers	customers_and_addresses
SELECT DISTINCT payment_method FROM customers	customers_and_addresses
SELECT DISTINCT product_details FROM products	customers_and_addresses
SELECT DISTINCT product_details FROM products	customers_and_addresses
SELECT customer_name FROM customers WHERE customer_name LIKE "%Alex%"	customers_and_addresses
SELECT customer_name FROM customers WHERE customer_name LIKE "%Alex%"	customers_and_addresses
SELECT product_details FROM products WHERE product_details LIKE "%Latte%" OR product_details LIKE "%Americano%"	customers_and_addresses
SELECT product_details FROM products WHERE product_details LIKE "%Latte%" OR product_details LIKE "%Americano%"	customers_and_addresses
SELECT city FROM addresses WHERE city NOT IN ( SELECT DISTINCT t3.city FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id  =  t2.customer_id JOIN addresses AS t3 ON t2.address_id  =  t3.address_id)	customers_and_addresses
SELECT city FROM addresses WHERE city NOT IN ( SELECT DISTINCT t3.city FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id  =  t2.customer_id JOIN addresses AS t3 ON t2.address_id  =  t3.address_id)	customers_and_addresses
SELECT DISTINCT city FROM addresses	customers_and_addresses
SELECT DISTINCT city FROM addresses	customers_and_addresses
SELECT city FROM addresses WHERE zip_postcode  =  255	customers_and_addresses
SELECT city FROM addresses WHERE zip_postcode  =  255	customers_and_addresses
SELECT state_province_county ,  country FROM addresses WHERE zip_postcode LIKE "4%"	customers_and_addresses
SELECT state_province_county ,  country FROM addresses WHERE zip_postcode LIKE "4%"	customers_and_addresses
SELECT country FROM addresses GROUP BY country HAVING count(address_id)  >  4	customers_and_addresses
SELECT country FROM addresses GROUP BY country HAVING count(address_id)  >  4	customers_and_addresses
SELECT channel_code FROM customer_contact_channels GROUP BY channel_code HAVING count(customer_id)  <  5	customers_and_addresses
SELECT channel_code FROM customer_contact_channels GROUP BY channel_code HAVING count(customer_id)  <  5	customers_and_addresses
SELECT avg(active_to_date - active_from_date) FROM customer_contact_channels	customers_and_addresses
SELECT avg(active_to_date - active_from_date) FROM customer_contact_channels	customers_and_addresses
SELECT channel_code ,  contact_number FROM customer_contact_channels WHERE active_to_date - active_from_date  =  (SELECT active_to_date - active_from_date FROM customer_contact_channels ORDER BY (active_to_date - active_from_date) DESC LIMIT 1)	customers_and_addresses
SELECT channel_code ,  contact_number FROM customer_contact_channels WHERE active_to_date - active_from_date  =  (SELECT active_to_date - active_from_date FROM customer_contact_channels ORDER BY (active_to_date - active_from_date) DESC LIMIT 1)	customers_and_addresses
SELECT count(DISTINCT customer_id) FROM customer_orders WHERE order_status  =  "Cancelled"	customers_and_addresses
SELECT count(DISTINCT customer_id) FROM customer_orders WHERE order_status  =  "Cancelled"	customers_and_addresses
SELECT count(*) FROM customer_orders WHERE order_details  =  "Second time"	customers_and_addresses
SELECT count(*) FROM customer_orders WHERE order_details  =  "Second time"	customers_and_addresses
SELECT address_content FROM addresses WHERE city  =  "East Julianaside" AND state_province_county  =  "Texas" UNION SELECT address_content FROM addresses WHERE city  =  "Gleasonmouth" AND state_province_county  =  "Arizona"	customers_and_addresses
SELECT address_content FROM addresses WHERE city  =  "East Julianaside" AND state_province_county  =  "Texas" UNION SELECT address_content FROM addresses WHERE city  =  "Gleasonmouth" AND state_province_county  =  "Arizona"	customers_and_addresses
SELECT customer_name FROM customers WHERE payment_method != 'Cash'	customers_and_addresses
SELECT customer_name FROM customers WHERE payment_method != 'Cash'	customers_and_addresses
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id  =  t2.customer_id JOIN order_items AS t3 ON t2.order_id  =  t3.order_id JOIN products AS t4 ON t3.product_id  =  t4.product_id WHERE t4.product_details  =  'Latte'	customers_and_addresses
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id  =  t2.customer_id JOIN order_items AS t3 ON t2.order_id  =  t3.order_id JOIN products AS t4 ON t3.product_id  =  t4.product_id WHERE t4.product_details  =  'Latte'	customers_and_addresses
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id  =  t2.customer_id	customers_and_addresses
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id  =  t2.customer_id	customers_and_addresses
SELECT count(*) FROM artist	music_4
SELECT count(*) FROM artist	music_4
SELECT Age FROM artist	music_4
SELECT Age FROM artist	music_4
SELECT avg(Age) FROM artist	music_4
SELECT avg(Age) FROM artist	music_4
SELECT Famous_Title FROM artist WHERE Artist  =  "Triumfall"	music_4
SELECT Famous_Title FROM artist WHERE Artist  =  "Triumfall"	music_4
SELECT distinct(Famous_Release_date) FROM artist	music_4
SELECT distinct(Famous_Release_date) FROM artist	music_4
SELECT Date_of_ceremony ,  RESULT FROM music_festival	music_4
SELECT Date_of_ceremony ,  RESULT FROM music_festival	music_4
SELECT Category FROM music_festival WHERE RESULT  =  "Awarded"	music_4
SELECT Category FROM music_festival WHERE RESULT  =  "Awarded"	music_4
SELECT max(Weeks_on_Top) ,  min(Weeks_on_Top) FROM volume	music_4
SELECT max(Weeks_on_Top) ,  min(Weeks_on_Top) FROM volume	music_4
SELECT Song FROM volume WHERE Weeks_on_Top  >  1	music_4
SELECT Song FROM volume WHERE Weeks_on_Top  >  1	music_4
SELECT Song FROM volume ORDER BY Song	music_4
SELECT Song FROM volume ORDER BY Song	music_4
SELECT COUNT(DISTINCT Artist_ID) FROM volume	music_4
SELECT COUNT(DISTINCT Artist_ID) FROM volume	music_4
SELECT Famous_Title ,  Age FROM artist ORDER BY Age DESC	music_4
SELECT Famous_Title ,  Age FROM artist ORDER BY Age DESC	music_4
SELECT Famous_Release_date FROM artist ORDER BY Age DESC LIMIT 1	music_4
SELECT Famous_Release_date FROM artist ORDER BY Age DESC LIMIT 1	music_4
SELECT Category ,  COUNT(*) FROM music_festival GROUP BY Category	music_4
SELECT Category ,  COUNT(*) FROM music_festival GROUP BY Category	music_4
SELECT RESULT FROM music_festival GROUP BY RESULT ORDER BY COUNT(*) DESC LIMIT 1	music_4
SELECT RESULT FROM music_festival GROUP BY RESULT ORDER BY COUNT(*) DESC LIMIT 1	music_4
SELECT Category FROM music_festival GROUP BY Category HAVING COUNT(*)  >  1	music_4
SELECT Category FROM music_festival GROUP BY Category HAVING COUNT(*)  >  1	music_4
SELECT Song FROM volume ORDER BY Weeks_on_Top DESC LIMIT 1	music_4
SELECT Song FROM volume ORDER BY Weeks_on_Top DESC LIMIT 1	music_4
SELECT Famous_Title FROM artist WHERE Artist_ID NOT IN(SELECT Artist_ID FROM volume)	music_4
SELECT Famous_Title FROM artist WHERE Artist_ID NOT IN(SELECT Artist_ID FROM volume)	music_4
SELECT Date_of_ceremony FROM music_festival WHERE Category  =  "Best Song" AND RESULT  =  "Awarded"	music_4
SELECT Date_of_ceremony FROM music_festival WHERE Category  =  "Best Song" AND RESULT  =  "Awarded"	music_4
SELECT Issue_Date FROM volume ORDER BY Weeks_on_Top ASC LIMIT 1	music_4
SELECT Issue_Date FROM volume ORDER BY Weeks_on_Top ASC LIMIT 1	music_4
SELECT COUNT(DISTINCT Artist_ID) FROM volume	music_4
SELECT COUNT(DISTINCT Artist_ID) FROM volume	music_4
SELECT RESULT ,  COUNT(*) FROM music_festival GROUP BY RESULT ORDER BY COUNT(*) DESC	music_4
SELECT RESULT ,  COUNT(*) FROM music_festival GROUP BY RESULT ORDER BY COUNT(*) DESC	music_4
SELECT count(*) FROM roller_coaster	roller_coaster
SELECT Name FROM roller_coaster ORDER BY LENGTH ASC	roller_coaster
SELECT LENGTH ,  Height FROM roller_coaster	roller_coaster
SELECT Name FROM country WHERE Languages != "German"	roller_coaster
SELECT Status FROM roller_coaster WHERE LENGTH  >  3300 OR Height  >  100	roller_coaster
SELECT Speed FROM roller_coaster ORDER BY LENGTH DESC LIMIT 1	roller_coaster
SELECT avg(Speed) FROM roller_coaster	roller_coaster
SELECT Status ,  COUNT(*) FROM roller_coaster GROUP BY Status	roller_coaster
SELECT Status FROM roller_coaster GROUP BY Status ORDER BY COUNT(*) DESC LIMIT 1	roller_coaster
SELECT Status FROM roller_coaster GROUP BY Status HAVING COUNT(*)  >  2	roller_coaster
SELECT Park FROM roller_coaster ORDER BY Speed DESC LIMIT 1	roller_coaster
SELECT count(*) FROM country WHERE country_id NOT IN ( SELECT country_id FROM roller_coaster WHERE LENGTH  >  3000 )	roller_coaster
SELECT count(DISTINCT rank) FROM captain	ship_1
SELECT count(DISTINCT rank) FROM captain	ship_1
SELECT count(*) ,  rank FROM captain GROUP BY rank	ship_1
SELECT count(*) ,  rank FROM captain GROUP BY rank	ship_1
SELECT count(*) ,  rank FROM captain WHERE age  <  50 GROUP BY rank	ship_1
SELECT count(*) ,  rank FROM captain WHERE age  <  50 GROUP BY rank	ship_1
SELECT name FROM captain ORDER BY age DESC	ship_1
SELECT name FROM captain ORDER BY age DESC	ship_1
SELECT name ,  CLASS ,  rank FROM captain	ship_1
SELECT name ,  CLASS ,  rank FROM captain	ship_1
SELECT rank FROM captain GROUP BY rank ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT rank FROM captain GROUP BY rank ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT CLASS FROM captain GROUP BY CLASS HAVING count(*)  >  2	ship_1
SELECT CLASS FROM captain GROUP BY CLASS HAVING count(*)  >  2	ship_1
SELECT name FROM captain WHERE rank  =  'Midshipman' OR rank  =  'Lieutenant'	ship_1
SELECT name FROM captain WHERE rank  =  'Midshipman' OR rank  =  'Lieutenant'	ship_1
SELECT avg(age) ,  min(age) ,  CLASS FROM captain GROUP BY CLASS	ship_1
SELECT avg(age) ,  min(age) ,  CLASS FROM captain GROUP BY CLASS	ship_1
SELECT rank FROM captain WHERE CLASS  =  'Cutter' INTERSECT SELECT rank FROM captain WHERE CLASS  =  'Armed schooner'	ship_1
SELECT rank FROM captain WHERE CLASS  =  'Cutter' INTERSECT SELECT rank FROM captain WHERE CLASS  =  'Armed schooner'	ship_1
SELECT rank FROM captain EXCEPT SELECT rank FROM captain WHERE CLASS  =  'Third-rate ship of the line'	ship_1
SELECT rank FROM captain EXCEPT SELECT rank FROM captain WHERE CLASS  =  'Third-rate ship of the line'	ship_1
SELECT name FROM captain ORDER BY age LIMIT 1	ship_1
SELECT name FROM captain ORDER BY age LIMIT 1	ship_1
SELECT count(*) FROM ship	ship_1
SELECT count(*) FROM ship	ship_1
SELECT name ,  TYPE ,  flag FROM ship ORDER BY built_year DESC LIMIT 1	ship_1
SELECT name ,  TYPE ,  flag FROM ship ORDER BY built_year DESC LIMIT 1	ship_1
SELECT count(*) ,  flag FROM ship GROUP BY flag	ship_1
SELECT count(*) ,  flag FROM ship GROUP BY flag	ship_1
SELECT flag FROM ship GROUP BY flag ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT flag FROM ship GROUP BY flag ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT name FROM ship ORDER BY built_year ,  CLASS	ship_1
SELECT name FROM ship ORDER BY built_year ,  CLASS	ship_1
SELECT TYPE FROM ship WHERE flag  =  'Panama' INTERSECT SELECT TYPE FROM ship WHERE flag  =  'Malta'	ship_1
SELECT TYPE FROM ship WHERE flag  =  'Panama' INTERSECT SELECT TYPE FROM ship WHERE flag  =  'Malta'	ship_1
SELECT built_year FROM ship GROUP BY built_year ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT built_year FROM ship GROUP BY built_year ORDER BY count(*) DESC LIMIT 1	ship_1
SELECT name ,  CLASS FROM ship WHERE ship_id NOT IN (SELECT ship_id FROM captain)	ship_1
SELECT name ,  CLASS FROM ship WHERE ship_id NOT IN (SELECT ship_id FROM captain)	ship_1
SELECT name ,  flag FROM ship WHERE ship_id NOT IN (SELECT ship_id FROM captain WHERE rank  =  'Midshipman')	ship_1
SELECT name ,  flag FROM ship WHERE ship_id NOT IN (SELECT ship_id FROM captain WHERE rank  =  'Midshipman')	ship_1
SELECT host_city FROM hosting_city ORDER BY YEAR DESC LIMIT 1	city_record
SELECT host_city FROM hosting_city ORDER BY YEAR DESC LIMIT 1	city_record
SELECT match_id FROM MATCH WHERE competition = "1994 FIFA World Cup qualification"	city_record
SELECT match_id FROM MATCH WHERE competition = "1994 FIFA World Cup qualification"	city_record
SELECT city FROM city ORDER BY regional_population DESC LIMIT 3	city_record
SELECT city FROM city ORDER BY regional_population DESC LIMIT 3	city_record
SELECT city ,  GDP FROM city ORDER BY GDP LIMIT 1	city_record
SELECT city ,  GDP FROM city ORDER BY GDP LIMIT 1	city_record
SELECT city FROM city WHERE regional_population  >  10000000	city_record
SELECT city FROM city WHERE regional_population  >  10000000	city_record
SELECT city FROM city WHERE regional_population  >  10000000 UNION SELECT city FROM city WHERE regional_population  <  5000000	city_record
SELECT city FROM city WHERE regional_population  >  10000000 UNION SELECT city FROM city WHERE regional_population  <  5000000	city_record
SELECT count(*) ,  Competition FROM MATCH GROUP BY Competition	city_record
SELECT count(*) ,  Competition FROM MATCH GROUP BY Competition	city_record
SELECT venue FROM MATCH ORDER BY date DESC	city_record
SELECT venue FROM MATCH ORDER BY date DESC	city_record
SELECT gdp FROM city ORDER BY Regional_Population DESC LIMIT 1	city_record
SELECT gdp FROM city ORDER BY Regional_Population DESC LIMIT 1	city_record
SELECT individual_first_name ,  individual_middle_name ,  individual_last_name FROM individuals ORDER BY individual_last_name	e_government
SELECT individual_first_name ,  individual_middle_name ,  individual_last_name FROM individuals ORDER BY individual_last_name	e_government
SELECT DISTINCT form_type_code FROM forms	e_government
SELECT DISTINCT form_type_code FROM forms	e_government
SELECT payment_method_code ,  party_phone FROM parties WHERE party_email  =  "enrico09@example.com"	e_government
SELECT payment_method_code ,  party_phone FROM parties WHERE party_email  =  "enrico09@example.com"	e_government
SELECT organization_name FROM organizations ORDER BY date_formed ASC	e_government
SELECT organization_name FROM organizations ORDER BY date_formed ASC	e_government
SELECT organization_name FROM organizations ORDER BY date_formed DESC LIMIT 1	e_government
SELECT organization_name FROM organizations ORDER BY date_formed DESC LIMIT 1	e_government
SELECT count(*) FROM services	e_government
SELECT count(*) FROM services	e_government
SELECT service_name FROM services EXCEPT SELECT t1.service_name FROM services AS t1 JOIN party_services AS t2 ON t1.service_id  =  t2.service_id	e_government
SELECT service_name FROM services EXCEPT SELECT t1.service_name FROM services AS t1 JOIN party_services AS t2 ON t1.service_id  =  t2.service_id	e_government
SELECT town_city FROM addresses UNION SELECT state_province_county FROM addresses	e_government
SELECT town_city FROM addresses UNION SELECT state_province_county FROM addresses	e_government
SELECT count(*) FROM addresses WHERE state_province_county  =  "Colorado"	e_government
SELECT count(*) FROM addresses WHERE state_province_county  =  "Colorado"	e_government
SELECT payment_method_code FROM parties GROUP BY payment_method_code HAVING count(*)  >  3	e_government
SELECT payment_method_code FROM parties GROUP BY payment_method_code HAVING count(*)  >  3	e_government
SELECT organization_name FROM organizations WHERE organization_name LIKE "%Party%"	e_government
SELECT organization_name FROM organizations WHERE organization_name LIKE "%Party%"	e_government
SELECT count(DISTINCT payment_method_code) FROM parties	e_government
SELECT count(DISTINCT payment_method_code) FROM parties	e_government
SELECT state_province_county FROM addresses WHERE line_1_number_building LIKE "%6862 Kaitlyn Knolls%"	e_government
SELECT state_province_county FROM addresses WHERE line_1_number_building LIKE "%6862 Kaitlyn Knolls%"	e_government
SELECT count(*) FROM driver	school_bus
SELECT name ,  home_city ,  age FROM driver	school_bus
SELECT party ,  count(*) FROM driver GROUP BY party	school_bus
SELECT name FROM driver ORDER BY age DESC	school_bus
SELECT DISTINCT home_city FROM driver	school_bus
SELECT home_city FROM driver GROUP BY home_city ORDER BY count(*) DESC LIMIT 1	school_bus
SELECT party FROM driver WHERE home_city  =  'Hartford' AND age  >  40	school_bus
SELECT home_city FROM driver WHERE age  >  40 GROUP BY home_city HAVING count(*)  >=  2	school_bus
SELECT home_city FROM driver EXCEPT SELECT home_city FROM driver WHERE age  >  40	school_bus
SELECT name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM school_bus)	school_bus
SELECT TYPE FROM school GROUP BY TYPE HAVING count(*)  =  2	school_bus
SELECT max(years_working) ,  min(years_working) ,  avg(years_working) FROM school_bus	school_bus
SELECT school ,  TYPE FROM school WHERE school_id NOT IN (SELECT school_id FROM school_bus)	school_bus
SELECT count(*) FROM driver WHERE home_city  =  'Hartford' OR age  <  40	school_bus
SELECT name FROM driver WHERE home_city  =  'Hartford' AND age  <  40	school_bus
SELECT count(*) FROM flight WHERE velocity  >  200	flight_company
SELECT vehicle_flight_number ,  date ,  pilot FROM flight ORDER BY altitude ASC	flight_company
SELECT id ,  country ,  city ,  name FROM airport ORDER BY name	flight_company
SELECT max(group_equity_shareholding) FROM operate_company	flight_company
SELECT avg(velocity) FROM flight WHERE pilot  =  'Thompson'	flight_company
SELECT name FROM airport WHERE country != 'Iceland'	flight_company
SELECT TYPE ,  count(*) FROM operate_company GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	flight_company
SELECT count(*) FROM airport WHERE id NOT IN ( SELECT airport_id FROM flight WHERE pilot  =  'Thompson' );	flight_company
SELECT name FROM airport WHERE name LIKE '%international%'	flight_company
SELECT count(*) ,  country FROM airport GROUP BY country	flight_company
SELECT country FROM airport GROUP BY country HAVING count(*)  >  2	flight_company
SELECT pilot FROM flight GROUP BY pilot ORDER BY count(*) DESC LIMIT 1	flight_company
SELECT count(*) FROM Accounts	cre_Docs_and_Epenses
SELECT count(*) FROM Accounts	cre_Docs_and_Epenses
SELECT account_id ,  account_details FROM Accounts	cre_Docs_and_Epenses
SELECT account_id ,  account_details FROM Accounts	cre_Docs_and_Epenses
SELECT count(*) FROM Statements	cre_Docs_and_Epenses
SELECT count(*) FROM Statements	cre_Docs_and_Epenses
SELECT STATEMENT_ID ,  statement_details FROM Statements	cre_Docs_and_Epenses
SELECT STATEMENT_ID ,  statement_details FROM Statements	cre_Docs_and_Epenses
SELECT STATEMENT_ID ,  count(*) FROM Accounts GROUP BY STATEMENT_ID	cre_Docs_and_Epenses
SELECT STATEMENT_ID ,  count(*) FROM Accounts GROUP BY STATEMENT_ID	cre_Docs_and_Epenses
SELECT count(*) FROM Documents	cre_Docs_and_Epenses
SELECT count(*) FROM Documents	cre_Docs_and_Epenses
SELECT document_type_code ,  document_name ,  document_description FROM Documents WHERE document_name  =  'Noel CV' OR document_name  =  'King Book'	cre_Docs_and_Epenses
SELECT document_type_code ,  document_name ,  document_description FROM Documents WHERE document_name  =  'Noel CV' OR document_name  =  'King Book'	cre_Docs_and_Epenses
SELECT document_id ,  document_name FROM Documents	cre_Docs_and_Epenses
SELECT document_id ,  document_name FROM Documents	cre_Docs_and_Epenses
SELECT document_name ,  document_id FROM Documents WHERE document_type_code  =  "BK"	cre_Docs_and_Epenses
SELECT document_name ,  document_id FROM Documents WHERE document_type_code  =  "BK"	cre_Docs_and_Epenses
SELECT count(*) ,  project_id FROM Documents WHERE document_type_code  =  "BK" GROUP BY project_id	cre_Docs_and_Epenses
SELECT count(*) ,  project_id FROM Documents WHERE document_type_code  =  "BK" GROUP BY project_id	cre_Docs_and_Epenses
SELECT project_id ,  count(*) FROM Documents GROUP BY project_id	cre_Docs_and_Epenses
SELECT project_id ,  count(*) FROM Documents GROUP BY project_id	cre_Docs_and_Epenses
SELECT project_id FROM Documents GROUP BY project_id ORDER BY count(*) ASC LIMIT 1	cre_Docs_and_Epenses
SELECT project_id FROM Documents GROUP BY project_id ORDER BY count(*) ASC LIMIT 1	cre_Docs_and_Epenses
SELECT project_id FROM Documents GROUP BY project_id HAVING count(*)  >=  2	cre_Docs_and_Epenses
SELECT project_id FROM Documents GROUP BY project_id HAVING count(*)  >=  2	cre_Docs_and_Epenses
SELECT document_type_code ,  count(*) FROM Documents GROUP BY document_type_code	cre_Docs_and_Epenses
SELECT document_type_code ,  count(*) FROM Documents GROUP BY document_type_code	cre_Docs_and_Epenses
SELECT document_type_code FROM Documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 1	cre_Docs_and_Epenses
SELECT document_type_code FROM Documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 1	cre_Docs_and_Epenses
SELECT document_type_code FROM Documents GROUP BY document_type_code HAVING count(*)  <  3	cre_Docs_and_Epenses
SELECT document_type_code FROM Documents GROUP BY document_type_code HAVING count(*)  <  3	cre_Docs_and_Epenses
SELECT document_type_code ,  document_type_name ,  document_type_description FROM Ref_document_types	cre_Docs_and_Epenses
SELECT document_type_code ,  document_type_name ,  document_type_description FROM Ref_document_types	cre_Docs_and_Epenses
SELECT document_type_description FROM Ref_document_types WHERE document_type_name  =  "Film"	cre_Docs_and_Epenses
SELECT document_type_description FROM Ref_document_types WHERE document_type_name  =  "Film"	cre_Docs_and_Epenses
SELECT count(*) FROM Projects	cre_Docs_and_Epenses
SELECT count(*) FROM Projects	cre_Docs_and_Epenses
SELECT project_id ,  project_details FROM Projects	cre_Docs_and_Epenses
SELECT project_id ,  project_details FROM Projects	cre_Docs_and_Epenses
SELECT count(*) FROM Ref_budget_codes	cre_Docs_and_Epenses
SELECT count(*) FROM Ref_budget_codes	cre_Docs_and_Epenses
SELECT budget_type_code ,  budget_type_description FROM Ref_budget_codes	cre_Docs_and_Epenses
SELECT budget_type_code ,  budget_type_description FROM Ref_budget_codes	cre_Docs_and_Epenses
SELECT budget_type_description FROM Ref_budget_codes WHERE budget_type_code  =  "ORG"	cre_Docs_and_Epenses
SELECT budget_type_description FROM Ref_budget_codes WHERE budget_type_code  =  "ORG"	cre_Docs_and_Epenses
SELECT count(*) FROM Documents_with_expenses	cre_Docs_and_Epenses
SELECT count(*) FROM Documents_with_expenses	cre_Docs_and_Epenses
SELECT document_id FROM Documents_with_expenses WHERE budget_type_code  =  'SF'	cre_Docs_and_Epenses
SELECT document_id FROM Documents_with_expenses WHERE budget_type_code  =  'SF'	cre_Docs_and_Epenses
SELECT budget_type_code ,  count(*) FROM Documents_with_expenses GROUP BY budget_type_code	cre_Docs_and_Epenses
SELECT budget_type_code ,  count(*) FROM Documents_with_expenses GROUP BY budget_type_code	cre_Docs_and_Epenses
SELECT budget_type_code FROM Documents_with_expenses GROUP BY budget_type_code ORDER BY count(*) DESC LIMIT 1	cre_Docs_and_Epenses
SELECT budget_type_code FROM Documents_with_expenses GROUP BY budget_type_code ORDER BY count(*) DESC LIMIT 1	cre_Docs_and_Epenses
SELECT document_id FROM Documents EXCEPT SELECT document_id FROM Documents_with_expenses	cre_Docs_and_Epenses
SELECT document_id FROM Documents EXCEPT SELECT document_id FROM Documents_with_expenses	cre_Docs_and_Epenses
SELECT document_id FROM Documents WHERE document_type_code  =  "CV" EXCEPT SELECT document_id FROM Documents_with_expenses	cre_Docs_and_Epenses
SELECT document_id FROM Documents WHERE document_type_code  =  "CV" EXCEPT SELECT document_id FROM Documents_with_expenses	cre_Docs_and_Epenses
SELECT count(*) FROM Documents WHERE document_id NOT IN ( SELECT document_id FROM Documents_with_expenses )	cre_Docs_and_Epenses
SELECT count(*) FROM Documents WHERE document_id NOT IN ( SELECT document_id FROM Documents_with_expenses )	cre_Docs_and_Epenses
SELECT max(Account_details) FROM Accounts UNION SELECT Account_details FROM Accounts WHERE Account_details LIKE "%5%"	cre_Docs_and_Epenses
SELECT max(Account_details) FROM Accounts UNION SELECT Account_details FROM Accounts WHERE Account_details LIKE "%5%"	cre_Docs_and_Epenses
SELECT count(*) FROM scientists	scientist_1
SELECT count(*) FROM scientists	scientist_1
SELECT sum(hours) FROM projects	scientist_1
SELECT sum(hours) FROM projects	scientist_1
SELECT count(DISTINCT scientist) FROM assignedto	scientist_1
SELECT count(DISTINCT scientist) FROM assignedto	scientist_1
SELECT count(DISTINCT name) FROM projects	scientist_1
SELECT count(DISTINCT name) FROM projects	scientist_1
SELECT avg(hours) FROM projects	scientist_1
SELECT avg(hours) FROM projects	scientist_1
SELECT name FROM projects ORDER BY hours DESC LIMIT 1	scientist_1
SELECT name FROM projects ORDER BY hours DESC LIMIT 1	scientist_1
SELECT name FROM projects WHERE hours  >  (SELECT avg(hours) FROM projects)	scientist_1
SELECT name FROM projects WHERE hours  >  (SELECT avg(hours) FROM projects)	scientist_1
SELECT name FROM projects WHERE hours BETWEEN 100 AND 300	scientist_1
SELECT name FROM projects WHERE hours BETWEEN 100 AND 300	scientist_1
SELECT name FROM scientists ORDER BY name	scientist_1
SELECT name FROM scientists ORDER BY name	scientist_1
SELECT Name FROM Projects WHERE Code NOT IN (SELECT Project FROM AssignedTo)	scientist_1
SELECT Name FROM Projects WHERE Code NOT IN (SELECT Project FROM AssignedTo)	scientist_1
SELECT Name FROM scientists WHERE ssn NOT IN (SELECT scientist FROM AssignedTo)	scientist_1
SELECT Name FROM scientists WHERE ssn NOT IN (SELECT scientist FROM AssignedTo)	scientist_1
SELECT count(*) FROM scientists WHERE ssn NOT IN (SELECT scientist FROM AssignedTo)	scientist_1
SELECT count(*) FROM scientists WHERE ssn NOT IN (SELECT scientist FROM AssignedTo)	scientist_1
SELECT name FROM scientists EXCEPT SELECT T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T2.hours  =  (SELECT max(hours) FROM projects)	scientist_1
SELECT name FROM scientists EXCEPT SELECT T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T2.hours  =  (SELECT max(hours) FROM projects)	scientist_1
SELECT Name FROM WINE ORDER BY Score LIMIT 1	wine_1
SELECT Name FROM WINE ORDER BY Score LIMIT 1	wine_1
SELECT Winery FROM WINE ORDER BY SCORE LIMIT 1	wine_1
SELECT Winery FROM WINE ORDER BY SCORE LIMIT 1	wine_1
SELECT Name FROM WINE WHERE YEAR  =  "2008"	wine_1
SELECT Name FROM WINE WHERE YEAR  =  "2008"	wine_1
SELECT Grape ,  Appelation FROM WINE	wine_1
SELECT Grape ,  Appelation FROM WINE	wine_1
SELECT Name ,  Score FROM WINE	wine_1
SELECT Name ,  Score FROM WINE	wine_1
SELECT Area ,  County FROM APPELLATIONS	wine_1
SELECT Area ,  County FROM APPELLATIONS	wine_1
SELECT Price FROM WINE WHERE YEAR  <  2010	wine_1
SELECT Price FROM WINE WHERE YEAR  <  2010	wine_1
SELECT Name FROM WINE WHERE score  >  90	wine_1
SELECT Name FROM WINE WHERE score  >  90	wine_1
SELECT count(*) FROM WINE WHERE Winery  =  "Robert Biale"	wine_1
SELECT count(*) FROM WINE WHERE Winery  =  "Robert Biale"	wine_1
SELECT count(*) FROM APPELLATIONS WHERE County  =  "Napa"	wine_1
SELECT count(*) FROM APPELLATIONS WHERE County  =  "Napa"	wine_1
SELECT count(*) ,  Grape FROM WINE GROUP BY Grape	wine_1
SELECT count(*) ,  Grape FROM WINE GROUP BY Grape	wine_1
SELECT avg(Price) ,  YEAR FROM WINE GROUP BY YEAR	wine_1
SELECT avg(Price) ,  YEAR FROM WINE GROUP BY YEAR	wine_1
SELECT DISTINCT Name FROM WINE WHERE Price  >  (SELECT min(Price) FROM wine WHERE Winery  =  "John Anthony")	wine_1
SELECT DISTINCT Name FROM WINE WHERE Price  >  (SELECT min(Price) FROM wine WHERE Winery  =  "John Anthony")	wine_1
SELECT DISTINCT Name FROM WINE ORDER BY Name	wine_1
SELECT DISTINCT Name FROM WINE ORDER BY Name	wine_1
SELECT DISTINCT Name FROM WINE ORDER BY price	wine_1
SELECT DISTINCT Name FROM WINE ORDER BY price	wine_1
SELECT DISTINCT Name FROM WINE WHERE YEAR  <  2000 OR YEAR  >  2010	wine_1
SELECT DISTINCT Name FROM WINE WHERE YEAR  <  2000 OR YEAR  >  2010	wine_1
SELECT DISTINCT Winery FROM WINE WHERE Price BETWEEN 50 AND 100	wine_1
SELECT DISTINCT Winery FROM WINE WHERE Price BETWEEN 50 AND 100	wine_1
SELECT AVG(Price) ,  AVG(Cases) FROM WINE WHERE YEAR  =  2009 AND Grape  =  "Zinfandel"	wine_1
SELECT AVG(Price) ,  AVG(Cases) FROM WINE WHERE YEAR  =  2009 AND Grape  =  "Zinfandel"	wine_1
SELECT max(Price) ,  max(Score) FROM WINE WHERE Appelation  =  "St. Helena"	wine_1
SELECT max(Price) ,  max(Score) FROM WINE WHERE Appelation  =  "St. Helena"	wine_1
SELECT max(Price) ,  max(Score) ,  YEAR FROM WINE GROUP BY YEAR	wine_1
SELECT max(Price) ,  max(Score) ,  YEAR FROM WINE GROUP BY YEAR	wine_1
SELECT avg(Price) ,  avg(Score) ,  Appelation FROM WINE GROUP BY Appelation	wine_1
SELECT avg(Price) ,  avg(Score) ,  Appelation FROM WINE GROUP BY Appelation	wine_1
SELECT Winery FROM WINE GROUP BY Winery HAVING count(*)  >=  4	wine_1
SELECT Winery FROM WINE GROUP BY Winery HAVING count(*)  >=  4	wine_1
SELECT Name FROM WINE WHERE YEAR  <  (SELECT min(YEAR) FROM WINE WHERE Winery  =  "Brander")	wine_1
SELECT Name FROM WINE WHERE YEAR  <  (SELECT min(YEAR) FROM WINE WHERE Winery  =  "Brander")	wine_1
SELECT Name FROM WINE WHERE Price  >  (SELECT max(Price) FROM WINE WHERE YEAR  =  2006)	wine_1
SELECT Name FROM WINE WHERE Price  >  (SELECT max(Price) FROM WINE WHERE YEAR  =  2006)	wine_1
SELECT Grape ,  Winery ,  YEAR FROM WINE WHERE Price  >   100 ORDER BY YEAR	wine_1
SELECT Grape ,  Winery ,  YEAR FROM WINE WHERE Price  >   100 ORDER BY YEAR	wine_1
SELECT Grape ,  Appelation ,  Name FROM WINE WHERE Score  >  93 ORDER BY Name	wine_1
SELECT Grape ,  Appelation ,  Name FROM WINE WHERE Score  >  93 ORDER BY Name	wine_1
SELECT Appelation FROM WINE WHERE YEAR  >  2008 EXCEPT SELECT Appelation FROM APPELLATIONS WHERE Area  =  "Central Coast"	wine_1
SELECT Appelation FROM WINE WHERE YEAR  >  2008 EXCEPT SELECT Appelation FROM APPELLATIONS WHERE Area  =  "Central Coast"	wine_1
SELECT avg(price) FROM wine WHERE Appelation NOT IN (SELECT T1.Appelation FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation WHERE T1.County  =  'Sonoma')	wine_1
SELECT avg(price) FROM wine WHERE Appelation NOT IN (SELECT T1.Appelation FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation WHERE T1.County  =  'Sonoma')	wine_1
SELECT count(*) FROM station	train_station
SELECT name ,  LOCATION ,  number_of_platforms FROM station	train_station
SELECT DISTINCT LOCATION FROM station	train_station
SELECT name ,  total_passengers FROM station WHERE LOCATION != 'London'	train_station
SELECT name ,  main_services FROM station ORDER BY total_passengers DESC LIMIT 3	train_station
SELECT avg(total_passengers) ,  max(total_passengers) FROM station WHERE LOCATION  =  'London' OR LOCATION  =  'Glasgow'	train_station
SELECT LOCATION ,  sum(number_of_platforms) ,  sum(total_passengers) FROM station GROUP BY LOCATION	train_station
SELECT DISTINCT LOCATION FROM station WHERE number_of_platforms  >=  15 AND total_passengers  >  25	train_station
SELECT LOCATION FROM station EXCEPT SELECT LOCATION FROM station WHERE number_of_platforms  >=  15	train_station
SELECT LOCATION FROM station GROUP BY LOCATION ORDER BY count(*) DESC LIMIT 1	train_station
SELECT name ,  TIME ,  service FROM train	train_station
SELECT count(*) FROM train	train_station
SELECT name ,  service FROM train ORDER BY TIME	train_station
SELECT LOCATION FROM station GROUP BY LOCATION HAVING count(*)  =  1	train_station
SELECT name FROM station WHERE station_id NOT IN (SELECT station_id FROM train_station)	train_station
SELECT name ,  LOCATION FROM station ORDER BY Annual_entry_exit ,  Annual_interchanges	train_station
SELECT vehicle_id FROM Vehicles;	driving_school
SELECT vehicle_id FROM Vehicles;	driving_school
SELECT count(*) FROM Vehicles;	driving_school
SELECT count(*) FROM Vehicles;	driving_school
SELECT vehicle_details FROM Vehicles WHERE vehicle_id = 1;	driving_school
SELECT vehicle_details FROM Vehicles WHERE vehicle_id = 1;	driving_school
SELECT first_name ,  middle_name ,  last_name FROM Staff;	driving_school
SELECT first_name ,  middle_name ,  last_name FROM Staff;	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";	driving_school
SELECT date_of_birth FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";	driving_school
SELECT date_joined_staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";	driving_school
SELECT date_left_staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";	driving_school
SELECT count(*) FROM Staff WHERE first_name = "Ludie";	driving_school
SELECT count(*) FROM Staff WHERE first_name = "Ludie";	driving_school
SELECT nickname FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";	driving_school
SELECT nickname FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";	driving_school
SELECT count(*) FROM Staff;	driving_school
SELECT count(*) FROM Staff;	driving_school
SELECT count(*) FROM Addresses WHERE state_province_county = "Georgia";	driving_school
SELECT count(*) FROM Addresses WHERE state_province_county = "Georgia";	driving_school
SELECT first_name ,  last_name FROM Customers;	driving_school
SELECT first_name ,  last_name FROM Customers;	driving_school
SELECT email_address ,  date_of_birth FROM Customers WHERE first_name = "Carole"	driving_school
SELECT email_address ,  date_of_birth FROM Customers WHERE first_name = "Carole"	driving_school
SELECT phone_number ,  email_address FROM Customers WHERE amount_outstanding  >  2000;	driving_school
SELECT phone_number ,  email_address FROM Customers WHERE amount_outstanding  >  2000;	driving_school
SELECT customer_status_code ,  cell_mobile_phone_number ,  email_address FROM Customers WHERE first_name = "Marina" OR last_name  =  "Kohler"	driving_school
SELECT customer_status_code ,  cell_mobile_phone_number ,  email_address FROM Customers WHERE first_name = "Marina" OR last_name  =  "Kohler"	driving_school
SELECT date_of_birth FROM Customers WHERE customer_status_code  =  'Good Customer'	driving_school
SELECT date_of_birth FROM Customers WHERE customer_status_code  =  'Good Customer'	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = "Carole" AND last_name = "Bernhard";	driving_school
SELECT date_became_customer FROM Customers WHERE first_name = "Carole" AND last_name = "Bernhard";	driving_school
SELECT count(*) FROM Customers;	driving_school
SELECT count(*) FROM Customers;	driving_school
SELECT customer_status_code , count(*) FROM Customers GROUP BY customer_status_code;	driving_school
SELECT customer_status_code , count(*) FROM Customers GROUP BY customer_status_code;	driving_school
SELECT customer_status_code FROM Customers GROUP BY customer_status_code ORDER BY count(*) ASC LIMIT 1;	driving_school
SELECT customer_status_code FROM Customers GROUP BY customer_status_code ORDER BY count(*) ASC LIMIT 1;	driving_school
SELECT max(amount_outstanding) ,  min(amount_outstanding) ,  avg(amount_outstanding) FROM Customers;	driving_school
SELECT max(amount_outstanding) ,  min(amount_outstanding) ,  avg(amount_outstanding) FROM Customers;	driving_school
SELECT first_name ,  last_name FROM Customers WHERE amount_outstanding BETWEEN 1000 AND 3000;	driving_school
SELECT first_name ,  last_name FROM Customers WHERE amount_outstanding BETWEEN 1000 AND 3000;	driving_school
SELECT count(*) FROM Customers WHERE customer_id NOT IN ( SELECT customer_id FROM Customer_Payments );	driving_school
SELECT count(*) FROM Customers WHERE customer_id NOT IN ( SELECT customer_id FROM Customer_Payments );	driving_school
SELECT payment_method_code ,  count(*) FROM Customer_Payments GROUP BY payment_method_code;	driving_school
SELECT payment_method_code ,  count(*) FROM Customer_Payments GROUP BY payment_method_code;	driving_school
SELECT count(*) FROM Lessons WHERE lesson_status_code = "Cancelled";	driving_school
SELECT count(*) FROM Lessons WHERE lesson_status_code = "Cancelled";	driving_school
SELECT last_name FROM Customers INTERSECT SELECT last_name FROM Staff	driving_school
SELECT last_name FROM Customers INTERSECT SELECT last_name FROM Staff	driving_school
SELECT first_name FROM Staff EXCEPT SELECT T2.first_name FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id  =  T2.staff_id	driving_school
SELECT first_name FROM Staff EXCEPT SELECT T2.first_name FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id  =  T2.staff_id	driving_school
SELECT count(*) FROM Faculty	activity_1
SELECT count(*) FROM Faculty	activity_1
SELECT DISTINCT rank FROM Faculty	activity_1
SELECT DISTINCT rank FROM Faculty	activity_1
SELECT DISTINCT building FROM Faculty	activity_1
SELECT DISTINCT building FROM Faculty	activity_1
SELECT rank ,  Fname ,  Lname FROM Faculty	activity_1
SELECT rank ,  Fname ,  Lname FROM Faculty	activity_1
SELECT Fname ,  Lname ,  phone FROM Faculty WHERE Sex  =  'F'	activity_1
SELECT Fname ,  Lname ,  phone FROM Faculty WHERE Sex  =  'F'	activity_1
SELECT FacID FROM Faculty WHERE Sex  =  'M'	activity_1
SELECT FacID FROM Faculty WHERE Sex  =  'M'	activity_1
SELECT count(*) FROM Faculty WHERE Sex  =  'F' AND Rank  =  "Professor"	activity_1
SELECT count(*) FROM Faculty WHERE Sex  =  'F' AND Rank  =  "Professor"	activity_1
SELECT phone ,  room ,  building FROM Faculty WHERE Fname  =  "Jerry" AND Lname  =  "Prince"	activity_1
SELECT phone ,  room ,  building FROM Faculty WHERE Fname  =  "Jerry" AND Lname  =  "Prince"	activity_1
SELECT count(*) FROM Faculty WHERE Rank  =  "Professor" AND building  =  "NEB"	activity_1
SELECT count(*) FROM Faculty WHERE Rank  =  "Professor" AND building  =  "NEB"	activity_1
SELECT fname ,  lname FROM Faculty WHERE Rank  =  "Instructor"	activity_1
SELECT fname ,  lname FROM Faculty WHERE Rank  =  "Instructor"	activity_1
SELECT building ,  count(*) FROM Faculty GROUP BY building	activity_1
SELECT building ,  count(*) FROM Faculty GROUP BY building	activity_1
SELECT building FROM Faculty GROUP BY building ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT building FROM Faculty GROUP BY building ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT building FROM Faculty WHERE rank  =  "Professor" GROUP BY building HAVING count(*)  >=  10	activity_1
SELECT building FROM Faculty WHERE rank  =  "Professor" GROUP BY building HAVING count(*)  >=  10	activity_1
SELECT rank ,  count(*) FROM Faculty GROUP BY rank	activity_1
SELECT rank ,  count(*) FROM Faculty GROUP BY rank	activity_1
SELECT rank ,  sex ,  count(*) FROM Faculty GROUP BY rank ,  sex	activity_1
SELECT rank ,  sex ,  count(*) FROM Faculty GROUP BY rank ,  sex	activity_1
SELECT rank FROM Faculty GROUP BY rank ORDER BY count(*) ASC LIMIT 1	activity_1
SELECT rank FROM Faculty GROUP BY rank ORDER BY count(*) ASC LIMIT 1	activity_1
SELECT sex ,  count(*) FROM Faculty WHERE rank  =  "AsstProf" GROUP BY sex	activity_1
SELECT sex ,  count(*) FROM Faculty WHERE rank  =  "AsstProf" GROUP BY sex	activity_1
SELECT FacID FROM Faculty EXCEPT SELECT advisor FROM Student	activity_1
SELECT FacID FROM Faculty EXCEPT SELECT advisor FROM Student	activity_1
SELECT activity_name FROM Activity	activity_1
SELECT activity_name FROM Activity	activity_1
SELECT count(*) FROM Activity	activity_1
SELECT count(*) FROM Activity	activity_1
SELECT count(DISTINCT FacID) FROM Faculty_participates_in	activity_1
SELECT count(DISTINCT FacID) FROM Faculty_participates_in	activity_1
SELECT FacID FROM Faculty EXCEPT SELECT FacID FROM Faculty_participates_in	activity_1
SELECT FacID FROM Faculty EXCEPT SELECT FacID FROM Faculty_participates_in	activity_1
SELECT FacID FROM Faculty_participates_in INTERSECT SELECT advisor FROM Student	activity_1
SELECT FacID FROM Faculty_participates_in INTERSECT SELECT advisor FROM Student	activity_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Participates_in	activity_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Participates_in	activity_1
SELECT StuID FROM Participates_in INTERSECT SELECT StuID FROM Student WHERE age  <  20	activity_1
SELECT StuID FROM Participates_in INTERSECT SELECT StuID FROM Student WHERE age  <  20	activity_1
SELECT lname FROM faculty WHERE rank  =  'Professor' EXCEPT SELECT DISTINCT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Canoeing' OR T3.activity_name  =  'Kayaking'	activity_1
SELECT lname FROM faculty WHERE rank  =  'Professor' EXCEPT SELECT DISTINCT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Canoeing' OR T3.activity_name  =  'Kayaking'	activity_1
SELECT name FROM airports WHERE city  =  'Goroka'	flight_4
SELECT name FROM airports WHERE city  =  'Goroka'	flight_4
SELECT name ,  city ,  country ,  elevation FROM airports WHERE city  =  'New York'	flight_4
SELECT name ,  city ,  country ,  elevation FROM airports WHERE city  =  'New York'	flight_4
SELECT count(*) FROM airlines	flight_4
SELECT count(*) FROM airlines	flight_4
SELECT count(*) FROM airlines WHERE country  =  'Russia'	flight_4
SELECT count(*) FROM airlines WHERE country  =  'Russia'	flight_4
SELECT max(elevation) FROM airports WHERE country  =  'Iceland'	flight_4
SELECT max(elevation) FROM airports WHERE country  =  'Iceland'	flight_4
SELECT name FROM airports WHERE country  =  'Cuba' OR country  =  'Argentina'	flight_4
SELECT name FROM airports WHERE country  =  'Cuba' OR country  =  'Argentina'	flight_4
SELECT country FROM airlines WHERE name LIKE 'Orbit%'	flight_4
SELECT country FROM airlines WHERE name LIKE 'Orbit%'	flight_4
SELECT name FROM airports WHERE elevation BETWEEN -50 AND 50	flight_4
SELECT name FROM airports WHERE elevation BETWEEN -50 AND 50	flight_4
SELECT country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
SELECT country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
SELECT count(*) FROM airports WHERE name LIKE '%International%'	flight_4
SELECT count(*) FROM airports WHERE name LIKE '%International%'	flight_4
SELECT count(DISTINCT city) FROM airports WHERE country  =  'Greenland'	flight_4
SELECT count(DISTINCT city) FROM airports WHERE country  =  'Greenland'	flight_4
SELECT name ,  city ,  country FROM airports ORDER BY elevation LIMIT 1	flight_4
SELECT name ,  city ,  country FROM airports ORDER BY elevation LIMIT 1	flight_4
SELECT name ,  city ,  country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
SELECT name ,  city ,  country FROM airports ORDER BY elevation DESC LIMIT 1	flight_4
SELECT country FROM airlines GROUP BY country ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT country FROM airlines GROUP BY country ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT country FROM airlines WHERE active  =  'Y' GROUP BY country ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT country FROM airlines WHERE active  =  'Y' GROUP BY country ORDER BY count(*) DESC LIMIT 1	flight_4
SELECT country ,  count(*) FROM airlines GROUP BY country ORDER BY count(*) DESC	flight_4
SELECT country ,  count(*) FROM airlines GROUP BY country ORDER BY count(*) DESC	flight_4
SELECT count(*) ,  country FROM airports GROUP BY country ORDER BY count(*) DESC	flight_4
SELECT count(*) ,  country FROM airports GROUP BY country ORDER BY count(*) DESC	flight_4
SELECT count(*) ,  city FROM airports WHERE country  =  'United States' GROUP BY city ORDER BY count(*) DESC	flight_4
SELECT count(*) ,  city FROM airports WHERE country  =  'United States' GROUP BY city ORDER BY count(*) DESC	flight_4
SELECT city FROM airports WHERE country  =  'United States' GROUP BY city HAVING count(*)  >  3	flight_4
SELECT city FROM airports WHERE country  =  'United States' GROUP BY city HAVING count(*)  >  3	flight_4
SELECT count(*) FROM (SELECT city FROM airports GROUP BY city HAVING count(*)  >  3)	flight_4
SELECT count(*) FROM (SELECT city FROM airports GROUP BY city HAVING count(*)  >  3)	flight_4
SELECT city ,  count(*) FROM airports GROUP BY city HAVING count(*)  >  1	flight_4
SELECT city ,  count(*) FROM airports GROUP BY city HAVING count(*)  >  1	flight_4
SELECT city FROM airports GROUP BY city HAVING count(*)  >  2 ORDER BY count(*)	flight_4
SELECT city FROM airports GROUP BY city HAVING count(*)  >  2 ORDER BY count(*)	flight_4
SELECT avg(elevation) ,  country FROM airports GROUP BY country	flight_4
SELECT avg(elevation) ,  country FROM airports GROUP BY country	flight_4
SELECT city FROM airports GROUP BY city HAVING count(*)  =  2	flight_4
SELECT city FROM airports GROUP BY city HAVING count(*)  =  2	flight_4
SELECT count(*) FROM routes WHERE dst_apid IN (SELECT apid FROM airports WHERE country  =  'Canada') AND src_apid IN (SELECT apid FROM airports WHERE country  =  'United States')	flight_4
SELECT count(*) FROM routes WHERE dst_apid IN (SELECT apid FROM airports WHERE country  =  'Canada') AND src_apid IN (SELECT apid FROM airports WHERE country  =  'United States')	flight_4
SELECT rid FROM routes WHERE dst_apid IN (SELECT apid FROM airports WHERE country  =  'United States') AND src_apid IN (SELECT apid FROM airports WHERE country  =  'United States')	flight_4
SELECT rid FROM routes WHERE dst_apid IN (SELECT apid FROM airports WHERE country  =  'United States') AND src_apid IN (SELECT apid FROM airports WHERE country  =  'United States')	flight_4
SELECT order_id FROM orders ORDER BY date_order_placed DESC LIMIT 1	tracking_orders
SELECT order_id FROM orders ORDER BY date_order_placed DESC LIMIT 1	tracking_orders
SELECT order_id ,  customer_id FROM orders ORDER BY date_order_placed LIMIT 1	tracking_orders
SELECT order_id ,  customer_id FROM orders ORDER BY date_order_placed LIMIT 1	tracking_orders
SELECT order_id FROM shipments WHERE shipment_tracking_number = "3452"	tracking_orders
SELECT order_id FROM shipments WHERE shipment_tracking_number = "3452"	tracking_orders
SELECT order_item_id FROM order_items WHERE product_id = 11	tracking_orders
SELECT order_item_id FROM order_items WHERE product_id = 11	tracking_orders
SELECT order_id FROM shipments WHERE shipment_date > "2000-01-01"	tracking_orders
SELECT order_id FROM shipments WHERE shipment_date > "2000-01-01"	tracking_orders
SELECT order_id FROM shipments WHERE shipment_date  =  (SELECT max(shipment_date) FROM shipments)	tracking_orders
SELECT order_id FROM shipments WHERE shipment_date  =  (SELECT max(shipment_date) FROM shipments)	tracking_orders
SELECT DISTINCT product_name FROM products ORDER BY product_name	tracking_orders
SELECT DISTINCT product_name FROM products ORDER BY product_name	tracking_orders
SELECT DISTINCT order_id FROM orders ORDER BY date_order_placed	tracking_orders
SELECT DISTINCT order_id FROM orders ORDER BY date_order_placed	tracking_orders
SELECT invoice_number FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"	tracking_orders
SELECT invoice_number FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"	tracking_orders
SELECT DISTINCT invoice_details FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"	tracking_orders
SELECT DISTINCT invoice_details FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"	tracking_orders
SELECT count(*) FROM architect WHERE gender  =  'female'	architecture
SELECT name ,  nationality ,  id FROM architect WHERE gender  =  'male' ORDER BY name	architecture
SELECT avg(length_feet) FROM bridge	architecture
SELECT name ,  built_year FROM mill WHERE TYPE  =  'Grondzeiler'	architecture
SELECT name FROM mill WHERE LOCATION != 'Donceel'	architecture
SELECT LOCATION FROM bridge WHERE name  =  'Kolob Arch' OR name  =  'Rainbow Bridge'	architecture
SELECT name FROM mill WHERE name LIKE '%Moulin%'	architecture
SELECT TYPE ,  count(*) FROM mill GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1	architecture
SELECT count(*) FROM architect WHERE id NOT IN ( SELECT architect_id FROM mill WHERE built_year  <  1850 );	architecture
SELECT count(*) FROM book_club	culture_company
SELECT count(*) FROM book_club	culture_company
SELECT book_title ,  author_or_editor FROM book_club WHERE YEAR  >  1989	culture_company
SELECT book_title ,  author_or_editor FROM book_club WHERE YEAR  >  1989	culture_company
SELECT DISTINCT publisher FROM book_club	culture_company
SELECT DISTINCT publisher FROM book_club	culture_company
SELECT YEAR ,  book_title ,  publisher FROM book_club ORDER BY YEAR DESC	culture_company
SELECT YEAR ,  book_title ,  publisher FROM book_club ORDER BY YEAR DESC	culture_company
SELECT publisher ,  count(*) FROM book_club GROUP BY publisher	culture_company
SELECT publisher ,  count(*) FROM book_club GROUP BY publisher	culture_company
SELECT publisher FROM book_club GROUP BY publisher ORDER BY count(*) DESC LIMIT 1	culture_company
SELECT publisher FROM book_club GROUP BY publisher ORDER BY count(*) DESC LIMIT 1	culture_company
SELECT category ,  count(*) FROM book_club GROUP BY category	culture_company
SELECT category ,  count(*) FROM book_club GROUP BY category	culture_company
SELECT category FROM book_club WHERE YEAR  >  1989 GROUP BY category HAVING count(*)  >=  2	culture_company
SELECT category FROM book_club WHERE YEAR  >  1989 GROUP BY category HAVING count(*)  >=  2	culture_company
SELECT publisher FROM book_club WHERE YEAR  =  1989 INTERSECT SELECT publisher FROM book_club WHERE YEAR  =  1990	culture_company
SELECT publisher FROM book_club WHERE YEAR  =  1989 INTERSECT SELECT publisher FROM book_club WHERE YEAR  =  1990	culture_company
SELECT publisher FROM book_club EXCEPT SELECT publisher FROM book_club WHERE YEAR  =  1989	culture_company
SELECT publisher FROM book_club EXCEPT SELECT publisher FROM book_club WHERE YEAR  =  1989	culture_company
SELECT title ,  YEAR ,  director FROM movie ORDER BY budget_million	culture_company
SELECT title ,  YEAR ,  director FROM movie ORDER BY budget_million	culture_company
SELECT COUNT (DISTINCT director) FROM movie	culture_company
SELECT COUNT (DISTINCT director) FROM movie	culture_company
SELECT title ,  director FROM movie WHERE YEAR  <=  2000 ORDER BY gross_worldwide DESC LIMIT 1	culture_company
SELECT title ,  director FROM movie WHERE YEAR  <=  2000 ORDER BY gross_worldwide DESC LIMIT 1	culture_company
SELECT director FROM movie WHERE YEAR  =  2000 INTERSECT SELECT director FROM movie WHERE YEAR  =  1999	culture_company
SELECT director FROM movie WHERE YEAR  =  2000 INTERSECT SELECT director FROM movie WHERE YEAR  =  1999	culture_company
SELECT director FROM movie WHERE YEAR  =  1999 OR YEAR  =  2000	culture_company
SELECT director FROM movie WHERE YEAR  =  1999 OR YEAR  =  2000	culture_company
SELECT avg(budget_million) ,  max(budget_million) ,  min(budget_million) FROM movie WHERE YEAR  <  2000	culture_company
SELECT avg(budget_million) ,  max(budget_million) ,  min(budget_million) FROM movie WHERE YEAR  <  2000	culture_company
