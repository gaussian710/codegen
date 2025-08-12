SELECT COUNT(*) FROM head WHERE age > 56
SELECT head.name, head.born_state, head.age FROM head ORDER BY head.age NULLS LAST
SELECT CAST(creation AS INT), name, budget_in_billions FROM department
SELECT MAX(Budget_in_Billions), MIN(Budget_in_Billons) FROM department
-1
SELECT head.name FROM head WHERE head.born_state <> 'California'
SELECT DISTINCT head.born_state FROM head GROUP BY head.born_state HAVING COUNT(head.head_id) >= 3
SELECT EXTRACT(YEAR FROM TO_TIMESTAMP(creation, 'YYYY-MM-DD HH24:MI:SS')), COUNT(*) FROM department GROUP BY YEAR ORDER BY number_of_departments DESC LIMIT 1
SELECT COUNT(*) FROM management
SELECT COUNT(*) FROM department WHERE head_id IS NULL
SELECT head.head_id, head.name FROM head WHERE head.name ILIKE '%Ha%'
SELECT COUNT(*) FROM farm
SELECT COUNT(*) FROM farm
SELECT farm.total_horses FROM farm ORDER BY farm.total_horses ASC
SELECT farm.farm_id, SUM(farm.total_horses) FROM farm GROUP BY farm.farm_id ORDER BY total_horses ASC
SELECT farm_competition.hosts FROM farm_competition WHERE NOT farm_competition.theme ILIKE '%Aliens%' ORDER BY farm_competition.hosts NULLS LAST
SELECT farm_competition.hosts FROM farm_competition WHERE NOT farm_competition.theme ILIKE '%Aliens%'
SELECT farm_competition.year, farm_competition.theme FROM farm_competition ORDER BY farm_competition.year ASC
SELECT farm_competition.year, farm_competition.theme FROM farm_competition ORDER BY farm_competition.year ASC
SELECT AVG(working_horses) FROM farm WHERE total_horses > 5000
SELECT AVG(working_horses) FROM farm WHERE total_horses > 5000
SELECT MAX(Cows), MIN(Cows) FROM farm
SELECT MAX(Cows), MIN(Cows) FROM farm
SELECT COUNT(DISTINCT city.status) FROM city
SELECT COUNT(DISTINCT city.status) FROM city
SELECT city.official_name FROM city ORDER BY city.population DESC
SELECT city.official_name FROM city ORDER BY city.population DESC
SELECT c.official_name, c.status FROM city AS c WHERE c.population = (SELECT MAX(population) FROM city)
SELECT c.official_name, c.status FROM city AS c WHERE c.population = (SELECT MAX(population) FROM city)
SELECT city.status, AVG(city.population) FROM city GROUP BY city.status ORDER BY city.status NULLS LAST
SELECT c.status, AVG(c.population) FROM city AS c GROUP BY c.status
SELECT city.status, COUNT(city.official_name) FROM city GROUP BY city.status ORDER BY number_of_cities DESC
SELECT city.status, COUNT(*) FROM city GROUP BY city.status ORDER BY frequency ASC
SELECT city.official_name, status.status_type, COUNT(*) FROM city JOIN status ON city.status = status.status_type GROUP BY city.official_name, status.status_type ORDER BY frequency DESC
SELECT city.status, COUNT(*) FROM city GROUP BY city.status ORDER BY frequency DESC LIMIT 1
SELECT city.official_name FROM city WHERE NOT city.city_id IN (SELECT competition.city_id FROM competition)
SELECT c.official_name FROM city AS c LEFT JOIN farm_competition AS f ON c.city_id = f.city_id WHERE f.city_id IS NULL
SELECT city.status FROM city WHERE city.population > 1500 AND city.population < 500
SELECT DISTINCT city.status FROM city WHERE (city.population > 1500 AND city.population < 500) OR (city.population > 500 AND city.population < 1500)
SELECT city.official_name FROM city WHERE city.population > 1500 AND city.population < 500
SELECT city.official_name FROM city WHERE city.population > 1500 OR city.population < 500
SELECT city.census_ranking FROM city WHERE city.status <> 'Village' ORDER BY city.census_ranking NULLS LAST
SELECT city.census_ranking FROM city WHERE city.status <> 'Village' ORDER BY city.census_ranking NULLS LAST
SELECT student_id FROM Student_Course_registrations GROUP BY student_id HAVING COUNT(course_id) = (SELECT MIN(COUNT(course_id)) FROM Student_Course_registrations)
SELECT Student_Course_registrations.student_id FROM Student_Course_registrations GROUP BY Student_Course_registrations.student_id HAVING COUNT(Student_Course_registrations.course_id) = (SELECT MIN(COUNT(course_id)) FROM Student_Course_registrations)
SELECT s.student_id FROM Students AS s LEFT JOIN Enrollments AS e ON s.student_id = e.student_id WHERE e.student_id IS NULL
SELECT s.student_id FROM Students AS s LEFT JOIN Enrollments AS e ON s.student_id = e.student_id WHERE e.student_id IS NULL
SELECT student_id FROM Student_Course_attendance GROUP BY student_id HAVING COUNT(course_id) > 0
SELECT DISTINCT student_id FROM Student_Course_Attendance
SELECT MAX(assessment_date), MIN(candidate_id) FROM Candidate_Assessments
SELECT MAX(assessment_date), MIN(candidate_id) FROM Candidate_Assessments
SELECT candidate_id FROM Candidate_Assessments WHERE asessment_outcome_code = 'Pass'
SELECT candidate_id FROM Candidate_Assessments WHERE assessment_outcome_code = 'Pass'
SELECT Student_Course_attendance.student_id FROM Student_Course_attendance WHERE Student_Course_attendance.course_id = 301
SELECT Student_Course_attendance.student_id FROM Student_Course_attendance WHERE Student_Course_attendance.course_id = 301
SELECT s.student_id FROM Student_Course_attendance AS sa JOIN Student AS s ON sa.student_id = s.student_id WHERE sa.course_id = 301 ORDER BY sa.date_of_attendance DESC LIMIT 1
SELECT s.student_id FROM Student_Course_scattendance AS s JOIN Course AS c ON s.course_id = c.course_id WHERE c.course_code = '301' ORDER BY s.date_of_attendance DESC
SELECT course_name FROM Courses ORDER BY course_name ASC
SELECT course_name FROM Courses ORDER BY course_name ASC
SELECT People.first_name FROM People ORDER BY People.first_name ASC
SELECT People.first_name FROM People ORDER BY People.first_name ASC
SELECT student_id FROM Student_Course_registrations UNION SELECT student_id FROM Course_Attances
SELECT DISTINCT student_id FROM Student_Course_registrations
SELECT DISTINCT Student_Course_registrations.course_id FROM Student_Course_registrations WHERE Student_Course_registrations.student_id = 121
SELECT DISTINCT Student_Course_registrations.course_id FROM Student_Course_registrations WHERE Student_Course_registrations.student_id = 121
SELECT Student_Course_registrations.student_id FROM Student_Course_registrations WHERE NOT Student_Course_registrations.student_id IN (SELECT Student_Course_attendances.student_id FROM Student_Course_attendments)
SELECT Student_Course_registrations.student_id FROM Student_Course_registrations WHERE NOT Student_Course_registrations.student_id IN (SELECT student_id FROM Course_Attancees)
SELECT weather.date FROM weather WHERE weather.max_temperature_f > 85
SELECT weather.date FROM weather WHERE weather.max_temperature_f > '85' ORDER BY weather.date NULLS LAST
SELECT station.name FROM station WHERE station.lat < 37.5
SELECT station.name FROM station WHERE station.lat < 37.5
SELECT c.name, s.name, MAX(a.lat) FROM station AS a JOIN city AS c ON a.city = c.name GROUP BY c.name, s.name
SELECT c.name, MAX(s.lat) FROM station AS s JOIN city AS c ON s.city = c.name GROUP BY c.name
SELECT r.id, r.start_date, r.end_date FROM ride AS r ORDER BY r.id ASC NULLS LAST LIMIT 3
SELECT r.id, r.start_station_name, r.end_station_name, ROW_NUMBER() OVER (ORDER BY r.id) FROM ride AS r ORDER BY r.id ASC LIMIT 3
SELECT AVG(lat), AVG(long) FROM station WHERE "city" ILIKE '%San%Jose%'
SELECT AVG(lat), AVG(long) FROM station WHERE city = 'San Jose'
SELECT trip.id FROM ride WHERE duration = (SELECT MIN(duration) FROM ride)
SELECT MIN(id) FROM trip
SELECT SUM(duration), MAX(duration) FROM ride WHERE bike_id = 636
SELECT SUM(duration), MAX(duration) FROM ride WHERE bike_id = 636
SELECT weather.zip_code, AVG(weather.mean_temperature_f) FROM weather WHERE EXTRACT(MONTH FROM CAST(weather.date AS DATE)) = 8 GROUP BY weather.zip_code
SELECT weather.zip_code, AVG(weather.mean_temperature_f) FROM weather WHERE weather.date ILIKE '8%' GROUP BY weather.zip_code
SELECT COUNT(DISTINCT bike_id) FROM trip
SELECT COUNT(DISTINCT bike_id) FROM ride
SELECT COUNT(DISTINCT station.city) FROM station
SELECT COUNT(DISTINCT station.city) FROM station
SELECT COUNT(*) FROM station WHERE city ILIKE '%Mountain%'
SELECT COUNT(*) FROM station WHERE city = 'Mountain View'
SELECT start_station_name, start_station_id FROM ride GROUP BY start_station_name, start_station_id HAVING COUNT(*) > (SELECT COUNT(*) FROM ride WHERE start_date LIKE 'August%')
SELECT s.start_station_name, CAST(COUNT(*) AS FLOAT) / NULLIF((SELECT COUNT(*) FROM trip WHERE start_date LIKE '2019-08%'), 0) FROM station AS s JOIN trip AS r ON s.id = r.start_station_id GROUP BY s.start_station_name ORDER BY ratio DESC LIMIT 1
SELECT r.bike_id, COUNT(r.id) FROM ride AS r WHERE r.zip_code = 94002 GROUP BY r.bike_id ORDER BY frequency DESC LIMIT 1
SELECT MAX(r.duration), b.id FROM ride AS r JOIN station AS h ON r.station_id = h.id WHERE h.zip_code = 94002 GROUP BY b.id
SELECT COUNT(*) FROM weather WHERE mean_humidity > 50 AND mean_visibility_miles > 8
SELECT COUNT(*) FROM weather WHERE mean_humidity > 50 AND mean_visibility_miles > 8
SELECT station.id FROM station WHERE city ILIKE '%San%Francisco%' GROUP BY id HAVING AVG(dock_count) > 10
SELECT station.id FROM station WHERE station.city = 'San Francisco' AND (station.dock_count > 10 OR station.dock_count IS NULL) GROUP BY station.id HAVING COUNT(*) > 1
SELECT weather.cloud_cover, COUNT(*) FROM weather WHERE weather.zip_code = 94107 GROUP BY weather.cloud_cover ORDER BY frequency DESC LIMIT 3
SELECT weather.cloud_cover, COUNT(*) FROM weather WHERE weather.zip_code = 94107 GROUP BY weather.cloud_cover ORDER BY frequency DESC LIMIT 3
SELECT weather.zip_code, AVG(weather.mean_sea_level_pressure_inches) FROM weather GROUP BY weather.zip_code ORDER BY avg_pressure ASC NULLS LAST LIMIT 1
SELECT weather.zip_code, AVG(weather.mean_sea_level_pressure_inches) FROM weather GROUP BY weather.zip_code ORDER BY avg_pressure ASC NULLS LAST LIMIT 1
SELECT AVG(status.bikes_available) FROM status WHERE NOT status.station_id IN (SELECT station_id FROM station WHERE city ILIKE '%Palo%Alto%')
SELECT AVG(status.bikes_available) FROM status WHERE NOT status.station_id IN (SELECT station_id FROM station WHERE station_name ILIKE '%Palo%Alto%') AND NOT status.station_id IS NULL
SELECT AVG(station.long) FROM station AS station WHERE (SELECT COUNT(bike_stands.id) FROM bike_stands WHERE bike_stands.station = station.id) <= 10
SELECT AVG(station.long) FROM station AS station WHERE station.dock_count <= 10
SELECT weather.zip_code, MAX(weather.max_temperature_f) FROM weather WHERE weather.max_temperature_f >= 80 GROUP BY weather.zip_code ORDER BY max_temp DESC
SELECT weather.zip_code, MAX(weather.max_temperature_f), MAX(weather.date) FROM weather GROUP BY weather.zip_code HAVING MAX(weather.max_temperature_f) >= 80
SELECT weather.zip_code, COUNT(*) FROM weather WHERE weather.max_wind_speed_mph >= 25 GROUP BY weather.zip_code
SELECT weather.zip_code, COUNT(*) FROM weather WHERE weather.max_wind_speed_mph >= 25 GROUP BY weather.zip_code
SELECT weather.date, weather.zip_code FROM weather WHERE weather.min_dew_point_f < (SELECT MIN(weather.min_dew_point_f) FROM weather WHERE weather.zip_code = 94107) AND weather.zip_code <> 94107 ORDER BY weather.date NULLS LAST
SELECT weather.date, weather.zip_code FROM weather WHERE weather.min_dew_point_f < (SELECT MIN(weather.min_dew_point_f) FROM weather WHERE weather.zip_code = 94107) AND weather.zip_code IN (SELECT weather.zip_code FROM weather WHERE weather.date = weather.date) GROUP BY weather.date, weather.zip_code HAVING COUNT(DISTINCT weather.zip_code) > 1 ORDER BY weather.date NULLS LAST
SELECT weather.date FROM weather WHERE weather.zip_code = 94107 AND weather.events ILIKE '%Fog%' OR weather.events ILIKE '%Rain%'
SELECT weather.date FROM weather WHERE weather.zip_code <> 94107 AND weather.foggy = 'No' GROUP BY weather.date
SELECT station.id FROM station WHERE (station.lat > 37.4 AND station.dock_count >= 7) GROUP BY station.id HAVING NOT MAX(station.dock_count) IS NULL
SELECT station.id FROM station WHERE (station.lat > 37.4 AND station.dock_count >= 7) GROUP BY station.id
SELECT h.name, h.lat, h.city FROM harbor_hack AS h WHERE h.lat = (SELECT MIN(lat) FROM harbor_hock)
SELECT a.name, a.lat, a.city FROM dock_station AS a JOIN (SELECT id FROM dock_station ORDER BY long DESC LIMIT 1) AS b ON a.id = b.id
SELECT weather.date, AVG(weather.mean_temperature_f), AVG(weather.mean_humidity) FROM weather GROUP BY weather.date ORDER BY MAX(weather.max_gust_speed_mph) DESC LIMIT 3
SELECT weather.date, AVG(weather.mean_temperature_f) AS avg_mean_temperature_f, AVG(weather.mean_humidity) AS avg_humidity FROM weather GROUP BY weather.date HAVING MAX(weather.max_gust_speed_mph) IN (SELECT MAX(MAX_gust_speed_mph)) FROM weather GROUP BY weather.date ORDER BY weather.date NULLS LAST
SELECT c.name, COUNT(s.id) FROM city AS c JOIN station AS s ON c.id = s.city GROUP BY c.name HAVING COUNT(s.id) >= 15
SELECT c.name, COUNT(*) FROM station AS a JOIN city AS c ON a.city = c.name GROUP BY c.name HAVING COUNT(a.id) >= 15
SELECT start_station_id, start_station_name FROM station.ride WHERE start_date LIKE '2019-01-01%' GROUP BY start_station_id, start_station_name HAVING COUNT(id) >= 200
SELECT s.id, s.name FROM station_stations AS s JOIN (SELECT start_station_id, COUNT(*) FROM rides GROUP BY start_station_id) AS c ON s.id = c.start_station_id WHERE c.rideps_count >= 200
SELECT weather.zip_code FROM weather WHERE weather.mean_visibility_miles < 10
SELECT weather.zip_code FROM weather WHERE weather.mean_visibility_miles < 10 ORDER BY weather.zip_code NULLS LAST
SELECT c.name, s.lat FROM city AS c JOIN station AS h ON c.id = h.city WHERE NOT h.lat IS NULL ORDER BY h.lat DESC
SELECT c.name, AVG(l.long) FROM city AS c JOIN station AS l ON c.id = l.city GROUP BY c.name ORDER BY average_long DESC
SELECT weather.date, MAX(weather.cloud_cover) FROM weather GROUP BY weather.date ORDER BY max_cloud_cover DESC LIMIT 5
SELECT weather.date, weather.cloud_cover FROM weather ORDER BY weather.cloud_cover DESC LIMIT 5
SELECT r.id, r.duration FROM ride_duration_ranking AS rdr JOIN ride AS r ON rdr.ride_id = r.id ORDER BY r.duration DESC LIMIT 3
SELECT id, duration FROM ride ORDER BY duration DESC LIMIT 1) SELECT r.id, r.duration FROM ride r JOIN ride_durations rd ON r.duration = rd.duration
SELECT DISTINCT start_station_name FROM ride WHERE duration < 100
SELECT DISTINCT start_station_name FROM trip WHERE duration < 100
SELECT weather.zip_code FROM weather WHERE weather.max_dew_point_f < 70 ORDER BY weather.zip_code NULLS LAST
SELECT weather.zip_code FROM weather WHERE weather.max_dew_point_f < 70 ORDER BY weather.zip_code NULLS LAST
SELECT r.id FROM ride AS r JOIN (SELECT AVG(duration) FROM ride WHERE zip_code = 94103) AS avg_duration_ride ON r.duration >= avg_duration_ride.avg_duration
SELECT r.id FROM ride AS r JOIN (SELECT AVG(duration) FROM ride WHERE zip_code = 94103) AS avg_duration ON r.duration >= avg_duration.avg_duration
SELECT weather.date FROM weather WHERE (weather.mean_sea_level_pressure_inches BETWEEN 30.3 AND 31) GROUP BY weather.date
SELECT weather.date FROM weather WHERE (weather.mean_sea_level_pressure_inches BETWEEN 30.3 AND 31) GROUP BY weather.date
SELECT weather.date, (weather.max_temperature_f - weather.min_temperature_f) FROM weather ORDER BY temperature_difference ASC LIMIT 1
SELECT weather.date, (weather.max_temperature_f - weather.min_temperature_f) FROM weather ORDER BY temperature_range ASC LIMIT 1
SELECT weather.zip_code FROM weather WHERE weather.mean_humidity < 70 GROUP BY weather.zip_code HAVING COUNT(weather.id) >= 100
SELECT weather.zip_code FROM weather WHERE weather.mean_humidity < 70 GROUP BY weather.zip_code HAVING COUNT(weather.id) >= 100
SELECT a.name FROM station AS a JOIN (SELECT c.station_id, COUNT(trip_id) FROM trip AS c GROUP BY c.station_id) AS b ON a.id = b.station_id WHERE a.city = 'Palo Alto' AND b.ridep_count <= 100
SELECT station.name FROM station WHERE "city" ILIKE '%Palo%Alto%' AND NOT id IN (SELECT trip_end.station_id FROM trip_end)
SELECT COUNT(*) FROM book
SELECT book.writer FROM book ORDER BY book.writer ASC
SELECT book.title FROM book ORDER BY book.issues ASC
SELECT book.title FROM book WHERE book.writer <> 'Elaine Lee' ORDER BY book.issues DESC
SELECT book.title, book.issues FROM book
SELECT publication.publication_date FROM publication ORDER BY publication.price DESC
SELECT DISTINCT publication.publisher FROM publication WHERE publication.price > 5000000
SELECT publication.publisher FROM publication ORDER BY publication.price DESC LIMIT 1
SELECT publication.publication_date FROM publication ORDER BY price ASC NULLS LAST LIMIT 3
SELECT publication.publisher FROM publication GROUP BY publication.publisher HAVING COUNT(publication.publication_id) > 1
SELECT publication.publisher, COUNT(publication.book_id) FROM publication GROUP BY publication.publisher
SELECT publication.publication_date FROM publication GROUP BY publication.publication_date ORDER BY COUNT(publication.publication_date) DESC LIMIT 1
SELECT writer FROM book GROUP BY writer HAVING COUNT(book_id) > 1
SELECT book.title FROM book WHERE book.issues IS NULL
SELECT DISTINCT publication.publisher FROM publication WHERE publication.price > 10000000 AND publication.price < 5000000
SELECT COUNT(DISTINCT Publication_Date) FROM publication
SELECT COUNT(DISTINCT Publication_Date) FROM publication
SELECT publication.price FROM publication WHERE publication.publisher IN ('Person', 'Wiley')
SELECT COUNT(*) FROM actor
SELECT COUNT(*) FROM actor
SELECT actor.name FROM actor ORDER BY actor.name ASC
SELECT actor.name FROM actor ORDER BY actor.name ASC
SELECT actor.name, COUNT(actor_musical.actor_id) FROM actor JOIN actor_musical ON actor.actor_id = actor_musical.actor_id GROUP BY actor.name
SELECT a.actor_id, a.name, c.character, d.duration FROM actor AS a JOIN musical AS c ON a.musical_id = c.musical_id JOIN duration AS d ON c.duration_id = d.duration_id
SELECT actor.name FROM actor WHERE actor.age <> 20
SELECT actor.name FROM actor WHERE age <> 20
SELECT actor.name, actor.character FROM actor ORDER BY actor.age DESC
SELECT actor.character FROM actor ORDER BY actor.age DESC
SELECT MAX(duration) FROM actor
SELECT MAX(age), COUNT(actor_id) FROM actor
SELECT Musical.Name FROM Musical WHERE Musical.Nominee ILIKE '%Bob%Fosse%' ORDER BY Musical.Name NULLS LAST
SELECT m.name FROM musical AS m JOIN nomine AS j ON m.nominee = j.name WHERE j.name ILIKE '%Bob%Fosse%'
SELECT m.name FROM musical AS m WHERE m.award <> 'Tony Award'
SELECT m.name FROM musical AS m WHERE m.award <> 'Tony Award'
SELECT m.name, COUNT(n.nominee) FROM musical AS m JOIN nomine AS n ON m.award = n.award GROUP BY m.name
SELECT m.name, COUNT(n.nominee) FROM musical AS m JOIN nomine AS n ON m.nominee = n.name GROUP BY m.name
SELECT m.name, COUNT(n.nominee) FROM musical AS m JOIN musical AS n ON m.musical_id = n.nominee GROUP BY m.name ORDER BY num_nominations DESC LIMIT 1
SELECT m.nominee, COUNT(*) FROM musical AS m GROUP BY m.nominee ORDER BY num_musicals DESC LIMIT 1
SELECT musical.result, COUNT(*) FROM musical GROUP BY musical.result ORDER BY frequency DESC LIMIT 1
SELECT musical.result, COUNT(*) FROM musical GROUP BY musical.result ORDER BY frequency DESC LIMIT 1
SELECT m.nominee FROM musical AS m GROUP BY m.nominee HAVING COUNT(m.musical_id) > 2
SELECT musical.nominee FROM musical GROUP BY musical.nominee HAVING COUNT(musical.nominee) > 2
SELECT m.name FROM musical AS m LEFT JOIN actor_musical_id_crossref AS ac ON m.musical_id = ac.musical_id WHERE ac.actor_id IS NULL
SELECT m.name FROM musical AS m LEFT JOIN actor AS a ON m.musical_id = a.musical_id WHERE a.actor_id IS NULL
SELECT m.name FROM musical AS m WHERE m.award = 'Tony Award' AND m.nominee = 'Drama Desk Award'
SELECT m.name FROM musical AS m WHERE m.award = 'Tony' AND m.category = 'Award' AND m.name IN (SELECT n.nominee FROM musical AS n WHERE n.award = 'Drama Desk')
SELECT Musical_ID, Name, Year, Award, Category, Nominee, Result FROM musical WHERE (Award = 'Bob Fosse' OR Actor = 'Cleavant Darricks') AND NOT Result IS NULL
SELECT musical.nominee FROM musical WHERE (musical.award = 'Bob Fosse' OR musical.award = 'Cleavant Derricks') AND musical.category = 'Musical'
SELECT user_profiles.email FROM user_profiles WHERE user_profiles.name ILIKE '%Mary%'
SELECT user_profiles.partitionid FROM user_profiles WHERE user_profiles.name ILIKE '%Iron%Man%'
SELECT COUNT(*) FROM user_profiles
SELECT u.username, COUNT(f.f1) FROM users AS u JOIN follows AS f ON u.id = f.f2 GROUP BY u.username
SELECT u.username, COUNT(f.f1) FROM users AS u JOIN follows AS f ON u.id = f.f2 GROUP BY u.username
SELECT COUNT(*) FROM tweets
SELECT COUNT(DISTINCT uid) FROM tweets
SELECT user_profiles.name, user_profiles.email FROM user_profiles WHERE user_profiles.name ILIKE '%Swift%'
SELECT user_profiles.name FROM user_profiles WHERE user_profiles.email ILIKE '%superstar%' OR user_profiles.email ILIKE '%edu%'
SELECT tweets.text FROM tweets WHERE tweets.text ILIKE '%Internet%'
SELECT user_profiles.name, user_profiles.email FROM user_profiles WHERE user_profiles.followers > 1000
SELECT user_profiles.name FROM user_profiles ORDER BY user_profiles.followers DESC LIMIT 1
SELECT u.name, u.email, MIN(p.followers) FROM user_profiles AS u JOIN user_profiles AS p ON u.partitionid = p.partitionid GROUP BY u.name, u.email
SELECT user_profiles.name, user_profiles.followers FROM user_profiles ORDER BY user_profiles.followers DESC
SELECT u.uid, u.name, COUNT(f.followee) AS num_followers FROM user_profiles u JOIN follows f ON u.uid = f.follower OR u.uid = f.followee GROUP BY u.uid, u.name), top_5_users AS (SELECT name FROM user_followers ORDER BY num_followers DESC NULLS LAST LIMIT 5) SELECT tf.name, rank() OVER (ORDER BY num_followers DESC NULLS LAST) AS rank, dense_rank() OVER (ORDER BY num_followers DESC NULLS LAST) AS dense_rank FROM top_5_users tf JOIN user_followers uf ON tf.name = uf.name
SELECT tweets.text FROM tweets ORDER BY tweets.createdate DESC
SELECT user_tweets.uid FROM user_tweets)
SELECT AVG(user_profiles.followers) FROM user_profiles WHERE user_profiles.uid IN (SELECT user_tweets.uid FROM user_tweets)
SELECT MAX(followers), SUM(followers) FROM user_profiles
SELECT catalog_entry_name FROM Catalog_Contents
SELECT catalog_entry_name FROM Catalog_Contents
SELECT Attribute_Definitions.attribute_data_type FROM Attribute_Definitions GROUP BY Attribute_Theories.attribute_data_type HAVING COUNT(Attribute_Theifiers.attribute_id) > 3
SELECT Attribute_Definitions.attribute_data_type FROM Attribute_Definitions GROUP BY Attribute_Definitions.attribute_data_type HAVING COUNT(Attribute_Definitions.attribute_id) > 3
SELECT Attribute_Definitions.attribute_data_type FROM Attribute_Definitions WHERE Attribute_Definitions.attribute_name ILIKE '%green%'
SELECT Attribute_Definitions.attribute_data_type FROM Attribute_Definitions WHERE Attribute_Definitions.attribute_name ILIKE '%green%'
SELECT Catalog_Structure.catalog_level_name, Catalog_Structure.catalog_level_number FROM Catalog_Structure WHERE Catalog_Structure.catalog_level_number BETWEEN 5 AND 10
SELECT Catalog_Structure.catalog_level_name, CAST(Catalog_Structure.catalog_level_number AS FLOAT) FROM Catalog_Structure WHERE (CAST(Catalog_Structure.catalog_level_number AS FLOAT)) BETWEEN 5 AND 10
SELECT Catalogs.catalog_publisher FROM Catalogs WHERE Catalogs.catalog_publisher ILIKE '%Murray%'
SELECT Catalogs.catalog_publisher FROM Catalogs WHERE Catalogs.catalog_publisher ILIKE '%Murray%'
SELECT Catalogs.catalog_publisher, COUNT(Catalogs.catalog_id) FROM Catalogs GROUP BY Catalogs.catalog_publisher ORDER BY number_of_catalogs DESC LIMIT 1
SELECT Catalogs.catalog_publisher, COUNT(Catalogs.catalog_id) FROM Catalogs GROUP BY Catalogs.catalog_publisher ORDER BY number_of_catalogs DESC LIMIT 1
SELECT Catalog_Contents.catalog_entry_name FROM Catalog_Contents WHERE Catalog_Contents.price_in_dollars = (SELECT MAX(Catalog_Contents.price_in_dollars) FROM Catalog_Contents)
SELECT Catalog_Contents.catalog_entry_name FROM Catalog_Contents WHERE Catalog_Contents.price_in_dollars = (SELECT MAX(Catalog_Contents.price_in_dollars) FROM Catalog_Contents)
SELECT AVG(price_in_euros), MIN(price_in_euros) FROM Catalog_Contents
SELECT AVG(price_in_euros), MIN(price_in_euros) FROM Catalog_Contents
SELECT Catalog_Contents.catalog_entry_name FROM Catalog_Contents WHERE Catalog_Contents.height = (SELECT MAX(Catalog_Contents.height) FROM Catalog_Contents)
SELECT catalog_contents.catalog_entry_name FROM catalog_contents ORDER BY catalog_contents.height DESC LIMIT 1
SELECT catalog_contents.catalog_entry_name FROM catalog_contents ORDER BY catalog_contents.capacity ASC NULLS LAST LIMIT 1
SELECT catalog_contents.catalog_entry_name FROM catalog_contents ORDER BY CAST(catalog_contents.capacity AS FLOAT) ASC NULLS LAST LIMIT 1
SELECT catalog_contents.catalog_entry_name FROM catalog_contents WHERE catalog_contents.product_stock_number LIKE '2%'
SELECT catalog_contents.catalog_entry_name FROM catalog_contents WHERE catalog_contents.product_stock_number LIKE '2%' ORDER BY catalog_contents.catalog_entry_name NULLS LAST
SELECT catalog_entry_name FROM Catalog_Contents WHERE (LENGTH(catalog_entry_name) < 3 OR HEIGHT(catalog_entry_name) > 5)
SELECT catalog_contents.catalog_entry_name FROM catalog_contents WHERE (LENGTH(catalog_contents.length) < 3 OR LENGTH(catalog_contents.length) > 5)
SELECT catalog_contents.catalog_entry_name, catalog_contents.capacity FROM catalog_contents WHERE catalog_contents.price_in_dollars > 700
SELECT catalog_contents.catalog_entry_name, catalog_contents.capacity FROM catalog_contents WHERE catalog_contents.price_in_dollars > 700
SELECT date_of_publication FROM Catalogs WHERE date_of_latest_revision > (SELECT MAX(date_of_last_revision) FROM Catalogs GROUP BY date_of_publication HAVING COUNT(date_of_last_revision) > 1)
SELECT date_of_publication FROM Catalogs WHERE date_of_latest_revision > date_of_publication GROUP BY date_of_publication HAVING COUNT(catalog_id) > 1
SELECT COUNT(product_stock_number) FROM Catalog_Contents
SELECT COUNT(catalog_entry_id) FROM Catalog_Contents
SELECT catalog_contents.catalog_entry_name FROM catalog_contents WHERE catalog_contents.next_entry_id > 8
SELECT Catalog_Contents.catalog_entry_name FROM Catalog_Contents WHERE Catalog_Contents.next_entry_id > 8
SELECT COUNT(*) FROM aircraft
SELECT COUNT(*) FROM aircraft
SELECT a.name, CAST(CAST(a.distance AS FLOAT) AS TEXT) FROM aircraft AS a
SELECT a.name, CAST(CAST(a.distance AS FLOAT) AS TEXT) FROM aircraft AS a
SELECT a.aid FROM aircraft AS a WHERE a.distance > 1000
SELECT a.aid FROM aircraft AS a WHERE a.distance > 1000
SELECT COUNT(*) FROM aircraft WHERE distance BETWEEN 1000 AND 5000
SELECT COUNT(*) FROM aircraft WHERE distance BETWEEN 1000 AND 5000
SELECT a.name, CAST(a.distance AS TEXT) FROM aircraft AS a WHERE a.aid = 12
SELECT a.name, CAST(CAST(a.distance AS FLOAT) AS TEXT) FROM aircraft AS a WHERE a.aid = 12
SELECT MIN(distance), AVG(distance), MAX(distance) FROM aircraft
SELECT MIN(distance), AVG(distance), MAX(distance) FROM aircraft
SELECT a.aid, a.name FROM aircraft AS a WHERE a.distance = (SELECT MAX(b.distance) FROM aircraft AS b)
SELECT a.aid, a.name FROM aircraft AS a WHERE a.distance = (SELECT MAX(b.distance) FROM aircraft AS b)
SELECT a.name FROM aircraft AS a ORDER BY a.distance ASC NULLS LAST LIMIT 3
SELECT a.name FROM aircraft AS a ORDER BY LENGTH(a.name) ASC NULLS LAST LIMIT 3
SELECT a.name FROM aircraft AS a WHERE a.distance > (SELECT AVG(distance) FROM aircraft)
SELECT a.name FROM aircraft AS a WHERE a.distance > (SELECT AVG(distance) FROM aircraft)
SELECT COUNT(eid) FROM employee
SELECT COUNT(eid) FROM employee
SELECT employee.name, employee.salary FROM employee ORDER BY employee.salary NULLS LAST
SELECT employee.name, employee.salary FROM employee ORDER BY employee.salary NULLS LAST
SELECT employee.eid FROM employee WHERE employee.salary >= 100000
SELECT eid FROM employee WHERE salary >= 100000
SELECT COUNT(*) FROM employee WHERE salary BETWEEN 100000 AND 200000
SELECT COUNT(*) FROM employee WHERE salary BETWEEN 100000 AND 200000
SELECT e.name, e.salary FROM employee AS e WHERE e.eid = 242518965
SELECT e.name, e.salary FROM employee AS e WHERE e.eid = 242518965
SELECT AVG(salary), MAX(salary) FROM employee
SELECT AVG(salary), MAX(salary) FROM employee
SELECT eid, name FROM employee ORDER BY salary DESC LIMIT 1
SELECT eid, name FROM employee WHERE salary = (SELECT MAX(salary) FROM employee)
SELECT employee.name FROM employee ORDER BY employee.salary ASC NULLS LAST LIMIT 3
SELECT employee.name FROM employee ORDER BY employee.salary ASC NULLS LAST LIMIT 3
SELECT employee.name FROM employee WHERE employee.salary > (SELECT AVG(employee.salary) FROM employee)
SELECT employee.name FROM employee WHERE employee.salary > (SELECT AVG(employee.salary) FROM employee)
SELECT eid, salary FROM employee WHERE name ILIKE '%Mark%Young%'
SELECT eid, salary FROM employee WHERE name ILIKE '%Mark%Young%'
SELECT COUNT(flight.flno) FROM flight
SELECT COUNT(flight.flno) FROM flight
SELECT flight.flno, flight.origin, flight.destination FROM flight ORDER BY flight.origin ASC
SELECT flight.flno, flight.origin, flight.destination FROM flight ORDER BY flight.origin ASC
SELECT flno FROM flight WHERE origin = 'Los Angeles'
SELECT COUNT(flight.flno) FROM flight WHERE origin = 'Los Angeles'
SELECT flight.origin FROM flight WHERE flight.destination = 'Honolulu'
SELECT flight.origin FROM flight WHERE flight.destination = 'Honolulu'
SELECT flight.departure_date, flight.arrival_date FROM flight WHERE flight.origin = 'Los Angeles' AND flight.destination = 'Honolulu'
SELECT flight.departure_date, flight.arrival_date FROM flight WHERE flight.origin = 'LA' AND flight.destination = 'Honolulu'
SELECT flno FROM flight WHERE distance > 2000
SELECT COUNT(*) FROM flight WHERE distance > 2000
SELECT AVG(flight.price) FROM flight WHERE flight.origin = 'Los Angeles' AND flight.destination = 'Honolulu'
SELECT AVG(flight.price) FROM flight WHERE flight.origin = 'LA' AND flight.destination = 'Honolulu'
SELECT flight.origin, flight.destination FROM flight WHERE flight.price > 300
SELECT flight.origin, flight.destination FROM flight WHERE flight.price > 300
SELECT flno, price, length() OVER (PARTITION BY aid ORDER BY price DESC) AS rank FROM flight WHERE price = (SELECT MAX(price) FROM flight)
SELECT flno, distance FROM flight WHERE price = (SELECT MAX(price) FROM flight)
SELECT flno FROM flight ORDER BY distance ASC NULLS LAST LIMIT 3
SELECT flight.flno FROM flight ORDER BY flight.distance ASC NULLS LAST LIMIT 1
SELECT AVG(flight.distance), AVG(flight.price) FROM flight AS flath WHERE flath.origin = 'Los Angeles'
SELECT AVG(flight.distance), AVG(flight.price) FROM flight WHERE flight.origin = 'LA'
SELECT flight.origin, COUNT(flight.flno) FROM flight GROUP BY flight.origin
SELECT flight.origin, COUNT(*) FROM flight GROUP BY flight.origin
SELECT flight.destination, COUNT(flight.flno) FROM flight GROUP BY flight.destination
SELECT flight.destination, COUNT(flight.flno) FROM flight GROUP BY flight.destination ORDER BY total_flights DESC
SELECT flight.origin, COUNT(flight.flno) FROM flight GROUP BY flight.origin ORDER BY total_flights DESC LIMIT 1
SELECT flight.origin, COUNT(flight.flno) FROM flight GROUP BY flight.origin ORDER BY total_flights DESC LIMIT 1
SELECT flight.destination, COUNT(flight.flno) FROM flight GROUP BY flight.destination ORDER BY total_flights ASC NULLS LAST LIMIT 1
SELECT flight.origin, COUNT(flight.flno) FROM flight GROUP BY flight.origin ORDER BY total_flights ASC NULLS LAST LIMIT 1
SELECT COUNT(*) FROM certificate
SELECT COUNT(DISTINCT c.eid) FROM certificate AS c
SELECT employee.eid FROM employee WHERE NOT employee.eid IN (SELECT certification.employee_id FROM certification)
SELECT employee.eid FROM employee WHERE NOT employee.eid IN (SELECT certificate_employee.eid FROM certificate_employee)
SELECT employee.name FROM employee WHERE NOT employee.eid IN (SELECT certification.employee_id FROM certification WHERE certification.certificate_type = 'Boeing 737-800')
SELECT e.name FROM employee AS e WHERE NOT EXISTS(SELECT 1 FROM certification AS c WHERE c.eid = e.eid AND c.certification_type_code = 'B737-800')
SELECT COUNT(*) FROM Allergy_Type
SELECT COUNT(*) FROM Allergy_Type
SELECT COUNT(DISTINCT AllergyType) FROM Allergy_Type
SELECT COUNT(DISTINCT allergy) FROM Allergy_Type
SELECT Allergy_Type.Allergy FROM Allergy_Type
SELECT Allergy_Type.AllergyType FROM Allergy_Type
SELECT a.Allergy, t.allergy_type FROM Allergy_Type AS t CROSS JOIN Allergy AS a
SELECT a.name, t.allergy_type FROM Allergy_Type AS t CROSS JOIN Allergy AS a
SELECT Allergy_Type.Alllergy FROM Allergy_Type WHEREAllergy_Type.AllergyType = 'food'
SELECT DISTINCT allergy_type.allergy FROM allergy_type
SELECT Allergy_Type.Allergy FROM Allergy_Type WHEREAllergy_Type.AllergyType = 'Cat'
SELECT Allergy_Type.Allergy FROM Allergy_Type WHEREAllergyType ILIKE '%cat%'
SELECT COUNT(*) FROM Allergy_Type WHERE AllergyType = 'animal'
SELECT COUNT(*) FROM Allergy_Type WHERE AllergyType ILIKE '%animal%'
SELECT allergy_type.allergy_type, COUNT(allergy) FROM allergy_type GROUP BY allergy_type.allergy_type
SELECT Allergy_Type.AllergyType, COUNT(Allergy) AS total_allergies FROM Allergy_Type GROUP BYAllergyType
SELECT allergy_type.allergy_type, COUNT(*) FROM allergy_type GROUP BY allergy_type.allergy_type ORDER BY total_allergies DESC LIMIT 1
SELECT Allergy_Type.AllergyType FROM Allergy_Type ORDER BYAllergy_type_count DESC LIMIT 1
SELECT allergy_type.allergy_type FROM allergy_type GROUP BY allergy_type.allergy_type ORDER BY COUNT(allergy_type) ASC NULLS LAST LIMIT 1
SELECT Allergy_Type.Allergy FROM Allergy_Type GROUP BYAllergy_Type.allery ORDER BY COUNT(Allergy_type.allery) ASC LIMIT 1
SELECT COUNT(*) FROM Student
SELECT COUNT(*) FROM Student
SELECT s.fname, s.lname FROM student AS s
SELECT Student.LName, Student.Fname FROM Student
SELECT COUNT(DISTINCT Student.Advisor) FROM Student
SELECT COUNT(DISTINCT Advisor) FROM Student
SELECT Student.Major FROM Student
SELECT Student.Major FROM Student GROUP BY Student.Major
SELECT DISTINCT Student.city_code FROM Student
SELECT DISTINCT Student.city_code FROM Student WHERE Student.Major = 1
SELECT s.fname, s.lname, CAST(s.age AS FLOAT) FROM student AS s WHERE s.sex = 'F'
SELECT Student.LName, Student.Fname, CAST(Student.Age AS FLOAT) FROM Student WHERE Student.Sex = 'F'
SELECT Student.StuID FROM Student WHERE Student.Sex = 'Male'
SELECT Student.StuID FROM Student WHERE Student.Sex = 'M'
SELECT COUNT(*) FROM Student WHERE Age = 18
SELECT COUNT(*) FROM Student WHERE Age = 18
SELECT Student.StuID FROM Student WHERE Student.Age < 20
SELECT Student.StuID FROM Student WHERE Student.Age > 20
SELECT Student.city_code FROM Student WHERE Student.LName ILIKE '%Kim%'
SELECT Student.city_code FROM Student WHERE Student.fname ILIKE '%Kim%'
SELECT s.lname, s.fname FROM student AS s JOIN student AS a ON s.advisor = a.studid WHERE s.studid = 1004
SELECT s.lname, s.fname FROM student AS s WHERE s.advisor = 1004
SELECT COUNT(*) FROM Student WHERE city_code IN ('HKG', 'CHI')
SELECT COUNT(*) FROM student WHERE city_code IN ('HKG', 'CHI')
SELECT MIN(Age), AVG(Age), MAX(Age) FROM Student
SELECT MIN(Age), AVG(Age), MAX(Age) FROM Student
SELECT Student.LName FROM Student ORDER BY Student.Age ASC LIMIT 1
SELECT Student.LName FROM Student ORDER BY Student.Age ASC LIMIT 1
SELECT MIN(Student.StuID) FROM Student
SELECT MIN(Student.StuID) FROM Student
SELECT Student.Major, COUNT(*) FROM Student GROUP BY Student.Major
SELECT Student.Major, COUNT(*) FROM Student GROUP BY Student.Major
SELECT m.major_name, COUNT(s.stuid) FROM student AS s JOIN major AS m ON s.major = m.major_id GROUP BY m.major_name ORDER BY student_count DESC LIMIT 1
SELECT Student.Major FROM Student GROUP BY Student.Major ORDER BY COUNT(Student.Major) DESC LIMIT 1
SELECT Student.Age, COUNT(Student.StuID) FROM Student GROUP BY Student.Age
SELECT Student.Age, COUNT(*) FROM Student GROUP BY Student.Age ORDER BY Student.Age NULLS LAST
SELECT Sex, AVG(Age) FROM Student GROUP BY Sex
SELECT Sex, AVG(Age) FROM Student GROUP BY Sex
SELECT s.city_code, COUNT(*) FROM Student AS s GROUP BY s.city_code
SELECT s.city_code, COUNT(*) FROM student AS s GROUP BY s.city_code
SELECT a.name, COUNT(s.stuID) FROM advisor AS a JOIN student AS s ON a.advisor_id = s.advisor GROUP BY a.name
SELECT s.advisor, COUNT(*) FROM student AS s GROUP BY s.advisor
SELECT s.advisor, COUNT(*) FROM student AS s GROUP BY s.advisor ORDER BY total_students DESC LIMIT 1
SELECT s.advisor, COUNT(*) FROM student AS s GROUP BY s.advisor ORDER BY number_of_students DESC LIMIT 1
SELECT COUNT(*) FROM Has_Allergy WHERE Allergy ILIKE '%cat%'
SELECT COUNT(*) FROM Has_Allergy WHERE Allergy ILIKE '%cat%'
SELECT DISTINCT Has_Allergy.StuID FROM Has_Allergy GROUP BY Has_Allergy.StuID HAVING COUNT(Has_allergy.Allergy) >= 2
SELECT DISTINCT Has_Allergy.StuID FROM Has_Allergy GROUP BY Has_Allergy.StuID HAVING COUNT(Has_allergy.Allergy) > 1
SELECT Student.StuID FROM Student WHERE NOT Student.StuID IN (SELECT Allergy.Student_id FROM Allergy)
SELECT s.lname, s.fname FROM student AS s WHERE NOT EXISTS(SELECT 1 FROM allergy_affected_students AS aas WHERE aos.stu_id = s.stu_id)
SELECT allergy, COUNT(*) FROM Has_Allergy GROUP BY allergy ORDER BY num_students_affected DESC LIMIT 1
SELECT Has_Allergy.Allergy, CAST(COUNT(*) AS FLOAT) / (SELECT COUNT(*) FROM Has_Allergy) FROM Has_Allergy GROUP BY Has_Allergy.Allergy ORDER BY fraction DESC LIMIT 1
SELECT allergy, COUNT(student_id) FROM has_allergy GROUP BY allergy
SELECT Has_Allergy.Allergy, COUNT(*) FROM Has_Allergy GROUP BY Has_Allergy.Allergy
SELECT s.lname, s.age FROM Student AS s WHERE 'Milk' ILIKE '%allergy%' AND 'Cat' ILIKE '%allergy%'
SELECT s.lname, CAST(s.age AS FLOAT) FROM Student AS s WHERE s.major IN (SELECT major_id FROM Allergies WHERE allergen = 'Milk' AND allergen = 'Cat') GROUP BY s.lname, s.age
SELECT s.fname, s.sex FROM Student AS s WHERE s.allergy = 'milk' AND s.allergy <> 'cat'
SELECT s.fname, s.sex FROM student AS s WHERE s.allergy = 'milk' AND s.can_have_cats = TRUE
SELECT AVG(Student.Age) FROM Student WHERE (SELECT COUNT(*) FROM Allergies WHERE Student.StuID = Allergies.StuID AND Type IN ('food', 'animal')) > 0
SELECT AVG(Student.Age) FROM Student WHERE (SELECT COUNT(*) FROM Allergies WHERE Allergies.StuID = Student.StuID AND Allergies.allergy_type_code IN ('food', 'animal')) > 0
SELECT Student.LName, Student.Fname FROM Student WHERE NOT Student.StuID IN (SELECT Allergy_Student.StuID FROM Allergy_Student)
SELECT s.lname || ', ' || s.fname FROM Student AS s WHERE NOT EXISTS(SELECT 1 FROM Allergy AS a WHERE a.student_id = s.stuid)
SELECT COUNT(*) FROM Student WHERE Sex = 'M' AND Major IN (SELECT Major FROM Food WHERE Type ILIKE '%allery%')
SELECT COUNT(*) FROM Student WHERE Sex = 'M' AND NOT Allergies IS NULL
SELECT COUNT(*) FROM Student WHERE Age > 18 AND (Allergy_to_food IS NULL OR allergy_to_food = 'No') AND (allergy_to_animal IS NULL OR allergy_to_animal = 'No')
SELECT COUNT(*) FROM Student WHERE Age > 18 AND (Allergy_to_food IS NULL OR allergy_to_food = 'No') AND (allergy_to_animal IS NULL OR allergy_to_animal = 'No')
SELECT S.Fname, S.Major FROM Student AS S WHERE S.Advisor IS NULL
SELECT s.fname, m.major FROM student AS s JOIN major AS m ON s.major = m.major WHERE age > 21
SELECT invoices.billing_country, COUNT(*) FROM invoices GROUP BY invoices.billing_country ORDER BY invoice_count DESC LIMIT 5
SELECT COUNT(invoices.id), invoices.billing_country, COUNT(DISTINCT invoices.customer_id) FROM invoices GROUP BY invoices.billing_country ORDER BY total_invoices DESC LIMIT 5
SELECT invoices.billing_country, SUM(invoices.total) FROM invoices GROUP BY invoices.billing_country ORDER BY total_invoice_amount DESC LIMIT 8
SELECT invoices.billing_country, SUM(invoices.total) FROM invoices GROUP BY invoices.billing_country ORDER BY total_invoice_amount DESC LIMIT 8
SELECT billing_country, AVG(total) FROM invoices GROUP BY billing_country ORDER BY average_invoiceice_size DESC LIMIT 10
SELECT billing_country, AVG(total) FROM invoices GROUP BY billing_country ORDER BY average_invoice_size DESC LIMIT 10
SELECT albums.title FROM albums
SELECT albums.title FROM albums
SELECT albums.title FROM albums ORDER BY albums.title ASC
SELECT albums.title FROM albums ORDER BY albums.title ASC
SELECT albums.title FROM albums WHERE albums.title ILIKE 'A%' ORDER BY albums.title NULLS LAST
SELECT albums.title FROM albums WHERE albums.title ILIKE 'A%' ORDER BY albums.title NULLS LAST
SELECT SUM(invoices.total) FROM invoices WHERE invoices.billing_state = 'IL'
SELECT SUM(invoices.total) FROM invoices WHERE invoices.billing_state = 'Illinois'
SELECT COUNT(*) FROM invoices WHERE billing_state = 'IL'
SELECT COUNT(*) FROM invoices WHERE billing_state = 'IL' AND billing_city ILIKE '%Chicago%'
SELECT billing_state, COUNT(*) FROM invoices WHERE billing_country = 'US' GROUP BY billing_state
SELECT billing_state, COUNT(*) FROM invoices GROUP BY billing_state
SELECT billing_state, COUNT(id) FROM invoices WHERE billing_country = 'US' GROUP BY billing_state ORDER BY number_of_invoices DESC LIMIT 1
SELECT billing_state, COUNT(id) FROM invoices GROUP BY billing_state ORDER BY number_of_invoices DESC
SELECT COUNT(id), SUM(total) FROM invoices WHERE billing_state = 'California'
SELECT COUNT(*), SUM(total) FROM invoices WHERE billing_state = 'CA'
SELECT customers.company FROM customers WHERE customers.first_name ILIKE '%Eduardo%' AND customers.last_name ILIKE '%Martins%'
SELECT customers.company FROM customers WHERE customers.first_name ILIKE '%Eduardo%' AND customers.last_name ILIKE '%Martins%'
SELECT customers.email, customers.phone FROM customers WHERE customers.first_name ILIKE '%Astrid%' AND customers.last_name ILIKE '%Gruber%'
SELECT customers.email, customers.phone FROM customers WHERE customers.first_name ILIKE '%Astrid%' AND customers.last_name ILIKE '%Gruber%'
SELECT COUNT(*) FROM customers WHERE city ILIKE '%Prague%'
SELECT COUNT(*) FROM customers WHERE city ILIKE '%Prague%'
SELECT COUNT(*) FROM customers WHERE state = 'CA'
SELECT COUNT(*) FROM customers WHERE state = 'California'
SELECT customers.country FROM customers WHERE customers.last_name ILIKE '%Almeida%' AND customers.first_name ILIKE '%roberto%'
SELECT customers.country FROM customers WHERE customers.last_name ILIKE '%Almeida%' AND customers.first_name ILIKE '%roberto%'
SELECT e.title, e.phone, CAST(e.hire_date AS TEXT) FROM employees AS e WHERE e.first_name = 'Nancy' AND e.last_name = 'Edwards'
SELECT e.title, e.phone, TO_DATE(CAST(e.hire_date AS TEXT), 'YYYY-MM-DD') FROM employees AS e WHERE first_name = 'Nancy' AND last_name = 'Edwards'
SELECT employees.address FROM employees WHERE employees.first_name ILIKE '%Nancy%' AND employees.last_name ILIKE '%Edwards%'
SELECT employees.address FROM employees WHERE employees.first_name ILIKE '%Nancy%' AND employees.last_name ILIKE '%Edwards%'
SELECT COUNT(*) FROM employees WHERE country = 'Canada'
SELECT COUNT(*) FROM employees WHERE country = 'Canada'
SELECT employees.phone FROM employees WHERE employees.first_name ILIKE '%Nancy%' AND employees.last_name ILIKE '%Edwards%'
SELECT employees.phone FROM employees WHERE employees.first_name ILIKE '%Nancy%' AND employees.last_name ILIKE '%Edwards%'
SELECT employees.first_name, employees.last_name FROM employees ORDER BY employees.birth_date ASC LIMIT 1
SELECT employees.first_name, employees.last_name FROM employees WHERE employees.birth_date = (SELECT MIN(employees.birth_date) FROM employees)
SELECT employees.first_name, employees.last_name FROM employees ORDER BY (CURRENT_DATE - employees.hire_date) DESC LIMIT 10
SELECT e.first_name, e.last_name FROM employees AS e ORDER BY (CURRENT_DATE - e.hire_date) DESC LIMIT 10
SELECT e.city, COUNT(*) FROM employees AS e WHERE title ILIKE '%IT%staff%' GROUP BY e.city
SELECT e.city, CAST(COUNT(CASE WHEN t.title = 'IT' THEN 1 END) AS FLOAT) / NULLIF(COUNT(*), 0) FROM employees AS e JOIN title AS t ON e.title = t.title GROUP BY e.city
SELECT mt.name FROM media_types AS mt
SELECT mt.name FROM media_types AS mt
SELECT DISTINCT genres.name FROM genres
SELECT g.name FROM genres AS g
SELECT playlists.name FROM playlists
SELECT playlists.name FROM playlists
SELECT tracks.composer FROM tracks WHERE tracks.name ILIKE '%Fast%As%a%Shark%'
SELECT tracks.composer FROM tracks WHERE tracks.name ILIKE '%Fast%As%a%Shark%'
SELECT tracks.duration FROM tracks WHERE tracks.name ILIKE '%Fast%As%a%Shark%'
SELECT tracks.milliseconds FROM tracks WHERE tracks.name ILIKE '%Fast%As%a%Shark%'
SELECT tracks.name, tracks.milliseconds / NULLIF(tracks.unit_price, 0) FROM tracks WHERE tracks.name ILIKE '%Fast%As%a%Shark%'
SELECT tracks.unit_price FROM tracks WHERE tracks.name ILIKE '%Fast%As%a%Shark%'
SELECT COUNT(*) FROM editor
SELECT editor.name FROM editor ORDER BY editor.age ASC
SELECT editor.name, editor.age FROM editor
SELECT editor.name FROM editor WHERE editor.age > 25
SELECT editor.name FROM editor WHERE editor.age IN (24, 25)
SELECT editor.name FROM editor ORDER BY editor.age ASC LIMIT 1
SELECT editor.age, COUNT(*) FROM editor GROUP BY editor.age ORDER BY editor.age NULLS LAST
SELECT editor.age, COUNT(*) FROM editor GROUP BY editor.age ORDER BY frequency DESC LIMIT 1
SELECT journal.theme FROM journal GROUP BY journal.theme
SELECT e.name FROM editor AS e LEFT JOIN journal_committee AS jc ON e.editor_id = jc.editor_id WHERE jc.editor_id IS NULL
SELECT j.date, j.theme, j.sales FROM journal AS j WHERE NOT j.journal_id IN (SELECT c.committee_member_id FROM committee AS c JOIN editor AS e ON c.editor_id = e.editor_id) AND NOT j.journal_id IN (SELECT d.journal_id FROM disliked_editors AS d)
SELECT COUNT(*) FROM Accounts
SELECT COUNT(*) FROM Accounts
SELECT a.account_id, c.customer_id, c.customer_name FROM accounts AS a JOIN customers AS c ON a.customer_id = c.customer_id
SELECT a.account_id, a.customer_id, a.account_name FROM Accounts AS a
SELECT Accounts.other_account_details FROM Accounts WHERE "Account Name" ILIKE '%338%'
SELECT Accounts.other_account_details FROM Accounts WHERE "Account Name" ILIKE '%338%'
SELECT a.customer_id, COUNT(a.account_id) FROM Accounts AS a GROUP BY a.customer_id
SELECT a.customer_id, COUNT(a.account_id) FROM Accounts AS a GROUP BY a.customer_id
SELECT a.customer_id, COUNT(*) FROM Accounts AS a GROUP BY a.customer_id ORDER BY account_count DESC LIMIT 1
SELECT customer_id, COUNT(account_id) AS num_accounts FROM Accounts GROUP BY customer_id), max_account_customer AS (SELECT MAX(num_accounts) AS max_num_accounts, MIN(customer_id) AS min_customer_id FROM account_customer) SELECT min_customer_id, max_num_accounts FROM max_account_customer
SELECT COUNT(*) FROM Customers
SELECT COUNT(DISTINCT Customers.customer_id) FROM Customers LEFT JOIN Accounts ON Customers.customer_id = Accounts.customer_id WHERE Accounts.customer_id IS NULL
SELECT Customers.customer_first_name, Customers.customer_last_name FROM Customers WHERE customer_id IS NULL
SELECT c.customer_first_name, c.customer_last_name FROM Customers AS c WHERE NOT c.customer_id IN (SELECT a.customer_id FROM Accounts AS a)
SELECT COUNT(DISTINCT customer_id) FROM Accounts
SELECT COUNT(DISTINCT customer_id) FROM Accounts
SELECT COUNT(*) FROM Customers
SELECT COUNT(*) FROM Customers
SELECT c.customer_id, c.customer_first_name, c.customer_last_name, c.customer_phone FROM Customers AS c
SELECT customers.customer_id, customers.customer_first_name || ' ' || customers.customer_last_name, customers.customer_phone FROM customers
SELECT customers.customer_phone, customers.customer_email FROM customers WHERE customers.customer_first_name ILIKE '%Aniyah%' AND customers.customer_last_name ILIKE '%Feest%'
SELECT customers.customer_phone, customers.customer_email FROM customers WHERE customers.customer_first_name ILIKE '%Aniyah%' AND customers.customer_last_name ILIKE '%Feest%'
SELECT COUNT(card_id) FROM Customers_Cards
SELECT COUNT(*) FROM Customers_Cards
SELECT customers_cards.card_id, customers_cards.customer_id, customers_cards.card_type_code, customers_cards.card_number FROM customers_cards
SELECT customers_cards.card_id, customers_cards.customer_id, customers_cards.card_type_code, customers_cards.card_number FROM customers_cards
SELECT Customers_Cards.date_valid_from, Customers_Cards.date_valid_to FROM Customers_Cards WHERE Customers_Cards.card_number = '4560596484842'
SELECT Customers_Cards.date_valid_from, Customers_Cards.date_valid_to FROM Customers_Cards WHERE Customers_Cards.card_id = 4560596484842
SELECT COUNT(*) FROM Customers_Cards WHERE card_type_code ILIKE '%debit%'
SELECT COUNT(*) FROM Customers_Cards WHERE card_type_code = 'Debit'
SELECT customers.customer_id, COUNT(customers_cards.card_id) FROM customers LEFT JOIN customers_cards ON customers.customer_id = customers_cards.customer_id GROUP BY customers.customer_id
SELECT customers_cards.customer_id, COUNT(customers_cards.card_id) FROM customers_cards GROUP BY customers_cards.customer_id
SELECT customers_cards.customer_id, COUNT(customers_cards.card_id) FROM customers_cards GROUP BY customers_cards.customer_id ORDER BY card_count DESC LIMIT 1
SELECT customer_id, COUNT(card_id) AS card_count FROM Customers_Cards GROUP BY customer_id), max_card_count AS (SELECT MAX(card_count) AS max_card_count FROM card_counts) SELECT cc.customer_id, cc.card_count FROM card_counts cc JOIN max_card_count mcc ON cc.card_count = mcc.max_card_count
SELECT card_type_code, COUNT(*) FROM Customers_Cards GROUP BY card_type_code
SELECT cc.card_type_code, COUNT(*) FROM Customers_Cards AS cc GROUP BY cc.card_type_code
SELECT cc.card_type_code, COUNT(*) FROM Customers_Cards AS cc GROUP BY cc.card_type_code ORDER BY total_cards DESC LIMIT 1
SELECT cc.card_type_code, COUNT(*) FROM Customers_Cards AS cc GROUP BY cc.card_type_code ORDER BY frequency DESC LIMIT 1
SELECT cc.card_type_code FROM Customers_Cards AS cc GROUP BY cc.card_type_code HAVING COUNT(cc.card_id) >= 5
SELECT cc.card_type_code FROM Customers_Cards AS cc GROUP BY cc.card_type_code HAVING COUNT(cc.card_id) >= 5
SELECT cc.card_type_code, COUNT(DISTINCT cc.customer_id) FROM Customers_Cards AS cc GROUP BY cc.card_type_code
SELECT cc.card_type_code, COUNT(DISTINCT cc.customer_id) FROM Customers_Cards AS cc GROUP BY cc.card_type_code
SELECT customers.customer_id, customers.customer_first_name FROM customers WHERE NOT customers.customer_id IN (SELECT customer_id FROM credit_cards)
SELECT c.customer_id, c.customer_first_name FROM Customers AS c WHERE NOT c.customer_id IN (SELECT cc.customer_id FROM Credit_Cards AS cc)
SELECT card_type_code FROM Customers_Cards
SELECT DISTINCT Customers_Cards.card_type_code FROM Customers_Cards
SELECT COUNT(DISTINCT card_type_code) FROM Customers_Cards
SELECT COUNT(DISTINCT cc.card_type_code) FROM Customers_Cards AS cc
SELECT Financial_Transactions.transaction_type FROM Financial_Transactions
SELECT Financial_Transactions.transaction_type FROM Financial_Transactions GROUP BY Financial_Transactions.transaction_type
SELECT COUNT(DISTINCT transaction_type) FROM Financial_Transactions
SELECT COUNT(DISTINCT transaction_type) FROM Financial_Transactions
SELECT AVG(transaction_amount), SUM(transaction_amount) FROM Financial_Transactions
SELECT AVG(transaction_amount), SUM(transaction_amount) FROM Financial_Transactions
SELECT ft.transaction_type, COUNT(*) FROM financial_transactions AS ft GROUP BY ft.transaction_type
SELECT Financial_Transactions.transaction_type, COUNT(*) FROM Financial_Transactions GROUP BY Financial_Transactions.transaction_type
SELECT Financial_Transactions.transaction_type, SUM(Financial_Transactions.transaction_amount) FROM Financial_Transactions GROUP BY Financial_Transactions.transaction_type ORDER BY total_transaction_amount DESC LIMIT 1
SELECT ft.transaction_type, SUM(ft.transaction_amount) FROM financial_transactions AS ft GROUP BY ft.transaction_type ORDER BY total_amount DESC LIMIT 1
SELECT financial_transactions.account_id, COUNT(financial_transactions.transaction_id) FROM financial_transactions GROUP BY financial_transactions.account_id
SELECT ft.account_id, COUNT(*) FROM Financial_Transactions AS ft GROUP BY ft.account_id
SELECT COUNT(*) FROM track
SELECT COUNT(*) FROM track
SELECT t.name, t.location FROM track AS t
SELECT t.name, t.location FROM track AS t
SELECT t.name, CAST(t.seating AS TEXT) FROM track AS t WHERE t.year_opened > 2000 ORDER BY t.seating NULLS LAST
SELECT t.name, t.seating FROM track AS t WHERE t.year_opened > 2000 ORDER BY t.seating NULLS LAST
SELECT t.name, t.location, CAST(TO_TIMESTAMP(t.year_opened) AS TEXT) FROM track AS t WHERE t.year_opened = (SELECT MAX(year_opened) FROM track)
SELECT t.name, t.location, t.seating FROM track AS t WHERE t.year_opened = (SELECT MAX(year_opened) FROM track)
SELECT MIN(seating), MAX(seating), AVG(CAST(seating AS FLOAT)) FROM track
SELECT MIN(seating), MAX(seating), AVG(CAST(seating AS FLOAT)) FROM track
SELECT t.name, t.location, t.year_opened FROM track AS t WHERE t.seating > (SELECT AVG(seating) FROM track)
SELECT t.name, t.location, CAST(t.year_opened AS TEXT) FROM track AS t WHERE t.seating > (SELECT AVG(seating) FROM track)
SELECT DISTINCT track.location FROM track
SELECT DISTINCT track.location FROM track ORDER BY track.location NULLS LAST
SELECT COUNT(Race_ID) FROM race
SELECT COUNT(Race_ID) FROM race
SELECT DISTINCT race.class FROM race
SELECT DISTINCT race.class FROM race ORDER BY race.class NULLS LAST
SELECT race.name, race.class, race.date FROM race
SELECT race.name, race.class, CAST(race.date AS DATE) FROM race
SELECT race.class, COUNT(race.race_id) FROM race GROUP BY race.class ORDER BY race_count DESC
SELECT race.class, COUNT(*) FROM race GROUP BY race.class ORDER BY number_of_races DESC
SELECT race.class, COUNT(race.race_id) FROM race GROUP BY race.class ORDER BY race_count DESC LIMIT 1
SELECT race.class FROM race GROUP BY race.class ORDER BY COUNT(race.class) DESC LIMIT 1
SELECT DISTINCT race.class FROM race GROUP BY race.class HAVING COUNT(race.race_id) >= 2
SELECT DISTINCT race.class FROM race GROUP BY race.class HAVING COUNT(race.race_id) >= 2
SELECT t.name FROM track AS t LEFT JOIN gt_race AS r ON t.track_id = r.track_id WHERE r.track_id IS NULL
SELECT t.name FROM track AS t LEFT JOIN gt_race AS r ON t.track_id = r.track_id WHERE r.track_id IS NULL
SELECT t.name FROM track AS t WHERE t.track_id IS NULL
SELECT t.name FROM track AS t WHERE NOT t.track_id IN (SELECT r.track_id FROM race AS r)
SELECT t.year_opened FROM track AS t WHERE t.seating >= 5000 AND EXISTS(SELECT 1 FROM track AS t2 WHERE t2.location = t.location AND t2.year_opened <= 4000)
SELECT year_opened FROM track WHERE seating BETWEEN 4000 AND 5000
SELECT DISTINCT track.location FROM track WHERE (track.seating > 90000 AND track.seating < 70000) GROUP BY track.location
SELECT DISTINCT track.location FROM track WHERE (track.seating > 90000 AND track.seating < 70000) OR (track.seating < 90000 AND track.seating > 70000)
SELECT COUNT(*) FROM member WHERE membership_card = 'Black'
SELECT member.address, COUNT(member.member_id) FROM member GROUP BY member.address
SELECT member.name FROM member WHERE member.address ILIKE '%Harford%' OR member.address ILIKE '%Waterbury%'
SELECT member.member_id, member.name FROM member WHERE member.age < 30 OR member.membership_card = 'black'
SELECT member.member_id, member.name, member.address, member.time_of_purchase, member.age FROM member ORDER BY member.time_of_purchase ASC
SELECT member.membership_card FROM member GROUP BY member.membership_card HAVING COUNT(member.member_id) > 5
SELECT member.address FROM member WHERE member.age < 30 AND member.age > 40
SELECT member.membership_card FROM member WHERE member.address ILIKE '%Hartford%' AND member.address ILIKE '%Waterbury%' GROUP BY member.membership_card
SELECT COUNT(*) FROM member WHERE address <> 'Hartford'
SELECT member.address FROM member WHERE member.membership_card <> 'black'
SELECT shop.address FROM shop ORDER BY CAST(shop.open_year AS INT)
SELECT AVG(shop.score), AVG(CAST(shop.num_of_staff AS FLOAT)) FROM shop
SELECT shop.shop_id, shop.address FROM shop WHERE shop.score < (SELECT AVG(score) FROM shop)
SELECT shop.address, CAST(shop.num_of_staff AS FLOAT) FROM shop WHERE NOT shop.shop_id IN (SELECT happy_hour.shop_id FROM happy_hour)
SELECT hh.shop_id, COUNT(*) FROM happy_hour AS hh GROUP BY hh.shop_id ORDER BY num_of_happy_hours DESC LIMIT 1
SELECT MONTH, COUNT(HH_ID) FROM happy_hour GROUP BY MONTH ORDER BY num_of_happy_hours DESC LIMIT 1
SELECT MONTH FROM happy_hour GROUP BY MONTH HAVING COUNT(HH_ID) > 2
SELECT COUNT(Album) FROM album
SELECT COUNT(Al.albumid) FROM album AS all
SELECT g.name FROM Genre AS g
SELECT genre.name FROM genre
SELECT * FROM customers WHERE state = 'NY'
SELECT p.first_name, p.last_name FROM personal AS p JOIN address AS a ON p.address_id = a.address_id WHERE a.state = 'NY'
SELECT Employee.FirstName, Employee.LastName FROM Employee WHERE Employee.City = 'Calgary'
SELECT Employee.FirstName, Employee.LastName FROM Employee WHERE City = 'Calgary'
SELECT BillingCountry FROM Invoice GROUP BY BillingCountry
SELECT BillingCountry FROM Invoice GROUP BY BillingCountry
SELECT Artist.Name FROM Artist WHERE Artist.Name ILIKE '%a%'
SELECT Artist.Name FROM Artist WHERE Artist.Name ILIKE '%a%'
SELECT Track.Name FROM Track WHERE Track.Name ILIKE '%you%'
SELECT Track.Name FROM Track WHERE Track.Name ILIKE '%word%' ORDER BY Track.Name NULLS LAST
SELECT AVG(Track.UnitPrice) FROM Track
SELECT AVG(Track.UnitPrice) FROM Track
SELECT MAX(Milliseconds), MIN(Milliseconds) FROM Track
SELECT MAX(Milliseconds), MIN(Milliseconds) FROM Track
SELECT p.first_name, p.last_name FROM personal_info AS p JOIN customers_with_phone AS cwp ON p.customer_id = cwp.customer_id WHERE cwp.phone = 'luisg@embraer.com.br'
SELECT p.first_name, p.last_name FROM personal_info AS p JOIN customers_info AS c ON p.customer_id = c.customer_id WHERE c.email = 'luisg@embraer.com.br'
SELECT COUNT(*) FROM customer WHERE email ILIKE '%gmail.com%'
SELECT COUNT(*) FROM customer WHERE email ILIKE '%gmail.com%'
SELECT COUNT(DISTINCT Employee.City) FROM Employee
SELECT COUNT(DISTINCT Employee.City) FROM Employee
SELECT c.last_name FROM customers AS c WHERE NOT EXISTS(SELECT 1 FROM invoices AS i WHERE i.customer_id = c.customer_id AND TO_NUMBER(i.total, '9999D99') > 20)
SELECT c.last_name FROM customer AS c WHERE c.invoice_total <= 20
SELECT Employee.Phone FROM Employee
SELECT e.employeeid, e.phone FROM employee AS e
SELECT a.title FROM album AS a ORDER BY a.title ASC
SELECT a.title FROM album AS a ORDER BY a.title ASC
SELECT a.name FROM artist AS a LEFT JOIN album_artist AS ab ON a.artistid = ab.artistid WHERE ab.artistid IS NULL
SELECT a.name FROM artist AS a LEFT JOIN album_artist AS al ON a.artistid = al.artistid WHERE al.artistid IS NULL
SELECT Employee.BirthDate FROM Employee WHERE Employee.Address = 'Edmonton'
SELECT Employee.BirthDate FROM Employee WHERE Employee.Address = 'Edmonton'
SELECT DISTINCT Track.UnitPrice FROM Track
SELECT DISTINCT Track.UnitPrice FROM Track
SELECT COUNT(DISTINCT a.artistid) FROM artist AS a LEFT JOIN album_artist AS ab ON a.artistid = ab.artistid WHERE ab.artistid IS NULL
SELECT COUNT(*) FROM Artist WHERE NOT ArtistId IN (SELECT ArtistId FROM Album)
SELECT Available_Policies.policy_type_code, Available_Policies.customer_phone FROM Available_Policies
SELECT Available_Policies.policy_id, Available_Policies.customer_phone FROM Available_Policies
SELECT Available_Policies.customer_phone FROM Available_Policies WHERE Available_Policies.policy_type_code ILIKE '%Life%Insurance%'
SELECT Available_Policies.customer_phone FROM Available_Policies WHERE Available_Policies.policy_type_code ILIKE '%Life%Insurance%'
SELECT policy_type_code, COUNT(*) FROM available_policies GROUP BY policy_type_code ORDER BY number_of_records DESC LIMIT 1
SELECT policy_type_code, COUNT(*) FROM Available_Policies GROUP BY policy_type_code ORDER BY frequency DESC LIMIT 1
SELECT Available_Policies.customer_phone FROM Available_Policies GROUP BY Available_Policies.customer_phone HAVING COUNT(Available_policies.policy_id) = MAX(COUNT(available_policies.policy_id))
SELECT Available_Policies.customer_phone FROM Available_Policies GROUP BY Available_Policies.customer_phone ORDER BY COUNT(Available_policies.policy_type_code) DESC
SELECT Available_Policies.policy_type_code FROM Available_Policies GROUP BY Available_Policies.policy_type_code HAVING COUNT(Available_policies.customer_phone) > 4
SELECT Available_Policies.policy_type_code FROM Available_Policies GROUP BY Available_Policies.policy_type_code HAVING COUNT(Available_policies.customer_phone) > 4
SELECT SUM(Settlement_Amount), AVG(Settlement_Amount) FROM Settlements
SELECT SUM(Settlements.Settlement_Amount), AVG(Settlements.Settlement_Amount) FROM Settlements
SELECT Services.Service_ID, Services.Service_name FROM Services ORDER BY Services.Service_name ASC
SELECT Services.Service_name FROM Services ORDER BY Services.Service_name ASC
SELECT COUNT(*) FROM Services
SELECT COUNT(*) FROM Services
SELECT customers.customer_name FROM customers WHERE NOT customers.customer_id IN (SELECT customer_loss.customer_id FROM customer_loss)
SELECT Customers.customer_name FROM Customers WHERE NOT Customers.customer_id IN (SELECT Loss_customers.customer_id FROM Loss_customers)
SELECT customer_id FROM customers WHERE customer_name ILIKE '%diana%'
SELECT Customers.customer_id FROM Customers WHERE Customers.customer_name ILIKE '%Diana%'
SELECT MAX(Settlements.settlement_amount), MIN(Settlements.settlement_amount) FROM Settlements
SELECT MAX(Settlements.Settlement_Amount), MIN(Settlements.Settlement_Amount) FROM Settlements
SELECT Customers.customer_id, Customers.customer_name FROM Customers ORDER BY Customers.customer_id ASC
SELECT customers.customer_id FROM customers ORDER BY customers.customer_id
SELECT COUNT(DISTINCT name) FROM enzyme
SELECT COUNT(*) FROM enzyme
SELECT enzyme.name FROM enzyme ORDER BY enzyme.name DESC
SELECT e.name FROM enzyme AS e ORDER BY e.name DESC
SELECT e.name, e.location FROM enzyme AS e
SELECT e.name, e.location FROM enzyme AS e
SELECT MAX(enzyme.omim) FROM enzyme
SELECT MAX(omim) FROM enzyme
SELECT e.product, e.chromosome, e.porphyria FROM enzyme AS e WHERE e.location ILIKE '%Cytosol%'
SELECT e.product, e.chromosome, e.porphyria FROM enzyme AS e WHERE e.location ILIKE '%Cytosol%'
SELECT e.name FROM enzyme AS e WHERE e.product <> 'Heme'
SELECT e.name FROM enzyme AS e WHERE e.product <> 'Heme'
SELECT medicine.name, medicine.trade_name FROM medicine WHERE medicine.fda_approved ILIKE '%Yes%'
SELECT medicine.name, medicine.trade_name FROM medicine WHERE medicine.fda_approved = 'Yes'
SELECT medicine_enzyme_interaction.interaction_type, COUNT(*) FROM medicine_enzyme_interaction GROUP BY medicine_enzyme_interaction.interaction_type ORDER BY frequency DESC LIMIT 1
SELECT COUNT(DISTINCT interaction_type) FROM medicine_enzyme_interaction
SELECT COUNT(*) FROM medicine WHERE FDA_approved = 'No'
SELECT COUNT(*) FROM medicine WHERE fda_approved <> 'yes'
SELECT COUNT(*) FROM enzyme WHERE NOT id IN (SELECT enzyme_id FROM interactions)
SELECT COUNT(*) FROM enzyme WHERE NOT id IN (SELECT enzyme_id FROM interactions)
SELECT m.name, m.trade_name FROM medicine AS m WHERE NOT m.id IN (SELECT e.medicine_id FROM enzyme AS e JOIN heme AS h ON e.product_id = h.id)
SELECT m.name, mt.trade_name FROM medicine AS m JOIN medicine_trade AS mt ON m.id = mt.medicine_id WHERE NOT m.name ILIKE '%heme%'
SELECT COUNT(DISTINCT medicine.fda_approved) FROM medicine
SELECT COUNT(DISTINCT medicine.fda_approved) FROM medicine
SELECT enzyme.name FROM enzyme WHERE enzyme.name ILIKE '%ALA%'
SELECT e.name FROM enzyme AS e WHERE e.name ILIKE '%ALA%'
SELECT medicine.trade_name, COUNT(medicine.id) FROM medicine GROUP BY medicine.trade_name
SELECT medicine.trade_name, COUNT(medicine.id) FROM medicine GROUP BY medicine.trade_name
SELECT university.school_id, university.nickname FROM university ORDER BY university.founded ASC
SELECT university.school, university.nickname FROM university ORDER BY university.founded NULLS LAST
SELECT university.school, university.location FROM university WHERE university.founded = 1
SELECT u.school_id, u.location FROM university AS u WHERE 1 = 1
SELECT university.founded, MAX(university.enrollment) FROM university GROUP BY university.founded ORDER BY max_enrollment DESC LIMIT 1
SELECT MAX(u.founded) FROM university AS u
SELECT MAX(Founded) FROM university WHERE School_ID <> 3
SELECT MAX(university.founded) FROM university WHERE university.school <> 'Princeton'
SELECT COUNT(DISTINCT school_id) FROM basketball_match
SELECT COUNT(DISTINCT school_id) FROM basketball_match
SELECT MAX(basketball_match.acc_percent) FROM basketball_match
SELECT MAX(basketball_match.acc_percent) FROM basketball_match
SELECT AVG(enrollment) FROM university WHERE founded < 1850
SELECT AVG(enrollment) FROM university WHERE founded < 1850
SELECT university.enrollment, university.primary_conference FROM university WHERE university.school_id = (SELECT MIN(school_id) FROM university)
SELECT u.school_id, u.enrollment, u.primary_conference FROM university AS u ORDER BY u.founded ASC NULLS LAST LIMIT 1
SELECT SUM(university.enrollment), MIN(university.enrollment) FROM university
SELECT university.school_id, SUM(university.enrollment), MIN(university.enrollment) FROM university GROUP BY university.school_id
SELECT university.affiliation, SUM(university.enrollment) FROM university GROUP BY university.affiliation
SELECT university.affiliation, SUM(university.enrollment) FROM university GROUP BY university.affiliation
SELECT COUNT(*) FROM university WHERE NOT school_id IN (SELECT school_id FROM basketball_match)
SELECT COUNT(*) FROM university WHERE NOT school_id IN (SELECT school_id FROM basketball_match)
SELECT university.school FROM university WHERE university.founded > 1850 ORDER BY university.founded NULLS LAST
SELECT university.school FROM university WHERE university.founded < '1850' OR university.founded IS NULL
SELECT COUNT(DISTINCT university.affiliation) FROM university
SELECT COUNT(DISTINCT university.affiliation) FROM university
SELECT COUNT(*) FROM university WHERE LOWER ILIKE '%ny%'
SELECT COUNT(*) FROM university WHERE "Location" ILIKE '%NY%'
SELECT university.affiliation, COUNT(*) FROM university WHERE university.enrollment > 20000 GROUP BY university.affiliation
SELECT university.affiliation, COUNT(*) FROM university WHERE enrollment > 20000 GROUP BY university.affiliation ORDER BY school_count DESC
SELECT university.affiliation, SUM(university.enrollment) FROM university WHERE university.founded > 1850 GROUP BY university.affiliation
SELECT university.affiliation, SUM(CASE WHEN university.founded > 1850 THEN university.enrollment END) FROM university GROUP BY university.affiliation
SELECT MAX(university.enrollment) FROM university
SELECT MAX(university.enrollment) FROM university
SELECT b.team_name, a.acc_regular_season, a.acc_percent, a.all_games, a.all_games_percent FROM basketball_match AS b JOIN all_games_info AS a ON b.team_id = a.team_id
SELECT b.team_name, TO_NUMBER(b.all_games, '9999') FROM basketball_match AS b
SELECT b.team_name FROM basketball_match AS b ORDER BY b.all_games_percent DESC
SELECT b.team_name, CAST(b.all_games_percent AS FLOAT) FROM basketball_match AS b ORDER BY all_games_percent DESC
SELECT chip_model.model_name FROM chip_model WHERE (chip_model.launch_year >= 2002 AND chip_model.launch_year <= 2004)
SELECT chip_model.model_name, MIN(chip_model.ram_miB) FROM chip_model GROUP BY chip_model.model_name
SELECT phone.chip_model, phone.screen_mode FROM phone WHERE phone.hardware_model_name ILIKE '%LG-P760%'
SELECT COUNT(Hardware_Design_Name) FROM Phone WHERE Company_name ILIKE '%Nokia%Corporation%'
SELECT phone.hardware_model_name, phone.company_name FROM phone WHERE phone.accrewitation_type ILIKE '%full%'
SELECT Company_name, COUNT(*) FROM phone GROUP BY Company_name ORDER BY total_phone_models ASC LIMIT 1
SELECT DISTINCT Company_name FROM Phone WHERE Company_name IN (SELECT Company_name FROM Phone GROUP BY Company_name HAVING COUNT(Company_name) > 1)
SELECT MAX(used_kb), MIN(used_kb), AVG(used_kb) FROM screen_mode
SELECT Accredation_type, COUNT(*) FROM phone GROUP BY Accredation_type
SELECT Accredation_type, COUNT(*) FROM phone GROUP BY Accredation_type
SELECT phone.accreditation_level FROM phone GROUP BY phone.accreditation_level HAVING COUNT(phone.company_name) > 3
SELECT chip_model.model_name, chip_model.launch_year, chip_model.ram_miB, chip_model.rom_miB, chip_model.slots, chip_model.wifi, chip_model.bluetooth FROM chip_model
SELECT COUNT(*) FROM chip_model WHERE WiFi IS NULL
SELECT COUNT(*) FROM chip_model WHERE WiFi IS NULL
SELECT chip_model.model_name, chip_model.launch_year FROM chip_model ORDER BY chip_model.launch_year NULLS LAST
SELECT phone_number.chip_model_name FROM phone_number)
SELECT DISTINCT cm.model_name FROM chip_model AS cm LEFT JOIN phone AS p ON cm.model_name = p.chip_model WHERE p.phone_type IS NULL
SELECT COUNT(*) FROM country
SELECT COUNT(*) FROM country
SELECT c.country_name, c.capital FROM country AS c
SELECT c.country_name, c.capital FROM country AS c
SELECT country.official_native_language FROM country WHERE country.official_native_language ILIKE '%English%'
SELECT country.official_native_language FROM country WHERE country.official_native_language ILIKE '%English%'
SELECT DISTINCT match_season.position FROM match_season
SELECT position FROM match_season GROUP BY POSITION
SELECT match_season.player FROM match_season WHERE college = 'collegeucla'
SELECT match_season.player FROM match_season WHERE "country" ILIKE '%Uruguay%' AND "team" ILIKE '%ucla%'
SELECT match_season.player, COUNT(*) FROM match_season WHERE college IN ('collegecla', 'duke') GROUP BY match_season.player
SELECT match_season.player, COUNT(DISTINCT match_season.position) FROM match_season WHERE college IN ('Furmancla', 'Duke') GROUP BY match_season.player
SELECT match_season.draft_pick_number, match_season.draft_class FROM match_season WHERE match_season.position = 'Defender'
SELECT match_season.draft_pick_number, match_season.draft_class FROM match_season WHERE match_season.position = 'Defender'
SELECT COUNT(DISTINCT Team) FROM match_season
SELECT COUNT(DISTINCT Team) FROM match_season
SELECT player.player_id, CAST(player.years_play AS FLOAT) FROM player
SELECT p.player_id, p.player, CAST(p.years_played AS FLOAT) FROM player AS p
SELECT t.name FROM team AS t
SELECT team.name FROM team
SELECT match_season.position, COUNT(match_season.player) FROM match_season GROUP BY match_season.position ORDER BY player_count DESC
SELECT match_season.position, COUNT(*) FROM match_season GROUP BY match_season.position
SELECT match_season.player FROM match_season ORDER BY match_season.college ASC
SELECT DISTINCT match_season.player FROM match_season ORDER BY match_season.college ASC
SELECT match_season.position, COUNT(*) FROM match_season GROUP BY match_season.position ORDER BY frequency DESC LIMIT 1
SELECT m.season, p.position, COUNT(*) FROM match_season AS m JOIN player AS p ON m.player = p.name GROUP BY m.season, p.position ORDER BY frequency DESC LIMIT 1
SELECT college, COUNT(*) FROM match_season GROUP BY college ORDER BY frequency DESC LIMIT 3
SELECT college FROM match_season GROUP BY college ORDER BY COUNT(college) DESC LIMIT 3
SELECT college FROM match_season GROUP BY college HAVING COUNT(player) >= 2
SELECT college FROM match_season GROUP BY college HAVING COUNT(player) >= 2
SELECT college FROM match_season GROUP BY college HAVING COUNT(player) >= 2 ORDER BY college DESC
SELECT DISTINCT college FROM match_season GROUP BY college HAVING COUNT(player) >= 2 ORDER BY college DESC
SELECT t.name FROM team AS t LEFT JOIN match_season AS m ON t.team_id = m.team_id WHERE m.team_id IS NULL
SELECT t.name FROM team AS t LEFT JOIN match_season AS m ON t.team_id = m.team_id WHERE m.team_id IS NULL
SELECT DISTINCT college.name FROM college JOIN player ON player.college = college.name WHERE player.position IN ('midfielder', 'defender')
SELECT DISTINCT college FROM match_season WHERE position IN ('Midfielder', 'Defender')
SELECT COUNT(climber_id) FROM climber
SELECT COUNT(climber_id) FROM climber
SELECT c.name FROM climber AS c ORDER BY c.points DESC
SELECT c.name FROM climber AS c ORDER BY c.points DESC
SELECT c.name FROM climber AS c WHERE c.country <> 'Switzerland'
SELECT c.name FROM climber AS c WHERE c.country <> 'Switzerland'
SELECT MAX(climber.points) FROM climber WHERE climber.country = 'United Kingdom'
SELECT MAX(climber.points) FROM climber WHERE climber.country = 'United Kingdom'
SELECT COUNT(DISTINCT country) FROM climber
SELECT COUNT(DISTINCT climber.country) FROM climber
SELECT mountain.name FROM mountain ORDER BY mountain.name ASC
SELECT mountain.name FROM mountain ORDER BY mountain.name ASC
SELECT mountain.country FROM mountain WHERE mountain.height > 5000
SELECT mountain.country FROM mountain WHERE mountain.height > 5000
SELECT mountain.name FROM mountain ORDER BY mountain.heigh DESC LIMIT 1
SELECT mountain.name FROM mountain ORDER BY mountain.height DESC LIMIT 1
SELECT mountain.name, mountain.prominence FROM mountain ORDER BY mountain.prominence DESC LIMIT 3
SELECT mountain.name, mountain.prominence, ROW_NUMBER() OVER (PARTITION BY mountain.country ORDER BY mountain.prominence DESC) FROM mountain WHERE mountain.country = 'Spain' GROUP BY mountain.name, mountain.country HAVING COUNT(mountain.id) >= 3
SELECT c.country, COUNT(*) FROM climber AS c GROUP BY c.country
SELECT c.country, COUNT(*) FROM climber AS c GROUP BY c.country
SELECT m.country FROM mountain AS m GROUP BY m.country HAVING COUNT(m.mountain_id) > 1
SELECT m.country FROM mountain AS m GROUP BY m.country HAVING COUNT(m.mountain_id) > 1
SELECT mountain.name FROM mountain WHERE mountain.height IS NULL
SELECT c.name FROM country AS c JOIN mountain AS m ON c.country_id = m.country WHERE NOT EXISTS(SELECT 1 FROM climber AS cl WHERE cl.mountain_id = m.mountain_id)
SELECT DISTINCT mountain.country FROM mountain WHERE mountain.height > 5600 AND mountain.height < 5200
SELECT DISTINCT mountain.country FROM mountain WHERE mountain.prominence > 5600 AND mountain.prominence < 5200
SELECT mountain.range FROM mountain GROUP BY mountain.range ORDER BY COUNT(mountain.name) DESC LIMIT 1
SELECT mountain.range FROM mountain GROUP BY mountain.range ORDER BY COUNT(mountain.mountain_id) DESC LIMIT 1
SELECT mountain.name FROM mountain WHERE mountain.height > 5000 OR mountain.prominence > 1000
SELECT mountain.name FROM mountain WHERE mountain.height > 5000 OR mountain.prominence > 1000
SELECT COUNT(*) FROM body_builder
SELECT body_builder.body_builder_id, SUM(body_builder.total) FROM body_builder GROUP BY body_builder.body_builder_id ORDER BY total_score ASC
SELECT body_builder.snatch, body_builder.clean_jerk FROM body_builder ORDER BY body_builder.snatch ASC
SELECT AVG(body_builder.snatch) FROM body_builder
SELECT body_builder.people_id, MAX(body_builder.clean_jerk), MIN(body_builder.total) FROM body_builder GROUP BY body_builder.people_id HAVING SUM(body_builder.total) = MAX(SUM(body_builder.total)) ORDER BY body_builder.people_id NULLS LAST
SELECT people.birth_date FROM people ORDER BY people.height ASC
SELECT p.birth_place, COUNT(*) FROM people AS p GROUP BY p.birth_place
SELECT birth_place FROM people GROUP BY birth_place ORDER BY COUNT(birth_place) DESC LIMIT 1
SELECT DISTINCT people.birth_place FROM people GROUP BY people.birth_place HAVING COUNT(people.people_id) >= 2
SELECT people.height, people.weight FROM people ORDER BY people.height DESC
SELECT body_builder.body_builder_id, body_builder.people_id, body_builder.snatch, body_builder.clean_jerk, body_builder.total FROM body_builder
SELECT p.name, p.birth_place FROM people AS p WHERE NOT p.weight IN (SELECT b.weight FROM bodybuilders AS b)
SELECT COUNT(DISTINCT people.birth_place) FROM people
SELECT COUNT(*) FROM people WHERE weight IS NULL
SELECT MIN(body_builder.snatch) FROM body_builder
SELECT COUNT(*) FROM election
SELECT election_id, date, votes FROM election ORDER BY votes DESC
SELECT election.date, (100 * CAST(election.vote_percent AS FLOAT)) FROM election ORDER BY election.date NULLS LAST
SELECT MIN(Vote_Percent), MAX(Vote_Percent) FROM election
SELECT representative.name, representative.party FROM representative
SELECT representative.name FROM representative WHERE representative.party <> 'Republican'
SELECT representative.lifespan FROM representative WHERE representative.state IN ('New York', 'Indiana') ORDER BY representative.lifespan NULLS LAST
SELECT p.name, COUNT(r.representative_id) FROM party AS p JOIN representative AS r ON p.party_id = r.party JOIN state AS s ON r.state = s.state GROUP BY p.name
SELECT r.party FROM representative AS r GROUP BY r.party ORDER BY COUNT(r.representative_id) DESC LIMIT 1
SELECT party.name FROM party WHERE party.id IN (SELECT representative.party_id FROM representative GROUP BY representative.party_id HAVING COUNT(representative.party_id) >= 3)
SELECT representative.state FROM representative GROUP BY representative.state HAVING COUNT(representative.representative_id) >= 2
SELECT representative.name FROM representative WHERE NOT representative.representative_id IN (SELECT election.representative_id FROM election)
SELECT representative.name FROM representative WHERE representative.state IN ('New York', 'Pennsylvania') GROUP BY representative.name HAVING COUNT(DISTINCT CASE WHEN representative.state = 'New York' THEN representative.representative_id END) >= 1 AND COUNT(DISTINCT CASE WHEN representative.state = 'Pennsylvania' THEN representative.representative_id END) >= 1
SELECT COUNT(DISTINCT representative.party) FROM representative
SELECT COUNT(*) FROM Apartment_Bookings
SELECT COUNT(apt_booking_id) FROM Apartment_Bookings
SELECT apt_booking_id, booking_start_date, booking_end_date FROM Apartment_Bookings
SELECT apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date FROM Apartment_Bookings
SELECT DISTINCT Apartment_Buildings.building_description FROM Apartment_Buildings
SELECT DISTINCT Apartment_Buildings.building_description FROM Apartment_Buildings
SELECT Apartment_Buildings.building_short_name FROM Apartment_Buildings WHERE Apartment_Buildings.building_manager ILIKE '%Emma%'
SELECT Apartment_Buildings.building_short_name FROM Apartment_Buildings WHERE Apartment_Buildings.building_manager ILIKE '%Emma%'
SELECT Apartment_Buildings.building_address, Apartment_Buildings.building_phone FROM Apartment_Buildings WHERE Apartment_Buildings.building_manager ILIKE '%Brenden%'
SELECT Apartment_Buildings.building_address, Apartment_Buildings.building_phone FROM Apartment_Buildings WHERE Apartment_Buildings.building_manager ILIKE '%Brenden%'
SELECT Apartment_Buildings.building_full_name FROM Apartment_Buildings WHERE Apartment_Buildings.building_full_name ILIKE '%court%'
SELECT Apartment_Buildings.building_full_name FROM Apartment_Buildings WHERE Apartment_Buildings.building_full_name ILIKE '%court%'
SELECT MIN(bathroom_count), MAX(bathroom_count) FROM Apartments
SELECT MIN(bathroom_count), MAX(bathroom_count) FROM Apartments
SELECT AVG(bedroom_count) FROM Apartments
SELECT AVG(bedroom_count) FROM Apartments
SELECT a.apt_id, CAST(a.room_count AS FLOAT) FROM Apartments AS a
SELECT a.apt_id, CAST(a.room_count AS FLOAT) FROM Apartments AS a
SELECT AVG(CAST(room_count AS FLOAT)) FROM Apartments WHERE apt_type_code ILIKE '%Studio%'
SELECT AVG(CAST(room_count AS FLOAT)) FROM Apartments WHERE apt_type_code ILIKE '%Studio%'
SELECT Apartments.apt_number FROM Apartments WHERE Apartments.apt_type_code ILIKE '%Flat%'
SELECT a.apt_number FROM Apartments AS a WHERE a.apt_type_code ILIKE '%flat%'
SELECT Guests.guest_first_name, Guests.guest_last_name FROM Guests
SELECT Guests.guest_first_name, Guests.guest_last_name FROM Guests
SELECT Guests.date_of_birth FROM Guests WHERE Guests.gender_code = 'Male'
SELECT Guests.date_of_birth FROM Guests WHERE Guests.gender_code = 'Male'
SELECT booking_status_code, COUNT(apt_booking_id) FROM Apartment_Bookings GROUP BY booking_status_code
SELECT Apartment_Bookings.booking_status_code, COUNT(Apartment_Bookings.apt_booking_id) FROM Apartment_Bookings GROUP BY Apartment_Bookings.booking_status_code
SELECT Apartments.apt_id, Apartments.room_count FROM Apartments ORDER BY CAST(Apartments.room_count AS FLOAT) ASC
SELECT Apartments.apt_id, Apartments.room_count FROM Apartments ORDER BY CAST(Apartments.room_count AS FLOAT) ASC
SELECT Apartments.apt_id, Apartments.building_id, Apartments.apt_type_code, Apartments.apt_number, Apartments.bathroom_count, Apartments.bedroom_count, Apartments.room_count FROM Apartments ORDER BY Apartments.bedroom_count DESC LIMIT 1
SELECT MAX(apartments.apt_number) FROM apartments WHERE apartments.bedroom_count = (SELECT MAX(bedroom_count) FROM apartments)
SELECT apt_type_code, COUNT(apt_id) FROM Apartments GROUP BY apt_type_code ORDER BY number_of_apartments ASC
SELECT apt_type_code, COUNT(*) FROM Apartments GROUP BY apt_type_code ORDER BY number_of_apartments ASC
SELECT a.apt_type_code, AVG(CAST(a.room_count AS FLOAT)) FROM Apartments AS a GROUP BY a.apt_type_code ORDER BY avg_room_count DESC LIMIT 3
SELECT Apartments.apt_type_code, AVG(CAST(Apartments.room_count AS FLOAT)) FROM Apartments GROUP BY Apartments.apt_type_code ORDER BY avg_room_count DESC LIMIT 3
SELECT a.apt_type_code, CAST(a.room_count AS FLOAT), b.bathroom_count, c.bedroom_count FROM Apartments AS a JOIN (SELECT apt_id, MAX(bathroom_count) FROM Apartments GROUP BY apt_id) AS b ON a.apt_id = b.apt_id JOIN (SELECT apt_id, MAX(bedroom_count) FROM Apartments GROUP BY apt_id) AS c ON a.apt_id = c.apt_id
SELECT a.apt_type_code, CAST(a.room_count AS FLOAT), a.bathroom_count, a.bedroom_count FROM Apartments AS a ORDER BY CAST(a.room_count AS FLOAT) DESC LIMIT 1
SELECT Apartments.apt_type_code FROM Apartments GROUP BY Apartments.apt_type_code ORDER BY COUNT(Apartments.apt_type_code) DESC LIMIT 1
SELECT Apartments.apt_type_code, COUNT(Apartments.apt_id) FROM Apartments GROUP BY Apartments.apt_type_code ORDER BY frequency DESC LIMIT 1
SELECT Apartments.apt_type_code, COUNT(*) FROM Apartments WHERE Apartments.bathroom_count > 1 GROUP BY Apartments.apt_type_code ORDER BY frequency DESC LIMIT 1
SELECT Apartments.apt_type_code, COUNT(*) FROM Apartments WHERE Apartments.bathroom_count > 1 GROUP BY Apartments.apt_type_code ORDER BY frequency DESC LIMIT 1
SELECT apt_type_code, MIN(room_count), MAX(room_count) FROM Apartments GROUP BY apt_type_code
SELECT a.apt_type_code, MIN(CAST(a.room_count AS INT)), MAX(CAST(a.room_count AS INT)) FROM Apartments AS a GROUP BY a.apt_type_code
SELECT g.gender_code, COUNT(g.guest_id) FROM Guests AS g GROUP BY g.gender_code ORDER BY guest_count DESC
SELECT g.gender_code, COUNT(g.guest_id) FROM guests AS g GROUP BY g.gender_code ORDER BY guest_count DESC
SELECT COUNT(*) FROM Apartments WHERE NOT apt_id IN (SELECT apt_id FROM Facilities)
SELECT COUNT(*) FROM Apartments WHERE NOT apt_id IN (SELECT apt_id FROM Facilities)
SELECT COUNT(*) FROM game WHERE season > 2007
SELECT game.date FROM game WHERE game.home_team = 'Chelsea' ORDER BY game.date DESC
SELECT g.season, g.home_team, g.away_team FROM game AS g
SELECT s.name, MAX(s.home_games), MIN(s.home_games), AVG(s.home_games) FROM stadium AS s GROUP BY s.name
SELECT AVG(Average_Attendance) FROM stadium WHERE Capacity_Percentage > 100
SELECT i.player, CAST(i.number_of_matches AS FLOAT), i.source FROM injury_accident AS i WHERE i.injury <> 'Knee problem'
SELECT COUNT(DISTINCT injury_accident.source) FROM injury_accident
SELECT COUNT(*) FROM game WHERE NOT 'Injury' IN (SELECT Injury FROM Injury)
SELECT s.name, AVG(g.home_games), SUM(g.total_attendance) FROM stadium AS s JOIN game AS g ON s.id = g.stadium_id WHERE s.capacity_percentage > 0 GROUP BY s.name
SELECT stadium.name FROM stadium WHERE stadium.name ILIKE '%Bank%'
SELECT AVG(weight) FROM player
SELECT MAX(height), MIN(height) FROM player
SELECT preferred_foot, AVG(overall_rating) FROM Player_Attributes GROUP BY preferred_foot
SELECT COUNT(*) FROM Player_Attributes WHERE overall_rating > 80 AND preferred_foot IN ('right', 'left')
SELECT p.id FROM Player AS p WHERE p.height >= 180 AND p.overall_rating > 85
SELECT p.id FROM Player AS p WHERE p.height BETWEEN 180 AND 190 AND p.foot_preference = 'left'
SELECT COUNT(Performance_ID) FROM performance
SELECT performance.host FROM performance ORDER BY performance.attendance ASC
SELECT performance.date, performance.location FROM performance
SELECT performance.date, SUM(performance.attendance) FROM performance WHERE performance.location IN ('TD Garden', 'Bell Centre') GROUP BY performance.date
SELECT AVG(Attendance) FROM performance
SELECT MAX(performance.date) FROM performance
SELECT performance.location, COUNT(performance.performance_id) FROM performance GROUP BY performance.location
SELECT performance.location, COUNT(performance.location) FROM performance GROUP BY performance.location ORDER BY frequency DESC
SELECT DISTINCT performance.location FROM performance GROUP BY performance.location HAVING COUNT(performance.performance_id) >= 2
SELECT DISTINCT performance.location FROM performance WHERE (performance.attendance > 2000 AND performance.attendance < 1000) GROUP BY performance.location
SELECT member.name FROM member WHERE NOT member.member_id IN (SELECT performance.member_id FROM performance)
SELECT DISTINCT classroom.building FROM classroom WHERE classroom.capacity > 50
SELECT DISTINCT classroom.building FROM classroom WHERE classroom.capacity > 50
SELECT COUNT(room_number) FROM classroom WHERE building <> 'Lamberton'
SELECT COUNT(*) FROM classroom WHERE building <> 'Lamberton'
SELECT department.dept_name, department.building FROM department WHERE department.budget > (SELECT AVG(department.budget) FROM department)
SELECT department.dept_name, department.building FROM department WHERE department.budget > (SELECT AVG(budget) FROM department)
SELECT classroom.building, classroom.room_number FROM classroom WHERE (classroom.capacity >= 50 AND classroom.capacity <= 100) ORDER BY classroom.building NULLS LAST, classroom.room_number NULLS LAST
SELECT classroom.room_number, classroom.building FROM classroom WHERE (classroom.capacity >= 50 AND classroom.capacity <= 100)
SELECT department.dept_name, department.building FROM department ORDER BY department.budget DESC LIMIT 1
SELECT department.dept_name, department.building FROM department ORDER BY department.budget DESC LIMIT 1
SELECT s.name FROM student AS s JOIN department AS d ON s.dept_name = d.name WHERE d.name = 'History' ORDER BY s.tot_cred DESC LIMIT 1
SELECT s.name FROM student AS s WHERE s.dept_name = 'History' ORDER BY s.tot_cred DESC LIMIT 1
SELECT COUNT(*) FROM classroom WHERE building ILIKE '%Lamberton%'
SELECT COUNT(*) FROM classroom WHERE building ILIKE '%Lamberton%'
SELECT CAST(COUNT(DISTINCT student.s_id) AS FLOAT) / NULLIF(COUNT(DISTINCT advisor.s_id), 0) FROM student LEFT JOIN advisor ON student.s_id = advisor.s_id
SELECT COUNT(DISTINCT s_id) FROM advisor
SELECT COUNT(DISTINCT course.dept_name) FROM course
SELECT COUNT(DISTINCT course.dept_name) FROM course
SELECT COUNT(DISTINCT course_id) FROM course WHERE dept_name ILIKE '%Physics%'
SELECT COUNT(*) FROM course WHERE dept_name ILIKE '%Physics%'
SELECT COUNT(*) FROM course WHERE NOT course_id IN (SELECT prereq_course FROM prerequisite)
SELECT COUNT(*) FROM course WHERE NOT course_id IN (SELECT prereq_course FROM prerequisite)
SELECT course.title FROM course WHERE NOT course.course_id IN (SELECT prereq.prereq_course FROM prerequisite AS prereq)
SELECT course.title FROM course WHERE NOT course.course_id IN (SELECT prerequisite_course.prerequisite_course FROM prerequisite_course)
SELECT COUNT(DISTINCT teaches.id) FROM teaches
SELECT COUNT(DISTINCT teaches.instructor_id) FROM teaches
SELECT SUM(department.budget) FROM department WHERE department.dept_name ILIKE '%Marketing%' OR department.dept_name ILIKE '%Finance%'
SELECT SUM(CASE WHEN dept_name = 'Marketing' THEN budget END) + SUM(CASE WHEN dept_name = 'Finance' THEN budget END) FROM department
SELECT instructor.dept_name FROM instructor WHERE instructor.name ILIKE '%Soisalon%'
SELECT instructor.dept_name FROM instructor WHERE instructor.name ILIKE '%Soisalon%'
SELECT COUNT(*) FROM classroom WHERE building = 'Lamberton' AND capacity < 50
SELECT COUNT(*) FROM classroom WHERE building = 'Lamberton' AND capacity < 50
SELECT department.dept_name, department.budget FROM department WHERE department.budget > (SELECT AVG(department.budget) FROM department)
SELECT department.dept_name, department.budget FROM department WHERE department.budget > (SELECT AVG(department.budget) FROM department)
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Statistics' ORDER BY instructor.salary ASC LIMIT 1
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Statistics' ORDER BY instructor.salary ASC NULLS LAST LIMIT 1
SELECT course.title FROM course WHERE course.dept_name ILIKE '%Statistics%' AND course.dept_name ILIKE '%Psychology%'
SELECT course.title FROM course WHERE course.dept_name ILIKE '%Statistics%' AND course.dept_name ILIKE '%Psychology%'
SELECT course.title FROM course WHERE course.dept_name ILIKE '%Statistics%' AND NOT course.dept_name ILIKE '%Psychology%'
SELECT course.title FROM course WHERE course.dept_name ILIKE '%Statistics%' AND NOT course.dept_name ILIKE '%Psychology%'
SELECT DISTINCT teaches.id FROM teaches WHERE teaches.semester = 'Fall' AND teaches.year = 2009 AND NOT teaches.id IN (SELECT teaches.id FROM teaches WHERE teaches.semester = 'Spring' AND teaches.year = 2010)
SELECT DISTINCT teaches.id FROM teaches WHERE teaches.semester = 'Fall' AND teaches.year = 2009 AND NOT teaches.id IN (SELECT teaches.id FROM teaches WHERE teaches.semester = 'Spring' AND teaches.year = 2010)
SELECT department.dept_name, COUNT(course.course_id) FROM department JOIN course ON department.dept_name = course.dept_name GROUP BY department.dept_name ORDER BY course_count DESC LIMIT 3
SELECT department_name, COUNT(course_id) FROM course GROUP BY department_name ORDER BY course_count DESC LIMIT 3
SELECT d.dept_name FROM department AS d JOIN course AS c ON d.dept_id = c.dept_name GROUP BY d.dept_name ORDER BY SUM(c.credits) DESC LIMIT 1
SELECT course.dept_name, COUNT(course.credits) FROM course GROUP BY course.dept_name ORDER BY total_credits DESC LIMIT 1
SELECT course.title, course.credits FROM course ORDER BY course.title NULLS LAST, course.credits DESC
SELECT course.title, course.credits FROM course ORDER BY course.title NULLS LAST, course.credits DESC
SELECT dept_name FROM department ORDER BY budget ASC LIMIT 1
SELECT department.dept_name FROM department ORDER BY department.budget ASC LIMIT 1
SELECT department.dept_name, department.building FROM department ORDER BY department.budget DESC
SELECT department.dept_name, department.building FROM department ORDER BY department.budget DESC
SELECT instructor.name, instructor.salary FROM instructor ORDER BY instructor.salary DESC LIMIT 1
SELECT instructor.name FROM instructor ORDER BY instructor.salary DESC LIMIT 1
SELECT instructor.id, instructor.name, instructor.dept_name, instructor.salary FROM instructor ORDER BY instructor.salary ASC
SELECT instructor.id, instructor.name, instructor.dept_name, instructor.salary FROM instructor ORDER BY instructor.salary ASC
SELECT s.name, d.dept_name, s.tot_cred FROM student AS s JOIN department AS d ON s.dept_name = d.dept_name ORDER BY s.tot_cred ASC
SELECT student.name, department.dept_name FROM student JOIN department ON student.dept_name = department.dept_name ORDER BY student.tot_cred ASC
SELECT classroom.building, COUNT(*) FROM classroom WHERE classroom.capacity > 50 GROUP BY classroom.building
SELECT classroom.building, COUNT(*) FROM classroom WHERE classroom.capacity > 50 GROUP BY classroom.building
SELECT classroom.building, MAX(classroom.capacity), AVG(classroom.capacity) FROM classroom GROUP BY classroom.building
SELECT classroom.building, MAX(classroom.capacity), AVG(classroom.capacity) FROM classroom GROUP BY classroom.building
SELECT course.title FROM course WHERE course.dept_name IN (SELECT dept_name FROM department GROUP BY dept_name HAVING COUNT(dept_name) > 1)
SELECT course.title FROM course WHERE course.dept_name IN (SELECT dept_name FROM department GROUP BY dept_name HAVING COUNT(dept_name) > 1)
SELECT dept_name, SUM(credits) FROM course GROUP BY dept_name
SELECT dept_name, SUM(credits) FROM course GROUP BY dept_name
SELECT MIN(instructor.salary) FROM instructor WHERE instructor.dept_name IN (SELECT department_name FROM department GROUP BY department_name HAVING AVG(salary) > (SELECT AVG(salary) FROM instructor))
SELECT instructor.id, instructor.name, instructor.salary FROM instructor WHERE instructor.salary = (SELECT MIN(instructor.salary) FROM instructor WHERE instructor.dept_name IN (SELECT dept_name FROM instructor GROUP BY dept_name HAVING AVG(salary) > (SELECT AVG(salary) FROM instructor)))
SELECT section.year, section.semester, COUNT(*) FROM section GROUP BY section.year, section.semester
SELECT section.year, section.semester, COUNT(*) FROM section GROUP BY section.year, section.semester ORDER BY section.year, section.semester
SELECT MAX(section.year) FROM section
SELECT MAX(section.year) FROM section
SELECT MAX(section.year), section.semester FROM section GROUP BY section.semester
SELECT section.year, section.semester, COUNT(*) FROM section GROUP BY section.year, section.semester ORDER BY course_count DESC LIMIT 1
SELECT s.dept_name, COUNT(*) FROM student AS s GROUP BY s.dept_name ORDER BY total_students DESC LIMIT 1
SELECT department.name FROM student JOIN department ON student.dept_name = department.name GROUP BY department.name ORDER BY COUNT(student.id) DESC LIMIT 1
SELECT department.dept_name, COUNT(student.id) FROM student JOIN department ON student.dept_name = department.dept_name GROUP BY department.dept_name
SELECT student.dept_name, COUNT(*) FROM student GROUP BY student.dept_name
SELECT takes.semester, takes.year FROM takes GROUP BY takes.semester, takes.year ORDER BY COUNT(takes.id) ASC LIMIT 1
SELECT takes.semester, takes.year, COUNT(takes.id) FROM takes GROUP BY takes.semester, takes.year ORDER BY student_count ASC LIMIT 1
SELECT course_id FROM course WHERE NOT course_id IN (SELECT prereq_course FROM course_prereq)
SELECT course.course_id FROM course WHERE NOT course.course_id IN (SELECT prereq.prereq_course FROM prequisite AS prereq)
SELECT course.title FROM course WHERE NOT course.course_id IN (SELECT prereq.prereq_course FROM prerequisite AS prereq)
SELECT course.title FROM course WHERE NOT course.course_id IN (SELECT prerequisite.course_id FROM prerequisite)
SELECT c.title FROM course AS c WHERE c.dept_name = 'International Finance'
SELECT c.title FROM course AS c WHERE c.dept_name = 'International Finance'
SELECT c.title FROM course AS c JOIN prerequisites AS p ON c.course_id = p.prerequisite_course_id WHERE p.title ILIKE '%Differential%Geometry%'
SELECT course.title FROM course WHERE course.dept_name = 'Differential Geometry'
SELECT student.name FROM student WHERE student.id IN (SELECT enrollment.student_id FROM enrollment WHERE semester_name ILIKE '%fall%' AND EXTRACT(YEAR FROM start_date) = 2003)
SELECT student.name FROM student WHERE student.id IN (SELECT course_enrollment.student_id FROM course_enrollment WHERE course_enrollment.course_id IN (SELECT course.id FROM course WHERE EXTRACT(YEAR FROM course.start_date) = 2003 AND EXTRACT(QUARTER FROM course.start_date) = 4))
SELECT c.title FROM course AS c WHERE c.dept_name = (SELECT dept_name FROM course WHERE title ILIKE '%Mobile%Computing%' ORDER BY credits DESC LIMIT 1) AND c.course_id <> (SELECT course_id FROM course WHERE title ILIKE '%Mobile%Computing%' ORDER BY credits DESC LIMIT 1)
SELECT c.title FROM course AS c WHERE c.course_id IN (SELECT requisite_course FROM course WHERE title ILIKE '%mobile%computing%') ORDER BY c.title NULLS LAST
SELECT instructor.name FROM instructor WHERE NOT instructor.id IN (SELECT course_instructor.instructor_id FROM course_instructor)
SELECT instructor.name FROM instructor WHERE NOT instructor.id IN (SELECT course.instructor_id FROM course)
SELECT instructor.id FROM instructor WHERE NOT instructor.id IN (SELECT course_instructor.instructor_id FROM course_instructor)
SELECT instructor.id FROM instructor WHERE NOT instructor.name ILIKE '%did%not%teach%'
SELECT i.name FROM instructor AS i JOIN course_instructor AS ci ON i.id <> ci.instructor_id WHERE NOT EXISTS(SELECT 1 FROM course AS c JOIN course_time AS t ON c.course_id = t.course_id WHERE c.instructor_id = i.id AND t.semester = 'Spring')
SELECT instructor.name FROM instructor WHERE NOT instructor.id IN (SELECT course_instructor.instructor_id FROM course_instructor JOIN course ON course_instructor.course_id = course.id WHERE course.semester = 'Spring')
SELECT instructor.dept_name FROM instructor GROUP BY instructor.dept_name ORDER BY AVG(instructor.salary) DESC LIMIT 1
SELECT instructor.dept_name, AVG(instructor.salary) FROM instructor GROUP BY instructor.dept_name ORDER BY average_salary DESC LIMIT 1
SELECT student.name FROM student WHERE NOT student.dept_name ILIKE '%Biology%' ORDER BY student.name NULLS LAST
SELECT s.name FROM student AS s LEFT JOIN course_student AS cs ON s.id = cs.student_id AND cs.course_code LIKE '%BIO%' WHERE cs.student_id IS NULL
SELECT instructor.name, instructor.salary FROM instructor WHERE instructor.dept_name = 'Physics' AND instructor.salary < (SELECT AVG(instructor.salary) FROM instructor WHERE instructor.dept_name = 'Physics')
SELECT instructor.name, instructor.salary FROM instructor WHERE instructor.dept_name = 'Physics' AND instructor.salary < (SELECT AVG(instructor.salary) FROM instructor WHERE instructor.dept_name = 'Physics')
SELECT instructor.name FROM instructor WHERE instructor.dept_name ILIKE '%Computer%Science%'
SELECT instructor.name FROM instructor WHERE instructor.dept_name ILIKE '%Comp.%Sci.%'
SELECT instructor.name FROM instructor WHERE instructor.dept_name ILIKE '%Comp.%Sci.%' AND instructor.salary > 80000
SELECT instructor.name FROM instructor WHERE instructor.dept_name ILIKE '%Comp.%Sci.%' AND instructor.salary > 80000
SELECT instructor.name FROM instructor WHERE instructor.name ILIKE '%dar%'
SELECT instructor.name FROM instructor WHERE instructor.name ILIKE '%dar%'
SELECT instructor.name FROM instructor ORDER BY instructor.name NULLS LAST
SELECT instructor.name FROM instructor ORDER BY instructor.name NULLS LAST
SELECT DISTINCT course_id FROM section WHERE year IN (2009, 2010) AND semester IN ('Fall', 'Spring')
SELECT DISTINCT course_id FROM section WHERE year IN (2009, 2010) AND semester IN ('Fall', 'Spring')
SELECT DISTINCT section.course_id FROM section WHERE (section.semester = 'Fall' AND section.year = 2009) OR (section.semester = 'Spring' AND section.year = 2010)
SELECT DISTINCT course_id FROM section WHERE year IN (2009, 2010) AND semester IN ('Fall', 'Spring') GROUP BY course_id HAVING COUNT(DISTINCT year) = 2
SELECT DISTINCT section.course_id FROM section WHERE section.semester = 'Fall' AND section.year = 2009 AND NOT section.course_id IN (SELECT course_id FROM section WHERE semester = 'Spring' AND year = 2010)
SELECT DISTINCT course_id FROM section WHERE semester = 'Fall' AND year = 2009 AND NOT course_id IN (SELECT course_id FROM section WHERE semester = 'Spring' AND year = 2010)
SELECT instructor.salary FROM instructor WHERE instructor.salary < (SELECT MAX(instructor.salary) FROM instructor) GROUP BY instructor.salary
SELECT instructor.salary FROM instructor WHERE instructor.salary < (SELECT MAX(instructor.salary) FROM instructor) GROUP BY instructor.salary
SELECT COUNT(DISTINCT teaches.id) FROM teaches WHERE teaches.semester = 'Spring 2010'
SELECT COUNT(DISTINCT teaches.id) FROM teaches WHERE teaches.semester = 'Spring' AND teaches.year = 2010
SELECT instructor.name, AVG(instructor.salary) FROM instructor GROUP BY instructor.name HAVING AVG(instructor.salary) > 42000
SELECT instructor.dept_name, AVG(instructor.salary) FROM instructor WHERE instructor.salary > 42000 GROUP BY instructor.dept_name
SELECT i.name FROM instructor AS i JOIN department AS d ON i.dept_name = d.name WHERE i.salary > (SELECT salary FROM instructor WHERE dept_name ILIKE '%Biology%') AND NOT d.name ILIKE '%Biology%'
SELECT i.name FROM instructor AS i WHERE i.salary > (SELECT MIN(b.salary) FROM instructor AS b WHERE b.dept_name = 'Biology')
SELECT instructor.name FROM instructor WHERE instructor.salary > (SELECT AVG(instructor.salary) FROM instructor WHERE instructor.dept_name ILIKE '%Biology%')
SELECT instructor.name FROM instructor WHERE instructor.salary > (SELECT MAX(instructor.salary) FROM instructor WHERE instructor.dept_name ILIKE '%Biology%')
SELECT COUNT(Debate_ID) FROM debate
SELECT debate.venue FROM debate ORDER BY debate.num_of_audience ASC
SELECT date, venue FROM debate
SELECT debate.date FROM debate WHERE debate.num_of_audience > 150
SELECT people.name FROM people WHERE people.age IN (35, 36)
SELECT MIN(people.age), CAST(COUNT(*) AS FLOAT) / (SELECT COUNT(*) FROM people) FROM people
SELECT p.party, COUNT(*) FROM people AS p GROUP BY p.party
SELECT p.district FROM people AS p GROUP BY p.district ORDER BY COUNT(p.people_id) DESC LIMIT 1
SELECT DISTINCT debate.venue FROM debate
SELECT p.name FROM people AS p WHERE NOT p.people_id IN (SELECT d.debater_id FROM debates AS d)
SELECT Customers.customer_details FROM Customers ORDER BY Customers.customer_details ASC
SELECT customers.customer_details FROM customers ORDER BY customers.customer_details ASC
SELECT Policies.Policy_Type_Code, COUNT(*) FROM Policies GROUP BY Policies.Policy_Type_Code ORDER BY frequency DESC LIMIT 1
SELECT Policies.Policy_Type_Code FROM Policies GROUP BY Policies.Policy_Type_Code ORDER BY COUNT(Policies.Policy_Type_Code) DESC LIMIT 1
SELECT Policies.Policy_Type_Code FROM Policies GROUP BY Policies.Policy_Type_Code HAVING COUNT(Policies.customer_id) > 2
SELECT Policies.Policy_Type_Code FROM Policies GROUP BY Policies.Policy_Type_Code HAVING COUNT(Policies.customer_id) > 2
SELECT SUM(Amount_Paid), AVG(Amount_Paid) FROM Claim_Headers
SELECT SUM(Amount_Piad), AVG(Amount_Piad) FROM Claim_Headers
SELECT Customers.customer_details FROM Customers WHERE NOT Customers.customer_id IN (SELECT policyholders.customer_id FROM policyholders)
SELECT Customers.customer_details FROM Customers WHERE NOT Customers.customer_id IN (SELECT Policyholders.customer_id FROM Policyholders)
SELECT COUNT(Claim_Stage_ID) FROM Claims_processing_Stages
SELECT COUNT(DISTINCT Next_Claim_Stage_ID) FROM Claims_processing_Stages
SELECT Customers.customer_details FROM Customers WHERE Customers.customer_details ILIKE '%Diana%'
SELECT Customers.customer_details FROM Customers WHERE "Diana" ILIKE '%customers.customer_details%'
SELECT Customers.customer_details FROM Customers
SELECT c.customer_name, s.staff_name FROM customers AS c CROSS JOIN staff AS s
SELECT p.policy_type_code, COUNT(*) FROM policies AS p GROUP BY p.policy_type_code
SELECT p.policy_type_code, COUNT(*) FROM policies AS p GROUP BY p.policy_type_code
SELECT Claims_having_Stages.claim_status_description FROM Claims_having_Stations WHERE Claims_having_Stations.claim_status_name = 'Open'
SELECT Claims_having_Stages.claim_status_description FROM Claims_having_Stations WHERE Claims_having_Stations.claim_status_name = 'Open'
SELECT COUNT(DISTINCT Claims_outstanding.claim_outcome_code) FROM Claims_outstanding
SELECT COUNT(DISTINCT Claims_outstanding.claim_outcome_code) FROM Claims_outstanding
SELECT COUNT(*) FROM Accounts
SELECT COUNT(*) FROM Accounts
SELECT COUNT(DISTINCT customer_id) FROM Accounts
SELECT COUNT(DISTINCT customer_id) FROM Accounts
SELECT a.account_id, a.date_account_opened, a.account_name, a.other_account_details FROM Accounts AS a
SELECT a.account_id, CAST(a.date_account_opened AS TEXT), a.account_name, a.other_account_details FROM Accounts AS a
SELECT COUNT(*) FROM customers
SELECT COUNT(*) FROM customers
SELECT customers.customer_id FROM customers WHERE NOT customers.customer_id IN (SELECT account_customers.customer_id FROM account_customers)
SELECT Customers.customer_id FROM Customers WHERE NOT Customers.customer_id IN (SELECT account_holder.customer_id FROM account_holders)
SELECT a.customer_id, COUNT(a.account_id) FROM Accounts AS a GROUP BY a.customer_id
SELECT a.customer_id, COUNT(a.account_id) FROM Accounts AS a GROUP BY a.customer_id
SELECT COUNT(*) FROM customers
SELECT COUNT(*) FROM customers
SELECT genders.gender_text, COUNT(customers.customer_id) FROM customers JOIN genders ON customers.gender = genders.gender_code GROUP BY genders.gender_text
SELECT genders, COUNT(customer_id) FROM customers GROUP BY genders
SELECT COUNT(*) FROM financial_transactions
SELECT COUNT(*) FROM Financial_Transactions
SELECT Financial_Transactions.account_id, COUNT(Financial_Transactions.transaction_id) FROM Financial_Transactions GROUP BY Financial_Transactions.account_id
SELECT Financial_Transactions.account_id, COUNT(Financial_Transactions.transaction_id) FROM Financial_Transactions GROUP BY Financial_Transactions.account_id
SELECT AVG(transaction_amount), MIN(transaction_amount), MAX(transaction_amount), SUM(transaction_amount) FROM Financial_Transactions
SELECT AVG(transaction_amount), MIN(transaction_amount), MAX(transaction_amount), SUM(transaction_amount) FROM Financial_Transactions
SELECT financial_transactions.transaction_id FROM financial_transactions WHERE financial_transactions.transaction_amount > (SELECT AVG(financial_transactions.transaction_amount) FROM financial_transactions)
SELECT ft.transaction_id FROM Financial_Transactions AS ft WHERE ft.transaction_amount > (SELECT AVG(ft.transaction_amount) FROM Financial_Transactions AS ft)
SELECT Financial_Transactions.transaction_type, SUM(Financial_Transactions.transaction_amount) FROM Financial_Transactions GROUP BY Financial_Transactions.transaction_type
SELECT Financial_Transactions.transaction_type, SUM(Financial_Transactions.transaction_amount) FROM Financial_Transactions GROUP BY Financial_Transactions.transaction_type
SELECT financial_transactions.account_id, COUNT(financial_transactions.transaction_id) FROM financial_transactions GROUP BY financial_transactions.account_id ORDER BY transaction_count DESC LIMIT 1
SELECT Financial_Transactions.account_id, COUNT(Financial_Transactions.transaction_id) FROM Financial_Transactions GROUP BY Financial_Transactions.account_id ORDER BY number_of_transactions DESC LIMIT 1
SELECT products.product_id, products.product_name, products.product_size FROM products
SELECT DISTINCT Products.product_size FROM Products
SELECT DISTINCT products.product_color FROM products
SELECT DISTINCT products.product_color FROM products
SELECT financial_transactions.invoiceice_number, COUNT(financial_transactions.transaction_id) FROM financial_transactions GROUP BY financial_transactions.invoiceice_number
SELECT financial_transactions.invoiceice_number, COUNT(*) FROM financial_transactions GROUP BY financial_transactions.invoiceice_number
SELECT COUNT(*) FROM Invoices
SELECT COUNT(*) FROM Invoices
SELECT o.order_id, COUNT(i.invoice_number) FROM orders AS o JOIN invoices AS i ON o.order_id = i.order_id GROUP BY o.order_id
SELECT o.order_id, COUNT(i.invoice_number) FROM orders AS o JOIN invoices AS i ON o.order_id = i.order_id GROUP BY o.order_id
SELECT p.product_name FROM Products AS p WHERE NOT p.product_id IN (SELECT o.product_id FROM Orders AS o)
SELECT p.product_name FROM Products AS p LEFT JOIN Orders AS o ON p.product_id = o.product_id WHERE o.product_id IS NULL
SELECT o.order_id, COUNT(oi.product_quantity) FROM Order_Items AS oi JOIN Orders AS o ON oi.order_id = o.order_id GROUP BY o.order_id
SELECT o.order_id, COUNT(oi.order_item_id) FROM Order_Items AS oi JOIN Orders AS o ON oi.order_id = o.order_id GROUP BY o.order_id
SELECT oi.product_id, COUNT(DISTINCT oi.order_id) FROM order_items AS oi GROUP BY oi.product_id
SELECT oi.product_id, COUNT(DISTINCT oi.order_id) FROM Order_Items AS oi GROUP BY oi.product_id
SELECT o.order_id, COUNT(oi.product_id) FROM orders AS o JOIN order_items AS oi ON o.order_id = oi.order_id GROUP BY o.order_id
SELECT o.order_id, COUNT(DISTINCT oi.product_id) FROM Order_Items AS oi JOIN Orders AS o ON oi.order_id = o.order_id GROUP BY o.order_id
SELECT o.order_id, SUM(oi.product_quantity) FROM Order_Items AS oi JOIN Orders AS o ON oi.order_id = o.order_id GROUP BY o.order_id
SELECT o.order_id, COUNT(oi.product_quantity) FROM Order_Items AS oi JOIN Orders AS o ON oi.order_id = o.order_id GROUP BY o.order_id
SELECT COUNT(*) FROM Products WHERE NOT product_id IN (SELECT order_product_id FROM Orders)
SELECT COUNT(*) FROM Products WHERE NOT product_id IN (SELECT order_product_id FROM Orders)
SELECT COUNT(*) FROM church WHERE open_date < 1850
SELECT c.name, CAST(c.open_date AS TEXT), co.organized_by FROM church AS c JOIN continuation AS co ON c.continuation_of = co.church_id
SELECT c.name FROM church AS c ORDER BY c.open_date DESC
SELECT EXTRACT(YEAR FROM Open_Date) FROM church GROUP BY Opening_Year HAVING COUNT(Church_ID) >= 2
SELECT church.organized_by, church.name FROM church WHERE church.open_date BETWEEN 1830 AND 1840
SELECT DATE_TRUNC('YEAR', open_date), COUNT(*) FROM church GROUP BY YEAR_OPENED ORDER BY YEAR_OPENED
SELECT c.name, CAST(c.open_date AS TEXT) FROM church AS c WHERE c.organized_by = 'Catholic' ORDER BY c.open_date DESC LIMIT 3
SELECT COUNT(*) FROM people WHERE age > 30 AND gender = 'female'
SELECT p.country FROM people AS p WHERE p.age > 30 AND p.age < 25
SELECT MIN(people.age), MAX(people.age), AVG(people.age) FROM people
SELECT p.name, p.country FROM people AS p WHERE p.age < (SELECT AVG(age) FROM people)
SELECT p.name, p.age FROM people AS p WHERE p.is_male = 'Yes' AND NOT p.people_id IN (SELECT w.people_id FROM weddings AS w)
SELECT c.name FROM church AS c WHERE NOT c.church_id IN (SELECT w.church_id FROM wedding AS w WHERE EXTRACT(YEAR FROM w.wedding_date) = 2015)
SELECT COUNT(*) FROM wedding WHERE YEAR = 2016
SELECT p.country, COUNT(*) FROM people AS p GROUP BY p.country
SELECT COUNT(DISTINCT Church_ID) FROM wedding WHERE Year = 2016
SELECT COUNT(*) FROM artist
SELECT COUNT(*) FROM artist
SELECT a.name, a.age, a.country FROM artist AS a ORDER BY a.year_join
SELECT a.name, CAST(a.age AS TEXT), c.country FROM artist AS a JOIN country AS c ON a.country = c.code ORDER BY a.year_join
SELECT DISTINCT artist.country FROM artist
SELECT artist.country FROM artist GROUP BY artist.country
SELECT a.name, a.year_join FROM artist AS a WHERE a.country <> 'United States'
SELECT artist.name, artist.year_join FROM artist WHERE artist.country <> 'United States' ORDER BY artist.name NULLS LAST
SELECT COUNT(*) FROM artist WHERE age > 46 AND year_join > 1990
SELECT COUNT(*) FROM artist WHERE age > 46 AND year_join > 1990
SELECT AVG(age), MIN(age) FROM artist WHERE country = 'United States'
SELECT AVG(age), MIN(age) FROM artist WHERE country = 'United States'
SELECT a.name FROM artist AS a WHERE a.year_join = (SELECT MAX(year_join) FROM artist)
SELECT a.name FROM artist AS a ORDER BY a.year_join DESC LIMIT 1
SELECT COUNT(Exhibition_ID) FROM exhibition WHERE Year >= 2005
SELECT COUNT(Exhibition_ID) FROM exhibition WHERE Year >= 2005
SELECT exhibition.theme, exhibition.year FROM exhibition WHERE exhibition.ticket_priced < 15
SELECT exhibition.theme, CAST(exhibition.year AS TEXT) FROM exhibition WHERE exhibition.ticket_price < 15
SELECT a.name FROM artist AS a LEFT JOIN exhibition_artist AS ea ON a.artist_id = ea.artist_id WHERE ea.artist_id IS NULL
SELECT a.name FROM artist AS a LEFT JOIN exhibition_artist AS ea ON a.artist_id = ea.artist_id WHERE ea.artist_id IS NULL
SELECT AVG(ticket_price), MIN(ticket_price), MAX(ticket_price) FROM exhibition WHERE year < 2009
SELECT AVG(exhibition.ticket_price), MIN(exhibition.ticket_price), MAX(exhibition.ticket_price) FROM exhibition WHERE exhibition.year < 2009
SELECT exhibition.theme, exhibition.year FROM exhibition ORDER BY exhibition.ticket_price DESC
SELECT exhibition.theme, exhibition.year FROM exhibition ORDER BY exhibition.ticket_price DESC
SELECT a.name FROM artist AS a LEFT JOIN exhibition AS e ON a.artist_id = e.artist_id AND EXTRACT(YEAR FROM e.start_date) = 2004 WHERE e.artist_id IS NULL
SELECT a.name FROM artist AS a LEFT JOIN exhibition AS e ON a.artist_id = e.artist_id AND EXTRACT(YEAR FROM e.start_date) = 2004 WHERE e.artist_id IS NULL
SELECT i_id FROM item WHERE title ILIKE '%orange%'
SELECT item.i_id, item.title FROM item
SELECT COUNT(*) FROM review
SELECT COUNT(*) FROM useracct
SELECT AVG(rating), MAX(rating) FROM review
SELECT MAX(rank) FROM review
SELECT COUNT(DISTINCT review.u_id) FROM review
SELECT COUNT(DISTINCT review.i_id) FROM review
SELECT COUNT(*) FROM item
SELECT u.name FROM useracct AS u LEFT JOIN review AS r ON u.u_id = r.u_id WHERE r.u_id IS NULL
SELECT item.title FROM item ORDER BY item.title ASC
SELECT i.title FROM item AS i LEFT JOIN review AS r ON i.i_id = r.item_id WHERE r.item_id IS NULL
SELECT useracct.name FROM useracct WHERE NOT useracct.u_id IN (SELECT reviewer_id FROM review)
SELECT COUNT(*) FROM useracct WHERE NOT u_id IN (SELECT reviewer_u_id FROM reviews)
SELECT COUNT(*) FROM item
SELECT COUNT(*) FROM player
SELECT player.player_name FROM player ORDER BY player.votes ASC
SELECT player.gender, player.occupation FROM player
SELECT player.player_name, player.residence FROM player WHERE "Occupation" <> 'Researcher'
SELECT player.sponsor_name FROM player WHERE (player.residence = 'Brandon' OR player.residence = 'Birtle')
SELECT p.player_name, COUNT(v.vote_id) FROM player AS p JOIN vote AS v ON p.player_id = v.player_id GROUP BY p.player_name ORDER BY vote_count DESC LIMIT 1
SELECT player.occupation, COUNT(*) FROM player GROUP BY player.occupation ORDER BY total_play DESC
SELECT player.occupation FROM player GROUP BY player.occupation ORDER BY COUNT(player.occupation) DESC LIMIT 1
SELECT residence FROM player GROUP BY residence HAVING COUNT(player_id) >= 2
SELECT player.player_name FROM player WHERE NOT player.player_id IN (SELECT coach.coach_player_id FROM coach)
SELECT DISTINCT residence FROM player WHERE gender IN ('M', 'F')
SELECT COUNT(*) FROM gymnast
SELECT COUNT(*) FROM gymnast
SELECT gymnast.gymnast_id, SUM(gymnast.floor_exercise_points + gymnast.pommel_horse_points + gymnast.rings_points + gymnast.vault_points + gymnast.parallel_bars_points + gymnast.horizontal_bar_points) FROM gymnast GROUP BY gymnast.gymnast_id ORDER BY total_points DESC
SELECT gymnast_id, total_points FROM gymnast ORDER BY total_points DESC
SELECT gymnast_id, total_points FROM gymnast ORDER BY floor_exercise_points DESC
SELECT gymnast.gymnast_id, gymnast.floor_exercise_points FROM gymnast ORDER BY gymnast.floor_exercise_points DESC
SELECT AVG(gymnast.horizontal_bar_points) FROM gymnast
SELECT AVG(gymnast.horizontal_bar_points) FROM gymnast
SELECT people.name FROM people ORDER BY people.name ASC
SELECT p.name FROM people AS p ORDER BY p.name ASC
SELECT MAX(people.age) FROM people
SELECT people.name, MAX(people.height), people.age FROM people GROUP BY people.name, people.age HAVING MAX(people.height) = (SELECT MAX(height) FROM people)
SELECT p.name FROM people AS p ORDER BY p.age DESC LIMIT 5
SELECT p.name FROM people AS p ORDER BY p.age DESC LIMIT 5
SELECT DISTINCT people.homeowner FROM people WHERE NOT people.homeowner IN (SELECT gymnasts.homeowner FROM gymnasts)
SELECT people.hearth FROM people WHERE people.hearth IS NULL
SELECT p.hearth FROM people AS p WHERE p.age > 23 AND p.age < 20
SELECT DISTINCT people.hearth FROM people WHERE age > 23 AND age < 20
SELECT COUNT(DISTINCT people.hometown) FROM people
SELECT COUNT(DISTINCT people.hometown) FROM people
SELECT COUNT(*) FROM accounts
SELECT COUNT(*) FROM accounts
SELECT SUM(checking.balance) FROM checking
SELECT SUM(checking.balance) FROM checking
SELECT AVG(checking.balance) FROM checking
SELECT AVG(checking.balance) FROM checking
SELECT COUNT(*) FROM SAVINGS WHERE savings > (SELECT AVG(savings) FROM SAVINGS)
SELECT COUNT(*) FROM SAVINGS WHERE savings.balance > (SELECT AVG(savings.balance) FROM savings)
SELECT accounts.name FROM accounts ORDER BY accounts.name ASC
SELECT accounts.name FROM accounts ORDER BY accounts.name ASC
SELECT COUNT(*) FROM browser WHERE market_share >= 5
SELECT browser.name FROM browser ORDER BY browser.market_share DESC
SELECT browser.id, browser.name, browser.market_share FROM browser
SELECT MAX(market_share), MIN(market_share), AVG(market_share) FROM browser WHERE name IN ('Internet Explorer', 'Firefox', 'Safari')
SELECT browser.id, browser.market_share FROM browser WHERE browser.name ILIKE '%Safari%'
SELECT Web_client_accelerator.name, Web_client_accelerator.os FROM Web_client_accelerator WHERE Web_client_accelerator.connection <> 'Broadband'
SELECT COUNT(DISTINCT Web_client_accelerator.client) FROM Web_client_accelerator
SELECT COUNT(*) FROM Web_client_accelerator WHERE NOT name IN (SELECT browser FROM Browser_list)
SELECT Web_client_accelerator.name, Web_client_accelerator.operating_system FROM Web_client_accelerator WHERE "Operating system" <> 'Opera' ORDER BY Web_client_accelerator.name NULLS LAST
SELECT Web_client_accelerator.name FROM Web_client_accelerator WHERE Web_client_accelerator.name ILIKE '%Opera%'
SELECT Web_client_accelerator.operating_system, COUNT(*) FROM Web_client_accelerator GROUP BY Web_client_accelerator.operating_system
SELECT COUNT(*) FROM wrestler
SELECT COUNT(*) FROM wrestler
SELECT wrestler.name FROM wrestler ORDER BY wrestler.days_held DESC
SELECT wrestler.name FROM wrestler ORDER BY CAST(wrestler.days_held AS FLOAT) DESC
SELECT wrestler.name FROM wrestler ORDER BY CAST(wrestler.days_held AS FLOAT) ASC LIMIT 1
SELECT wrestler.name FROM wrestler ORDER BY CAST(wrestler.days_held AS FLOAT) ASC LIMIT 1
SELECT COUNT(Reign) FROM wrestler WHERE "Location" <> 'Tokyo,Japan'
SELECT Wrestler_ID, Name, Reign, CAST(Days_held AS FLOAT) / NULLIF(COUNT(*), 0) OVER (PARTITION BY Wrestler_ID) FROM wrestler WHERE "Location" <> 'Tokyo, Japan' GROUP BY Wrestler_ID, Name, Reign
SELECT wrestler.name, wrestler.location FROM wrestler
SELECT wrestler.name, wrestler.location FROM wrestler
SELECT Eliminations.Eliminations_Move FROM Eliminations WHERE Eliminations.Team = 'Team Orton'
SELECT Eliminations.Eliminations_Move FROM Eliminations WHERE Eliminations.Team = 'Orton'
SELECT e.team, COUNT(e.eliminations_id) FROM eliminations AS e GROUP BY e.team
SELECT Team, COUNT(Eliminations_ID) FROM Eliminations GROUP BY Team
SELECT DISTINCT Eliminations.Team FROM Eliminations GROUP BY Eliminations.Team HAVING COUNT(Elimitations.Eliminations_ID) > 3
SELECT Eliminations.Team FROM Eliminations GROUP BY Eliminations.Team HAVING COUNT(Eliminations.Eliminations_ID) > 3
SELECT wrestler.reign, CAST(wrestler.days_held AS FLOAT) FROM wrestler
SELECT wrestler.name, COUNT(wrestler_id), SUM(CAST(days_held AS INT)) FROM wrestler GROUP BY wrestler.name
SELECT wrestler.name FROM wrestler WHERE CAST(wrestler.days_held AS FLOAT) < 100
SELECT wrestler.name FROM wrestler WHERE CAST(wrestler.days_held AS FLOAT) < 100
SELECT wrestler.reign, COUNT(*) FROM wrestler GROUP BY wrestler.reign ORDER BY frequency DESC
SELECT wrestler.reign FROM wrestler GROUP BY wrestler.reign ORDER BY COUNT(wrestler.reign) DESC LIMIT 1
SELECT wrestler.location FROM wrestler GROUP BY wrestler.location HAVING COUNT(wrestler.wrestler_id) > 2
SELECT wrestler.location FROM wrestler GROUP BY wrestler.location HAVING COUNT(wrestler.wrestler_id) > 2
SELECT wrestler.name FROM wrestler WHERE wrestler.reign <> 'eliminated'
SELECT wrestler.name FROM wrestler WHERE NOT wrestler.reign ILIKE '%eliminated%' ORDER BY wrestler.name NULLS LAST
SELECT DISTINCT Eliminations.Team FROM Eliminations WHERE Eliminations.Eliminated_By ILIKE '%Orton%' AND Eliminations.Eliminated_by ILIKE '%Benjamin%'
SELECT DISTINCT Eliminations.Team FROM Eliminations WHERE "Eliminated By" ILIKE '%Orton%' AND "Eliminated By" ILIKE '%Benjamin%' ORDER BY Eliminations.Team NULLS LAST
SELECT COUNT(DISTINCT Team) FROM Eliminations
SELECT COUNT(DISTINCT Eliminations.Team) FROM Eliminations
SELECT Eliminations.Time FROM Eliminations WHERE (Eliminations.Wrestler_ID = 'Punk' OR Eliminations.Wrestler_ID = 'Orton') AND NOT Eliminations.Team IS NULL
SELECT Eliminations.Time FROM Eliminations WHERE Eliminations.Eliminated_By IN ('Punk', 'Orton')
SELECT COUNT(*) FROM school
SELECT COUNT(*) FROM School
SELECT School_name FROM School ORDER BY school_name ASC
SELECT school.school_name, school.location, school.mascot FROM school
SELECT SUM(Enrollment), AVG(Enrollment) FROM School
SELECT School.mascot FROM school WHERE school.enrollment > (SELECT AVG(enrollment) FROM school)
SELECT School_name FROM School ORDER BY enrollment ASC LIMIT 1
SELECT AVG(Enrollment), MAX(Enrollment), MIN(Enrollment) FROM School
SELECT COUNT(school_id), SUM(enrollment) FROM school GROUP BY county
SELECT endowment.donator_name, SUM(endowment.amount) FROM endowment GROUP BY endowment.donator_name ORDER BY total_amount DESC
SELECT School_name FROM school WHERE NOT "Location" ILIKE '%Ave%' ORDER BY "School Name" NULLS LAST
SELECT endowment.donator_name FROM endowment WHERE endowment.amount >= 9
SELECT endowment.donator_name, endowment.amount FROM endowment ORDER BY endowment.amount DESC LIMIT 1
SELECT COUNT(*) FROM budget WHERE budgeted > 3000 AND year <= 2001
SELECT COUNT(*) FROM budget WHERE year <= 2001 AND budget > 3000
SELECT endowment.donor_name FROM endowment
SELECT COUNT(*) FROM budget WHERE budget.budgeted < budget.invested
-1
SELECT COUNT(building_id) FROM building
SELECT building.name, building.street_address, COUNT(floor) FROM building GROUP BY building.name, building.street_address ORDER BY floor_count DESC
SELECT MAX(Heigh_Feet) FROM Building
SELECT AVG(heath_feet), MAX(heath_floors), MIN(heath_floors) FROM building
SELECT COUNT(*) FROM building WHERE (heigh_floors > (SELECT AVG(heigh_floors) FROM building)) OR (number_of_floors > (SELECT AVG(number_of_floors) FROM building))
SELECT building.name FROM building WHERE building.height_feet >= 200 AND building.floors >= 20
SELECT Institution.Institution, Institution.location FROM Institution WHERE Institution.founded > '1990' AND Institution.type ILIKE '%Private%'
SELECT Institution.type, COUNT(Institution.institution_id), SUM(institution.enrollment) FROM institution GROUP BY institution.type
SELECT Institution.type, COUNT(Institution_id) FROM Institution GROUP BY Institution.type ORDER BY num_institutions DESC LIMIT 1
SELECT Institution.type FROM Institution WHERE Institution.founded > '1990' AND Institution.enrollment >= '1000' ORDER BY Institution.type NULLS LAST
SELECT building.name FROM building LEFT JOIN institution ON building.building_id = institution.building_id WHERE institution.building_id IS NULL
SELECT building.name FROM building WHERE CAST(building.years_as_tallest AS INT) <> 2003
SELECT DISTINCT Institution.type FROM Institution
SELECT COUNT(*) FROM Institution WHERE NOT Institution_id IN (SELECT Protein.Institution_id FROM Protein)
SELECT DISTINCT LOCATION FROM CINEMA WHERE CAPacity > 800
SELECT DISTINCT cinema.location FROM cinema WHERE cinema.opening_year IN (2010, 2011)
SELECT COUNT(Cinema_ID) FROM cinema
SELECT COUNT(Cinema_ID) FROM cinema
SELECT c.name, c.opening_year, c.capacity FROM cinema AS c
SELECT c.name, c.location FROM cinema AS c WHERE c.capacity > (SELECT AVG(capacity) FROM cinema)
SELECT DISTINCT cinema.location FROM cinema
SELECT DISTINCT cinema.location FROM cinema
SELECT c.name, c.opening_year FROM cinema AS c ORDER BY c.opening_year DESC
SELECT cinema.name, cinema.location FROM cinema ORDER BY cinema.capacity DESC LIMIT 1
SELECT AVG(capacity), MIN(capacity), MAX(capacity) FROM cinema WHERE open_year >= 2011
SELECT cinema.location, COUNT(cinema.cinema_id) FROM cinema GROUP BY cinema.location
SELECT cinema.location, COUNT(cinema.cinema_id) FROM cinema WHERE cinema.opening_year >= 2010 GROUP BY cinema.location ORDER BY number_of_cinemas DESC LIMIT 1
SELECT DISTINCT cinema.location FROM cinema WHERE cinema.capacity > 300 GROUP BY cinema.location HAVING COUNT(cinema.cinema_id) >= 2
SELECT DISTINCT cinema.location FROM cinema WHERE cinema.capacity > 300 GROUP BY cinema.location HAVING COUNT(cinema.cinema_id) >= 2
SELECT film.title, film.directed_by FROM film
SELECT film.title, film.directed_by FROM film
SELECT DISTINCT film.directed_by FROM film
SELECT DISTINCT film.directed_by FROM film
SELECT film.directed_by, COUNT(film.title) FROM film GROUP BY film.directed_by
SELECT film.title, film.directed_by FROM film WHERE film.original_air_date IS NULL
SELECT DISTINCT cinema.location FROM cinema WHERE cinema.capacity > 300 GROUP BY cinema.location HAVING COUNT(cinema.cinema_id) > 1
SELECT cinema.location FROM cinema WHERE cinema.capacity > 300 GROUP BY cinema.location HAVING COUNT(cinema.cinema_id) > 1
SELECT COUNT(*) FROM film WHERE title ILIKE '%Dummy%'
SELECT COUNT(*) FROM film WHERE title ILIKE '%Dummy%'
SELECT p.customer_id, SUM(p.amount_paid) FROM Payments AS p GROUP BY p.customer_id ORDER BY total_amount_paid DESC
SELECT p.product_id FROM Products_Booked AS p WHERE p.booked_count >= 3
SELECT COUNT(DISTINCT product_type_code) FROM Products_for_Hire
SELECT c.first_name, c.last_name, c.gender_mf FROM Customers AS c WHERE c.good_or_bad_customer = 'Good' ORDER BY c.last_name
SELECT AVG(payments.amount_due) FROM payments
SELECT MAX(booked_count), MIN(booked_count), AVG(booked_count) FROM Products_Booked
SELECT DISTINCT Payments.payment_type_code FROM Payments
SELECT Products_for_Hire.product_id, Products_for_Hire.daily_hire_cost FROM Products_for_Hire WHERE Products_for_Hire.product_name ILIKE '%Book%'
SELECT COUNT(*) FROM Products_for_Hire WHERE daily_hire_cost <= 200
SELECT Payments.payment_date FROM Payments WHERE (Payments.amount_paid > 300 OR Payments.payment_type_code = 'check')
SELECT p.product_name, p.product_description FROM Products_for_Hire AS p WHERE p.product_type_code = 'Cutlery' AND p.daily_hire_cost < 20
SELECT COUNT(Phone_ID) FROM phone
SELECT phone.name FROM phone ORDER BY phone.price ASC
SELECT phone.memory_in_g, phone.carrier FROM phone
SELECT DISTINCT phone.carrier FROM phone WHERE phone.memory_in_g > 32
SELECT phone.name FROM phone WHERE phone.carrier IN ('Sprint', 'TMobile')
SELECT phone.carrier FROM phone WHERE price = (SELECT MAX(price) FROM phone)
SELECT phone.carrier, COUNT(phone.phone_id) FROM phone GROUP BY phone.carrier
SELECT phone.carrier, COUNT(*) FROM phone GROUP BY phone.carrier ORDER BY frequency DESC LIMIT 1
SELECT DISTINCT phone.carrier FROM phone WHERE (phone.memory_in_g < 32 AND phone.memory_in_g > 64) GROUP BY phone.carrier
SELECT phone.name FROM phone WHERE phone.carrier IS NULL
SELECT COUNT(*) FROM company WHERE main_industry ILIKE '%gas%'
SELECT COUNT(*) FROM company
SELECT c.company, c.rank FROM company AS c ORDER BY c.sales_billion DESC
SELECT c.company_id, c.rank, c.company FROM company AS c ORDER BY c.sales_billion DESC
SELECT c.company, c.main_industry FROM company AS c WHERE c.headquarters <> 'USA'
SELECT company.company, company.main_industry FROM company WHERE company.headquarters <> 'United States' ORDER BY company.company NULLS LAST
SELECT c.company, c.headquarters FROM company AS c ORDER BY c.market_value DESC
SELECT company.company, company.headquarters FROM company ORDER BY company.market_value DESC
SELECT MIN(market_value), MAX(market_value), AVG(market_value) FROM company
SELECT c.company_id, MIN(c.market_value), MAX(c.market_value), AVG(c.market_value) FROM company AS c GROUP BY c.company_id
SELECT company.main_industry FROM company
SELECT company.main_industry FROM company GROUP BY company.main_industry
SELECT headquarters, COUNT(*) FROM company GROUP BY headquarters
SELECT headquarters, COUNT(*) FROM company GROUP BY headquarters
SELECT c.company, CAST(c.market_value AS FLOAT) / NULLIF(SUM(c.market_value), 0) OVER (PARTITION BY c.main_industry) FROM company AS c
SELECT c.company_id, c.main_industry, SUM(c.market_value) FROM company AS c GROUP BY c.company_id, c.main_industry
SELECT company.main_industry, SUM(company.market_value), COUNT(*) FROM company GROUP BY company.main_industry ORDER BY total_market_value DESC, num_companies DESC LIMIT 1
SELECT c.main_industry, COUNT(*) FROM company AS c GROUP BY c.main_industry ORDER BY num_companies DESC LIMIT 1
SELECT headquarters FROM company WHERE main_industry ILIKE '%banking%' GROUP BY headquarters HAVING COUNT(company_id) >= 2
SELECT DISTINCT company.headquarters FROM company WHERE company.main_industry ILIKE '%banking%' GROUP BY company.headquarters HAVING COUNT(company.company_id) >= 2
SELECT g.station_id, g.location, g.manager_name FROM gas_station AS g ORDER BY g.open_year
SELECT g.station_id, g.location, g.manager_name FROM gas_station AS g ORDER BY g.open_year
SELECT COUNT(*) FROM gas_station WHERE open_year BETWEEN 2000 AND 2005
SELECT COUNT(*) FROM gas_station WHERE open_year BETWEEN 2000 AND 2005
SELECT g.location, COUNT(*) FROM gas_station AS g GROUP BY g.location ORDER BY h.location NULLS LAST
SELECT gas_station.location, COUNT(gas_station.station_id) FROM gas_station GROUP BY gas_station.location ORDER BY gas_station.location NULLS LAST
SELECT DISTINCT c.headquarters FROM company AS c WHERE c.main_industry ILIKE '%banking%' AND c.main_industry ILIKE '%oil and gas%'
SELECT DISTINCT company.headquarters FROM company WHERE company.main_industry ILIKE '%banking%' AND company.main_industry ILIKE '%oil and gas%'
SELECT headquarters FROM company WHERE NOT main_industry ILIKE '%banking%'
SELECT company.headquarters FROM company WHERE NOT company.main_industry ILIKE '%banking%' AND NOT company.company IS NULL
SELECT c.company, c.main_industry FROM company AS c WHERE c.assets_billion IS NULL
SELECT company.main_industry, company.company FROM company WHERE company.assets_billion IS NULL
SELECT m.manager_name, COUNT(*) FROM gas_station AS g JOIN manager AS m ON g.manager_name = m.manager_name WHERE open_year > 2000 GROUP BY m.manager_name ORDER BY count DESC LIMIT 1
SELECT m.manager_name, COUNT(*) FROM gas_station AS g JOIN manager AS m ON g.manager_name = m.manager_name WHERE open_year > 2000 GROUP BY m.manager_name ORDER BY number_of_stations DESC LIMIT 1
SELECT gas_station.location, gas_station.open_year FROM gas_station ORDER BY gas_station.open_year NULLS LAST
SELECT g.location, CAST(g.open_year AS FLOAT) FROM gas_station AS g ORDER BY open_year NULLS LAST
SELECT c.company_id, c.rank, c.company, ROW_NUMBER() OVER (PARTITION BY c.main_industry ORDER BY c.sales_billion DESC, c.profits_billion ASC) FROM company AS c WHERE main_industry = 'banking'
SELECT c.company_id, c.rank, c.company, c.sales_billion, c.profits_billion, c.market_value FROM company AS c WHERE main_industry = 'banking' ORDER BY sales_billion DESC, profits_billion DESC
SELECT COUNT(Region_ID) FROM Region
SELECT COUNT(*) FROM region
SELECT DISTINCT region.region_name FROM region ORDER BY region.label NULLS LAST
SELECT region.region_name FROM region ORDER BY region.label
SELECT COUNT(*) FROM party
SELECT COUNT(DISTINCT party.party_id) FROM party
SELECT party.minister, party.took_office, party.left_office FROM party ORDER BY party.left_office NULLS LAST
SELECT party.minister, party.took_office, party.left_office FROM party ORDER BY party.left_office DESC
SELECT party.minister FROM party WHERE CAST(party.took_office AS DATE) > '1961-01-01' AND CAST(party.took_office AS DATE) < '1959-12-31'
SELECT party.minister FROM party WHERE CAST(party.took_office AS DATE) > '1960-01-01' AND CAST(party.took_office AS DATE) < '1959-12-31'
SELECT p.minister FROM party AS p WHERE NOT 'Progress' IN (p.left_office, p.right_office)
SELECT p.minister FROM party AS p LEFT JOIN progress_party AS pr ON p.party_id = pr.party_id WHERE pr.party_id IS NULL
SELECT p.minister, ROW_NUMBER() OVER (PARTITION BY p.party_id ORDER BY p.took_office DESC) FROM party AS p
SELECT p.minister, COUNT(*) OVER (PARTITION BY p.minister) FROM party AS p GROUP BY p.minister ORDER BY total_parties DESC
SELECT party.minister FROM party WHERE party.left_office = (SELECT MAX(party.start_office) FROM party)
SELECT party.minister FROM party WHERE party.left_office = (SELECT MAX(party.left_office) FROM party)
SELECT p.party_name FROM party AS p LEFT JOIN member AS m ON p.party_id = m.party_id WHERE m.member_id IS NULL
SELECT p.party_name FROM party AS p LEFT JOIN member AS m ON p.party_id = m.party_id WHERE m.member_id IS NULL
SELECT m.member_name FROM member AS m WHERE m.member_id IN (SELECT p.member_id FROM party AS p WHERE p.party_id = 3) AND m.member_id IN (SELECT q.member_id FROM party AS q WHERE q.party_id = 1)
SELECT m1.member_name FROM member AS m1 JOIN member AS m2 ON (m1.member_id = m2.member_id AND m1.party_id <> m2.party_id) WHERE m1.party_id IN (3, 1)
SELECT COUNT(*) FROM party_events
SELECT COUNT(*) FROM party_events
SELECT m.member_name FROM member AS m LEFT JOIN event AS e ON m.member_id = e.member_id WHERE e.member_id IS NULL
SELECT member.member_name FROM member WHERE NOT member.member_id IN (SELECT event.member_id FROM event)
SELECT party_events.event_name FROM party_events GROUP BY party_events.event_name HAVING COUNT(party_events.event_id) > 2
SELECT DISTINCT event_name FROM party_events WHERE event_id IN (SELECT event_id FROM party_events GROUP BY event_id HAVING COUNT(event_id) > 2)
SELECT COUNT(*) FROM pilot
SELECT pilot.pilot_name FROM pilot ORDER BY pilot.rank ASC
SELECT pilot.position, pilot.team FROM pilot
SELECT DISTINCT pilot.position FROM pilot WHERE pilot.age > 30
SELECT pilot.pilot_name FROM pilot WHERE pilot.team IN ('Bradley', 'Fordham')
SELECT MAX(pilot.join_year) FROM pilot
SELECT pilot.nationality, COUNT(*) FROM pilot GROUP BY pilot.nationality
SELECT pilot.nationality, COUNT(pilot.nationality) FROM pilot GROUP BY pilot.nationality ORDER BY frequency DESC LIMIT 1
SELECT pilot.position FROM pilot WHERE (pilot.join_year > 2005 AND pilot.join_year < 2000) GROUP BY pilot.position
SELECT pilot.pilot_name FROM pilot WHERE pilot.pilot_id IS NULL
SELECT Ref_Document_Status.document_status_code FROM Ref_Document_Status
SELECT Ref_Document_Status.document_status_description FROM Ref_Document_Status WHERE Ref_Document_Status.document_status_code = 'working'
SELECT Ref_Document_Types.document_type_code FROM Ref_Document_Types
SELECT Ref_Document_Types.document_type_description FROM Ref_Document_Types WHERE Ref_Document_Types.document_type_code = 'Paper'
SELECT Ref_Shipping_Agents.shipping_agent_name FROM Ref_Shipping_Agents
SELECT Ref_Shipping_Agents.shipping_agent_code FROM Ref_Shipping_Internts WHERE "Ref_Shipping_Agent" ILIKE '%Ups%'
SELECT roles.role_code FROM roles
SELECT roles_description FROM roles WHERE role_code = 'ED'
SELECT COUNT(employee_id) FROM Employees
SELECT Documents.document_id, Documents.receipt_date FROM Documents
SELECT COUNT(*) FROM Documents WHERE document_status_code = 'done'
SELECT Documents.document_type_code FROM Documents WHERE Documents.document_id = 2
SELECT Documents.document_id FROM Documents WHERE Documents.document_status_code = 'done' AND Documents.document_type_code = 'paper'
SELECT Documents.receipt_date FROM Documents WHERE Documents.document_id = 3
SELECT Documents_Mailed.mailing_date FROM Documents_Mailed WHERE Documents_Mailed.document_id = 7
SELECT Documents.document_id FROM Documents WHERE Documents.document_status_code = 'done' AND Documents.document_type_code = 'Paper' AND Documents.shipping_agent_code <> 'USPS'
SELECT Documents.document_id FROM Documents WHERE Documents.document_status_code = 'done' AND Documents.document_type_code = 'Paper' AND Documents.shipping_agent_code = 'USPS'
SELECT Document_Drafts.draft_details FROM Document_Drafts WHERE Document_Drafts.document_id = 7
SELECT COUNT(*) FROM draft_copies WHERE document_id = 2
SELECT dc.document_id, COUNT(*) FROM Draft_Copies AS dc GROUP BY dc.document_id ORDER BY copy_number DESC LIMIT 1
SELECT document_id, copy_number FROM Draft_Copies WHERE copy_number > 1
SELECT e.employee_name FROM Employees AS e LEFT JOIN Document_Circulation_History AS dch ON e.employee_id = dch.employee_id WHERE dch.employee_id IS NULL
SELECT c.document_id, COUNT(DISTINCT ch.employee_id) FROM Circulation_History AS ch JOIN Catalog AS c ON ch.document_id = c.document_id GROUP BY c.document_id
SELECT d.dname FROM department AS d ORDER BY d.mgr_start_date
SELECT dependent.dependent_name FROM dependent WHERE dependent.relationship = 'spouse'
SELECT COUNT(*) FROM dependent WHERE sex = 'female'
SELECT e.fname, e.lname FROM employee AS e WHERE e.salary > 30000
SELECT employee.sex, COUNT(employee.lname) FROM employee WHERE employee.salary < 50000 GROUP BY employee.sex
SELECT employee.fname, employee.lname, employee.address FROM employee ORDER BY employee.bdate ASC
SELECT p.participant_id, p.participant_type_code, p.participant_details FROM participants AS p
SELECT COUNT(*) FROM Participants WHERE Participant_Type_Code ILIKE '%Organizer%'
SELECT Services.Service_Type_Code FROM Services ORDER BY Services.Service_Type_Code ASC
SELECT Events.service_id, Events.event_details FROM Events
SELECT Participants.Participant_Type_Code, COUNT(*) FROM Participants GROUP BY Participants.Participant_Type_Code ORDER BY frequency DESC LIMIT 1
SELECT MAX(Event_ID) FROM Participants_in_Events
SELECT Events.Event_ID FROM Events WHERE NOT Events.Event_Details ILIKE '%Kenyatta%Kushn%'
SELECT COUNT(*) FROM Events
SELECT DISTINCT Participants_in_Events.Participant_ID FROM Participants_in_Events
SELECT races.name FROM races ORDER BY races.year DESC LIMIT 1
SELECT races.name FROM races ORDER BY races.year DESC LIMIT 1
SELECT races.name, TO_DATE(races.date, 'YYYY-MM-DD') FROM races ORDER BY TO_DATE(races.date, 'YYYY-MM-DD') DESC LIMIT 1
SELECT races.name, TO_DATE(races.date, 'YYYY-MM-DD') FROM races WHERE races.year = (SELECT MAX(races.year) FROM races) ORDER BY races.raceId DESC LIMIT 1
SELECT name FROM races WHERE year = 2017
SELECT races.name FROM races WHERE races.year = 2017
SELECT DISTINCT races.name FROM races WHERE races.year BETWEEN 2014 AND 2017
SELECT DISTINCT races.name FROM races WHERE races.year BETWEEN 2014 AND 2017
SELECT COUNT(DISTINCT drivers.driverId) FROM drivers LEFT JOIN race_results ON drivers.driverId = race_results.driverId AND race_results.raceId IN (SELECT raceId FROM races WHERE year = 2009)
SELECT COUNT(DISTINCT constructors.constructorId) FROM constructors LEFT JOIN races ON constructors.constructorId = races.constructorId AND races.raceDate BETWEEN TO_DATE('2009-01-01', 'YYYY-MM-DD') AND TO_DATE('2009-12-31', 'YYYY-MM-DD') WHERE races.raceId IS NULL
SELECT drivers.forename, drivers.surname FROM drivers WHERE drivers.nationality ILIKE '%German%'
SELECT forename, surname FROM drivers WHERE nationality = 'German' ORDER BY forename ASC, surname ASC
SELECT nationality, COUNT(*) FROM constructors GROUP BY nationality
SELECT nationality, COUNT(DISTINCT constructorId) FROM constructors GROUP BY nationality
SELECT c.constructorId, COUNT(cs.raceId) FROM constructorStandings AS cs JOIN constructors AS c ON cs.constructorId = c.constructorId GROUP BY c.constructorId
SELECT c.constructorId, COUNT(r.raceId) FROM constructorStandings AS c JOIN race AS r ON c.raceId = r.raceId GROUP BY c.constructorId
SELECT p.driverId, p.stop FROM pitStops AS p WHERE p.raceId = 841 ORDER BY p.duration ASC NULLS LAST
SELECT p.raceId, p.stop, d.stop FROM pitStops AS p JOIN (SELECT MIN(stop) FROM pitStops WHERE raceId <> 841) AS d ON TRUE
SELECT DISTINCT ps.driver_id FROM pitStops AS ps WHERE ps.race_id = 841 AND ps.stop > (SELECT AVG(ps2.stop) FROM pitStops AS ps2 WHERE ps2.race_id = 841)
SELECT p.driverId, TO_NUMBER(p.stop, '99999999') FROM pitStops AS p WHERE TO_NUMBER(p.duration, '99999999') > (SELECT duration FROM pitStops WHERE raceId = 841)
SELECT DISTINCT drivers.forename FROM drivers ORDER BY drivers.forename ASC
SELECT drivers.forename FROM drivers GROUP BY drivers.forename ORDER BY drivers.forename ASC
SELECT DISTINCT name FROM races ORDER BY name DESC
SELECT REVERSE(races.name) FROM races GROUP BY REVERSE(races.name)
SELECT DISTINCT races.name FROM races WHERE races.year BETWEEN 2009 AND 2011
SELECT races.name FROM races WHERE races.year BETWEEN 2009 AND 2011
SELECT name FROM races WHERE time > '12:00:00' OR time < '09:00:00'
SELECT races.name FROM races WHERE (CAST(races.time AS TIME) > '12:00:00' OR CAST(races.time AS TIME) < '09:00:00')
SELECT DISTINCT c.name FROM circuits AS c WHERE c.country IN ('UK', 'malaysia') ORDER BY c.name NULLS LAST
SELECT c.name FROM circuits AS c WHERE c.country IN ('UK', 'malaysia') ORDER BY c.name NULLS LAST
SELECT c.circuitId, c.location FROM circuits AS c WHERE c.country IN ('France', 'Belgium') ORDER BY c.circuitId NULLS LAST
SELECT c.circuitId, c.location FROM circuits AS c WHERE c.country IN ('France', 'Belgium')
SELECT COUNT(*) FROM technician
SELECT COUNT(*) FROM technician
SELECT technician.name FROM technician ORDER BY technician.age ASC
SELECT technician.name FROM technician ORDER BY technician.age ASC
SELECT technician.team, technician.starting_year FROM technician
SELECT t.name, t.team, CAST(t.starting_year AS TEXT) FROM technician AS t
SELECT technician.name FROM technician WHERE technician.team <> 'NYY'
SELECT technician.name FROM technician WHERE technician.team <> 'NYY'
SELECT technician.name FROM technician WHERE technician.age IN (36, 37)
SELECT technician.name FROM technician WHERE technician.age IN (36, 37)
SELECT MIN(technician.starting_year) FROM technician
SELECT MIN(technician.starting_year) FROM technician
SELECT t.team, COUNT(*) FROM technician AS t GROUP BY t.team
SELECT t.team, COUNT(*) FROM technician AS t GROUP BY t.team
SELECT t.team FROM technician AS t GROUP BY t.team ORDER BY COUNT(t.technician_id) DESC LIMIT 1
SELECT t.team FROM (SELECT technician_id, COUNT(*) OVER (PARTITION BY team) FROM technician GROUP BY technician_id) AS subquery JOIN technician AS t ON subquery.technician_id = t.technician_id ORDER BY total_technicians DESC
SELECT DISTINCT technician.team FROM technician GROUP BY technician.team HAVING COUNT(technician.technician_id) >= 2
SELECT DISTINCT technician.team FROM technician GROUP BY technician.team HAVING COUNT(technician.technician_id) >= 2
SELECT t.name FROM technician AS t LEFT JOIN machine_technician AS mt ON t.technician_id = mt.technician_id WHERE mt.technician_id IS NULL
SELECT t.name FROM technician AS t LEFT JOIN machine_technician AS mt ON t.technician_id = mt.technician_id WHERE mt.technician_id IS NULL
SELECT technician.starting_year FROM technician WHERE technician.team IN ('CLE', 'CWS')
SELECT MIN(technician.starting_year) FROM technician WHERE technician.team IN ('CLE', 'CWS')
SELECT COUNT(*) FROM entrepreneur
SELECT COUNT(*) FROM entrepreneur
SELECT entrepreneur.company FROM entrepreneur ORDER BY entrepreneur.money_requested DESC
SELECT entrepreneur.company FROM entrepreneur ORDER BY entrepreneur.money_requested DESC
SELECT entrepreneur.company, entrepreneur.investor FROM entrepreneur
SELECT e.company, e.investor FROM entrepreneur AS e
SELECT AVG(entrepreneur.money_requested) FROM entrepreneur
SELECT AVG(entrepreneur.money_requested) FROM entrepreneur
SELECT people.name FROM people ORDER BY people.weight ASC
SELECT people.name FROM people ORDER BY people.weight ASC
SELECT MIN(people.weight) FROM people
SELECT MIN(people.weight) FROM people
SELECT e.investor, COUNT(DISTINCT e.people_id) FROM entrepreneur AS e GROUP BY e.investor
SELECT entrepreneur.investor, COUNT(entrepreneur.people_id) FROM entrepreneur GROUP BY entrepreneur.investor
SELECT entrepreneur.investor, COUNT(entrepreneur.people_id) FROM entrepreneur GROUP BY entrepreneur.investor ORDER BY num_investments DESC LIMIT 1
SELECT entrepreneur.investor, COUNT(entrepreneur.people_id) FROM entrepreneur GROUP BY entrepreneur.investor ORDER BY num_investments DESC LIMIT 1
SELECT entrepreneur.investor FROM entrepreneur GROUP BY entrepreneur.investor HAVING COUNT(entrepreneur.people_id) >= 2
SELECT entrepreneur.investor FROM entrepreneur GROUP BY entrepreneur.investor HAVING COUNT(entrepreneur.people_id) >= 2
SELECT p.name FROM people AS p WHERE p.heath <> 1
SELECT p.name FROM people AS p WHERE p.heath <> 1
SELECT entrepreneur.investor FROM entrepreneur WHERE entrepreneur.money_requested > 140000 OR entrepreneur.money_requested < 120000
SELECT DISTINCT entrepreneur.investor FROM entrepreneur WHERE (entrepreneur.money_requested > 140000 AND entrepreneur.money_requested < 120000) GROUP BY entrepreneur.investor HAVING COUNT(DISTINCT CASE WHEN entrepreneur.money_requested > 140000 THEN entrepreneur.people_id END) = COUNT(DISTINCT CASE WHEN entrepreneur.money_requested < 120000 THEN entrepreneur.people_id END)
SELECT COUNT(DISTINCT entrepreneur.company) FROM entrepreneur
SELECT COUNT(DISTINCT entrepreneur.company) FROM entrepreneur
SELECT COUNT(perpetrator_id) FROM perpetrator
SELECT p.date, p.killed FROM perpetrator AS p ORDER BY p.killed DESC
SELECT perpetrator.people_id FROM perpetrator ORDER BY perpetrator.injured ASC
SELECT AVG(injured) FROM perpetrator
SELECT p.location FROM perpetrator AS p WHERE p.killed = (SELECT MAX(killed) FROM perpetrator)
SELECT people.name FROM people ORDER BY people.height ASC
SELECT p.country, COUNT(*) FROM perpetrator AS p GROUP BY p.country
SELECT p.country, COUNT(*) FROM perpetrator AS p GROUP BY p.country ORDER BY total_perpetrations DESC LIMIT 1
SELECT country FROM perpetrator GROUP BY country HAVING COUNT(perpetrator_id) >= 2
SELECT p.name FROM people AS p WHERE p.heist IS NULL
SELECT p.country FROM perpetrator AS p WHERE p.injured > 50 AND p.injured < 20 GROUP BY p.country HAVING COUNT(*) > 1
SELECT COUNT(DISTINCT Location) FROM perpetrator
SELECT MAX(perpetrator.year) FROM perpetrator
SELECT Campuses.campus FROM Campuses WHERE "County" ILIKE '%Los%Angeles%' ORDER BY Campuses.campus NULLS LAST
SELECT Campus FROM Campuses WHERE "County" ILIKE '%Los%Angeles%'
SELECT Campuses.Campus FROM Campuses WHERE "Location" ILIKE '%Chico%'
SELECT Campuses.Campus FROM Campuses WHERE "County" ILIKE '%Chico%'
SELECT Campuses.Campus FROM Campuses WHERE Campuses.year = 1958
SELECT Campus FROM Campuses WHERE Year = 1958
SELECT Campus FROM Campuses WHERE Year < 1800
SELECT Campus FROM Campuses WHERE Year < 1800
SELECT Campuses.Campus FROM Campuses WHERE (Campuses.year >= 1935 AND Campuses.year <= 1939)
SELECT Campus FROM Campuses WHERE Year BETWEEN 1935 AND 1939
SELECT Campus FROM Campuses WHERE "Location" ILIKE '%Northridge%' OR "Location" ILIKE '%Los%Angeles%' OR "Location" ILIKE '%San%Francisco%'
SELECT Campus FROM Campuses WHERE "Location" ILIKE '%Northridge%' OR "Location" ILIKE '%Los%Angeles%' OR "Location" ILIKE '%San%Francisco%'
SELECT COUNT(*) FROM csu_fees WHERE CampusFee > (SELECT AVG(CampusFee) FROM csu_tes)
SELECT COUNT(*) FROM csu_fees WHERE Campus > (SELECT AVG(Campus) FROM csu_tes)
SELECT COUNT(*) FROM csu_fees WHERE CampusFee > (SELECT AVG(CampusFee) FROM csu_tes)
SELECT COUNT(*) FROM csu_fees WHERE CampusFee > (SELECT AVG(CampusFee) FROM csu_tes)
SELECT Campuses.Campus FROM Campuses WHERE "County" ILIKE '%Los%Angeles%' AND "Year" > '1950'
SELECT Campus FROM Campuses WHERE "County" ILIKE '%Los%Angeles%' AND "Year" > '1950'
SELECT degrees.year, SUM(degrees.degrees) FROM degrees GROUP BY degrees.year ORDER BY total_degrees DESC LIMIT 1
SELECT MAX(year) FROM degrees
SELECT degrees.campus, SUM(degrees.degrees) FROM degrees GROUP BY degrees.campus ORDER BY total_degrees DESC LIMIT 1
SELECT degrees.campus, SUM(degrees.degrees) FROM degrees GROUP BY degrees.campus ORDER BY total_degrees DESC LIMIT 1
SELECT AVG(csuf_fees.campus_fee) FROM csu_fees WHERE csu_tes.year = 1996
SELECT AVG(campus_fee) FROM csu_fees WHERE "year" = 1996
SELECT AVG(csufees_fees.campusfee) FROM csu_fees WHERE csu_tes.year = 2005
SELECT AVG(campus_fee) FROM csu_fees WHERE year = 2005
SELECT COUNT(*) FROM Campuses WHERE "County" ILIKE '%Los%Angeles%'
SELECT COUNT(*) FROM Campuses WHERE County = 'LA'
SELECT Campus FROM Campuses WHERE "County" ILIKE '%Los%Angeles%'
SELECT Campus FROM Campuses WHERE "County" ILIKE '%Los%Angeles%'
SELECT COUNT(faculty) FROM faculty WHERE year = 2002
SELECT COUNT(faculty) FROM faculty WHERE year = 2002
SELECT COUNT(*) FROM Campuses WHERE "Campus" ILIKE '%CSU%'
SELECT COUNT(*) FROM Campuses
SELECT COUNT(Candidate.candidate_id) FROM candidate
SELECT COUNT(*) FROM candidate
SELECT c.poll_source, COUNT(*) FROM candidate AS c GROUP BY c.poll_source ORDER BY total_candidates DESC LIMIT 1
SELECT candidate.poll_source, COUNT(candidate.people_id) FROM candidate GROUP BY candidate.poll_source ORDER BY number_of_candidates DESC LIMIT 1
SELECT candidate.candidate_id, candidate.support_rate FROM candidate ORDER BY candidate.support_rate DESC LIMIT 3
SELECT candidate.candidate_id, candidate.support_rate FROM candidate ORDER BY candidate.support_rate DESC LIMIT 3
SELECT MIN(candidate.oppose_rate), candidate.candidate_id FROM candidate GROUP BY candidate.candidate_id
SELECT MIN(candidate.oppose_rate), candidate.candidate_id FROM candidate GROUP BY candidate.candidate_id
SELECT candidate.candidate_id, candidate.people_id, candidate.poll_source, candidate.date, (candidate.support_rate + NULLIF(candidate.consider_rate, 0)), (candidate.consider_rate + NULLIF(candidate.oppose_rate, 0)) FROM candidate ORDER BY support_consider_ratio ASC
SELECT candidate.candidate_id, candidate.people_id, candidate.poll_since, candidate.support_rate, candidate.consider_rate, candidate.oppose_rate FROM candidate ORDER BY candidate.unsure_rate ASC
SELECT candidate.poll_source, MAX(candidate.oppose_rate) FROM candidate GROUP BY candidate.poll_source ORDER BY max_oppose_rate DESC LIMIT 1
SELECT candidate.poll_source FROM candidate WHERE candidate.oppose_rate = (SELECT MAX(candidate.oppose_rate) FROM candidate)
SELECT p.name FROM people AS p ORDER BY p.date_of_birth ASC
SELECT people.name FROM people ORDER BY people.date_of_birth
SELECT AVG(Height), AVG(Weight) FROM people WHERE Sex = 'M'
SELECT AVG(Height), AVG(Weight) FROM people WHERE Sex = 'M'
SELECT people.name FROM people WHERE CAST(people.height AS FLOAT) > 200 AND CAST(people.height AS FLOAT) < 190
SELECT people.name FROM people WHERE people.height > 200 OR people.height < 190
SELECT people.sex, AVG(people.weight), MIN(people.weight) FROM people GROUP BY people.sex
SELECT Sex, AVG(Weight), MIN(Weight) FROM people GROUP BY Sex
SELECT p.name FROM people AS p WHERE NOT p.people_id IN (SELECT c.candidate_id FROM candidates AS c)
SELECT p.name FROM people AS p WHERE NOT p.people_id IN (SELECT c.candidate_id FROM candidates AS c)
SELECT sex, COUNT(*) FROM people WHERE weight > 85 GROUP BY sex
SELECT people.sex, COUNT(*) FROM people WHERE people.weight > 85 GROUP BY people.sex
SELECT MAX(support_rate), MIN(consider_rate), MIN(oppose_rate) FROM candidate
SELECT MAX(support_rate), MIN(consider_rate), MIN(oppose_rate) FROM candidate
SELECT p.name FROM people AS p WHERE p.height < (SELECT AVG(height) FROM people)
SELECT p.name FROM people AS p WHERE p.height < (SELECT AVG(height) FROM people)
SELECT p.people_id, p.sex, p.name, TO_NUMBER(p.date_of_birth, 'YYYYMMDD'), p.height, p.weight FROM people AS p
SELECT p.people_id, p.sex, p.name, TO_NUMBER(p.date_of_birth, 'YYYYMMDD'), p.heath, p.weight FROM people AS p
SELECT COUNT(*) FROM Movie WHERE director ILIKE '%Steven%Spielberg%'
SELECT Movie.title FROM Movie WHERE Movie.director ILIKE '%Steven%Spielberg%' ORDER BY Movie.title NULLS LAST
SELECT Movie.title FROM Movie WHERE Movie.year > 2000 AND Movie.director ILIKE '%James%Cameron%'
SELECT Movie.title FROM Movie WHERE Movie.director ILIKE '%James%Cameron%' AND Movie.year > 2000
SELECT COUNT(*) FROM Movie WHERE year < 2000
SELECT COUNT(*) FROM Movie WHERE year < 2000
SELECT Movie.director FROM Movie WHERE Movie.title ILIKE '%Avatar%'
SELECT Movie.director FROM Movie WHERE Movie.title ILIKE '%Avitar%' ORDER BY Movie.director NULLS LAST
SELECT COUNT(rID) FROM Reviewer
SELECT COUNT(rID) FROM Reviewer
SELECT Reviewer.rID FROM Reviewer WHERE Reviewer.name ILIKE '%Mike%'
SELECT Reviewer.rID FROM Reviewer WHERE Reviewer.name ILIKE '%Mike%'
SELECT Reviewer.rID FROM Reviewer WHERE Reviewer.name ILIKE '%Daniel%Lewis%'
SELECT Reviewer.rID FROM Reviewer WHERE Reviewer.name ILIKE '%Daniel%Lewis%'
SELECT COUNT(*) FROM Rating WHERE stars > 3
SELECT COUNT(*) FROM Rating WHERE stars > 3
SELECT MIN(stars), MAX(stars) FROM Rating
SELECT MAX(stars), MIN(stars) FROM Rating
SELECT COUNT(*) FROM Movie WHERE rating IS NULL
SELECT Movie.title FROM Movie WHERE NOT Movie.mID IN (SELECT Rating.movie_id FROM Rating)
SELECT title FROM Movie ORDER BY year DESC LIMIT 1
SELECT Movie.title FROM Movie ORDER BY Movie.year DESC LIMIT 1
SELECT m.title FROM Movie AS m WHERE m.year > (SELECT MAX(m2.year) FROM Movie AS m2 WHERE m2.director ILIKE '%Steven%Spielberg%')
SELECT m.title FROM Movie AS m JOIN (SELECT MAX(year) FROM Movie WHERE director ILIKE '%Steven%Spielberg%') AS latest_spielberg_movie ON m.year > latest_spielberg_movie.max_year
SELECT r.name, m.title FROM Reviewer AS r CROSS JOIN Movie AS m
SELECT r.name, m.title FROM Reviewer AS r CROSS JOIN Movie AS m
SELECT COUNT(*) FROM Movie WHERE "director" <> 'Chris Jackson'
SELECT m.title FROM Movie AS m WHERE NOT m.mID IN (SELECT reviewer_id FROM Review WHERE reviewer_name ILIKE '%Chris%Jackson%')
SELECT DISTINCT Movie.director FROM Movie GROUP BY Movie.director HAVING COUNT(Movie.mID) = 1
SELECT DISTINCT Movie.director FROM Movie
SELECT DISTINCT Movie.director FROM Movie WHERE NOT Movie.director IS NULL GROUP BY Movie.director HAVING COUNT(Movie.mID) = 1
SELECT DISTINCT Movie.director FROM Movie WHERE NOT Movie.director IS NULL
SELECT AVG(r.stars) FROM Rating AS r JOIN Movie AS m ON r.mID = m.mID WHERE NOT m.title ILIKE '%Brittany%Harris%' GROUP BY m.title
SELECT AVG(r.rating) FROM Rating AS r JOIN Movie AS m ON r.mID = m.mID WHERE NOT r.rID IN (SELECT br.rID FROM Brittany_Harris_Reviews AS br)
SELECT m.mID FROM Movie AS m LEFT JOIN Rating AS r ON m.mID = r.mID AND r.raterName = 'Brittany Harris' WHERE r.raterName IS NULL
SELECT m.mID FROM Movie AS m LEFT JOIN Rating AS r ON m.mID = r.mID AND r.raterID = 757071 GROUP BY m.mID HAVING COUNT(r.rID) = 0
SELECT mID, AVG(stars) FROM Rating GROUP BY mID HAVING COUNT(rID) >= 2
SELECT m.title, AVG(r.stars) FROM Movie AS m JOIN Rating AS r ON m.mID = r.mID GROUP BY m.title HAVING COUNT(r.rID) > 3
SELECT reviewer.rID FROM reviewer LEFT JOIN rating ON reviewer.rID = rating.rID WHERE rating.stars IS NULL OR rating.stars <> 4
SELECT r.rID FROM Rating AS r WHERE r.stars <> 4
SELECT DISTINCT r.rID FROM Rating AS r WHERE NOT EXISTS(SELECT 1 FROM Rating AS r2 WHERE r2.stars = 4 AND r2.rID <> r.rID AND r2.mID = r.mID)
SELECT DISTINCT r.rID FROM Rating AS r WHERE NOT EXISTS(SELECT 1 FROM Rating AS r2 WHERE r.mID = r2.mID AND r2.stars >= 4)
SELECT title FROM Movie WHERE year < 1980 OR director ILIKE '%James%Cameron%'
SELECT Movie.title FROM Movie WHERE (Movie.year < 1980 OR Movie.director = 'James Cameron') AND NOT Movie.director IS NULL
SELECT COUNT(County_ID) FROM county_public_safety
SELECT COUNT(*) FROM county_public_safety
SELECT county_public_safety.name FROM county_public_safety ORDER BY county_public_safety.population DESC
SELECT county_public_safety.name FROM country_public_safety ORDER BY county_public_safety.population DESC
SELECT county_public_safety.police_force FROM county_public_safety WHERE NOT county_public_safety.location ILIKE '%east%' GROUP BY county_public_safety.police_force
SELECT county_public_safety.police_force FROM county_public_safety WHERE NOT county_public_safety.location ILIKE '%East%' GROUP BY county_public_safety.police_force
SELECT MIN(Crime_rate), MAX(Crime_rate) FROM county_public_safety
SELECT MIN(crime_rate), MAX(crime_rate) FROM county_public_safety
SELECT county_public_safety.name, COUNT(county_public_safety.police_officers), SUM(county_public_safety.crime_rate) FROM county_public_safety GROUP BY county_public_safety.name ORDER BY police_officers_count ASC
SELECT county_public_safety.name, COUNT(county_public_safety.police_officers), AVG(county_public_safety.crime_rate) FROM county_public_safety GROUP BY county_public_safety.name ORDER BY police_officers_count ASC
SELECT city.name FROM city ORDER BY city.name ASC
SELECT city.name FROM city ORDER BY city.name ASC
SELECT city.name, (city.hispanic / NULLIF(SUM(city.white, city.black, city.amerindian, city.asian, city.multiracial), 0)) * 100 AS hispanic_ratio FROM city WHERE city.black > 10 GROUP BY city.name ORDER BY hispanic_ratio DESC NULLS LAST
SELECT city.name, (cast(city.hispanic AS FLOAT) / NULLIF(SUM(city.white, city.black, city.amerindian, city.asian, city.multiracial), 0)) * 100 AS hispanic_percentage FROM city WHERE city.black > 10 GROUP BY city.name ORDER BY hispanic_percentage DESC NULLS LAST
SELECT c.name, c.population FROM county_public_safety AS c JOIN (SELECT COUNT(*), COUNTY_ID FROM county_public_safety GROUP BY COUNTY_ID) AS d ON c.county_id = d.county_id WHERE c.population = (SELECT MAX(population) FROM county_public_safety)
SELECT c.name, c.population FROM county_public_safety AS c JOIN (SELECT COUNT(*), COUNTY_ID FROM county_public_safety GROUP BY COUNTY_ID) AS d ON c.county_id = d.county_id WHERE d.total_population = (SELECT MAX(total_population) FROM (SELECT COUNT(*), COUNTY_ID FROM county_public_safety GROUP BY COUNTY_ID))
SELECT c.name, (cast(c.white AS FLOAT) / NULLIF(SUM(c.white, c.black, c.amerindian, c.asian, c.multiracial, c.hispanic), 0)) AS white_percentage FROM city c GROUP BY c.name ORDER BY white_percentage DESC NULLS LAST LIMIT 5
SELECT city.name FROM city WHERE city.white = (SELECT MAX(city.white) FROM city) GROUP BY city.name ORDER BY city.white DESC LIMIT 5
SELECT c.name, co.county_name FROM city AS c JOIN county AS co ON c.county_id = co.county_id WHERE c.police_officers > (SELECT MAX(police_officers) FROM city)
SELECT c.name, COUNT(p.police_officer) FROM city AS c JOIN police AS p ON c.city_id = p.city_id GROUP BY c.name ORDER BY police_count DESC
SELECT COUNT(DISTINCT city.name) FROM city WHERE (city.white > 20000 OR city.black > 20000 OR city.amerindian > 20000 OR city.asian > 20000 OR city.hispanic > 20000)
SELECT COUNT(DISTINCT c.name) FROM city AS c JOIN county AS co ON c.county_id = co.county_id WHERE c.population > 20000
SELECT county_public_safety.police_force, COUNT(county_id) FROM county_public_safety GROUP BY county_public_safety.police_force
SELECT county_public_safety.police_force, COUNT(county_id) FROM county_public_safety GROUP BY county_public_safety.police_force
SELECT county_public_safety.location, COUNT(county_public_safety.name) FROM county_public_safety GROUP BY county_public_safety.location ORDER BY COUNT DESC LIMIT 1
SELECT county_public_safety.location, COUNT(county_public_safety.name) FROM county_public_safety GROUP BY county_public_safety.location ORDER BY county_name_count DESC LIMIT 1
SELECT county_public_safety.name FROM county_public_safety WHERE county_public_safety.location IS NULL
SELECT county_public_safety.name FROM county_public_safety WHERE county_public_safety.location IS NULL
SELECT county_public_safety.county_id, COUNT(*) FROM county_public_safety WHERE county_public_safety.location ILIKE '%east%' OR county_public_safety.location ILIKE '%west%' GROUP BY county_public_safety.county_id
SELECT DISTINCT county_public_safety.police_force FROM county_public_safety WHERE county_public_safety.location ILIKE '%East%' AND country_public_safety.location ILIKE '%West%'
SELECT city.name FROM city WHERE (city.white / total_population) + (city.black / total_population) + (city.amerindian / total_population) + (city.asian / total_population) + (city.multiracial / total_population) <= 100
SELECT city.name FROM city WHERE (city.white + city.black + city.amerindian + city.asian + city.multiracial + city.hispanic) / NULLIF(city.total_population, 0) < 100
SELECT county_public_safety.name, SUM(county_public_safety.case_burden) FROM county_public_safety GROUP BY county_public_safety.name ORDER BY total_cases DESC
SELECT county_public_safety.name, COUNT(county_public_safety.case_burden) FROM county_public_safety GROUP BY county_public_safety.name ORDER BY total_cases DESC
SELECT Rooms.roomName FROM Rooms WHERE Rooms.decor = 'modern' AND Rooms.basePrice < 160 AND Rooms.beds = 2
SELECT Rooms.roomName FROM Rooms WHERE Rooms.beds = 2 AND Rooms.basePrice < 160
SELECT Rooms.roomId, Rooms.roomName FROM Rooms WHERE (Rooms.basePrice > 160) AND (Rooms.maxoccupancy > 2)
SELECT Rooms.roomId, Rooms.roomName FROM Rooms WHERE (Rooms.beds > 2 AND CAST(Rooms.basePrice AS FLOAT) > 160)
SELECT COUNT(Kids) FROM Reservations WHERE "FirstName" ILIKE '%Roy%Sweazzy%'
SELECT COUNT(Kids) FROM Reservations WHERE FirstName ILIKE '%Roy%Sweaz%'
SELECT COUNT(*) FROM Reservations WHERE FirstName = 'ROY' AND LastName = 'SWEAZY'
SELECT COUNT(*) FROM Reservations WHERE FirstName = 'ROY' AND LastName = 'SWEAZY'
SELECT COUNT(Reservations.Adults) FROM Reservations WHERE Reservations.Room = 'CONRAD SELBIG' AND CAST(Reservations.CheckIn AS DATE) = '2010-10-23'
SELECT Reservations.Adults FROM Reservations WHERE "CheckIn" ILIKE '%oct%23,%2010%' AND "Room" ILIKE '%conrad%selbig%'
SELECT Reservations.Kids FROM Reservations WHERE Reservations.CheckIn ILIKE '%Sep%21,%2010%' AND Reservations.Room ILIKE '%DAMIEN%TRACHSEL%'
SELECT Reservations.Kids FROM Reservations WHERE Reservations.CheckIn ILIKE '%Sep%21,%2010%' AND Reservations.LastName ILIKE '%DAMIEN%TRACHSEL%'
SELECT COUNT(*) FROM Rooms WHERE bedType = 'King'
SELECT COUNT(*) FROM Rooms WHERE bedType = 'King'
SELECT Rooms.roomName, Rooms.decor FROM Rooms WHERE Rooms.bedType = 'king' ORDER BY Rooms.basePrice DESC
SELECT Rooms.roomName, Rooms.decor FROM Rooms WHERE Rooms.bedType = 'king' ORDER BY Rooms.basePrice NULLS LAST
SELECT Rooms.roomName, MIN(Rooms.basePrice) FROM Rooms GROUP BY Rooms.roomName
SELECT Rooms.roomName, CAST(Rooms.basePrice AS FLOAT) FROM Rooms ORDER BY Rooms.basePrice ASC LIMIT 1
SELECT Rooms.decor FROM Rooms WHERE Rooms.roomName ILIKE '%Recluse%and%defiance%'
SELECT Rooms.decor FROM Rooms WHERE Rooms.roomName ILIKE '%recluse%and%defiance%'
SELECT roomType, AVG(basePrice) FROM Rooms GROUP BY roomType
SELECT Rooms.bedType, AVG(Rooms.basePrice) FROM Rooms GROUP BY Rooms.bedType
SELECT COUNT(DISTINCT Rooms.roomid) FROM Rooms WHERE decor ILIKE '%modern%'
SELECT COUNT(*) FROM Rooms WHERE decor ILIKE '%modern%'
SELECT COUNT(*) FROM Rooms
SELECT COUNT(*) FROM Rooms
SELECT COUNT(*) FROM Rooms WHERE bedType = 'king'
SELECT COUNT(*) FROM Rooms WHERE bedType = 'king'
SELECT Rooms.bedType, COUNT(Rooms.RoomId) FROM Rooms GROUP BY Rooms.bedType
SELECT Rooms.bedType, COUNT(Rooms.RoomId) FROM Rooms GROUP BY Rooms.bedType
SELECT Rooms.roomName FROM Rooms ORDER BY Rooms.maxoccupancy DESC LIMIT 1
SELECT Rooms.roomName, MAX(Rooms.maxoccupancy) FROM Rooms GROUP BY Rooms.roomName ORDER BY max_occupancy DESC LIMIT 1
SELECT Rooms.roomid, Rooms.roomname FROM Rooms ORDER BY Rooms.base_price DESC LIMIT 1
SELECT Rooms.roomName FROM Rooms ORDER BY Rooms.base_price DESC LIMIT 1
SELECT Rooms.bedType, Rooms.roomName FROM Rooms WHERE Rooms.baseFeet IS TRUE
SELECT Rooms.bedType, Rooms.roomName FROM Rooms WHERE "decor" ILIKE '%traditional%' ORDER BY Rooms.bedType NULLS LAST
SELECT Rooms.decor, COUNT(*) FROM Rooms WHERE bedType = 'king' GROUP BY Rooms.decor
SELECT Rooms.decor, COUNT(*) FROM Rooms WHERE bedType = 'king' GROUP BY Rooms.decor
SELECT decor, AVG(base_price), MIN(base_price) FROM Rooms GROUP BY decor
SELECT Rooms.decor, AVG(Rooms.price), MIN(Rooms.price) FROM Rooms GROUP BY Rooms.decor
SELECT Rooms.roomName FROM Rooms ORDER BY Rooms.beds DESC
SELECT Rooms.roomName FROM Rooms ORDER BY Rooms.basePrice DESC
SELECT Rooms.decor, COUNT(*) FROM Rooms WHERE CAST(Rooms.baseFeet AS FLOAT) > 120 GROUP BY Rooms.decor
SELECT Rooms.decor, COUNT(*) FROM Rooms WHERE CAST(Rooms.baseFeet AS FLOAT) > 120 GROUP BY Rooms.decor
SELECT Rooms.bedType, AVG(Rooms.basePrice) FROM Rooms GROUP BY Rooms.bedType
SELECT Rooms.bedType, AVG(Rooms.basePrice) FROM Rooms GROUP BY Rooms.bedType
SELECT Rooms.roomName FROM Rooms WHERE (Rooms.bedType ILIKE '%king%' OR Rooms.bedType ILIKE '%que%') AND (Rooms.bedType ILIKE '%que%' OR Rooms.bedType ILIKE '%que%')
SELECT Rooms.roomName FROM Rooms WHERE (Rooms.bedType ILIKE '%king%' OR Rooms.bedType ILIKE '%queen%')
SELECT COUNT(DISTINCT room_beds.bedtype) FROM rooms AS room_beds
SELECT COUNT(DISTINCT room_type) FROM rooms
SELECT Rooms.roomId, Rooms.roomName FROM Rooms ORDER BY Rooms.basePrice DESC LIMIT 3
SELECT Rooms.roomId, Rooms.roomName FROM Rooms ORDER BY Rooms.basePrice DESC LIMIT 3
SELECT Rooms.roomName FROM Rooms WHERE Rooms.basePrice > (SELECT AVG(Rooms.basePrice) FROM Rooms)
SELECT Rooms.roomName FROM Rooms WHERE (SELECT AVG(basePrice) FROM Rooms) < Rooms.baseFeet
SELECT COUNT(*) FROM Rooms AS r WHERE NOT EXISTS(SELECT 1 FROM Reservations AS re WHERE re.roomid = r.roomid)
SELECT COUNT(*) FROM Rooms WHERE NOT RoomId IN (SELECT roomId FROM Reservations)
SELECT Rooms.roomName FROM Rooms WHERE (Rooms.basePrice >= 120 AND Rooms.basePrice <= 150)
SELECT Rooms.roomName FROM Rooms WHERE (Rooms.basePrice >= 120 AND Rooms.baseCost <= 150) OR (Rooms.maxOccupancy >= 120 AND Rooms.maxOccupancy <= 150)
SELECT COUNT(DISTINCT CMI_Cross_References.source_system_code) FROM CMI_Cross_References
SELECT personal_master_index.master_customer_id, personal_master_index.cmi_details FROM personal_master_index ORDER BY personal_master_index.cmi_details DESC
SELECT p.council_tax_id, p.cmi_cross_ref_id FROM parking_fines AS p
SELECT COUNT(*) FROM rent_arrears
SELECT CMI_Cross_References.cmic_cross_ref_id FROM CMI_Cross_References WHERE NOT CMI_Cross_References.cmic_cross_ref_id IN (SELECT Parking_Taxes.parking_tax_id FROM Parking_Taxes) ORDER BY CMI_Cross_References.cmic_cross_ref_id NULLS LAST
SELECT DISTINCT CMI_Cross_References.source_system_code FROM CMI_Cross_References WHERE CMI_Cross_References.source_system_code ILIKE '%en%'
SELECT COUNT(*) FROM party
SELECT COUNT(*) FROM party
SELECT party.theme_id, COUNT(party.number_of_hosts) FROM party GROUP BY party.theme_id ORDER BY total_hosts ASC
SELECT party.theme_id, COUNT(party.host_id) FROM party GROUP BY party.theme_id ORDER BY host_count ASC
SELECT p.party_theme, p.location FROM party AS p
SELECT p.party_id, p.party_theme, p.location FROM party AS p
SELECT MIN(first_year), MAX(last_year) FROM party WHERE theme IN ('Spring', 'Teqnology')
SELECT MIN(first_year), MAX(last_year) FROM party WHERE theme IN ('Spring', 'Teqnology')
SELECT AVG(party.number_of_hosts) FROM party
SELECT AVG(party.number_of_hosts) FROM party
SELECT p.location FROM party AS p WHERE p.number_of_hosts = (SELECT MAX(number_of_hosts) FROM party)
SELECT p.location, COUNT(*) FROM party AS p GROUP BY p.location ORDER BY total_hosts DESC LIMIT 1
SELECT host.nationality, COUNT(*) FROM host GROUP BY host.nationality
SELECT host.nationality, COUNT(*) FROM host GROUP BY host.nationality
SELECT host.nationality, COUNT(*) FROM host GROUP BY host.nationality ORDER BY frequency DESC LIMIT 1
SELECT host.nationality, COUNT(*) FROM host GROUP BY host.nationality ORDER BY total_hosts DESC LIMIT 1
SELECT DISTINCT host.nationality FROM host WHERE CAST(host.age AS FLOAT) > 45 AND CAST(host.age AS FLOAT) < 35
SELECT host.nationality FROM host WHERE CAST(host.age AS FLOAT) > 45 AND CAST(host.age AS FLOAT) < 35 GROUP BY host.nationality HAVING COUNT(host.name) > 1
SELECT host.name, host.nationality FROM host ORDER BY CAST(host.age AS FLOAT) ASC LIMIT 1
SELECT host.name, host.nationality FROM host WHERE host.age = (SELECT MAX(host_id.age) FROM host_id)
SELECT h.name FROM host AS h LEFT JOIN party_host AS ph ON h.host_id = ph.host_id WHERE ph.host_id IS NULL
SELECT h.name FROM host AS h LEFT JOIN party AS p ON h.host_id = p.host_id WHERE p.host_id IS NULL
SELECT COUNT(*) FROM region
SELECT COUNT(*) FROM region
SELECT region.region_code, region.region_name FROM region ORDER BY region.region_code
SELECT region.region_code, region.region_name FROM region ORDER BY region.region_code
SELECT region.region_name FROM region ORDER BY region.region_name ASC
SELECT region.region_name FROM region ORDER BY region.region_name ASC
SELECT region.region_name FROM region WHERE NOT region.region_name ILIKE '%Denmark%' ORDER BY region.region_name NULLS LAST
SELECT region.region_name FROM region WHERE NOT region.region_name ILIKE '%Denmark%' ORDER BY region.region_name NULLS LAST
SELECT COUNT(*) FROM storm
SELECT COUNT(*) FROM storm WHERE number_deaths > 0
SELECT s.name, TO_DATE(s.dates_active, 'YYYY-MM-DD'), SUM(CASE WHEN d.deaths > 0 THEN 1 ELSE 0 END) FROM storm AS s JOIN death AS d ON s.storm_id = d.storm_id GROUP BY s.name, date_activated
SELECT s.name, TO_DATE(s.dates_active, 'YYYY-MM-DD'), SUM(CASE WHEN s.number_deaths > 0 THEN 1 ELSE 0 END) FROM storm AS s GROUP BY s.name, date_activated
SELECT AVG(damage_millions_usd), MAX(damage_millions_usd) FROM storm WHERE max_speed > 1000
SELECT AVG(Damage_millions_usd), MAX(damage_millions_usd) FROM storm WHERE max_speed > 1000
SELECT SUM(storm.number_deaths), SUM(storm.damage_millions_usd) FROM storm WHERE storm.max_speed > (SELECT AVG(storm.max_speed) FROM storm)
SELECT SUM(storm.number_deaths), SUM(storm.damage_millions_usd) FROM storm WHERE storm.max_speed > (SELECT AVG(max_speed) FROM storm)
SELECT s.name, CAST(TO_TIMESTAMP(s.dolles_active) AS TEXT), s.max_speed, s.damage_millions_usd FROM storm AS s ORDER BY s.max_speed DESC
SELECT s.name, CAST(CAST(s.damage_millions_usd AS FLOAT) / 1000000 AS TEXT), RANK() OVER (ORDER BY s.max_speed DESC) FROM storm AS s
SELECT COUNT(*) FROM affected_region
SELECT COUNT(DISTINCT region_id) FROM storm_region
SELECT region.region_name FROM region WHERE NOT region.region_id IN (SELECT region_id FROM region)
SELECT region.region_name FROM region WHERE NOT region.region_id IN (SELECT region_id FROM earthquake)
SELECT s.name FROM storm AS s WHERE s.damage_millions_usd IS NULL
SELECT s.name FROM storm AS s WHERE NOT s.storm_id IN (SELECT d.storm_id FROM damage AS d)
SELECT s.name FROM storm AS s WHERE NOT EXISTS(SELECT 1 FROM region AS r WHERE r.storm_id = s.storm_id GROUP BY r.storm_id HAVING COUNT(DISTINCT r.region) >= 2)
SELECT s.name FROM storm AS s WHERE NOT EXISTS(SELECT 1 FROM region AS r WHERE r.storm_id = s.storm_id) AND NOT EXISTS(SELECT 1 FROM region AS r2 WHERE r2.storm_id = s.storm_id AND r2.region_id <> r.region_id)
SELECT COUNT(*) FROM county
SELECT COUNT(*) FROM county
SELECT county.county_name, COUNT(*) FROM county GROUP BY county.county_name
SELECT county.county_name, CAST(COUNT(*) AS FLOAT) / total_population FROM county GROUP BY county.county_name ORDER BY proportion DESC
SELECT AVG(Population) FROM county
SELECT AVG(Population) FROM county
SELECT MAX(Population), MIN(Population) FROM county
SELECT MAX(Population), MIN(Population) FROM county
SELECT DISTINCT election.district FROM election
SELECT DISTINCT election.district FROM election
SELECT county.zip_code FROM county WHERE county.county_name ILIKE '%Howard%'
SELECT county.zip_code FROM county WHERE county.county_name ILIKE '%Howard%'
SELECT election.delegate FROM election WHERE election.district = 1
SELECT election.delegate FROM election WHERE election.district = 1
SELECT election.delegate, election.committee FROM election
SELECT e.election_id, e.counties_represented, d.delegate, c.committee FROM election AS e JOIN delegate AS d ON e.delegation = d.delegate_id JOIN committee AS c ON e.committee = c.committee_id
SELECT COUNT(DISTINCT Governor) FROM party
SELECT COUNT(DISTINCT Governor) FROM party
SELECT party.Lieutenant_Governor, party.Comptroller FROM party WHERE party.party = 'Democratic'
SELECT party.Lieutenant_Governor, party.Comptroller FROM party WHERE party.party = 'Democratic'
SELECT DISTINCT party.year FROM party WHERE party.governor ILIKE '%Eliot%Spitzer%' ORDER BY party.year NULLS LAST
SELECT DISTINCT party.year FROM party WHERE party.governor ILIKE '%Eliot%Spitzer%' ORDER BY party.year NULLS LAST
SELECT * FROM election
SELECT e.election_id, e.counties_represented, e.district, e.delegate, e.party, e.first_elected, e.committee FROM election AS e
SELECT county.county_name FROM county ORDER BY county.population ASC
SELECT county.county_name FROM county ORDER BY county.population ASC
SELECT county.county_name FROM county ORDER BY county.county_name DESC
SELECT county.county_name FROM county ORDER BY county.county_name DESC
SELECT county.county_name, COUNT(zip.id) FROM county JOIN zip ON county.county_id = zip.county_id GROUP BY county.county_name ORDER BY total_population DESC LIMIT 1
SELECT county.county_name FROM county ORDER BY county.population DESC LIMIT 1
SELECT county.county_name, county.population FROM county ORDER BY county.population ASC NULLS LAST LIMIT 3
SELECT COUNTY.county_name FROM COUNTY ORDER BY COUNTY.population ASC NULLS LAST LIMIT 3
SELECT p.party FROM party AS p GROUP BY p.party HAVING COUNT(p.year) >= 2
SELECT p.party FROM party AS p GROUP BY p.party HAVING COUNT(p.year) >= 2
SELECT p.party_id, COUNT(*) FROM party AS p GROUP BY p.party_id ORDER BY num_years_governor DESC
SELECT p.party_id, COUNT(*) FROM party AS p GROUP BY p.party_id ORDER BY frequency DESC
SELECT party.governor, COUNT(party.year) FROM party WHERE NOT party.comptroller IS NULL GROUP BY party.governor ORDER BY num_times_comptroller DESC
SELECT p.party_id, COUNT(*) FROM party AS p WHERE NOT compartroller IS NULL GROUP BY p.party_id ORDER BY frequency DESC
SELECT p.party FROM party AS p WHERE p.year IS NULL
SELECT p.party FROM party AS p LEFT JOIN delegate AS d ON p.party_id = d.party_id WHERE d.party_id IS NULL
SELECT COUNT(journalist.journalist_id) FROM journalist
SELECT journalist.name FROM journalist ORDER BY journalist.years_working ASC
SELECT journalist.name, CAST(journalist.nationality AS FLOAT), CAST(journalist.age AS FLOAT) FROM journalist
SELECT journalist.name FROM journalist WHERE journalist.nationality ILIKE '%England%' OR journalist.nationality ILIKE '%Wales%'
SELECT AVG(journalist.years_working) FROM journalist
SELECT journalist.nationality FROM journalist WHERE journalist.years_working = (SELECT MAX(journalist.years_working) FROM journalist)
SELECT journalist.nationality, COUNT(journalist.journalist_id) FROM journalist GROUP BY journalist.nationality
SELECT journalist.nationality, COUNT(*) FROM journalist GROUP BY journalist.nationality ORDER BY frequency DESC LIMIT 1
SELECT journalist.nationality FROM journalist WHERE (journalist.years_working > 10 OR journalist.years_working < 3) GROUP BY journalist.nationality HAVING COUNT(*) >= 2
SELECT event.date, event.venue, event.name FROM event ORDER BY event.event_attendance DESC
SELECT journalist.name FROM journalist WHERE NOT journalist.journalist_id IN (SELECT reporter.journalist_id FROM event JOIN reporter ON event.event_id = reporter.event_id)
SELECT AVG(event_attendance), MAX(event_attendance) FROM event
SELECT event.venue, event.name, event.event_id, event.date, event.event_attendance FROM event ORDER BY event.event_attendance DESC LIMIT 2
SELECT Restaurant.ResID, Restaurant.ResName, Restaurant.Address FROM Restaurant
SELECT Restaurant.Address FROM Restaurant WHERE ResName ILIKE '%Subway%'
SELECT CAST(Rating AS FLOAT) FROM Restaurant WHERE ResName = 'Subway'
SELECT Restaurant_Type.ResTypeName FROM Restaurant_Type
SELECT Restaurant_Type.ResTypeDescription FROM Restaurant_Type WHERE Restaurant_Type.ResTypeName ILIKE '%Sandwich%'
SELECT Restaurant.ResName, MAX(Restaurant.Rating) FROM Restaurant GROUP BY Restaurant.ResName ORDER BY max_rating DESC
SELECT Student.Age FROM Student WHERE Student.LName ILIKE '%Linda%Smith%'
SELECT Student.Sex FROM Student WHERE Student.LName ILIKE '%Linda%Smith%'
SELECT s.fname, s.lname FROM student AS s WHERE s.major = 600
SELECT Student.city_code FROM Student WHERE Student.LName ILIKE '%Linda%Smith%' AND Student.Fname ILIKE '%Smith%'
SELECT COUNT(*) FROM Student WHERE Advisor = 1121
SELECT s.advisor, COUNT(*) FROM student AS s GROUP BY s.advisor ORDER BY student_count DESC
SELECT s.major, COUNT(*) FROM Student AS s GROUP BY s.major ORDER BY student_count ASC NULLS LAST LIMIT 1
SELECT Student.Major, COUNT(Student.StuID) FROM Student GROUP BY Student.Major HAVING COUNT(Student.StuID) BETWEEN 2 AND 30
SELECT Student.Fname, Student.LName FROM Student WHERE "Age" > '18' AND "Major" = '600'
SELECT Student.Fname, Student.LName FROM Student WHERE Student.Sex = 'female' AND Student.Age > 18 AND Student.Major <> 600
SELECT a.actual_order_id FROM Actual_Orders AS a WHERE order_status_code = 'success'
SELECT COUNT(*) FROM Customers
SELECT COUNT(DISTINCT customers.payment_method) FROM customers
SELECT Trucks.truck_id, Trucks.truck_licence_number, Trucks.truck_details FROM Trucks ORDER BY Trucks.truck_id
SELECT Products.product_name FROM Products ORDER BY Products.product_price DESC LIMIT 1
SELECT Customers.customer_name FROM Customers WHERE NOT Customers.customer_id IN (SELECT customer_id FROM Addresses WHERE state = 'California')
SELECT customers.customer_name, customers.customer_email FROM customers WHERE payment_method = 'Visa'
SELECT a.state_province_county FROM Addresses AS a LEFT JOIN Employees AS e ON a.address_id = e.address_id WHERE e.employee_id IS NULL
SELECT customers.customer_name, customers.customer_phone, customers.customer_email FROM customers ORDER BY customers.date_became_customer
SELECT c.customer_name FROM Customers AS c ORDER BY c.customer_id ASC LIMIT 5
SELECT customers.payment_method, COUNT(*) FROM customers GROUP BY customers.payment_method ORDER BY frequency DESC LIMIT 1
SELECT route_name FROM Delivery_Routes ORDER BY route_name ASC
SELECT COUNT(*) FROM Authors
SELECT COUNT(*) FROM Authors
SELECT COUNT(*) FROM Inst
SELECT COUNT(*) FROM inst
SELECT COUNT(*) FROM Papers
SELECT COUNT(*) FROM Papers
SELECT CAST(COUNT(*) AS FLOAT) / NULLIF((SELECT COUNT(*) FROM Papers), 0) FROM Papers WHERE title ILIKE '%ML%'
SELECT Papers.title FROM Papers WHERE Papers.title ILIKE '%ML%'
SELECT Papers.title FROM Papers WHERE Papers.title ILIKE '%database%'
SELECT Papers.title FROM Papers WHERE Papers.title ILIKE '%database%'
SELECT Authors.fname FROM Authors WHERE Authors.lname ILIKE '%Ueno%'
SELECT Authors.fname FROM Authors WHERE Authors.lname ILIKE '%Ueno%'
SELECT Authors.lname FROM Authors WHERE Authors.fname ILIKE '%Amal%'
SELECT Authors.lname FROM Authors WHERE Authors.fname ILIKE '%Amal%' ORDER BY Authors.lname NULLS LAST
SELECT a.fname FROM Authors AS a ORDER BY a.fname ASC
SELECT Authors.fname FROM Authors ORDER BY Authors.fname ASC
SELECT Authors.lname FROM Authors ORDER BY Authors.lname ASC
SELECT Authors.lname FROM Authors ORDER BY Authors.lname ASC
SELECT Authors.lname, Authors.fname FROM Authors ORDER BY Authors.lname ASC
SELECT Authors.lname, Authors.fname FROM Authors ORDER BY Authors.lname ASC
SELECT COUNT(DISTINCT actor.last_name) FROM actor
SELECT COUNT(DISTINCT actor.last_name) FROM actor
SELECT actor.first_name, COUNT(actor.actor_id) FROM actor GROUP BY actor.first_name ORDER BY total_movies DESC LIMIT 1
SELECT actor.first_name, COUNT(actor.first_name) FROM actor GROUP BY actor.first_name ORDER BY frequency DESC LIMIT 1
SELECT a.actor_id, a.first_name, a.last_name, COUNT(r.rating) AS rating FROM actor a JOIN rating r ON a.actor_id = r.actor_id GROUP BY a.actor_id, a.first_name, a.last_name), max_rating AS (SELECT MAX(rating) AS max_rating FROM actor_ratings) SELECT first_name, last_name FROM actor_ratings ar JOIN max_rating mr ON ar.rating = mr.max_rating
SELECT actor.first_name, actor.last_name FROM actor GROUP BY actor.first_name, actor.last_name ORDER BY COUNT(actor.actor_id) DESC LIMIT 1
SELECT DISTINCT address.district FROM address GROUP BY address.district HAVING COUNT(address.address_id) >= 2
SELECT district FROM address GROUP BY district HAVING COUNT(address_id) >= 2
SELECT address.phone, address.postal_code FROM address WHERE address.address ILIKE '%1031%Daugavpings%Parkway%'
SELECT address.phone, address.postal_code FROM address WHERE address.address ILIKE '%1031%Daugavpings%Parkway%'
SELECT COUNT(*) FROM address WHERE district = 'California'
SELECT COUNT(*) FROM address WHERE district = 'California'
SELECT film_id, title FROM film WHERE rental_rate = 0.99 AND stock_level < 3
SELECT film_id, title FROM film WHERE rental_rate = 0.99 AND inventory < 3
SELECT payment_date FROM payment WHERE amount > 10 AND staff_id IN (SELECT staff_id FROM staff WHERE first_name ILIKE '%Elsa%')
SELECT payment_date FROM payment WHERE amount > 10 AND staff_first_name = 'Elsa'
SELECT COUNT(*) FROM customer WHERE active = TRUE
SELECT COUNT(*) FROM customer WHERE active = TRUE
SELECT film.title, MAX(film.rental_rate) FROM film GROUP BY film.title
SELECT film.title, film.rental_rate FROM film ORDER BY film.rental_rate DESC LIMIT 1
SELECT s.store_name, COUNT(i.inventory_id) FROM stores AS s JOIN inventory AS i ON i.store_id = s.store_id GROUP BY s.store_name ORDER BY total_inventory DESC LIMIT 1
SELECT store_id FROM inventory GROUP BY store_id ORDER BY COUNT(inventory_id) DESC LIMIT 1
SELECT SUM(payment.amount) FROM payment
SELECT SUM(payment.amount) FROM payment
SELECT COUNT(DISTINCT film.language_id) FROM film
SELECT COUNT(DISTINCT film.language_id) FROM film
SELECT film.title FROM film WHERE film.rating = 'R'
SELECT film.title FROM film WHERE film.rating = 'R'
SELECT COUNT(*) FROM store
SELECT COUNT(*) FROM store
SELECT COUNT(DISTINCT film.rating) FROM film
SELECT COUNT(DISTINCT film.film_id) FROM film
SELECT film.title FROM film WHERE 'Deleted scenes' ILIKE '%special_features%'
SELECT film.title FROM film WHERE film.special_features ILIKE '%Deleted%'
SELECT COUNT(*) FROM inventory WHERE store_id = 1
SELECT COUNT(inventory_id) FROM inventory WHERE store_id = 1
SELECT MIN(payment.payment_date) FROM payment
SELECT MIN(payment.payment_date) FROM payment
SELECT film_id, title FROM film WHERE length > 100 OR (rating = 'PG' AND replacement_cost <= 200) AND NOT film_id IN (SELECT film_id FROM film WHERE replacement_cost > 200)
SELECT film.title FROM film WHERE (film.length > 100 OR film.rating <> 'PG') AND film.replacement_cost <= 200
SELECT customer.store_id, COUNT(customer.customer_id) FROM customer GROUP BY customer.store_id ORDER BY total_customers DESC LIMIT 1
SELECT c.store_id, COUNT(*) FROM customer AS c GROUP BY c.store_id ORDER BY customer_count DESC LIMIT 1
SELECT MAX(payment.amount) FROM payment
SELECT MAX(payment.amount) FROM payment
SELECT customer.first_name FROM customer WHERE customer.create_date < '2005-08-23 02:06:01' AND NOT customer.customer_id IN (SELECT rental.customer_id FROM rental)
SELECT customer.first_name FROM customer WHERE NOT customer.customer_id IN (SELECT rental.customer_id FROM rental JOIN rental_date ON rental.rental_id = rental_date.rental_id WHERE rental_date.last_update > '2005-08-23 02:06:01') AND customer.active = TRUE
SELECT COUNT(*) FROM bank
SELECT COUNT(*) FROM bank
SELECT CAST(SUM(branch_id) AS FLOAT) / NULLIF(COUNT(*), 0) FROM bank
SELECT SUM(b.no_of_customers) FROM bank AS b
SELECT SUM(branch_id) FROM bank WHERE city = 'New York City'
SELECT SUM(banks.no_of_customers) FROM bank WHERE city = 'New York'
SELECT AVG(no_of_customers) FROM bank WHERE state = 'Utah'
SELECT AVG(banks.no_of_customers) FROM banks WHERE banks.state = 'Utah'
SELECT AVG(no_of_customers) FROM bank
-1
SELECT b.city, b.state FROM bank AS b WHERE b.branch_id = 757071
SELECT branch_id, bname, no_of_customers, city, state FROM bank WHERE bname ILIKE '%morningside%'
SELECT bname FROM bank WHERE state = 'New York'
SELECT bname FROM bank WHERE state = 'New York'
SELECT customer.cust_name FROM customer ORDER BY customer.acc_bal ASC
SELECT customer.cust_name, customer.acc_bal FROM customer ORDER BY customer.acc_bal DESC
SELECT customer.state, customer.acc_type, customer.credit_score FROM customer WHERE customer.no_of_loans = 0
SELECT customer.state, customer.acc_type, customer.credit_score FROM customer WHERE customer.no_of_loans = 0
SELECT DISTINCT city FROM bank
SELECT COUNT(DISTINCT city) FROM bank
SELECT COUNT(DISTINCT state) FROM bank
SELECT COUNT(DISTINCT state) FROM bank
SELECT COUNT(DISTINCT customer.acc_type) FROM customer
SELECT COUNT(DISTINCT customer.acc_type) FROM customer
SELECT customer.cust_name, customer.acc_bal FROM customer WHERE customer.cust_name ILIKE '%a%'
SELECT customer.cust_name, customer.acc_bal FROM customer WHERE customer.cust_name ILIKE '%a%'
SELECT customer.cust_name, SUM(customer.acc_bal) FROM customer WHERE customer.state IN ('Utah', 'Texas') GROUP BY customer.cust_name
SELECT customer.cust_name, SUM(customer.acc_bal) FROM customer WHERE customer.state IN ('Utah', 'Texas') GROUP BY customer.cust_name
SELECT customer.cust_name FROM customer WHERE customer.acc_type ILIKE '%saving%' AND customer.acc_type ILIKE '%checking%'
SELECT customer.cust_name FROM customer WHERE customer.acc_type IN ('savings', 'checking') GROUP BY customer.cust_name HAVING COUNT(DISTINCT customer.acc_type) = 2
SELECT customer.cust_name FROM customer WHERE customer.acc_type <> 'saving'
SELECT customer.cust_name FROM customer WHERE customer.acc_type <> 'saving' ORDER BY customer.cust_name NULLS LAST
SELECT customer.cust_name FROM customer WHERE NOT customer.acc_type ILIKE '%Mortgages%'
SELECT customer.cust_name FROM customer WHERE customer.acc_type <> 'Mortgage' ORDER BY customer.cust_name NULLS LAST
SELECT customer.cust_name FROM customer WHERE customer.credit_score < (SELECT AVG(customer.credit_score) FROM customer)
SELECT customer.cust_name FROM customer WHERE customer.credit_score < (SELECT AVG(customer.credit_score) FROM customer)
SELECT b.branch_name FROM bank AS b WHERE b.no_of_customers = (SELECT MAX(no_of_customers) FROM bank)
SELECT bname FROM bank ORDER BY no_of_customers DESC LIMIT 1
SELECT customer.cust_name FROM customer ORDER BY customer.credit_score ASC LIMIT 1
SELECT customer.cust_name FROM customer ORDER BY customer.credit_score ASC NULLS LAST LIMIT 1
SELECT customer.cust_name, customer.acc_type, customer.acc_bal FROM customer WHERE customer.credit_score = (SELECT MAX(customer.credit_score) FROM customer)
SELECT customer.cust_name, customer.acc_type, customer.acc_bal FROM customer WHERE customer.credit_score = (SELECT MAX(customer.credit_score) FROM customer)
SELECT bank.state, SUM(bank.no_of_customers) FROM bank GROUP BY bank.state ORDER BY total_customers DESC LIMIT 1
SELECT state, SUM(no_of_customers) FROM bank GROUP BY state ORDER BY total_customers DESC LIMIT 1
SELECT customer.acc_type, AVG(customer.acc_bal) FROM customer WHERE customer.credit_score < 50 GROUP BY customer.acc_type
SELECT customer.acc_type, AVG(customer.acc_bal) FROM customer WHERE customer.credit_score < 50 GROUP BY customer.acc_type
SELECT customer.state, SUM(customer.acc_bal) FROM customer WHERE customer.credit_score > 100 GROUP BY customer.state
SELECT state, SUM(acc_bal) FROM customer WHERE credit_score > 100 GROUP BY state
SELECT AVG(customer.credit_score) FROM customer WHERE customer.no_of_loans > 0
SELECT AVG(customer.credit_score) FROM customer WHERE customer.no_of_loans > 0
SELECT AVG(customer.credit_score) FROM customer WHERE customer.no_of_loans IS NULL
SELECT AVG(customer.credit_score) FROM customer WHERE customer.no_of_loans = 0
SELECT COUNT(*) FROM Assessment_Notes
SELECT date_of_notes FROM Assessment_Notes
SELECT COUNT(*) FROM Addresses WHERE zip_postcode = '197'
SELECT COUNT(DISTINCT behavior_incident.incident_type_code) FROM behavior_incident
SELECT DISTINCT detention_type_code FROM Detention
SELECT date_incident_start, date_incident_end FROM behavior_incident WHERE incident_type_code = 'NOISE' ORDER BY date_incident_start NULLS LAST
SELECT detention_summary FROM Detention
SELECT Students.first_name, Students.middle_name, Students.last_name, Students.cell_phone_number, Students.email_address FROM Students
SELECT Students.email_address FROM Students WHERE Students.first_name ILIKE '%Emma%' AND Students.last_name ILIKE '%Rohan%'
SELECT COUNT(DISTINCT student_id) FROM Students_in_Detention
SELECT Teachers.gender FROM Teachers WHERE Teachers.last_name ILIKE '%Medehurst%'
SELECT Ref_Incident_Type.incident_type_description FROM Ref_Incident_Type WHERE Ref_Incident_Type.incident_type_code = 'VIOLENCE'
SELECT MIN(monthly_rental), MAX(monthly_rental) FROM Student_Addresses
SELECT Teachers.first_name FROM Teachers WHERE 'man' ILIKE '%Teachers.email_address%'
SELECT Assessment_Notes.notes_id, Assessment_Notes.student_id, Assessment_Notes.teacher_id, Assessment_Notes.date_of_notes, Assessment_Notes.text_of_notes, Assessment_Notes.other_details FROM Assessment_Notes ORDER BY Assessment_Notes.date_of_notes ASC
SELECT DISTINCT Addresses.city FROM Addres ORDER BY Addres.city ASC
SELECT teachers.first_name, teachers.last_name FROM teachers ORDER BY teachers.last_name ASC
SELECT Student_Addresses.student_id, Student_addresses.address_id, Student_addresses.monthly_rental FROM Student_addresses ORDER BY Student_addresses.monthly_rental DESC
SELECT COUNT(*) FROM students WHERE NOT student_id IN (SELECT student_id FROM behavior_incidents)
SELECT Teachers.last_name FROM Teachers WHERE NOT Teachers.teacher_id IN (SELECT Detention.teacher_id FROM Detention)
SELECT DISTINCT Maintenance_Engineers.last_name FROM Maintenance_Engineers
SELECT COUNT(DISTINCT fault_status) FROM fault_log_parts
SELECT Maintenance_Engineers.first_name, Maintenance_Engineers.last_name FROM Maintenance_Engineers WHERE NOT Maintenance_Engineers.engineer_id IN (SELECT Maintenance_Assets.engineer_id FROM Maintenance_Assets)
SELECT a.asset_id, a.asset_details, a.asset_make, a.asset_model FROM assets AS a
SELECT MIN(assets.asset_acquired_date) FROM assets
SELECT DISTINCT Assets.asset_model FROM Assets
SELECT a.asset_id, a.asset_make, a.asset_model, a.asset_details FROM assets AS a ORDER BY a.asset_disposed_date ASC
SELECT parts.part_id, CAST(parts.chargeable_amount AS FLOAT) FROM parts WHERE parts.chargeable_yn = 'Y' ORDER BY parts.chargeable_amount ASC NULLS LAST
SELECT Staff.gender FROM Staff GROUP BY Staff.gender HAVING COUNT(Staff.staff_id) > COUNT(CASE WHEN Staff.gender = 'female' THEN Staff.staff_id END) / 2
SELECT a.asset_model FROM assets AS a LEFT JOIN fault_logs AS fl ON a.asset_id = fl.asset_id WHERE fl.asset_id IS NULL
SELECT DISTINCT station.local_authority, ARRAY_AGG(DISTINCT station.services) FROM station GROUP BY hstation.local_authority
SELECT t.train_number, t.name FROM train AS t ORDER BY CAST(t.time AS TIME) ASC
SELECT t.train_number, CAST(t.time AS FLOAT) FROM train AS t WHERE t.destination = 'Chennai' ORDER BY time NULLS LAST
SELECT COUNT(*) FROM train WHERE name ILIKE '%Express%'
SELECT t.train_number, TO_NUMBER(t.time, '999999999') FROM train AS t WHERE t.origin = 'Chennai' AND t.destination = 'Guruvayur'
SELECT train.origin, COUNT(*) FROM train GROUP BY train.origin
SELECT daily_weather.day_of_week, AVG(daily_weather.high_temperature) FROM daily_weather GROUP BY daily_weather.day_of_week
SELECT COUNT(DISTINCT station.services) FROM station
SELECT MIN(low_temperature), MAX(wind_speed_mph) FROM weekly_weather
SELECT DISTINCT train.origin FROM train GROUP BY train.origin HAVING COUNT(train.id) > 1
SELECT COUNT(*) FROM CLASS WHERE CLASS_CODE = 'ACCT-211'
SELECT COUNT(DISTINCT PROF_NUM) FROM CLASS WHERE CLASS_CODE = 'ACCT-211'
SELECT SCHOOL_CODE FROM DEPARTMENT WHERE DEPT_NAME ILIKE '%Accounting%'
SELECT DEPARTMENT.SCHOOL_CODE FROM DEPARTMENT WHERE DEPARTMENT.DEPT_NAME ILIKE '%Accounting%'
SELECT COURSE.CRS_CREDIT, COURSE.CRS_DESCRIPTION FROM COURSE WHERE COURSE.CRS_CODE = 'CIS-220'
SELECT COURSE.CRS_DESCRIPTION, COURSE.CRS_CREDIT FROM COURSE WHERE COURSE.CRS_CODE = 'CIS-220'
SELECT DEPARTMENT.DEPT_ADDRESS FROM DEPARTMENT WHERE DEPARTMENT.DEPT_NAME ILIKE '%History%'
SELECT department.dept_name FROM department WHERE department.dept_name ILIKE '%history%'
SELECT COUNT(DISTINCT dept_address) FROM department WHERE dept_code = 'BUS'
SELECT DISTINCT DEPARTMENT.DEPT_ADDRESS FROM DEPARTMENT WHERE DEPARTMENT.DEPT_CODE = 'BUS'
SELECT SCHOOL_CODE, COUNT(DISTINCT DEPT_ADDRESS) FROM DEPARTMENT GROUP BY SCHOOL_CODE
SELECT SCHOOL_CODE, COUNT(DEPT_ADDRESS) FROM DEPARTMENT GROUP BY SCHOOL_CODE
SELECT COURSE.CRS_DESCRIPTION, COURSE.CRS_CREDIT FROM COURSE WHERE COURSE.CRS_CODE = 'QM-261'
SELECT COURSE.CRS_DESCRIPTION, COURSE.CRS_CREDIT FROM COURSE WHERE COURSE.CRS_CODE = 'QM-261'
SELECT SCHOOL_CODE, COUNT(DEPT_CODE) FROM DEPARTMENT GROUP BY SCHOOL_CODE
SELECT SCHOOL_CODE, COUNT(DEPT_CODE) FROM DEPARTMENT GROUP BY SCHOOL_CODE
SELECT SCHOOL_CODE, COUNT(DEPT_CODE) FROM DEPARTMENT GROUP BY SCHOOL_CODE HAVING COUNT(DEPT_CODE) < 5
SELECT SCHOOL_CODE, COUNT(DEPT_CODE) FROM DEPARTMENT GROUP BY SCHOOL_CODE HAVING COUNT(APts) < 5
SELECT COUNT(DISTINCT class_section) FROM class
SELECT COURSE.CRN_ABBREV, COUNT(CLASS.CLASS_SECTION) FROM COURSE JOIN CLASS ON COURSE.CRN_ABBREV = CLASS.CRS_CODE GROUP BY COURSE.CRN_ABBREV
SELECT dept_code, COUNT(crs_code) FROM course GROUP BY dept_code
SELECT COUNT(CRS_CREDIT) FROM COURSE WHERE DEPT_CODE = 'DEPARTMENT_CODE'
SELECT COUNT(*) FROM (SELECT CLASS.CLASS_CODE, COUNT(*) FROM CLASS GROUP BY CLASS.CLASS_CODE HAVING COUNT(*) >= 2) AS subquery
SELECT c.class_code, COUNT(*) FROM class AS c GROUP BY c.class_code HAVING COUNT(*) >= 2
SELECT COUNT(EMPLOYEE.EMP_NUM), EMPLOYEE.EMP_JOBCODE FROM EMPLOYEE GROUP BY EMPLOYEE.EMP_JOBCODE ORDER BY COUNT(EMPLOYEE.EMP_NUM) DESC LIMIT 1
SELECT emp_jobcode, COUNT(*) FROM employee GROUP BY emp_jobcode ORDER BY COUNT(*) DESC LIMIT 1
SELECT dept_code, COUNT(*) FROM professor WHERE pro_high_degree = 'Ph.D.' GROUP BY dept_code
SELECT p.dept_code, CAST(COUNT(CASE WHEN phd = 'Yes' THEN 1 END) AS FLOAT) / NULLIF(COUNT(*), 0) FROM professor AS p GROUP BY p.dept_code
SELECT dept.dept_name, COUNT(*) FROM student AS s JOIN department AS dept ON s.dept_code = dept.dept_code GROUP BY dept.dept_name
SELECT dept.dept_name, COUNT(*) FROM student AS st JOIN department AS dept ON st.dept_code = dept.dept_code GROUP BY dept.dept_name
SELECT dept_code, COUNT(stu_hrs) FROM student GROUP BY dept_code
SELECT dept_code, COUNT(*) FROM student GROUP BY dept_code
SELECT dept_code, MAX(stu_gpa), AVG(stu_gpa), MIN(stu_gpa) FROM student GROUP BY dept_code
SELECT dept_code, MAX(stu_gpa), MIN(stu_gpa), AVG(stu_gpa) FROM student GROUP BY dept_code
SELECT COUNT(DISTINCT SCHOOL_CODE) FROM DEPARTMENT
SELECT COUNT(DISTINCT SCHOOL_CODE) FROM DEPARTMENT
SELECT COUNT(DISTINCT class_code) FROM class
SELECT COUNT(DISTINCT class_code) FROM class
SELECT COUNT(*) FROM CLASS
SELECT COUNT(DISTINCT class_code) FROM class
SELECT COUNT(*) FROM department
SELECT COUNT(DISTINCT dept_code) FROM department
SELECT COUNT(*) FROM class WHERE crs_code = 'ACCT-211'
SELECT COUNT(DISTINCT CLASS_SECTION) FROM CLASS WHERE CRS_CODE = 'ACCT-211'
SELECT COUNT(*) FROM EMPLOYEE
SELECT COUNT(*) FROM EMPLOYEE
SELECT COUNT(*) FROM PROFESSOR WHERE PROF_HIGH_DEGREE ILIKE '%Ph.D.%'
SELECT COUNT(*) FROM professor WHERE phd_flag = 'Yes'
SELECT department.dept_name FROM department ORDER BY department.dept_name NULLS LAST
SELECT dept_name FROM department ORDER BY dept_name ASC
SELECT DISTINCT class_code FROM class WHERE class_room = 'KLR209'
SELECT DISTINCT class_code FROM class WHERE class_room = 'KLR209'
SELECT EMPLOYEE.EMP_FNAME FROM EMPLOYEE WHERE EMPLOYEE.EMP_JOBCODE = 'PROF' ORDER BY EMPLOYEE.EMP_DOB NULLS LAST
SELECT EMPLOYEE.EMP_FNAME FROM EMPLOYEE WHERE EMPLOYEE.EMP_JOBCODE = 'Professor' ORDER BY EMPLOYEE.EMP_DOB NULLS LAST
SELECT EMPLOYEE.EMP_FNAME, EMPLOYEE.EMP_LNAME FROM EMPLOYEE ORDER BY EMPLOYEE.EMP_HIREDATE ASC LIMIT 1
SELECT EMPLOYEE.EMP_FNAME, EMPLOYEE.EMP_LNAME FROM EMPLOYEE ORDER BY EMPLOYEE.EMP_DOB ASC LIMIT 1
SELECT MIN(STU_GPA), MAX(STU_GPA) FROM STUDENT WHERE STU_GPA > 3
SELECT MIN(STUDENT.STU_DOB), MAX(STUDENT.STU_LNAME), MAX(STUDENT.STU_FNAME), AVG(STUDENT.STU_GPA) FROM STUDENT WHERE STUDENT.STU_GPA > 3
SELECT e.emp_fname FROM employee AS e LEFT JOIN CLASS_EMPLOYEE AS ce ON e.emp_num = ce.emp_num WHERE cee.emp_num IS NULL
SELECT e.emp_fname FROM employee AS e LEFT JOIN class_employee AS ce ON e.emp_num = ce.emp_num WHERE ce.emp_num IS NULL
SELECT COUNT(*) FROM PROFESSOR WHERE (PROF_HIGH_DEGREE ILIKE '%Ph.D.%' OR PROF_HIGH_DEGREE ILIKE '%MA%')
SELECT COUNT(*) FROM PROFESSOR WHERE (PROF_HIGH_DEGREE = 'Ph.D.' OR PROF_HIGH_DEGREE = 'Masters')
SELECT s.stu_fname, s.stu_gpa, s.stu_phone FROM student AS s ORDER BY s.stu_gpa DESC LIMIT 5
SELECT s.stu_fname, s.stu_gpa, s.stu_phone FROM student AS s ORDER BY s.stu_gpa DESC LIMIT 5
SELECT s.stu_fname, AVG(s.stu_gpa) FROM student AS s WHERE s.stu_gpa < AVG(s.stu_gpa) GROUP BY s.stu_fname
SELECT s.stu_fname, s.stu_gpa FROM STUDENT AS s WHERE s.stu_gpa < (SELECT AVG(stu_gpa) FROM STUDENT)
SELECT COUNT(*) FROM club
SELECT COUNT(*) FROM club
SELECT DISTINCT club.region FROM club ORDER BY club.region ASC
SELECT region FROM club ORDER BY region ASC
SELECT AVG(gold) FROM club_rank
SELECT AVG(gold) FROM club_rank
SELECT competition.competition_type, competition.country FROM competition ORDER BY competition.competition_type NULLS LAST, competition.country NULLS LAST
SELECT competition.competition_type, competition.country FROM competition ORDER BY competition.competition_type NULLS LAST, competition.country NULLS LAST
SELECT DISTINCT competition.year FROM competition WHERE NOT competition.competition_type ILIKE '%tournament%' ORDER BY competition.year NULLS LAST
SELECT DISTINCT competition.year FROM competition WHERE competition.competition_type <> 'tournament'
SELECT MIN(Silver), MAX(Silver) FROM club_rank
SELECT MIN(silver), MAX(silver) FROM club_rank
SELECT COUNT(*) FROM club_rank WHERE total < 10
SELECT COUNT(*) FROM club_rank WHERE total < 10
SELECT c.name FROM club AS c ORDER BY CAST(c.start_year AS INT)
SELECT c.name FROM club AS c WHERE c.start_year = (SELECT MIN(start_year) FROM club)
SELECT c.name FROM club AS c
SELECT club.name FROM club ORDER BY club.name DESC
SELECT p.position, AVG(p.points) FROM player AS p GROUP BY p.position
SELECT p.position, AVG(p.points) FROM player AS p GROUP BY p.position
SELECT p.position, AVG(p.points) FROM player AS p GROUP BY p.position HAVING AVG(p.points) > 20 ORDER BY p.position NULLS LAST
SELECT p.position FROM player AS p GROUP BY p.position HAVING AVG(p.points) > 20
SELECT competition.competition_type, COUNT(*) FROM competition GROUP BY competition.competition_type
SELECT competition_type, COUNT(competition_id) FROM competition GROUP BY competition_type
SELECT competition.competition_type, COUNT(*) FROM competition GROUP BY competition.competition_type ORDER BY frequency DESC LIMIT 1
SELECT competition.competition_type FROM competition GROUP BY competition.competition_type ORDER BY COUNT(*) DESC LIMIT 1
SELECT competition.competition_type FROM competition GROUP BY competition.competition_type HAVING COUNT(competition.competition_id) > 5
SELECT c.competition_type, COUNT(*) FROM competition AS c GROUP BY c.competition_type HAVING COUNT(*) > 5
SELECT c.name FROM club AS c LEFT JOIN player AS p ON c.club_id = p.club_id WHERE p.player_id IS NULL
SELECT c.name FROM club AS c LEFT JOIN player AS p ON c.club_id = p.club_id WHERE p.player_id IS NULL
SELECT p.position FROM player AS p WHERE p.points > 20 AND p.points < 10
SELECT p.name, p.position FROM player AS p WHERE p.points > 20 AND p.points < 10
SELECT SUM(Points) FROM player
SELECT SUM(player_id.points) FROM player
SELECT COUNT(DISTINCT player.position) FROM player
SELECT COUNT(DISTINCT player.position) FROM player
SELECT p.name FROM player AS p WHERE p.points > (SELECT AVG(points) FROM player)
SELECT p.name FROM player AS p WHERE p.points > (SELECT AVG(points) FROM player)
SELECT p.position, COUNT(*) FROM player AS p WHERE p.points < 30 GROUP BY p.position
SELECT p.position, COUNT(*) FROM player AS p WHERE p.points < 30 GROUP BY p.position
SELECT competition.country, COUNT(competition.competition_id) FROM competition WHERE competition.competition_type ILIKE '%tournament%' GROUP BY competition.country ORDER BY num_competitions DESC LIMIT 1
SELECT c.country FROM competition AS c GROUP BY c.country ORDER BY COUNT(c.competition_id) DESC LIMIT 1
SELECT DISTINCT competition.country FROM competition WHERE competition.competition_type ILIKE '%Friendly%' AND competition.competition_type ILIKE '%Tournament%'
SELECT DISTINCT competition.country FROM competition WHERE competition.competition_type ILIKE '%friendly%' AND competition.competition_type ILIKE '%tournament%'
SELECT DISTINCT c.country FROM competition AS c WHERE NOT c.competition_type ILIKE '%Friendly%'
SELECT DISTINCT competition.country FROM competition WHERE competition_type <> 'friendly'
SELECT SUM(furniture.num_of_component) FROM furniture
SELECT furniture.name, furniture.furniture_id FROM furniture ORDER BY furniture.market_rate DESC LIMIT 1
SELECT SUM(furniture.market_rate) FROM furniture ORDER BY furniture.market_rate DESC LIMIT 2
SELECT furniture.name, CAST(furniture.num_of_component AS FLOAT) / NULLIF(MAX(furniture.num_of_component), 0) FROM furniture GROUP BY furniture.name HAVING AVG(furniture.num_of_component) > 10
SELECT f.name, f.num_of_component FROM furniture AS f WHERE f.market_rate = (SELECT MIN(f2.market_rate) FROM furniture AS f2)
SELECT m.name, CAST(m.num_of_shops AS FLOAT) / NULLIF(MAX(s.num_of_shops), 0) FROM manufacturer AS m JOIN shop AS s ON m.manufacturer_id = s.manufacturer_id GROUP BY m.name, m.open_year HAVING COUNT(*) > 1
SELECT AVG(manufacturer.num_of_factories) FROM manufacturer WHERE manufacturer.num_of_shops > 20
SELECT m.manufacturer_id, m.name FROM manufacturer AS m ORDER BY m.open_year NULLS LAST
SELECT manufacturer.name, manufacturer.open_year FROM manufacturer WHERE (manufacturer.num_of_factories < 10 OR manufacturer.num_of_shops > 10)
SELECT AVG(Num_of_Factories), MAX(Num_of_Shops) FROM manufacturer WHERE Open_Year < 1990
SELECT furniture.name, SUM(furniture.market_share) FROM furniture WHERE NOT furniture.funiture_id IN (SELECT component.furniture_id FROM component) GROUP BY furniture.name
SELECT e.first_name, e.last_name, e.salary FROM employees AS e WHERE e.salary < 6000
SELECT e.first_name, e.last_name, e.salary FROM employees AS e WHERE e.salary < 6000
SELECT e.first_name, d.department_number FROM employees AS e JOIN departments AS d ON e.department_id = d.department_id WHERE e.last_name ILIKE '%McEwen%'
SELECT e.first_name, d.department_number FROM employees AS e JOIN departments AS d ON e.department_id = d.department_id WHERE e.last_name ILIKE '%McEwen%'
SELECT first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id FROM employees WHERE department_id IS NULL
SELECT first_name, last_name FROM employees WHERE department_id IS NULL
SELECT departments.department_name FROM departments WHERE departments.department_name ILIKE '%Marketing%'
SELECT departments.department_name FROM departments WHERE departments.department_name ILIKE '%Marketing%' ORDER BY departments.department_name NULLS LAST
SELECT employees.hire_date FROM employees WHERE NOT employees.first_name ILIKE '%M%' AND NOT employees.first_name ILIKE 'm%'
SELECT employees.hire_date FROM employees WHERE NOT employees.first_name ILIKE '%M%' AND NOT employees.first_name ILIKE '%m%'
SELECT e.first_name, e.last_name, e.hire_date, e.salary, d.department_id FROM employees AS e JOIN departments AS d ON e.department_id = d.department_id WHERE NOT e.first_name ILIKE '%M%'
SELECT e.first_name, e.last_name, e.hire_date, e.salary, d.department_id FROM employees AS e JOIN departments AS d ON e.department_id = d.department_id WHERE NOT e.first_name ILIKE '%M%'
SELECT e.first_name, e.last_name, CAST(e.hire_date AS TEXT), e.salary, d.department_number FROM employees AS e JOIN departments AS d ON e.department_id = d.department_id WHERE NOT first_name ILIKE '%M%' ORDER BY d.department_number ASC
SELECT e.first_name, e.last_name, e.hire_date, e.salary, e.department_id FROM employees AS e WHERE NOT e.first_name ILIKE '%M%' ORDER BY e.department_id ASC
SELECT COUNT(*) FROM employees WHERE salary BETWEEN 8000 AND 12000
SELECT employees.phone_number FROM employees WHERE employees.salary BETWEEN 8000 AND 12000
SELECT employees.employee_id, employees.first_name, employees.last_name, employees.email, employees.phone_number, employees.hire_date, employees.job_id, employees.salary, employees.commission_pct, employees.manager_id, employees.department_id FROM employees WHERE (employees.salary BETWEEN 8000 AND 12000) AND ((NOT employees.commission_pct IS NULL) OR (employees.department_id <> 40))
SELECT employees.first_name, employees.last_name, employees.salary, employees.commission_pct, employees.department_id FROM employees WHERE (employees.salary BETWEEN 8000 AND 12000) AND ((NOT employees.commission_pct IS NULL) OR (employees.department_id <> 40))
SELECT e.first_name, e.last_name, e.salary FROM employees AS e WHERE e.commission_pct IS NULL
SELECT e.first_name, e.last_name, e.salary FROM employees AS e WHERE e.commission_pct IS NULL
SELECT e.first_name, e.last_name, e.salary FROM employees AS e WHERE e.first_name ILIKE '%m'
SELECT e.first_name, e.last_name, e.salary FROM employees AS e WHERE e.first_name ILIKE '%m'
SELECT employees.employee_id, employees.hire_date FROM employees WHERE employees.hire_date BETWEEN '2007-11-05' AND '2009-07-05'
SELECT e.employee_id, e.hire_date FROM employees AS e WHERE TO_DATE(CAST(e.hire_date AS TEXT), 'YYYY-MM-DD') BETWEEN '2007-11-05' AND '2009-07-05'
SELECT employees.first_name, employees.last_name FROM employees WHERE employees.department_id IN (70, 90) ORDER BY employees.first_name NULLS LAST, employees.last_name NULLS LAST
SELECT first_name, last_name FROM employees WHERE department_id IN (70, 90)
SELECT e.first_name, e.last_name, m.manager_number, e.salary FROM employees AS e JOIN managers AS m ON e.manager_id = m.manager_id
SELECT e.first_name, e.last_name, m.salary, m.manager_id FROM employees AS e JOIN employees AS m ON e.manager_id = m.employee_id
SELECT employees.first_name, employees.last_name, employees.email, employees.phone_number, employees.hire_date, employees.job_id, employees.salary, employees.commission_pct, employees.manager_id, employees.department_id FROM employees WHERE employees.hire_date < '2002-06-21'
SELECT first_name, last_name FROM employees WHERE hire_date < '2002-06-21' ORDER BY first_name, last_name NULLS LAST
SELECT employees.first_name, employees.last_name, employees.salary FROM employees WHERE (employees.first_name ILIKE 'D%' OR employees.first_name ILIKE 'S%') ORDER BY employees.salary DESC
SELECT employees.first_name, employees.last_name, employees.salary FROM employees WHERE (employees.first_name ILIKE 'D%' OR employees.first_name ILIKE 'S%') ORDER BY employees.salary DESC
SELECT first_name, last_name FROM employees WHERE hire_date > '1987-09-07'
SELECT first_name, last_name FROM employees WHERE hire_date > '1987-09-07'
SELECT j.job_title FROM jobs AS j WHERE j.min_salary > 9000
SELECT j.job_title FROM jobs AS j WHERE j.min_salary > 9000
SELECT j.job_title, (MAX(j.max_salary) - MIN(j.min_salary)) FROM jobs AS j WHERE j.max_salary BETWEEN 12000 AND 18000 GROUP BY j.job_title
SELECT j.job_title, CAST(AVG(s.salary) AS TEXT) FROM salaries AS s JOIN jobs AS j ON s.job_id = j.job_id WHERE j.max_salary BETWEEN 12000 AND 18000 GROUP BY j.job_title
SELECT employees.email FROM employees WHERE employees.commission_pct IS NULL AND employees.salary BETWEEN 7000 AND 12000 AND employees.department_id = 50
SELECT employees.email FROM employees WHERE employees.commission_pct IS NULL AND employees.salary BETWEEN 7000 AND 12000 AND employees.department_id = 50
SELECT e.employee_id, p.position_start_date, LAG(p.position_end_date) OVER (PARTITION BY e.employee_id ORDER BY p.position_start_date) FROM employees AS e JOIN position_history AS p ON e.employee_id = p.employee_id
SELECT e.employee_id, j.job_id, ph.start_date, ph.end_date FROM employees AS e JOIN job_history AS ph ON e.employee_id = ph.employee_id JOIN jobs AS j ON j.job_id = ph.job_id
SELECT e.department_id, COUNT(e.employee_id) FROM employees AS e GROUP BY e.department_id HAVING COUNT(e.employee_id) > 10 AND NOT commission_pct IS NULL
SELECT DISTINCT employees.department_id FROM employees WHERE NOT employees.commission_pct IS NULL GROUP BY employees.department_id HAVING COUNT(employees.employee_id) > 10
SELECT DISTINCT managers.department_id FROM (SELECT employees.department_id, COUNT(employees.employee_id) FROM employees WHERE employees.job_id = 'MANAGER' GROUP BY employees.department_id HAVING COUNT(employees.employee_id) >= 4) AS managers
SELECT DISTINCT department_id FROM employees WHERE COUNT(employee_id) > 3
SELECT departments.department_id, AVG(employees.salary) FROM employes JOIN departments ON employes.department_id = departments.department_id GROUP BY departments.department_id
SELECT AVG(employees.salary) FROM employees WHERE NOT employees.commission_pct IS NULL
SELECT c.country_id, COUNT(l.location_id) FROM countries AS c JOIN locations AS l ON c.country_id = l.country_id GROUP BY c.country_id
SELECT locations.country_id, COUNT(locations.city) FROM locations GROUP BY locations.country_id
SELECT r.EMPLOYEE_ID FROM (SELECT e.EMPLOYEE_ID, COUNT(j.JOB_ID) FROM employee AS e JOIN job_history AS j ON e.EMPLOYEE_ID = j.EMPLOYEE_ID GROUP BY e.EMPLOYEE_ID HAVING COUNT(j.JOB_ID) > 2) AS r JOIN (SELECT j.EMPLOYEE_ID, (j.END_DATE - j.START_DATE) / (60 * 60 * 24 * 60) FROM job_history AS j WHERE (j.END_DATE - j.START_DATE) / (60 * 60 * 24 * 60) > 300) AS d ON r.EMPLOYEE_ID = d.EMPLOYEE_ID
SELECT r.EMPLOYEE_ID FROM (SELECT e.EMPLOYEE_ID, COUNT(j.JOB_ID) FROM employee AS e JOIN job_history AS j ON e.EMPLOYEE_ID = j.EMPLOYEE_ID GROUP BY e.EMPLOYEE_ID HAVING COUNT(j.JOB_ID) > 1) AS r JOIN (SELECT j.EMPLOYEE_ID, (j.END_DATE - j.START_DATE) / (24 * 60 * 60) FROM job_history AS j WHERE (j.END_DATE - j.START_DATE) / (24 * 60 * 60)) AS d ON r.EMPLOYEE_ID = d.EMPLOYEE_ID WHERE d.DAYS > 300
SELECT employee_id FROM job_history GROUP BY employee_id HAVING COUNT(job_id) >= 2
SELECT DISTINCT r.employee_id FROM (SELECT eh.employee_id, COUNT(eh.job_history_id) FROM employee_history AS eh GROUP BY eh.employee_id HAVING COUNT(eh.job_history_id) >= 2) AS r
SELECT e.first_name, e.last_name FROM employees AS e WHERE e.salary > (SELECT salaries.salary FROM employees AS salaries WHERE salaries.employee_id = 163)
SELECT e.first_name, e.last_name FROM employees AS e WHERE e.salary > (SELECT salaries.salary FROM employees AS salaries WHERE salaries.employee_id = 163)
SELECT d.department_id, MIN(e.salary) FROM employees AS e JOIN department AS d ON e.department_id = d.department_id GROUP BY d.department_id
SELECT d.department_id, MIN(e.salary) FROM employees AS e JOIN departments AS d ON e.department_id = d.department_id GROUP BY d.department_id
SELECT e.first_name, e.last_name, d.department_id FROM employees AS e JOIN (SELECT department_id, MIN(salary) FROM employees GROUP BY department_id) AS d ON e.salary = d.min_salary
SELECT e.first_name, e.last_name, d.department_id FROM employees AS e JOIN (SELECT department_id, MIN(salary) FROM employees GROUP BY department_id) AS d ON e.salary = d.min_salary AND e.department_id = d.department_id
SELECT employees.employee_id FROM employees WHERE employees.salary > (SELECT AVG(salary) FROM employees)
SELECT e.employee_id FROM employees AS e WHERE e.salary > (SELECT AVG(salary) FROM employees)
SELECT e.employee_id, e.salary FROM employees AS e WHERE first_name ILIKE '%Payam%'
SELECT e.employee_id, e.salary FROM employees AS e WHERE e.first_name ILIKE '%Payam%' ORDER BY e.salary DESC
SELECT departments.department_name FROM departments WHERE departments.department_name ILIKE '%Marketing%'
SELECT departments.department_name FROM departments WHERE departments.department_name ILIKE '%Marketing%' ORDER BY departments.department_name NULLS LAST
SELECT employee_id FROM job_history GROUP BY employee_id HAVING COUNT(job_id) >= 2
SELECT DISTINCT r.EMPLOYEE_ID FROM (SELECT e.EMPLOYEE_ID, COUNT(j.JOB_ID) FROM employee AS e JOIN job_history AS j ON e.EMPLOYEE_ID = j.EMPLOYEE_ID GROUP BY e.EMPLOYEE_ID HAVING COUNT(j.JOB_ID) >= 2) AS r
SELECT DISTINCT employees.department_id FROM employees WHERE (SELECT COUNT(*) FROM employees WHERE employees.manager_id = employees.employee_id) >= 4
SELECT DISTINCT managers.department_id FROM (SELECT employees.department_id, COUNT(employees.employee_id) FROM employees GROUP BY employees.department_id HAVING COUNT(employees.employee_id) >= 4) AS managers JOIN employees ON managers.department_id = employees.department_id AND managers.employee_id <> employees.employee_id
SELECT e.EMPLOYEE_ID FROM employees AS e WHERE e.SALARY > 8000
SELECT employees.employee_id FROM employees WHERE employees.salary > 8000 GROUP BY employees.employee_id
SELECT employees.first_name, employees.last_name, employees.salary FROM employees WHERE employees.salary >= (SELECT MIN(employees.salary) FROM employees) AND employees.salary <= 2500
SELECT first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id FROM employees WHERE salary > MIN(salary) AND salary < 2500
SELECT e.employee_id FROM employees AS e WHERE NOT e.manager_id BETWEEN 100 AND 200
SELECT e.employee_id FROM employees AS e JOIN department AS d ON e.department_id = d.department_id WHERE NOT e.manager_id BETWEEN 100 AND 200
SELECT e.first_name, e.last_name, e.hire_date FROM employees AS e JOIN employees AS c ON e.department_id = c.department_id WHERE c.first_name ILIKE '%Clara%'
SELECT e.first_name, e.last_name, e.hire_date FROM employees AS e JOIN employees AS c ON e.department_id = c.department_id WHERE c.first_name ILIKE '%Clara%'
SELECT e.first_name, e.last_name, e.hire_date FROM employees AS e WHERE e.department_id = (SELECT department_id FROM employees WHERE first_name ILIKE '%Clara%' AND last_name ILIKE '%Clara%') AND NOT e.first_name ILIKE '%Clara%' AND NOT e.last_name ILIKE '%Clara%'
SELECT e.first_name, e.last_name, e.hire_date FROM employees AS e WHERE e.department_id IN (SELECT d.department_id FROM employees AS d WHERE d.first_name ILIKE '%Clara%') AND NOT e.first_name ILIKE '%Clara%'
SELECT e.employee_id, e.first_name, e.last_name FROM employees AS e JOIN departments AS d ON e.department_id = d.department_id WHERE e.first_name ILIKE '%T%' OR e.last_name ILIKE '%T%'
SELECT e.employee_id, e.first_name, e.last_name FROM employees AS e JOIN departments AS d ON e.department_id = d.department_id WHERE e.first_name ILIKE '%T%'
SELECT e.employee_id, e.first_name, e.last_name, e.salary FROM employees AS e WHERE e.salary > (SELECT AVG(salary) FROM employees) AND EXISTS(SELECT 1 FROM employees AS d WHERE d.department_id = e.department_id AND d.first_name ILIKE '%J%')
SELECT e.employee_id, e.first_name, e.last_name, e.salary FROM employees AS e WHERE e.salary > (SELECT AVG(salary) FROM employees) AND EXISTS(SELECT 1 FROM employees AS d WHERE d.department_id = e.department_id AND d.first_name ILIKE '%J%')
SELECT e.employee_id, e.job_id FROM employees AS e WHERE e.salary < (SELECT MIN(e2.salary) FROM employees AS e2 WHERE e2.job_title ILIKE '%MK_MAN%')
SELECT e.employee_id, j.job_id FROM employees AS e JOIN jobs AS j ON e.job_id = j.job_id WHERE j.job_title = 'MK_MAN' AND e.salary < (SELECT MIN(salary) FROM employees WHERE job_id = 10)
SELECT e.employee_id, e.first_name, e.last_name, j.job_title, e.salary FROM employees AS e JOIN jobs AS j ON e.job_id = j.job_id WHERE e.salary > (SELECT MAX(e2.salary) FROM employees AS e2 WHERE e2.job_title ILIKE '%Pu_Man%') AND NOT j.job_title ILIKE '%Pu_Man%' ORDER BY e.employee_id NULLS LAST
SELECT e.employee_id, e.first_name, e.last_name, j.job_title FROM employees AS e JOIN jobs AS j ON e.job_id = j.job_id WHERE j.job_title = 'PU_MAN' AND e.salary > (SELECT MAX(salary) FROM employees)
SELECT e.department_id, SUM(e.salary) FROM employees AS e GROUP BY e.department_id HAVING COUNT(e.employee_id) >= 2
SELECT departments.department_id, COUNT(employees.employee_id), SUM(employees.salary) FROM employees JOIN departments ON employees.department_id = departments.department_id GROUP BY departments.department_id HAVING COUNT(employees.employee_id) > 2
SELECT e.first_name, e.last_name, e.email, e.phone_number, e.hire_date, e.job_id, e.salary, e.commission_pct, e.manager_id, e.department_id FROM employees AS e WHERE NOT e.employee_id IN (SELECT employee_id FROM salaries) AND e.hire_date <= CURRENT_DATE
SELECT e.first_name, e.last_name FROM employees AS e WHERE NOT e.employee_id IN (SELECT m.employee_id FROM managers AS m)
SELECT e.department_id, e.first_name, e.last_name, MAX(e.salary) FROM employees AS e GROUP BY e.department_id, e.first_name, e.last_name
SELECT e.department_id, e.first_name, e.last_name, e.salary FROM employees AS e WHERE e.salary = (SELECT MAX(e2.salary) FROM employees AS e2 WHERE e2.department_id = e.department_id)
SELECT song.song_name FROM song ORDER BY song.releasedate DESC LIMIT 1
SELECT song_name FROM song ORDER BY releasedate DESC LIMIT 1
SELECT files.f_id FROM files WHERE files.duration = (SELECT MAX(files.duration) FROM files)
SELECT files.f_id FROM files WHERE duration = (SELECT MAX(duration) FROM files)
SELECT song.song_name FROM song WHERE song.languages ILIKE '%English%'
SELECT song.song_name FROM song WHERE languages ILIKE '%English%' ORDER BY song.song_name NULLS LAST
SELECT f_id FROM files WHERE formats ILIKE '%mp3%'
SELECT f_id FROM files WHERE formats ILIKE '%mp3%'
SELECT COUNT(*) FROM files WHERE duration = '4'
SELECT COUNT(*) AS total_songs FROM files WHERE duration ~ '^4$$$$$$sh$$$$$sh$$$$$sh$$$sh$$$sh$$sh$$sh$sh$sh$sh$sh'
SELECT COUNT(*) FROM artist WHERE country = 'Bangladesh'
SELECT COUNT(*) FROM artist WHERE country = 'Bangladesh'
SELECT files.formats FROM files GROUP BY files.formats ORDER BY COUNT(files.formats) DESC LIMIT 1
SELECT formats FROM files GROUP BY formats ORDER BY COUNT(f_id) DESC LIMIT 1
SELECT artist.artist_name FROM artist WHERE artist.country = 'UK' AND artist.preferred_genre = 'english'
SELECT artist.artist_name FROM artist WHERE artist.country = 'UK' AND artist.preferred_genre = 'english'
SELECT f_id FROM files WHERE formats ILIKE '%mp4%' AND CAST(file_size AS FLOAT) < 1000
SELECT f_id FROM files WHERE formats ILIKE '%mp4%' AND CAST(file_size AS FLOAT) < 1000
SELECT artist.gender, COUNT(*) FROM artist GROUP BY artist.gender
SELECT gender, COUNT(*) FROM artist GROUP BY gender
SELECT languages, AVG(rating) FROM song GROUP BY languages
SELECT languages, AVG(rating) FROM song GROUP BY languages
SELECT files.formats, COUNT(DISTINCT files.artist_name) FROM files GROUP BY files.formats
SELECT formats, COUNT(*) FROM files GROUP BY file_format
SELECT DISTINCT song.song_name FROM song WHERE song.resolution > (SELECT MIN(song.resolution) FROM song WHERE song.languages ILIKE '%Englishish%') AND song.languages ILIKE '%Englishish%' ORDER BY song.song_name NULLS LAST
SELECT s.song_name FROM song AS s WHERE s.resolution > (SELECT AVG(song_resolution) FROM song WHERE languages ILIKE '%Englishish%') GROUP BY s.song_name
SELECT s.song_name FROM song AS s WHERE s.genre_is = 'blues' ORDER BY s.rating NULLS LAST
SELECT s.song_name FROM song AS s WHERE s.genre_is <> 'blues' AND EXISTS(SELECT 1 FROM song AS s2 WHERE s2.genre_is = 'blues' AND s2.rating < s.rating)
SELECT genre.g_name, genre.rating FROM genre ORDER BY genre.g_name ASC
SELECT genre.g_name, genre.rating FROM genre ORDER BY genre.g_name ASC
SELECT song.song_name FROM song ORDER BY song.resolution NULLS LAST
SELECT song.song_name FROM song ORDER BY song.resolution NULLS LAST
SELECT f_id FROM files WHERE formats ILIKE '%mp4%' OR CAST(duration AS FLOAT) > 720
SELECT f_id FROM files WHERE formats ILIKE '%mp4%' OR CAST(duration AS INT) > 720
SELECT languages, COUNT(*) FROM song GROUP BY languages ORDER BY frequency DESC LIMIT 1
SELECT song.languages FROM song GROUP BY song.languages ORDER BY COUNT(song.languages) DESC
SELECT languages, COUNT(*) FROM song WHERE resolution > 500 GROUP BY languages ORDER BY frequency DESC LIMIT 1
SELECT song.languages, song.artist_name FROM song WHERE song.resolution > 500 GROUP BY song.languages, song.artist_name ORDER BY COUNT(song.languages) DESC
SELECT artist.artist_name FROM artist WHERE artist.gender = 'Male' AND artist.country = 'UK'
SELECT artist.artist_name FROM artist WHERE gender = 'male' AND country = 'Britain'
SELECT song.song_name FROM song WHERE (song.genre_is = 'modern' OR song.languages = 'English')
SELECT song.song_name FROM song WHERE (song.languages ILIKE '%English%' OR song.languages IS NULL) AND (song.genre_is ILIKE 'Modern%' OR genre_is IS NULL)
SELECT artist.artist_name FROM artist WHERE artist.country = 'UK' AND artist.preferred_genre = 'english'
SELECT artist.artist_name FROM artist WHERE artist.country = 'UK' AND artist.preferred_genre = 'english'
SELECT AVG(song.rating), AVG(song.resolution) FROM song WHERE song.country = 'Bangladesh'
SELECT AVG(song.rating), AVG(song.resolution) FROM song WHERE genre_is = 'bangla'
SELECT song.song_name FROM song WHERE song.languages ILIKE '%English%' AND song.rating < (SELECT MIN(song.rating) FROM song)
SELECT s.song_name FROM song AS s WHERE s.languages ILIKE '%English%' AND s.rating < (SELECT MIN(song_rating) FROM song WHERE languages ILIKE '%English%')
SELECT s.song_name, a.artist_name, CAST(TO_TIMESTAMP(s.releasedate / 1000000) AS TEXT) FROM song AS s JOIN artist AS a ON s.artist_id = a.artist_id WHERE resolution > (SELECT MAX(resolution) FROM song WHERE rating < 8)
SELECT s1.song_id FROM song AS s1 JOIN song AS s2 ON (s1.resolution > s2.resolution AND s2.rating < 8) WHERE s1.song_id <> s2.song_id
SELECT s.song_name, AVG(s.resolution) FROM song AS s WHERE s.genre_is = 'modern' GROUP BY s.song_name HAVING AVG(s.resolution) < s.resolution
SELECT s.song_id FROM song AS s WHERE s.genre_is = 'modern' AND s.resolution > (SELECT AVG(resolution) FROM song WHERE genre_is = 'modern')
SELECT s.song_id, s.genre_is, a.artist_name FROM song AS s JOIN artist AS a ON s.artist_fk = a.artist_id WHERE languages ILIKE '%English%' ORDER BY rating DESC
SELECT s.f_id, s.genre_is, a.artist_name FROM song AS s JOIN artist AS a ON s.artist_name = a.artist_name WHERE languages ILIKE '%English%' ORDER BY rating ASC
SELECT song.artist_name FROM song WHERE song.languages ILIKE '%English%' AND song.rating <= 8
SELECT DISTINCT song.artist_name FROM song WHERE song.languages ILIKE '%English%' AND song.rating <= 8
SELECT artist_name FROM artist WHERE country = 'Bangladesh' AND preferred_genre > 7
SELECT artist.artist_name FROM artist WHERE artist.country = 'Bangladesh' AND NOT EXISTS(SELECT 1 FROM album WHERE album.artist_id = artist.artist_id GROUP BY album.artist_id HAVING AVG(album.rating) > 7)
SELECT DATE_PART('year', TO_DATE(CAST(yearid AS TEXT), '9999')), COUNT(*) FROM hall_of_fame GROUP BY YEAR
SELECT yearid, COUNT(player_id) FROM hall_of_fame GROUP BY yearid
SELECT AVG(attendance) FROM homer_game WHERE year = 2019
SELECT AVG(homer_game.attendance) FROM homer_game WHERE homer_game.year = 2017
SELECT COUNT(*) FROM park WHERE state = 'NY'
SELECT COUNT(park_id) FROM park WHERE state = 'NY'
SELECT birth_country FROM player GROUP BY birth_country ORDER BY COUNT(player_id) ASC NULLS LAST LIMIT 3
SELECT COUNT(player_id), birth_country FROM player GROUP BY birth_country ORDER BY player_count ASC NULLS LAST LIMIT 3
SELECT p.name_first, p.name_last FROM player AS p WHERE p.job_year IS NULL AND p.job_month IS NULL AND p.job_day IS NULL
SELECT p.name_first, p.name_last FROM player AS p WHERE p.job_year IS NULL
SELECT COUNT(*) FROM player WHERE birth_country = 'USA' AND bats = 'R'
SELECT COUNT(*) FROM player WHERE birth_country = 'USA' AND bats = 'R'
SELECT p.name_first, p.name_last FROM player AS p WHERE p.weight > 220 OR p.height < 75
SELECT p.name_first, p.name_last FROM player AS p WHERE p.weight > 220 OR p.height < 75
-1
-1
SELECT COUNT(*) FROM postseason WHERE year = 1885 AND ties = 1
SELECT COUNT(*) FROM postseason WHERE year = 1885 AND ties = 1
SELECT player_id, salary FROM salary WHERE year = 2001 ORDER BY salary DESC LIMIT 3
SELECT player_id, SUM(salary) FROM salary WHERE year = 2001 GROUP BY player_id ORDER BY total_salary DESC LIMIT 3
SELECT salary.year, AVG(salary.salary) FROM salary WHERE salary.year IN (2010, 2001) GROUP BY salary.year
SELECT year, salary FROM salary WHERE year IN (2010, 2001) ORDER BY year NULLS LAST
SELECT MIN(yearid) FROM hall_of_fame
SELECT MIN(yearid) FROM hall_of_fame
SELECT COUNT(*) FROM park WHERE city ILIKE '%Atlanta%'
SELECT COUNT(*) FROM park WHERE city ILIKE '%Atlanta%'
SELECT state FROM park GROUP BY state HAVING COUNT(park_id) > 2
SELECT DISTINCT state FROM park GROUP BY state HAVING COUNT(park_id) > 2
SELECT COUNT(*) FROM team_franchise WHERE active = 'Y'
SELECT COUNT(franchise_id) FROM team_franchise WHERE active = 'Y'
SELECT DISTINCT park.city FROM park GROUP BY park.city HAVING COUNT(park.park_id) BETWEEN 2 AND 4
SELECT DISTINCT park.city FROM park GROUP BY park.city HAVING COUNT(park.park_id) BETWEEN 2 AND 4
SELECT COUNT(*) FROM camera_lens WHERE focal_length_mm > 15
SELECT c.id, c.brand, c.name, MAX(c.max_aperture) FROM camera_lenses AS c GROUP BY c.brand, c.name ORDER BY max_aperture DESC
SELECT p.id, p.color, p.name FROM photos AS p
SELECT MAX(Height), AVG(Height) FROM mountain
SELECT AVG(Prominence) FROM mountain WHERE country = 'Morocco'
SELECT mountain.name, mountain.height, mountain.prominence FROM mountain WHERE NOT "Aberdare" ILIKE '%mountain%' ORDER BY mountain.prominence DESC
SELECT COUNT(DISTINCT camera_lens.brand) FROM camera_lenses
SELECT COUNT(*) FROM camera_lens WHERE NOT id IN (SELECT DISTINCT lens_id FROM photos)
SELECT mountain.name, mountain.prominence FROM mountain WHERE mountain.lens <> 'Sigma' ORDER BY mountain.prominence DESC
SELECT camera_lens.name FROM camera_lens WHERE camera_lens.name ILIKE '%Digital%'
SELECT p.name FROM platform AS p WHERE p.owner <> 'CCTV'
SELECT p.name FROM platform AS p WHERE p.owner <> 'CCTV'
SELECT p.name, p.rating_in_percent FROM platformp ORDER BY p.rating_in_percent DESC
SELECT p.name FROM platform AS p ORDER BY p.rating_in_percent DESC
SELECT p.owner FROM platform AS p WHERE p.rating_in_percent = (SELECT MAX(p2.rating_in_percent) FROM platform AS p2)
SELECT p.owner FROM platform AS p WHERE p.rating_in_percent = (SELECT MAX(p2.rating_in_percent) FROM platform AS p2)
SELECT COUNT(Program_ID) FROM program
SELECT COUNT(*) FROM program
SELECT p.name FROM program AS p ORDER BY p.launch
SELECT p.name, CAST(p.launch AS TEXT) FROM program AS p ORDER BY p.launch NULLS LAST
SELECT p.name, p.origin, o.owner FROM program AS p JOIN owner AS o ON p.owner = o.owner_id
SELECT p.name, o.origin, e.owner FROM program AS p JOIN owner AS o ON p.owner = o.owner_id JOIN employee AS e ON o.employee_id = e.employee_id
SELECT p.name FROM program AS p ORDER BY p.launch DESC LIMIT 1
SELECT p.name FROM program AS p ORDER BY p.launch DESC LIMIT 1
SELECT SUM(CAST(Share_in_percent AS FLOAT)) / NULLIF(SUM(CAST(Rating_in_percent AS FLOAT)), 0) FROM channel WHERE Owner = 'CCTV'
SELECT SUM(share_in_percent) / NULLIF((SELECT SUM(share_in_percent) FROM channel WHERE owner = 'CCTV'), 0) FROM channel WHERE owner = 'CCTV'
SELECT time_of_day, COUNT(program_id) FROM broadcast GROUP BY time_of_day
SELECT TIME_OF_DAY, COUNT(*) FROM BROADCAST GROUP BY TIME_OF_DAY
SELECT COUNT(DISTINCT program_id) FROM broadcast WHERE time_of_day = 'night'
SELECT COUNT(DISTINCT Program_ID) FROM broadcast WHERE Time_of_day = 'Night'
SELECT p.name FROM program AS p WHERE NOT p.launch IN (SELECT l.launch FROM launch AS l JOIN time AS t ON l.time_id = t.time_id WHERE t.am OR t.pm)
SELECT p.name FROM program AS p WHERE NOT p.launch IN (SELECT l.launch FROM launch_time AS l WHERE l.day = 'Monday')
SELECT DISTINCT program.origin FROM program ORDER BY program.origin ASC
SELECT DISTINCT program.origin FROM program ORDER BY program.origin ASC
SELECT COUNT(DISTINCT Owner) FROM platform
SELECT COUNT(DISTINCT owner) FROM platform
SELECT program.name FROM program WHERE program.origin <> 'Beijing'
SELECT p.name FROM program AS p WHERE p.origin <> 'Beijing'
SELECT p.name FROM platform AS p JOIN channel_owner AS co ON p.channel_id = co.channel_id WHERE co.owner IN ('CCTV', 'HBS')
SELECT p.name FROM platform AS p WHERE p.owner IN ('CCTV', 'HBS')
SELECT o.owner, SUM(r.rating_in_percent) / NULLIF(COUNT(r.rating_in_percent), 0) FROM rating AS r JOIN owner AS o ON r.owner = o.owner GROUP BY o.owner
SELECT p.owner, SUM(p.rating_in_percent) FROM platform AS p GROUP BY p.owner
SELECT COUNT(course_id) FROM Courses
SELECT COUNT(*) FROM Courses
SELECT Courses.course_id, Courses.course_description FROM Courses WHERE Courses.course_name ILIKE '%Database%' ORDER BY Courses.course_description NULLS LAST
SELECT Courses.course_description FROM Courses WHERE Courses.course_name ILIKE '%Database%'
SELECT Course_Authors_and_Tutors.address_line_1 FROM Course_Authors_and_Tutors WHERE Course_Authors_and_Tutors.personal_name ILIKE '%Cathrine%'
SELECT Course_Authors_and_Tutors.address_line_1 FROM Course_Authors_and_Tutors WHERE Course_Authors_and_Tutors.personal_name ILIKE '%Cathrine%'
SELECT Course_Authors_and_Tutors.address_line_1 FROM Course_Authors_and_Tutors
SELECT Course_Authors_and_Tutors.address_line_1 FROM Course_Authors_and_Tutors
SELECT Course_Authors_and_Tutors.login_name, Course_Authors_and_Tutors.family_name FROM Course_Authors_and_Tutors
SELECT Course_Authors_and_Tutors.login_name, Course_Authors_and_Tutors.family_name FROM Course_Authors_and_Tutors
SELECT Student_Course_Enrolment.date_of_enrolment, Student_Course_Enrolment.date_of_completion FROM Student_Course_Enrolment
SELECT Student_Course_Enrolment.date_of_enrolment, Student_Course_Enrolment.date_of_completion FROM Student_Course_Enrolment
SELECT COUNT(DISTINCT student_id) FROM Student_Course_Enrolment
SELECT COUNT(DISTINCT student_id) FROM Student_Course_Enrolment
SELECT COUNT(DISTINCT course_id) FROM Student_Course_Enrolment
SELECT COUNT(DISTINCT course_id) FROM Student_Course_Enrolment
SELECT date_test_taken FROM Student_Tests_Taken WHERE test_result = 'Pass'
SELECT Student_Tests_Taken.date_test_taken FROM Student_Tests_Taken WHERE Student_Tests_Taken.test_result ILIKE '%Pass%' ORDER BY Student_Tests_Taken.date_test_taken NULLS LAST
SELECT COUNT(*) FROM Student_Tests_Taken WHERE test_result = 'Fail'
SELECT COUNT(*) FROM Student_Tests_Taken WHERE test_result = 'Fail'
SELECT Students.login_name FROM Students WHERE Students.family_name ILIKE '%Ward%'
SELECT Students.login_name FROM Students WHERE Students.family_name ILIKE '%Ward%'
SELECT Students.date_of_latest_logon FROM Students WHERE (Students.family_name ILIKE '%Jaskolski%' OR students.family_name ILIKE '%Langosh%') ORDER BY Students.date_of_last_login DESC
SELECT MAX(date_of_latest_logon) FROM Students WHERE family_name IN ('Jaskolski', 'Langosh')
SELECT COUNT(*) FROM Students WHERE personal_name ILIKE '%son%'
SELECT COUNT(*) FROM Students WHERE personal_name ILIKE '%son%'
SELECT Subjects.subject_name FROM Subjects
SELECT Subjects.subject_name FROM Subjects
SELECT Course_Authors_and_Tutors.personal_name, Course_Authors_and_Tutors.middle_name, Course_Authors_and_Tutors.family_name FROM Course_Authors_and_Tutors ORDER BY Course_Authors_and_Tutors.personal_name ASC NULLS LAST
SELECT Course_Authors_and_Tutors.personal_name, Course_Authors_and_Tutors.middle_name, Course_Authors_and_Tutors.family_name FROM Course_Authors_and_Tutors ORDER BY Course_Authors_and_Tutors.personal_name ASC
SELECT Students.personal_name, Students.family_name FROM Students ORDER BY Students.family_name ASC
SELECT Students.family_name, Students.personal_name FROM Students ORDER BY Students.family_name ASC
SELECT Student_Tests_Taken.test_result, COUNT(Student_Tests_Taken.registration_id) FROM Student_Tests_Taken GROUP BY Student_Tests_Taken.test_result ORDER BY total_tests DESC
SELECT Student_Tests_Taken.test_result, COUNT(Student_Tests_Taken.registration_id) FROM Student_Tests_Taken GROUP BY Student_Tests_Taken.test_result
SELECT Students.personal_name FROM Students WHERE NOT Students.student_id IN (SELECT CourseEnrollments.student_id FROM CourseEnrollments)
SELECT Students.personal_name FROM Students WHERE NOT Students.student_id IN (SELECT CourseEnrollments.student_id FROM CourseEnrollments)
SELECT COUNT(*) FROM Students WHERE NOT student_id IN (SELECT student_id FROM Enrollments)
SELECT COUNT(*) FROM Students
SELECT Course_Authors_and_Tutors.login_name FROM Course_Authors_and_Tutors WHERE Course_Authors_and_Tutors.author_id IN (SELECT Student_Course_Enrollments.student_id FROM Student_Course_Enrollments) OR Course_Authors_and_Tutors.author_id IN (SELECT Course_Authors_and_Tutors.author_id FROM Course_Authors_and_Tutors)
SELECT Course_Authors_and_Tutors.login_name FROM Course_Authors_and_Tutors WHERE Course_Authors_and_Tutors.login_name IN (SELECT Students.login_name FROM Students) AND Course_Authors_and_Tutors.login_name IN (SELECT Course_Authors_and_Tutors.login_name FROM Course_Authors_and_Tutors)
SELECT Course_Authors_and_Tutors.personal_name FROM Course_Authors_and_Tutors WHERE Course_Authors_and_Tutors.author_id IN (SELECT Student_Courses.student_id FROM Student_Courses) GROUP BY Course_Authors_and_Tutors.personal_name HAVING COUNT(DISTINCT Course_Authors_and_Tutors.author_id) > 1
SELECT Course_Authors_and_Tutors.personal_name FROM Course_Authors_and_Tutors WHERE Course_Authors_and_Tutors.personal_name IN (SELECT Students.personal_name FROM Students) AND Course_Authors_and_Tutors.personal_name IN (SELECT Course_Authors_and_Tutors.personal_name FROM Course_Authors_and_Tutors)
SELECT Payment_Method_Code, Date_payment_made, Amount_payment FROM Payments ORDER BY Date_payment_made ASC
SELECT Payment_Method_Code, Date_payment_made, Amount_payment FROM Payments ORDER BY Date_payment_made ASC
SELECT c.claim_id, MAX(c.amount_claimed), MAX(c.amount_settled) FROM claims AS c GROUP BY c.claim_id
SELECT c.claim_id, c.amount_claimed, s.amount_settled FROM claims AS c JOIN settlements AS s ON c.claim_id = s.claim_id ORDER BY c.amount_claimed DESC LIMIT 1
SELECT c.claim_id, MIN(c.amount_settled), MAX(c.amount_claimed) FROM claims AS c GROUP BY c.claim_id
SELECT c.claim_id, c.amount_claimed, MIN(s.amount_settled) FROM claims AS c JOIN settlements AS s ON c.claim_id = s.claim_id GROUP BY c.claim_id, c.amount_claimed
SELECT c.claim_id, c.date_claim_made, c.date_claim_settled, CAST(AVG(c.amount_claimed) AS TEXT) FROM claims AS c GROUP BY c.claim_id, c.date_claim_made, c.date_claim_settled HAVING TO_NUMBER(CAST(c.amount_claimed AS TEXT), 'FM999990D00') > TO_NUMBER(CAST(AVG(c.amount_claimed) AS TEXT), 'FM999990D00')
SELECT c.claim_id, c.policy_id, c.date_claim_made, c.date_claim_settled FROM claims AS c WHERE c.amount_claimed > (SELECT AVG(amount_claimed) FROM claims)
SELECT c.date_claim_made FROM Claims AS c WHERE c.amount_claimed <= AVG(c.amount_claimed)
SELECT c.date_claim_made FROM claims AS c WHERE c.amount_claimed <= (SELECT AVG(amount_claimed) FROM claims)
SELECT MIN(Claims.Date_Claim_Made) FROM Claims
SELECT MIN(Date_Claim_Made) FROM Claims
SELECT SUM(Settlements.Amount_Settled) FROM Settlements
SELECT SUM(Amount_Settled) FROM Settlements
SELECT Settlements.date_claim_made, Settlements.date_claim_settled FROM Settlements
SELECT s.settlement_id, CAST(s.date_claim_made AS TEXT), CAST(s.date_claim_settled AS TEXT) FROM settlements AS s
SELECT p.payment_method_code, COUNT(*) FROM payments AS p GROUP BY p.payment_method_code ORDER BY COUNT DESC LIMIT 1
SELECT p.payment_method_code, CAST(COUNT(*) AS FLOAT) / (SELECT COUNT(*) FROM payments) FROM payments AS p GROUP BY p.payment_method_code ORDER BY proportion DESC LIMIT 1
SELECT Payments.payment_method_code, COUNT(Payments.payment_id) FROM Payments GROUP BY Payments.payment_method_code ORDER BY COUNT ASC NULLS LAST LIMIT 1
SELECT Payments.Paymentment_method_code, COUNT(Payments.payment_id) FROM Payments GROUP BY Payments.payment_method_code ORDER BY COUNT ASC NULLS LAST LIMIT 1
SELECT SUM(Payments.Amount_payment) FROM Payments
SELECT SUM(Payments.Amount_payment) FROM Payments
SELECT Customers.customer_details FROM Customers
SELECT Customers.customer_details FROM Customers
SELECT p.policy_type_code, COUNT(*) FROM customer_policies AS c JOIN policies AS p ON c.policy_id = p.policy_id GROUP BY p.policy_type_code ORDER BY number_of_customers DESC LIMIT 1
SELECT policy_type_code, COUNT(*) FROM customer_policies GROUP BY policy_type_code ORDER BY number_of_customers DESC LIMIT 1
SELECT COUNT(*) FROM Settlements
SELECT COUNT(*) FROM Settlements
SELECT p.payment_id, p.date_payment_made, p.amount_payment FROM payments AS p WHERE payment_method_code = 'Visa'
SELECT p.payment_id, CAST(p.date_payment_made AS TEXT), CAST(p.amount_payment AS FLOAT) FROM payments AS p WHERE payment_method_code = 'Visa'
SELECT Customers.customer_details FROM Customers WHERE NOT Customers.customer_id IN (SELECT policyholders.customer_id FROM policyholders)
SELECT c.customer_details FROM customers AS c LEFT JOIN orders AS o ON c.customer_id = o.customer_id WHERE o.order_id IS NULL
SELECT SUM(Amount_Claimed) FROM Claims
SELECT SUM(Claims.Amount_Claimed) FROM Claims
SELECT Department.Name, COUNT(Employee.EmployeeID) AS Employee_Count FROM Department JOIN Employee ON Department.DepartmentID = Employee.Head DEPARTMENT GROUP BY Department.Name ORDER BY Employee_Count DESC NULLS LAST LIMIT 1
SELECT Department.Name FROM Department WHERE Department.Head IN (SELECT Employee.Department FROM Employee GROUP BY Employee.department ORDER BY COUNT(Employee.department) DESC LIMIT 1)
SELECT Department.Head FROM Department WHERE Department.Name IN (SELECT MIN(Employee.Department) FROM Employee GROUP BY Employee.department)
SELECT Department.Head FROM Department ORDER BY COUNT(Employee.EmployeeID) ASC LIMIT 1
SELECT Appointment.AppointmentID FROM Appointment ORDER BY Start DESC LIMIT 1
SELECT MAX(Appointment.appointmentID) FROM Appointment
SELECT p.name FROM physician AS p LEFT JOIN appointment AS a ON p.employeeid = a.physician_id WHERE a.physician_id IS NULL
SELECT p.name FROM physician AS p LEFT JOIN appointment AS a ON p.employeeid = a.physicianid WHERE a.physicianid IS NULL
SELECT COUNT(*) FROM Stay WHERE Room = 112
SELECT COUNT(DISTINCT Patient) FROM Stay WHERE Room = 112
SELECT p.name FROM Patient AS p JOIN Stay AS s ON p.patientid = s.patientid WHERE s.room = 111 ORDER BY s.stayend DESC LIMIT 1
SELECT s.patient FROM Stay AS s WHERE s.room = 111 ORDER BY s.stayend DESC LIMIT 1
SELECT DISTINCT Room.BlockCode FROM Room WHERE Room.Unavailable = FALSE
SELECT DISTINCT Room.BlockCode FROM Room WHERE Room.Unavailable = FALSE
SELECT COUNT(DISTINCT Room.RoomType) FROM Room
SELECT COUNT(DISTINCT Room.RoomType) FROM Room WHERE Room.Unavailable = FALSE
SELECT Physician.name FROM Physician WHERE physician.position ILIKE '%senior%'
SELECT Physician.name FROM Physician WHERE "Position" ILIKE '%senior%'
SELECT p.name, phy.name, pr.procedure_name, CAST(u.dateundergoes AS TEXT) FROM procedures AS pr JOIN undergoes AS u ON pr.procedure_id = u.procedure_id JOIN physicians AS phy ON u.physician_id = phy.physician_id JOIN patients AS p ON p.patient_id = u.patient_id
SELECT p.name, phy.name, pr.procedure_date, ROW_NUMBER() OVER (PARTITION BY p.patient_id ORDER BY pr.procedure_date DESC) FROM patients AS p JOIN procedures AS pr ON p.patient_id = pr.patient_id JOIN physicians AS phy ON pr.physician_id = phy.physician_id
SELECT Nurse.Name FROM Nurse ORDER BY Nurse.Name ASC
SELECT Nurse.name FROM Nurse ORDER BY Nurse.name ASC
SELECT DISTINCT medication.name FROM medication ORDER BY medication.name ASC
SELECT medication.name FROM medication ORDER BY medication.name ASC
SELECT physician_id, department_id FROM affiliated_with WHERE primary_affiliation = TRUE
SELECT a.physician, a.department FROM Affiliated_With AS a WHERE a.primary_affiliation = TRUE
SELECT n.name FROM nurses AS n JOIN on_call AS oc ON n.nurse = oc.nurse WHERE oc.blockfloor = 1 AND oc.blockcode = 1
SELECT nurse FROM On_Call WHERE BlockFloor = 1 AND BlockCode = 1
SELECT MAX(Cost), MIN(Cost), AVG(Cost) FROM Procedures
SELECT MAX(Cost), MIN(Cost), AVG(Cost) FROM Procedures
SELECT Procedures.Name, Procedures.Cost FROM Procedures ORDER BY Procedures.Cost DESC
SELECT Procedures.name, Procedures.cost FROM Procedures ORDER BY Procedures.cost DESC
SELECT Procedures.Code, Procedures.Name, Procedures.Cost FROM Procedures ORDER BY Procedures.Cost DESC LIMIT 3
SELECT Procedures.Code, Procedures.Name, Procedures.Cost FROM Procedures ORDER BY Procedures.Cost DESC LIMIT 3
SELECT Procedures.Code, Procedures.Name, Procedures.Cost FROM Procedures WHERE (Procedures.Cost > 1000 OR 'John' ILIKE '%Wen%')
SELECT Procedures.Code, Procedures.Name, Procedures.Cost FROM Procedures WHERE (Procedures.Cost > 1000 OR Procedures.Name ILIKE '%John%Wen%')
SELECT Procedures.Name FROM Procedures WHERE Procedures.Cost > 1000 AND NOT Procedures.Code IN (SELECT Training.Procedure_Code FROM Training JOIN Physicians ON Training.Physician_id = Physicians.id WHERE Physicians.name ILIKE '%John%Wen%')
SELECT Procedures.Code, Procedures.Name, Procedures.Cost FROM Procedures WHERE Procedures.Cost > 1000 AND NOT Procedures.Code IN (SELECT SpecializedIn.Code FROM Physicians AS Specialist WHERE Specialist.Last_name = 'Wen' AND Specialist.First_name = 'John') ORDER BY Procedures.Cost DESC
SELECT Procedures.Name FROM Procedures WHERE Procedures.Cost < 5000 AND CAST(Procedures.Code AS TEXT) ILIKE '%John%Wen%'
SELECT Procedures.Code, Procedures.Name, Procedures.Cost FROM Procedures WHERE Procedures.Cost < 5000 AND Procedures.Name ILIKE '%John%Wen%'
SELECT p.name FROM patient AS p WHERE p.insurance_id <> (SELECT insurance_id FROM provider WHERE name ILIKE '%Procrastin-X%')
SELECT p.name FROM patient AS p WHERE p.insurance_id <> 123456789
SELECT COUNT(*) FROM Patient WHERE insurance_id <> 757071735
SELECT COUNT(*) FROM patient WHERE insurance_plan <> 'Procrastin-X'
SELECT COUNT(*) FROM Appointment
SELECT COUNT(*) FROM Appointment
SELECT COUNT(*) FROM ship
SELECT COUNT(*) FROM ship
SELECT ship.name FROM ship ORDER BY ship.tonnage ASC
SELECT ship.name FROM ship ORDER BY ship.tonnage ASC
SELECT ship.type, ship.nationality FROM ship
SELECT s.ship_id, s.type, s.nationality FROM ship AS s
SELECT ship.name FROM ship WHERE ship.nationality <> 'United States'
SELECT ship.name FROM ship WHERE ship.nationality <> 'United States'
SELECT ship.name FROM ship WHERE ship.nationality IN ('United States', 'United Kingdom')
SELECT ship.name FROM ship WHERE ship.nationality IN ('US', 'UK')
SELECT s.name FROM ship AS s WHERE s.tonnage = (SELECT MAX(s2.tonnage) FROM ship AS s2)
SELECT MAX(ship.tonnage), ship.name FROM ship GROUP BY ship.name ORDER BY max_tonnage DESC LIMIT 1
SELECT ship.type, COUNT(*) FROM ship GROUP BY ship.type
SELECT ship.type, COUNT(*) FROM ship GROUP BY ship.type
SELECT ship.type FROM ship GROUP BY ship.type ORDER BY COUNT(ship.type) DESC LIMIT 1
SELECT ship.type FROM ship GROUP BY ship.type ORDER BY COUNT(ship.type) DESC LIMIT 1
SELECT nationality FROM ship GROUP BY nationality HAVING COUNT(ship_id) > 2
SELECT nationality FROM ship GROUP BY nationality HAVING COUNT(ship_id) > 2
SELECT ship.type, AVG(CAST(ship.tonnage AS FLOAT)) FROM ship GROUP BY ship.type
SELECT ship.type, AVG(CAST(ship.tonnage AS FLOAT)) FROM ship GROUP BY ship.type
SELECT s.name FROM ship AS s LEFT JOIN mission_ship AS ms ON s.ship_id = ms.ship_id WHERE ms.ship_id IS NULL
SELECT s.name FROM ship AS s LEFT JOIN mission_ship AS ms ON s.ship_id = ms.ship_id WHERE ms.ship_id IS NULL
SELECT DISTINCT s.type FROM ship AS s WHERE s.tonnage > 6000 AND EXISTS(SELECT 1 FROM ship AS s2 WHERE s2.ship_id <> s.ship_id AND s2.tonnage < 4000)
SELECT DISTINCT ship.type FROM ship WHERE (ship.tonnage > 6000 OR ship.tonnage < 4000) GROUP BY ship.type HAVING COUNT(*) = 2
SELECT COUNT(*) FROM list
SELECT COUNT(*) FROM list
SELECT list.last_name FROM list WHERE list.classroom = 111
SELECT list.last_name FROM list WHERE list.classroom = 111
SELECT list.First_name FROM list WHERE list.classroom = 108
SELECT list.First_name FROM list WHERE list.classroom = 108
SELECT list.First_name FROM list WHERE list.classroom = 107
SELECT list.First_name FROM list WHERE list.classroom = 107
SELECT list.classroom_number, list.grade FROM list
SELECT list.grade, list.classroom_number FROM list
SELECT list.grade FROM list WHERE list.classroom = 103
SELECT list.grade FROM list WHERE list.classroom = 103
SELECT list.grade FROM list WHERE list.classroom = 105
SELECT list.grade FROM list WHERE list.classroom = 105
SELECT list.classroom FROM list WHERE list.grade = 4
SELECT classroom FROM list WHERE grade = 4
SELECT list.classroom FROM list WHERE list.grade = 5
SELECT list.last_name, list.first_name FROM list WHERE list.grade = 5
SELECT teachers.first_name FROM teachers WHERE teachers.classroom = 110
SELECT teachers.first_name FROM teachers WHERE teachers.classroom = 110
SELECT teachers.last_name FROM teachers WHERE teachers.classroom = 109
SELECT teachers.last_name FROM teachers WHERE teachers.classroom = 109
SELECT teachers.first_name, teachers.last_name FROM teachers
SELECT teachers.first_name, teachers.last_name FROM teachers
SELECT list.first_name, list.last_name FROM list
SELECT list.first_name, list.last_name FROM list
SELECT list.grade, COUNT(DISTINCT list.classroom), COUNT(list.firstname) FROM list GROUP BY list.grade
SELECT list.grade, COUNT(DISTINCT list.classroom), COUNT(list.firstname) FROM list GROUP BY list.grade
SELECT list.classroom_number, COUNT(list.grade) FROM list GROUP BY list.classroom_number
SELECT list.classroom_number, COUNT(DISTINCT list.grade) FROM list GROUP BY list.classroom_number
SELECT list.classroom, COUNT(list.firstname) FROM list GROUP BY list.classroom ORDER BY number_of_students DESC LIMIT 1
SELECT list.classroom FROM list GROUP BY list.classroom ORDER BY COUNT(list.classroom) DESC LIMIT 1
SELECT list.classroom, COUNT(*) FROM list GROUP BY list.classroom ORDER BY student_count DESC
SELECT list.classroom_number, COUNT(list.firstname) FROM list GROUP BY list.classroom_number
SELECT list.grade, COUNT(list.firstname) FROM list WHERE list.classroom = 0 GROUP BY list.grade
SELECT list.classroom_number, COUNT(list.firstname) FROM list WHERE list.grade = 0 GROUP BY list.classroom_number
SELECT list.classroom, COUNT(*) FROM list WHERE grade = 4 GROUP BY list.classroom
SELECT list.classroom_number, COUNT(list.last_name) FROM list WHERE grade = 4 GROUP BY list.classroom_number
SELECT COUNT(*) FROM list WHERE classroom = 1
SELECT CAST(COUNT(list.id) AS FLOAT) / NULLIF(MAX(list.classroom), 0) FROM list
SELECT COUNT(*) FROM company WHERE headquarters ILIKE '%US%'
SELECT company.name FROM company ORDER BY company.sales_in_billion ASC
SELECT c.name, h.headquarters, i.industry FROM company AS c JOIN headquarters AS h ON c.headquarters = h.headquarters_id JOIN industry AS i ON c.industry = i.industry_id
SELECT c.name FROM company AS c WHERE c.industry IN ('banking', 'retailing')
SELECT MAX(market_value_in_billion), MIN(market_value_in_billion) FROM company
SELECT c.name, c.headquarters FROM company AS c WHERE c.sales_in_billion = (SELECT MAX(sales_in_billion) FROM company)
SELECT headquarters, COUNT(*) FROM company GROUP BY headquarters ORDER BY company_count DESC
SELECT company.headquarters, COUNT(*) FROM company GROUP BY company.headquarters ORDER BY frequency DESC LIMIT 1
SELECT DISTINCT company.headquarters FROM company GROUP BY company.headquarters HAVING COUNT(company.company_id) >= 2
SELECT DISTINCT company.headquarters FROM company WHERE company.industry ILIKE '%banking%' AND company.industry ILIKE '%oil and gas%'
SELECT p.name FROM people AS p LEFT JOIN employment AS e ON p.people_id = e.people_id WHERE e.people_id IS NULL
SELECT c.name FROM company AS c WHERE c.sales_in_billion > 200 ORDER BY c.sales_in_billion DESC, c.profits_in_billion DESC
SELECT COUNT(*) FROM film
SELECT COUNT(*) FROM film
SELECT DISTINCT film.director FROM film
SELECT DISTINCT director FROM film
SELECT AVG(gross_in_dollar) FROM film
SELECT AVG(gross_in_dollar) FROM film
SELECT market_id, MIN(low_estimate), MAX(high_estimate) FROM film_market_estimation GROUP BY market_id
SELECT market_id, MIN(low_estimate), MAX(high_estimate) FROM film_market_estimation GROUP BY market_id
SELECT DISTINCT film_market_estimation.type FROM film_market_estimation WHERE film_market_estimation.year = 1995
SELECT TYPE FROM film_market_estimation WHERE YEAR = 1995
SELECT MAX(market.number_cities), MIN(market.number_cities) FROM market AS market
SELECT MAX(market.number_cities), MIN(market.number_cities) FROM market AS market
SELECT COUNT(*) FROM market WHERE number_cities < 300
SELECT COUNT(*) FROM market WHERE number_cities < 300
SELECT market.country FROM market ORDER BY market.country ASC
SELECT m.market_id, m.country, ROW_NUMBER() OVER (PARTITION BY m.country ORDER BY c.city_name) FROM market AS m JOIN city AS c ON m.market_id = c.market_id
SELECT market.country FROM market ORDER BY market.number_cities DESC
SELECT m.market_id, m.country, COUNT(c.city_id) FROM market AS m JOIN city AS c ON m.country = c.country GROUP BY m.market_id, m.country ORDER BY number_of_cities DESC
SELECT film.studio, COUNT(film.film_id), SUM(CAST(gross_in_dollar AS FLOAT)) FROM film GROUP BY film.studio
SELECT film.studio, CAST(COUNT(film.title) AS FLOAT) / total_studios.total_films FROM film JOIN (SELECT studio, COUNT(film_id) FROM film GROUP BY studio) AS total_studios ON film.studio = total_studios.studio GROUP BY film.studio ORDER BY proportion DESC
SELECT studio FROM film GROUP BY studio ORDER BY COUNT(film_id) DESC LIMIT 1
SELECT film.studio, COUNT(film.title) FROM film GROUP BY film.studio ORDER BY number_of_films DESC LIMIT 1
SELECT DISTINCT studio FROM film GROUP BY studio HAVING COUNT(film_id) >= 2
SELECT DISTINCT studio FROM film GROUP BY studio HAVING COUNT(film_id) >= 2
SELECT film.title FROM film WHERE film.gross_in_dollar IS NULL
SELECT film.title FROM film WHERE film.gross_in_dollar IS NULL
SELECT DISTINCT studio FROM film WHERE director ILIKE '%Nicholas%Meyer%' AND director ILIKE '%Walter%Hill%'
SELECT DISTINCT film.director FROM film WHERE film.director ILIKE '%Nicholas%Meyer%' AND film.director ILIKE '%Walter%Hill%'
SELECT COUNT(*), SUM(gross_in_dollar) FROM film WHERE studio ILIKE '%universal%'
SELECT COUNT(*) FROM film WHERE studio ILIKE '%universal%'
SELECT studio FROM film WHERE director <> 'Walter Hill' GROUP BY studio HAVING COUNT(film_id) = 0
SELECT studio FROM film WHERE NOT "director" ILIKE '%Walter%Hill%'
SELECT film.title FROM film WHERE film.gross_in_dollar > 4500000
SELECT studio FROM film WHERE gross_in_dollar > 4500000
SELECT film.title, film.director FROM film WHERE NOT film.studio ILIKE '%china%' ORDER BY film.title NULLS LAST
SELECT film.title, film.director FROM film WHERE NOT film.studio ILIKE '%China%' ORDER BY film.title NULLS LAST
SELECT COUNT(*) FROM Ref_Calendar
SELECT COUNT(*) FROM Ref_Calendar
SELECT Ref_Calendar.Calender_Date, Ref_Calendar.Day_Number FROM Ref_Calendar
SELECT Ref_Calendar.Calendar_Date, Ref_Calendar.Day_Number FROM Ref_Calendar
SELECT COUNT(Document_Type_Code) FROM Ref_Document_Types
SELECT COUNT(*) FROM Ref_Document_Types
SELECT Ref_Document_Types.Document_Type_Code, Ref_Document_Types.Document_Type_Name FROM Ref_Document_Types
SELECT Ref_Document_Types.Document_Type_Code, Ref_Document_Types.Document_Type_Name FROM Ref_Document_Types
SELECT Ref_Document_Types.Document_Type_Name, Ref_Document_Types.Document_Type_Description FROM Ref_Document_Types WHERE Ref_Document_Types.Document_Type_Code = 'RV'
SELECT Ref_Document_Types.Document_Type_Name, Ref_Document_Types.Document_Type_Description FROM Ref_Document_Types WHERE Ref_Document_Types.Document_Type_Code = 'RV'
SELECT Ref_Document_Types.Document_Type_Code FROM Ref_Document_Types WHERE Ref_Document_Types.Document_Type_Name ILIKE '%Paper%'
SELECT Ref_Document_Types.Document_Type_Code FROM Ref_Document_Types WHERE Ref_Document_Types.Document_Type_Name ILIKE '%Paper%'
SELECT COUNT(*) FROM All_Documents WHERE Document_Type_Code IN ('CV', 'BK')
SELECT COUNT(*) FROM All_Documents WHERE Document_Type_Code IN ('CV', 'BK')
SELECT All_Documents.Date_Stored FROMAll_Documents WHEREAll_Documents.Document_Name ilike '%Marry%CV%' 
SELECT All_Documents.Date_Stored FROMAll_Documents WHEREAll_Documents.Document_Name ilike '%Marry%CV%' 
SELECT COUNT(*) FROM Ref_locations
SELECT COUNT(*) FROM Ref_Locations
SELECT Ref_locations.location_code, Ref_locations.location_name FROM Ref_locations
SELECT Ref_locations.location_code, Ref_locations.location_name FROM Ref_locations
SELECT Ref_locations.location_name, Ref_locations.location_description FROM ref_locations WHERE ref_locations.location_code = 'x'
SELECT Ref_locations.location_name, Ref_locations.location_description FROM Ref_locations WHERE Ref_locations.location_code = 'x'
SELECT Ref_locations.location_code FROM Ref_locations WHERE Ref_locations.location_name ILIKE '%Canada%'
SELECT Ref_locations.location_code FROM Ref_locations WHERE "Country" ILIKE '%canada%'
SELECT COUNT(Role.role_code) FROM roles
SELECT COUNT(Role.role_code) FROM roles
SELECT roles_code, role_name, role_description FROM roles
SELECT r.role_code, r.role_name, r.role_description FROM roles AS r
SELECT Roles.Role_name, Roles.role_description FROM Roles WHERE Roles.role_code = 'MG'
SELECT r.role_name, r.role_description FROM roles AS r WHERE r.role_code = 'MG'
SELECT Role_Description FROM Roles WHERE Role_Name ILIKE '%Proof%Reader%'
SELECT Roles.role_description FROM roles WHERE roles.role_name ILIKE '%proof%reader%'
SELECT COUNT(Employee_ID) FROM Employees
SELECT COUNT(Employee_ID) FROM Employees
SELECT Employees.Employee_Name, Employees.Role_Code, Employees.date_of_birth FROM Employees WHERE Employees.employee_name ILIKE '%Armoni%'
SELECT Employees.Employee_Name, Employees.Role_Code, Employees.Date_of_Birth FROM Employees WHERE Employees.Employee_Name ILIKE '%Armoni%'
SELECT Employees.Employee_ID FROM Employees WHERE Employees.Employee_Name ILIKE '%ebba%'
SELECT Employees.Employee_ID FROM Employees WHERE Employees.Employee_Name ILIKE '%Ebba%'
SELECT Employees.Employee_Name FROM Employees WHERE Employees.Role_Code ILIKE '%HR%'
SELECT Employees.Employee_Name FROM Employees WHERE Employees.Role_Code ILIKE '%HR%'
SELECT Employees.role_code, COUNT(Employees.employee_id) FROM Employees GROUP BY Employees.role_code
SELECT Role_Code, COUNT(Employee_ID) FROM Employees GROUP BY Role_Code
SELECT Employees.Role_code, COUNT(Employees.employee_id) FROM Employees GROUP BY Employees.role_code ORDER BY employee_count DESC LIMIT 1
SELECT Employees.role_code, COUNT(Employees.employee_id) FROM Employees GROUP BY Employees.role_code ORDER BY employee_count DESC LIMIT 1
SELECT Role_Code FROM Employees GROUP BY Role_Code HAVING COUNT(Employee_ID) >= 3
SELECT DISTINCT Employees.role_code FROM Employees GROUP BY Employees.role_code HAVING COUNT(Employees.employee_id) >= 3
SELECT Employees.role_code, COUNT(Employees.employee_id) FROM Employees GROUP BY Employees.role_code ORDER BY employee_count ASC NULLS LAST LIMIT 1
SELECT Employees.role_code FROM Employees GROUP BY Employees.role_code ORDER BY COUNT(Employees.employee_id) ASC NULLS LAST LIMIT 1
SELECT DISTINCT Document_locations.location_code FROM document_locations
SELECT DISTINCT Document_Locations.location_code FROM Document_locations
SELECT Document_locations.location_code, MIN(document_locations.date_in_location_from), MAX(document_locations.date_in_location_to) FROM document_locations GROUP BY document_locations.location_code
SELECT Document_locations.location_code, MIN(document_locations.date_in_location_from), MAX(document_locations.date_in_location_to) FROM document_locations GROUP BY document_locations.location_code
SELECT Document_locations.location_code, COUNT(Document_locations.document_id) FROM Document_locations GROUP BY Document_locations.location_code
SELECT Document_Locations.location_code, COUNT(Document_locations.document_id) FROM Document_locations GROUP BY Document_locations.location_code
SELECT Document_Locations.location_code, COUNT(Document_locations.document_id) FROM Document_locations GROUP BY Document_locations.location_code ORDER BY document_count DESC LIMIT 1
SELECT Document_Locations.location_code, COUNT(Document_locations.document_id) FROM Document_locations GROUP BY Document_locations.location_code ORDER BY document_count DESC LIMIT 1
SELECT Document_locations.location_code FROM document_locations GROUP BY document_locations.location_code HAVING COUNT(document_locations.document_id) >= 3
SELECT DISTINCT Document_Locations.location_code FROM Document_locations GROUP BY Document_locations.location_code HAVING COUNT(Document_locations.document_id) >= 3
SELECT e.employee_id, COUNT(dd.document_id) FROM employees AS e JOIN documents_to_be_destroyed AS dd ON e.employee_id = dd.destruction_authorised_by_employee_id GROUP BY e.employee_id
SELECT e.employee_id, COUNT(dd.document_id) FROM Employees AS e JOIN Documents_to_be_Destroyed AS dd ON e.employee_id = dd.destruction_authorised_by_employee_id GROUP BY e.employee_id
SELECT e.employee_id, COUNT(dd.document_id) FROM employees AS e JOIN documents_to_be_destroyed AS dd ON e.employee_id = dd.destruction_authorised_by_employee_id OR e.employee_id = dd.destroyed_by_employee_id GROUP BY e.employee_id
SELECT e.employee_id, COUNT(dd.document_id) FROM employees AS e JOIN documents_to_be_destroyed AS dd ON e.employee_id = dd.destruction_authorised_by_employee_id OR e.employee_id = dd.destroyed_by_employee_id GROUP BY e.employee_id
SELECT Employees.Employee_ID FROM Employees WHERE NOT Employees.Role_Code ILIKE '%destruction%'
SELECT Employees.Employee_ID FROM Employees WHERE NOT Employees.Employee_ID IN (SELECT Authorized_Destruction_Employees.Employee_ID FROM Authorized_Destruction_Employees)
SELECT Documents_to_be_Destroyed.Destruction_Authorised_by_Employee_ID FROM Documents_to_be_Destroyed
SELECT Documents_to_be_Destroyed.Destruction_Authorised_by_Employee_ID FROM Documents_to_be_Destroyed
SELECT Documents_to_be_Destroyed.Destruction_Authorised_by_Employee_ID FROM Documents_to_be_Destroyed
SELECT e.employee_id FROM Employees AS e JOIN Documents_to_be_Destroyed AS d ON e.employee_id = d.destruction_authorised_by_employee_id
SELECT Employees.Employee_ID FROM Employees WHERE NOT Employees.Employee_ID IN (SELECT Destroyed_By.Employee_ID FROM Documents_Destroyed_By)
SELECT Employees.Employee_ID FROM Employees WHERE NOT Employees.Employee_ID IN (SELECT Destroyed_By_Employee.Employee_ID FROM Destroyed_By_Employee)
SELECT Documents_to_be_Destroyed.Destruction_Authorised_by_Employee_ID, Documents_to_be_Destroyed.Destroyed_by_Employee_ID FROM Documents_to_be_Destroyed
SELECT Documents_to_be_Destroyed.Destruction_Authorised_by_Employee_ID, Documents_to_be_Destroyed.Destroyed_by_Employee_ID FROM Documents_to_be_Destroyed
SELECT COUNT(*) FROM Club
SELECT COUNT(ClubID) FROM Club
SELECT c.club_name FROM club AS c
SELECT c.club_name FROM club AS c
SELECT COUNT(*) FROM Student
SELECT COUNT(*) FROM Student
SELECT Student.Fname FROM Student
SELECT Student.Fname FROM Student
SELECT Club.ClubDescription FROM Club WHERE Club.ClubName = 'Tennis Club'
SELECT Club.ClubDesc FROM Club WHERE Club.ClubName ILIKE '%Tennis%Club%'
SELECT Club.ClubDesc FROM Club WHERE Club.ClubName ILIKE '%Pen%and%Paper%Gaming%'
SELECT Club.ClubDesc FROM Club WHERE Club.ClubName ILIKE '%Pen%and%Paper%Gaming%' ORDER BY Club.ClubName NULLS LAST
SELECT Club.ClubLocation FROM Club WHERE Club.ClubName ILIKE '%Tennis%Club%' ORDER BY Club.ClubLocation NULLS LAST
SELECT Club.ClubLocation FROM Club WHERE Club.ClubName ILIKE '%Tennis%Club%'
SELECT Club.ClubLocation FROM Club WHERE Club.ClubName ILIKE '%Pen%and%Paper%Gaming%'
SELECT Club.ClubLocation FROM Club WHERE Club.ClubName ILIKE '%Pen%and%Paper%Gaming%'
SELECT Club.ClubLocation FROM Club WHERE Club.ClubName ILIKE '%Hopkins%Student%Enterprises%'
SELECT Club.ClubLocation FROM Club WHERE Club.ClubName ILIKE '%Hopkins%Student%Enterprises%'
SELECT c.club_name FROM club AS c WHERE c.club_location ILIKE '%akw%'
SELECT c.clubname FROM club AS c WHERE c.clublocation ILIKE '%akw%'
SELECT COUNT(*) FROM Club WHERE ClubLocation ILIKE '%HHH%'
SELECT COUNT(*) FROM Club WHERE ClubLocation ILIKE '%HHH%'
SELECT MIN(project_staff.date_from), MAX(project_staff.date_to) FROM project_staff WHERE project_staff.project_id IN (SELECT project_id FROM project_staff GROUP BY project_id HAVING COUNT(staff_id) > ALL_PROJECTS)
SELECT MIN(project_staff.date_from), MAX(project_staff.date_to) FROM project_staff WHERE project_staff.role_code = 'leader' GROUP BY project_staff.project_id HAVING COUNT(project_staff.staff_id) > (SELECT COUNT(staff_id) FROM project_staff WHERE role_code <> 'leader')
SELECT p.project_id, p.organisation_id, p.project_details FROM Projects AS p LEFT JOIN Researchers AS r ON p.project_id = r.project_id WHERE r.project_id IS NULL
SELECT p.project_id, p.project_details FROM Projects AS p LEFT JOIN Staff AS s ON p.project_id = s.project_id AND s.role_id = 3 WHERE s.project_id IS NULL
SELECT p.staff_id, CAST(p.date_from AS TEXT), CAST(p.date_to AS TEXT) FROM Project_Staff AS p WHERE p.role_code = 'Researcher'
SELECT p.project_id, CAST(p.date_from AS TEXT), CAST(p.date_to AS TEXT), COUNT(s.staff_id) OVER (PARTITION BY p.project_id ORDER BY s.date_from ROWS BETWEEN UNBOUNDED preceding AND CURRENT ROW) FROM Project_Staff AS p JOIN Staff_Assignment AS s ON p.project_id = s.project_id
SELECT COUNT(DISTINCT project_staff.role_code) FROM project_staff
SELECT COUNT(DISTINCT Project_Staff.role_code) FROM Project_Staff
SELECT g.organisation_id, SUM(g.grant_amount) FROM Grants AS g GROUP BY g.organisation_id
SELECT g.grant_id, SUM(g.grant_amount) FROM Grants AS g GROUP BY g.grant_id
SELECT s.staff_id, r.researcher_description FROM staff AS s JOIN staff_roles AS r ON s.staff_role = r.role_code
SELECT sr.role_description FROM Staff_Roles AS sr WHERE sr.role_code = 'RESEARCHER'
SELECT MIN(date_from) FROM Project_Staff
SELECT MIN(date_from) FROM Project_Staff
SELECT Projects.project_id, Projects.organisation_id, Projects.project_details FROM Projects WHERE Projects.project_id IS NULL
SELECT Projects.project_id, Projects.organisation_id, Projects.project_details FROM Projects WHERE NOT Projects.project_id IN (SELECT Outcomes.project_id FROM Comes)
SELECT Document_Types.document_type_code FROM Document_Types WHERE Document_Types.document_description ILIKE 'Initial%'
SELECT Document_Types.document_type_code FROM Document_Types WHERE Document_Types.document_description ILIKE 'Initial%'
SELECT MAX(grant_id), COUNT(document_id) FROM Documents
SELECT g.grant_id, COUNT(d.document_id), MAX(row_number) FROM grants AS g JOIN documents AS d ON g.grant_id = d.grant_id GROUP BY g.grant_id
SELECT COUNT(*) FROM Project_Outcomes WHERE outcome_code ILIKE '%Patent%'
SELECT COUNT(*) FROM Project_Outcomes
SELECT COUNT(DISTINCT staff_id) FROM Project_Staff WHERE date_from < '1989-04-24 23:51:54' AND (role_code = 'Leader' OR NOT role_code IS NULL)
SELECT COUNT(DISTINCT staff_id) FROM Project_Staff WHERE date_from < '1989-04-24 23:51:54'
SELECT MAX(date_to) FROM Project_Staff
SELECT MAX(date_to) FROM Project_Staff
SELECT Projects.project_id, Projects.organisation_id, Projects.project_details FROM Projects WHERE Projects.organisation_id = 757071
SELECT p.project_details FROM Projects AS p JOIN Organisations AS o ON p.organisation_id = o.organisation_id WHERE o.org_name = 'John Doe' ORDER BY COUNT(p.project_id) DESC LIMIT 1
SELECT Research_Staff.staff_details FROM Research_Staff ORDER BY Research_Staff.staff_details ASC
SELECT Research_Staff.staff_details FROM Research_Staff ORDER BY Research_Staff.staff_details ASC
SELECT COUNT(*) FROM Tasks
SELECT COUNT(*) FROM Tasks
SELECT ps.staff_id, ps.project_id, ps.other_details FROM Project_Staff AS ps WHERE ps.role_code = 'Manager'
SELECT ps.staff_id, ps.project_id, ps.role_code FROM Project_Staff AS ps WHERE ps.date_from >= TO_TIMESTAMP('2003-04-19 15:06:20', 'YYYY-MM-DD HH24:MI:SS') AND ps.date_to <= TO_TIMESTAMP('2016-03-15 00:33:18', 'YYYY-MM-DD HH24:MI:SS')
SELECT ps.staff_id, ps.project_id, MAX(LENGTH(ps.role_code)) FROM Project_Staff AS ps GROUP BY ps.staff_id, ps.project_id HAVING COUNT(DISTINCT ps.project_id) > 1
SELECT ps.staff_id, ps.project_id, MAX(LENGTH(ps.role_code)) FROM project_staff AS ps GROUP BY ps.staff_id, ps.project_id HAVING COUNT(ps.project_id) > 1
SELECT COUNT(*) FROM Person WHERE gender = 'female'
SELECT COUNT(*) FROM Person WHERE gender = 'female'
SELECT AVG(age) FROM Person
SELECT AVG(age) FROM Person
SELECT COUNT(DISTINCT person.city) FROM person
SELECT COUNT(DISTINCT city) FROM Person
SELECT COUNT(DISTINCT Person.job) FROM Person
SELECT COUNT(DISTINCT Person.job) FROM Person
SELECT MAX(Person.age), MIN(person.name) FROM person.person
SELECT p.name FROM Person AS p WHERE p.age = (SELECT MIN(age) FROM Person)
SELECT MAX(p.age) FROM Person AS p WHERE p.profession = 'student'
SELECT Person.name FROM Person ORDER BY Person.age DESC LIMIT 1
SELECT MIN(Person.age) FROM Person WHERE Person.gender = 'male'
SELECT Person.name FROM Person WHERE Person.gender = 'male' ORDER BY Person.age ASC LIMIT 1
SELECT CAST(Person.age AS FLOAT) FROM Person WHERE person.name ILIKE '%Zach%' AND person.occupation ILIKE '%doctor%'
SELECT CAST(Person.age AS FLOAT) FROM person WHERE person.name ILIKE '%Zach%'
SELECT Person.name FROM Person WHERE "age" < '30'
SELECT Person.name FROM Person WHERE "age" < '30'
SELECT COUNT(*) FROM Person WHERE age > 30 AND role ILIKE '%engineer%'
SELECT COUNT(*) FROM Person WHERE age > 30 AND role = 'Engineer'
SELECT gender, AVG(age) FROM Person GROUP BY gender
SELECT gender, AVG(age) FROM Person GROUP BY gender
SELECT Person.profession, AVG(Person.age) FROM Person GROUP BY Person.profession
SELECT Person.profession, AVG(Person.age) FROM Person GROUP BY Person.profession
SELECT Person.profession, AVG(Person.age) FROM Person WHERE Person.gender = 'male' GROUP BY Person.profession
SELECT Person.occupation, AVG(Person.age) FROM Person WHERE person.gender = 'male' GROUP BY Person.occupation
SELECT Person.name, MIN(Person.age) FROM Person GROUP BY Person.occupation
SELECT p.name, p.age, pr.profession FROM Person AS p JOIN Profession AS pr ON p.profession = pr.name ORDER BY p.age ASC
SELECT Person.gender, COUNT(*) FROM Person WHERE age < 40 GROUP BY Person.gender
SELECT Person.gender, COUNT(*) FROM Person WHERE age < 40 GROUP BY Person.gender
SELECT p.name FROM Person AS p WHERE p.age > (SELECT AVG(e.age) FROM Engineer AS e)
SELECT p.name FROM Person AS p JOIN Engineer AS e ON p.id = e.person_id ORDER BY p.age NULLS LAST
SELECT COUNT(*) FROM Person WHERE age > (SELECT AVG(age) FROM Engineer)
SELECT p.name, ph.age, e.name, e.age FROM Person AS p JOIN Employee AS e ON p.id = e.id WHERE p.age > e.age
SELECT p.name, p.title FROM Person AS p ORDER BY p.name
SELECT p.name, p.salary FROM Person AS p ORDER BY p.name ASC
SELECT Person.name FROM Person ORDER BY Person.age DESC
SELECT Person.name FROM Person ORDER BY Person.age DESC
SELECT p.name, p.age FROM Person AS p WHERE gender = 'Male' ORDER BY p.age NULLS LAST
SELECT p.name, p.age FROM Person AS p WHERE gender = 'M'
SELECT p.name FROM Person AS p LEFT JOIN Student_Friends AS sf ON p.id = sf.student_id WHERE sf.friend_id IS NULL
SELECT p1.name FROM Person AS p1 LEFT JOIN Person AS p2 ON (p1.name = p2.name AND p2.age BETWEEN 18 AND 25) WHERE p2.name IS NULL
SELECT PersonFriend.name FROM PersonFriend GROUP BY PersonFriend.name HAVING COUNT(PersonFriend.friend) = 1
SELECT pf.name FROM PersonFriend AS pf WHERE NOT pf.friend IS NULL GROUP BY pf.name HAVING COUNT(pf.friend) = 1
SELECT PersonFriend.name FROM PersonFriend WHERE "friend" ILIKE '%Zach%' ORDER BY PersonFriend.year DESC LIMIT 1
SELECT PersonFriend.name FROM PersonFriend WHERE "friend" ILIKE '%Zach%' ORDER BY (SELECT COUNT(*) FROM PersonFriend WHERE "friend" = PersonFriend.name) DESC LIMIT 1
SELECT PersonFriend.name FROM PersonFriend WHERE "friend" ILIKE '%Alice%' ORDER BY year ASC NULLS LAST LIMIT 1
SELECT pf.name FROM PersonFriend AS pf WHERE pf.friend = 'Alice' ORDER BY pf.year ASC
SELECT p1.name FROM Person AS p1 LEFT JOIN Person AS p2 ON (p1.name <> p2.name) AND (p1.city = p2.city) WHERE p2.name IS NULL
SELECT p.name FROM Person AS p LEFT JOIN Friend AS f ON p.id = f.friend_id WHERE f.friend_id IS NULL
SELECT COUNT(*) FROM PersonFriend WHERE NOT 'Austin' IN (SELECT city FROM Address)
SELECT COUNT(*) FROM PersonFriend WHERE year IS NULL
SELECT COUNT(*) FROM member
SELECT member.name FROM member ORDER BY member.name ASC
SELECT member.name, member.country FROM member
SELECT member.name FROM member WHERE member.country IN ('United States', 'Canada')
SELECT member.country, COUNT(member.member_id) FROM member GROUP BY member.country ORDER BY member_count DESC
SELECT member.country, COUNT(member.member_id) FROM member GROUP BY member.country ORDER BY total_members DESC LIMIT 1
SELECT member.country FROM member GROUP BY member.country HAVING COUNT(member.member_id) > 2
SELECT college.leader_name, college.college_location FROM college
SELECT member.name FROM member WHERE NOT member.member_id IN (SELECT round_member.member_id FROM round_member)
SELECT Documents.document_name, Documents.access_count FROM Documents ORDER BY Documents.document_name ASC
SELECT Documents.document_name, Documents.access_count FROM Documents ORDER BY Documents.document_name ASC
SELECT document_name, access_count FROM Documents ORDER BY access_count DESC LIMIT 1) SELECT document_name, access_count FROM document_access_count
SELECT document_name, access_count FROM documents ORDER BY access_count DESC NULLS LAST LIMIT 1) SELECT document_name, access_count FROM ranked_documents
SELECT Documents.document_type_code FROM Documents GROUP BY Documents.document_type_code HAVING COUNT(Documents.document_name) > 4
SELECT Documents.document_code FROM Documents GROUP BY Documents.document_code HAVING COUNT(Documents.access_count) >= 5
SELECT SUM(documents.access_count) FROM documents WHERE documents.document_type_code = (SELECT MAX(documents.document_type_code) FROM documents)
SELECT SUM(documents.access_count) FROM documents GROUP BY documents.document_type_code ORDER BY total_access_count DESC LIMIT 1
SELECT AVG(access_count) FROM Documents
SELECT AVG(access_count) FROM Documents
SELECT Documents.document_type_code FROM Documents WHERE Documents.document_name ILIKE '%David%CV%'
SELECT Documents.document_type_code FROM Documents WHERE Documents.document_name ILIKE '%David%CV%'
SELECT Documents.document_name FROM Documents WHERE Documents.access_count IN (SELECT MAX(Documents.access_count) FROM Documents GROUP BY Documents.document_type_code) AND Documents.document_type_code IN (SELECT MAX(Documents.document_type_code) FROM Documents GROUP BY Documents.document_structure_code)
SELECT Documents.document_name FROM Documents WHERE Documents.document_type_code IN (SELECT type_code FROM (SELECT type_code, COUNT(*) FROM Documents GROUP BY type_code ORDER BY count DESC LIMIT 3) AS subquery) AND Documents.document_structure_code IN (SELECT structure_code FROM (SELECT structure_code, COUNT(*) FROM Documents GROUP BY structure_code ORDER BY count DESC LIMIT 3) AS subquery2)
SELECT documents.document_type_code FROM documents WHERE documents.access_count > 10000 GROUP BY documents.document_type_code
SELECT Documents.document_type_code FROM Documents WHERE Documents.access_count <= 10000 ORDER BY Documents.document_type_code NULLS LAST
SELECT Documents.document_name FROM Documents WHERE NOT Documents.document_name ILIKE '%Section%'
SELECT Documents.document_name FROM Documents WHERE NOT Documents.document_name IN (SELECT Sections.section_name FROM Sections)
SELECT u.user_login, u.password FROM users AS u WHERE ROW_NUMBER() OVER (PARTITION BY u.user_id ORDER BY LENGTH(u.role_code) DESC) = 1
SELECT Users.user_name, Users.password FROM Users WHERE Users.role_code = (SELECT MAX(Users.role_code) FROM Users)
SELECT Documents.document_name FROM Documents WHERE NOT Documents.document_name ILIKE '%image%'
SELECT Documents.document_name FROM Documents WHERE NOT Documents.document_name ILIKE '%image%'
SELECT documents.document_name FROM documents WHERE documents.document_name ILIKE '%CV%'
SELECT Documents.document_name FROM Documents WHERE Documents.document_name ILIKE '%CV%'
SELECT COUNT(*) FROM Users WHERE NOT user_login IS NULL
SELECT COUNT(*) FROM Users WHERE NOT user_login IS NULL
SELECT r.role_description FROM roles AS r WHERE r.role_id IN (SELECT u.role_id FROM users AS u JOIN sessions AS s ON u.user_id = s.user_id GROUP BY u.user_id HAVING COUNT(s.session_id) > 0)
SELECT roles_description FROM roles ORDER BY COUNT(*) DESC LIMIT 1
SELECT AVG(access_count) FROM Documents WHERE document_name = (SELECT MIN(document_name) FROM Documents)
SELECT AVG(documents.access_count) FROM documents GROUP BY documents.document_name ORDER BY average_access_count NULLS LAST
SELECT Images.fimage_name, Images.fimage_url FROM Images ORDER BY Images.fimage_name NULLS LAST
SELECT Images.gallery_name, Images.gallery_url FROM Images ORDER BY Images.gallery_name ASC
SELECT Users.role_code, COUNT(*) FROM Users GROUP BY Users.role_code
SELECT Users.role_code, COUNT(*) FROM Users GROUP BY Users.role_code
SELECT Documents.document_type_code FROM Documents GROUP BY Documents.document_type_code HAVING COUNT(Documents.document_code) > 2
SELECT Documents.document_type_code FROM Documents GROUP BY Documents.document_type_code HAVING COUNT(Documents.document_code) > 2
SELECT COUNT(*) FROM Companies
SELECT COUNT(*) FROM Companies
SELECT Companies.name FROM Companies ORDER BY Companies.Market_Value_billion DESC
SELECT Companies.name FROM Companies ORDER BY Companies.Market_Value_billion DESC
SELECT Companies.name FROM Companies WHERE "Headquarters" <> 'USA'
SELECT Companies.name FROM Companies WHERE "Headquarters" <> 'USA'
SELECT Companies.name, Companies.Assets_billion FROM Companies ORDER BY Companies.name ASC
SELECT c.name, CAST(c.assets_billion AS FLOAT) FROM companies AS c ORDER BY c.name ASC
SELECT AVG(Profits_billion) FROM Companies
SELECT AVG(Profits_billion) FROM Companies
SELECT MAX(Sales_billion), MIN(Sales_billion) FROM Companies WHERE Industry <> 'Banking'
SELECT MAX(Sales_billion), MIN(Sales_billion) FROM Companies WHERE Industry <> 'Banking'
SELECT COUNT(DISTINCT Companies.Industry) FROM Companies
SELECT COUNT(DISTINCT Companies.Industry) FROM Companies
SELECT b.name FROM buildings AS b ORDER BY b.height DESC
SELECT b.name FROM buildings AS b ORDER BY b.height DESC
SELECT MAX(buildings.stories) FROM buildings
SELECT MAX(buildings.stories) FROM buildings
SELECT b.name FROM buildings AS b WHERE b.status = 'on-hold' ORDER BY b.stories ASC
SELECT b.name FROM buildings AS b WHERE b.status = 'on-hold' ORDER BY b.stories ASC
SELECT Companies.Industry, COUNT(*) FROM Companies GROUP BY Companies.industry
SELECT Companies.Industry, COUNT(Companies.id) FROM Companies GROUP BY Companies.industry
SELECT Companies.Industry, COUNT(Companies.id) FROM Companies GROUP BY Companies.industry ORDER BY company_count DESC
SELECT c.industry, COUNT(*) FROM Companies AS c GROUP BY c.industry ORDER BY num_companies DESC
SELECT Companies.Industry FROM Companies GROUP BY Companies.industry ORDER BY COUNT(Companies.id) DESC LIMIT 1
SELECT Companies.Industry, COUNT(*) FROM Companies GROUP BY Companies.industry ORDER BY company_count DESC LIMIT 1
SELECT b.name FROM buildings AS b LEFT JOIN offices AS o ON b.id = o.building_id WHERE o.building_id IS NULL
SELECT b.name FROM buildings AS b LEFT JOIN offices AS o ON b.id = o.building_id WHERE o.building_id IS NULL
SELECT Companies.Industry FROM Companies WHERE Companies.Headquarters IN ('USA', 'China') GROUP BY Companies.industry
SELECT DISTINCT Companies.Industry FROM Companies WHERE (Comanies.headquarters ILIKE '%usa%' AND companies.headquarters ILIKE '%china%') GROUP BY companies.industry
SELECT COUNT(*) FROM Companies WHERE Industry IN ('Banking', 'Conglomerate')
SELECT COUNT(*) FROM Companies WHERE Industry IN ('Banking', 'Conglomerate')
SELECT Companies.Headquarters FROM Companies GROUP BY Companies.Headquarters HAVING COUNT(Companies.id) > 2
SELECT Companies.Headquarters FROM Companies GROUP BY Companies.Headquarters HAVING COUNT(Companies.id) > 2
SELECT COUNT(Product_ID) FROM Products
SELECT Products.Product_Name FROM Products ORDER BY Products.Product_Price ASC
SELECT Products.Product_Name, Products.Product_Type_Code FROM Products
SELECT Products.Product_Name, Products.Product_Price FROM Products WHERE Products.Product_Name ILIKE '%Dining%' OR Products.Product_Name ILIKE '%Trading Policy%'
SELECT AVG(Products.Product_Cost) FROM Products
SELECT Products.Product_Name FROM Products ORDER BY Products.Product_Price DESC LIMIT 1
SELECT Products.Product_Type_Code, COUNT(*) FROM Products GROUP BY Products.Product_Type_Code
SELECT Products.Product_Type_Code, COUNT(*) FROM Products GROUP BY Products.Product_Type_Code ORDER BY frequency DESC LIMIT 1
SELECT DISTINCT Products.Product_Type_Code FROM Products GROUP BY Products.Product_Type_Code HAVING COUNT(Products.Product_ID) >= 2
SELECT DISTINCT Products.Product_Type_Code FROM Products WHERE Products.Product_ID IN (SELECT Product_ID FROM Products WHERE Product_Price > 4500) AND Products.Product_ID IN (SELECT Product_ID FROM Products WHERE Product_Typed < 3000)
SELECT p.product_name FROM products AS p LEFT JOIN event_products AS ep ON p.product_id = ep.product_id WHERE ep.product_id IS NULL
SELECT COUNT(*) FROM artwork
SELECT artwork.name FROM artwork ORDER BY artwork.name ASC
SELECT artwork.name FROM artwork WHERE artwork.type <> 'Program Talent Show'
SELECT festival_detail.festival_name, festival_detail.location FROM festival_detail
SELECT festival_detail.chair_name FROM festival_detail ORDER BY festival_detail.year ASC
SELECT festival_detail.location FROM festival_detail WHERE festival_detail.num_of_audience = (SELECT MAX(festival_detail.num_of_audience) FROM festival_detail)
SELECT festival_detail.festival_name FROM festival_detail WHERE festival_detail.year = 2007
SELECT AVG(festival_detail.num_of_audience) FROM festival_detail
SELECT festival_detail.festival_name FROM festival_detail ORDER BY festival_detail.year DESC LIMIT 3
SELECT artwork.type, COUNT(*) FROM artwork GROUP BY artwork.type
SELECT artwork.type, COUNT(artwork.type) FROM artwork GROUP BY artwork.type ORDER BY frequency DESC LIMIT 1
SELECT festival_detail.year FROM festival_detail GROUP BY festival_detail.year HAVING COUNT(festival_detail.festival_id) > 1
SELECT artwork.name FROM artwork WHERE NOT artwork.artwork_id IN (SELECT nominee.nominated_artwork_id FROM nominated)
SELECT SUM(festival_detail.num_of_audience) FROM festival_detail WHERE festival_detail.year IN (2008, 2010)
SELECT SUM(festival_detail.num_of_audience) FROM festival_detail
SELECT festival_detail.year FROM festival_detail WHERE festival_detail.location ILIKE '%United%States%' AND NOT festival_detail.location ILIKE '%United%States%'
SELECT COUNT(*) FROM Premises
SELECT Premises.premise_type FROM Premises GROUP BY Premises.premise_type
SELECT Premises.premise_type, Premises.premise_details FROM Premises ORDER BY Premises.premise_type
SELECT Premises.premise_type, COUNT(Premises.premise_id) FROM Premises GROUP BY Premises.premise_type
SELECT Mailshot_campaigns.product_category, COUNT(*) FROM Mailshot_campaigns GROUP BY Mailshot_campaigns.product_category
SELECT customers.customer_name, customers.customer_phone FROM customers WHERE customers.customer_email IS NULL
SELECT Mailshot_Customers.outcome_code, COUNT(*) FROM Mailshot_customers GROUP BY Mailshot_customers.outcome_code
SELECT DISTINCT address_type_code FROM customers_addresses
SELECT customer_id, order_shipping_charges FROM customer_orders WHERE order_status_code IN ('Cancelled', 'Paid') ORDER BY customer_id NULLS LAST
SELECT COUNT(CID) FROM Course
SELECT COUNT(CID) FROM Course
SELECT COUNT(*) FROM Course WHERE Credits > 2
SELECT COUNT(*) FROM Course WHERE Credits > 2
SELECT Course.CName FROM Course WHERE Course.Credits = '1'
SELECT Course.CName FROM Course WHERE Course.Credits = '1'
SELECT Course.CName FROM Course WHERE Course.Days ILIKE '%MTW%' ORDER BY Course.CName NULLS LAST
SELECT Course.CName FROM Course WHERE Course.Days ILIKE '%MTW%' ORDER BY Course.CName NULLS LAST
SELECT COUNT(*) FROM Department WHERE Division ILIKE '%AS%'
SELECT COUNT(*) FROM Department WHERE Division ILIKE '%AS%'
SELECT Department.DPhone FROM Department WHERE "Room" ILIKE '%268%'
SELECT Department.DPhone FROM Department WHERE "Room" ILIKE '%268%'
SELECT COUNT(DISTINCT Enrolled_in.StuID) FROM Enrolled_in WHERE Enrolled_in.Grade ILIKE '%B%'
SELECT COUNT(DISTINCT Enrolled_in.StuID) FROM Enrolled_in WHERE Enrolled_in.Grade = 'B'
SELECT MAX(gradepoint), MIN(gradepoint) FROM Gradeconversion
SELECT MAX(gradeconversion.gradepoint), MIN(gradeconversion.gradepoint) FROM gradeconversion
SELECT Student.Fname FROM Student WHERE Student.Fname ILIKE '%a%'
SELECT Student.Fname FROM Student WHERE Student.Fname ILIKE '%a%'
SELECT faculty.fname, faculty.lname FROM faculty WHERE faculty.building = 'NEB' AND faculty.sex = 'M'
SELECT faculty.lname || ',' || faculty.fname FROM faculty WHERE faculty.sex = 'M' AND faculty.building ILIKE '%NEB%'
SELECT faculty.room FROM faculty WHERE faculty.rank = 'Professor' AND faculty.building = 'NEB'
SELECT faculty.room FROM faculty WHERE faculty.rank = 'Professor' AND faculty.building = 'NEB'
SELECT Department.DName FROM Department WHERE "Building" ILIKE '%Mergenthaler%'
SELECT Department.DName FROM Department WHERE "Building" ILIKE '%Mergenthaler%'
SELECT Course.CID, Course.CName, Course.Credits FROM Course ORDER BY Course.Credits ASC
SELECT Course.CID, Course.CName, Course.Credit FROM Course ORDER BY Course.Credit ASC
SELECT Course.CName FROM Course ORDER BY Course.Credits DESC
SELECT Course.CName FROM Course ORDER BY Course.Credits DESC
SELECT Student.Fname FROM Student ORDER BY Student.Age DESC
SELECT s.fname, s.age FROM student AS s ORDER BY s.age DESC
SELECT Student.LName FROM Student WHERE Student.Sex = 'F' ORDER BY Student.Age DESC
SELECT s.lname FROM student AS s WHERE sex = 'F' ORDER BY age DESC
SELECT faculty.lname FROM faculty WHERE faculty.building = 'Barton' ORDER BY faculty.lname ASC
SELECT f.lname FROM faculty AS f WHERE f.building = 'Barton'
SELECT faculty.fname FROM faculty WHERE faculty.rank = 'Professor' ORDER BY faculty.fname ASC
SELECT f.fname FROM faculty AS f WHERE rank = 'Professor' ORDER BY f.fname
SELECT Department.DName FROM Department WHERE NOT Department.DNo IN (SELECT Student.DNo FROM Student)
SELECT Department.DName FROM Department WHERE NOT Department.DNo IN (SELECT Student.DNo FROM Student)
SELECT faculty.lname, faculty.fname, COUNT(class.faculty_id) FROM faculty JOIN class ON faculty.faculty_id = class.faculty_id GROUP BY faculty.lname, faculty.fname ORDER BY class_count ASC NULLS LAST LIMIT 1
SELECT MIN(faculty.rank) FROM faculty GROUP BY faculty.rank
SELECT CName FROM Course WHERE (Credit = '3' OR Credit = '1') AND Hours = '4'
SELECT Course.CName FROM Course WHERE (Course.Credit = 3 OR (Course.Credit = 1 AND Course.Hours = 4))
SELECT DName FROM Department WHERE "Division" IN ('AS', 'EN') AND "Building" = 'NEB' ORDER BY DName NULLS LAST
SELECT DName FROM Department WHERE "Division" IN ('AS', 'EN') AND "Building" = 'NEB' ORDER BY DName NULLS LAST
SELECT s.fname FROM student AS s LEFT JOIN enrollment AS e ON s.stuid = e.student_id WHERE e.student_id IS NULL
SELECT s.fname FROM Student AS s LEFT JOIN Enrollment AS e ON s.stuid = e.student_id WHERE e.student_id IS NULL
SELECT ps.product_id, RANK() OVER (ORDER BY total_value_purchased DESC) FROM Product_Suppliers AS ps WHERE NOT total_value_purchased IS NULL AND NOT total_amount_purchased IS NULL
SELECT ps.product_id FROM Product_Suppliers AS ps GROUP BY ps.product_id ORDER BY COUNT(ps.product_id) DESC LIMIT 3
SELECT products.product_id, products.product_type_code FROM products WHERE products.product_price = (SELECT MIN(products.product_price) FROM products)
SELECT p.product_id, pt.product_type_code FROM Products AS p JOIN Product_Type AS pt ON p.product_type_code = pt.product_type_code ORDER BY p.product_price ASC NULLS LAST LIMIT 1
SELECT COUNT(DISTINCT product_type_code) FROM Products
SELECT COUNT(DISTINCT product_type_code) FROM Products
SELECT payment_method_code, COUNT(*) FROM Customers GROUP BY payment_method_code
SELECT payment_method_code, COUNT(*) FROM Customers GROUP BY payment_method_code
SELECT Order_Items.product_id FROM Order_Items GROUP BY Order_Items.product_id ORDER BY COUNT(Order_Items.product_id) DESC LIMIT 1
SELECT Order_Items.product_id FROM Order_Items GROUP BY Order_Items.product_id ORDER BY COUNT(Order_Items.order_item_id) DESC LIMIT 1
SELECT product_type_code, AVG(product_price) FROM Products GROUP BY product_type_code
SELECT product_type_code, AVG(product_price) FROM Products GROUP BY product_type_code
SELECT d.dept_store_chain_id, COUNT(s.dept_store_id) FROM Department_Stores AS d JOIN Store_Locations AS s ON d.dept_store_id = s.dept_store_id GROUP BY d.dept_store_chain_id ORDER BY total_stores DESC LIMIT 2
SELECT dept_store_chain_id FROM Department_Stores GROUP BY dept_store_chain_id HAVING COUNT(dept_store_id) > (SELECT COUNT(dept_store_id) FROM Department_Stores WHERE dept_store_chain_id = 2) AND COUNT(dept_store_id) > (SELECT COUNT(dept_store_id) FROM Department_Stores WHERE dept_store_chain_id = 3)
SELECT MIN(department_id) FROM Staff_Department_Assignments
SELECT MIN(department_id) FROM Staff_Department_Assignments
SELECT product_type_code, MIN(product_price), MAX(product_price) FROM products GROUP BY product_type_code
SELECT product_type_code, MIN(product_price), MAX(product_price) FROM Products GROUP BY product_type_code
SELECT p.product_type_code FROM Products AS p WHERE p.product_price > (SELECT AVG(product_price) FROM Products)
SELECT p.product_type_code FROM Products AS p WHERE p.product_price > (SELECT AVG(p2.product_price) FROM Products AS p2)
SELECT p.product_id, p.product_name FROM Products AS p WHERE p.product_price BETWEEN 600 AND 700
SELECT p.product_id, p.product_name FROM Products AS p WHERE p.product_price BETWEEN 600 AND 700
SELECT DISTINCT a.customer_id FROM customer_orders AS a JOIN (SELECT order_id FROM customer_orders WHERE order_status_code = 'Cancelled') AS b ON a.order_id > b.order_id
SELECT DISTINCT a.customer_id FROM customer_orders AS a JOIN customer_orders AS b ON a.order_id > b.order_id AND b.order_status_code = 'Cancelled' WHERE a.order_status_code <> 'Cancelled'
SELECT sda.staff_id FROM Staff_Department_Assignments AS sda JOIN (SELECT sd.staff_id, MIN(sd.date_assigned_from) FROM Staff_department_assignments AS sd WHERE sd.military_title_code = 'Clerical' GROUP BY sd.staff_id) AS sdg ON sda.staff_id = sdg.staff_id WHERE sda.date_assigned_from < sdg.min_date
SELECT s.staff_id FROM Staff_Department_assignments AS s JOIN (SELECT staff_id, MIN(date_assigned_from) FROM Staff_department_assignments WHERE department_title_code = 'Clerical' GROUP BY staff_id) AS c ON s.staff_id = c.staff_id AND s.date_assigned_from < c.min_date
SELECT Customers.customer_id, Customers.customer_name FROM Customers WHERE Customers.customer_address ILIKE '%TN%'
SELECT Customers.customer_name, Customers.customer_id FROM Customers WHERE 'TN' ILIKE '%customers.customer_address%'
SELECT customers.customer_phone FROM customers UNION SELECT suppliers.supplier_phone FROM suppliers
SELECT Customers.customer_phone FROM Customers
SELECT product_id FROM Order_Items GROUP BY product_id HAVING COUNT(order_item_id) > 3 OR SUM(product_id) > 80000
SELECT DISTINCT product_id FROM Order_Items WHERE order_item_id IN (SELECT order_item_id FROM Order_Items GROUP BY product_id HAVING COUNT(order_item_id) > 3) OR product_id IN (SELECT product_id, SUM(order_item_id) FROM Order_Items GROUP BY product_id HAVING SUM(order_item_id) > 80000)
SELECT product_id, product_name FROM Products WHERE product_price < 600 OR product_price > 900
SELECT p.product_id, p.product_name FROM Products AS p WHERE p.product_price < 600 OR p.product_price > 900
SELECT supplier_id FROM Product_Suppliers WHERE CAST(total_value_purchased AS FLOAT) > 50000 OR CAST(total_value_purchased AS FLOAT) < 30000
SELECT supplier_id FROM Product_Suppliers GROUP BY supplier_id HAVING AVG(total_value_purchased) > 50000 OR AVG(total_value_purchased) < 30000
SELECT AVG(total_amount_purchased), AVG(total_value_purchased) FROM Product_Suppliers WHERE NOT total_amount_purchased IS NULL AND NOT total_value_purchased IS NULL
SELECT AVG(total_amount_purchased), AVG(total_value_purchased) FROM Product_Suppliers GROUP BY supplier_id HAVING COUNT(product_id) = (SELECT MAX(COUNT(product_id)) FROM Product_Suppliers)
SELECT MAX(customer_code), MIN(customer_code) FROM customers
SELECT MAX(customer_code), MIN(customer_code) FROM customers
SELECT product_type_code, MIN(product_price), MAX(product_price) FROM Products GROUP BY product_type_code ORDER BY product_type_code ASC
SELECT product_type_code, MIN(product_price), MAX(product_price) FROM Products GROUP BY product_type_code ORDER BY product_type_code NULLS LAST
SELECT o.order_id, o.customer_id FROM orders AS o WHERE o.order_status_code = 'Cancelled' ORDER BY o.order_date
SELECT o.order_id, c.customer_id FROM cancelled_orders AS o JOIN customers AS c ON o.customer_id = c.customer_id
SELECT customer_id, customer_name FROM Customers WHERE customer_address ILIKE '%WY%' AND payment_method_code <> 'credit card'
SELECT c.customer_id, c.customer_name FROM Customers AS c WHERE c.payment_method_code <> 'credit card' AND c.customer_address ILIKE '%WY%'
SELECT AVG(product_price) FROM products WHERE product_type_code = 'clothes'
SELECT AVG(Products.product_price) FROM Products WHERE product_type_code = 'clothes'
SELECT Products.product_name FROM Products WHERE Products.product_type_code = 'hardware' ORDER BY Products.product_price DESC LIMIT 1
SELECT Products.product_name FROM Products WHERE Products.product_type_code = 'hardware' ORDER BY Products.product_price DESC LIMIT 1
SELECT COUNT(*) FROM aircraft
SELECT COUNT(*) FROM aircraft
SELECT aircraft.description FROM aircraft
SELECT a.aircraft_id, a.description FROM aircraft AS a
SELECT AVG(International_passengers) FROM airport
SELECT AVG(International_passengers) FROM airport
SELECT CAST(International_passengers AS FLOAT) / NULLIF(total_passengers, 0) * 100, CAST(domestic_passengers AS FLOAT) / NULLIF(total_passengers, 0) * 100 FROM airport WHERE airport_name ILIKE '%London%Heathrow%'
SELECT CAST(International_passengers AS FLOAT) / NULLIF(total_passengers, 0) * 100, CAST(domestic_passengers AS FLOAT) / NULLIF(total_passengers, 0) * 100 FROM airport WHERE airport_name ILIKE '%London%Heathrow%'
SELECT SUM(airport.domestic_passengers) FROM airport WHERE airport.aircraft_name ILIKE '%London%'
SELECT SUM(airport.domestic_passengers) FROM airport WHERE airport.airport_name ILIKE '%London%'
SELECT MAX(Transit_Passengers), MIN(Transit_Passengers) FROM airport
SELECT MAX(Transit_Passengers), MIN(Transit_Passengers) FROM airport
SELECT pilot.name FROM pilot WHERE pilot.age >= 25 AND pilot.age <= 30
SELECT p.name FROM pilot AS p WHERE p.age >= 25
SELECT pilot.name FROM pilot ORDER BY pilot.name ASC
SELECT pilot.name FROM pilot ORDER BY pilot.name ASC
SELECT pilot.name FROM pilot WHERE pilot.age >= 30 ORDER BY pilot.name DESC
SELECT pilot.name FROM pilot WHERE pilot.age >= 30 ORDER BY pilot.name DESC
SELECT p.name FROM pilot AS p ORDER BY p.age DESC
SELECT pilot.name FROM pilot ORDER BY pilot.age DESC
SELECT a.aircraft_id, a.aircraft FROM aircraft AS a WHERE NOT a.aircraft_id IN (SELECT m.aircraft_id FROM matches AS m) ORDER BY a.aircraft NULLS LAST
SELECT aircraft.aircraft FROM aircraft WHERE NOT aircraft.aircraft_id IN (SELECT match.aircraft_id FROM match)
SELECT a.airport_name, CAST(a.total_passengers AS TEXT) FROM airport AS a WHERE a.international_passengers = (SELECT MAX(b.international_passengers) FROM airport AS b)
SELECT a.airport_name, CAST(a.international_passengers AS FLOAT) / NULLIF(b.total_passengers, 0) FROM airport AS a JOIN (SELECT airport_id, SUM(total_passengers) FROM passengers GROUP BY airport_id) AS b ON a.airport_id = b.airport_id ORDER BY ratio DESC LIMIT 1
SELECT p.name FROM pilot AS p JOIN race AS r ON p.pilot_id = r.pilot_id WHERE r.country <> 'Australia' AND NOT p.name IS NULL
SELECT p.name FROM pilot AS p WHERE NOT p.pilot_id IN (SELECT w.pilot_id FROM win AS w JOIN race AS r ON w.race_id = r.race_id WHERE r.country_code = 'AUS')
SELECT COUNT(DISTINCT Status_of_Thing_Code) FROM meded_Status_of_Things
SELECT organizations.organization_id FROM organizations WHERE organizations.parent_organizaton_id IS NULL
SELECT MAX(date_moved_in) FROM residents
SELECT Residents.resident_id, Residents.property_id, Residents.date_moved_in, Residents.date_moved_out, Residents.other_details FROM Residents WHERE Residents.other_details ILIKE '%Miss%'
SELECT customer_events.customer_event_id, customer_events.date_moved_in, customer_events.property_id FROM customer_events
SELECT COUNT(DISTINCT Customers.customer_id) FROM Customers LEFT JOIN Events ON Customers.customer_id = Events.customer_id WHERE Events.customer_id IS NULL
SELECT date_moved_in FROM Residents GROUP BY date_moved_in
SELECT COUNT(*) FROM school
SELECT COUNT(*) FROM school
SELECT school.location FROM school ORDER BY school.enrollment ASC
SELECT school.location FROM school ORDER BY school.enrollment ASC
SELECT school.location FROM school ORDER BY school.founded DESC
SELECT school.location FROM school ORDER BY school.founded DESC
SELECT school.enrollment FROM school WHERE school.denomination <> 'Catholic'
SELECT school.school_id, school.enrollment FROM school WHERE school.denomination <> 'Catholic'
SELECT AVG(Enrollment) FROM school
SELECT AVG(Enrollment) FROM school
SELECT player.team FROM player ORDER BY player.team ASC
SELECT p.player_id, p.team FROM player AS p ORDER BY p.team ASC
SELECT COUNT(DISTINCT player.position) FROM player
SELECT COUNT(DISTINCT Player.position) FROM player
SELECT MAX(player.age), player.team FROM player GROUP BY player.team
SELECT MAX(player.age), player.team FROM player GROUP BY player.team ORDER BY oldest_player_age DESC
SELECT p.team, MAX(p.age) FROM player AS p GROUP BY p.team ORDER BY max_age DESC LIMIT 5
SELECT player.team FROM player GROUP BY player.team HAVING AVG(player.age) OVER (PARTITION BY player.team) > (SELECT MAX(avg_age) FROM (SELECT AVG(age) FROM player GROUP BY team) AS subquery)
SELECT school.denomination, COUNT(school.school_id) FROM school GROUP BY school.denomination ORDER BY number_of_schools DESC
SELECT school.denomination, COUNT(*) FROM school GROUP BY school.denomination
SELECT school.denomination, COUNT(school.school_id) FROM school GROUP BY school.denomination ORDER BY total_schools DESC
SELECT school.denomination, COUNT(school.school_id) FROM school GROUP BY school.denominations ORDER BY number_of_schools DESC
SELECT school.school_colors FROM school WHERE school.enrollment = (SELECT MAX(school.enrollment) FROM school)
SELECT school.school_colors FROM school WHERE school.enrollment = (SELECT MAX(enrollment) FROM school)
SELECT school.location FROM school WHERE NOT school.school_id IN (SELECT team.school_id FROM team)
SELECT s.location FROM school AS s LEFT JOIN players_schools AS ps ON s.school_id = ps.school_id WHERE ps.school_id IS NULL
SELECT school.denomination FROM school WHERE (school.founded < 1890 OR school.founded > 1900) GROUP BY school.denomination
SELECT s.denomination FROM school AS s WHERE (s.founded < 1890 AND s.founded > 1900) OR (s.founded > 1890 AND s.founded < 1900)
SELECT school_details.nickname FROM school_details WHERE school_details.division <> '1'
SELECT school_details.nickname FROM school_details WHERE school_details.division <> '1'
SELECT s.denomination FROM school AS s GROUP BY s.denominations HAVING COUNT(s.school_id) > 1
SELECT school.denomination FROM school GROUP BY school.denomination HAVING COUNT(school.school_id) > 1
SELECT district.district_name FROM district ORDER BY district.city_area DESC
SELECT d.district_name FROM district AS d ORDER BY d.city_area DESC
SELECT DISTINCT product.max_page_size FROM product WHERE product.product_id IN (SELECT product_id FROM product GROUP BY product_id HAVING COUNT(product_id) > 3)
SELECT product.max_page_size FROM product WHERE product.product_id IN (SELECT product_id FROM product GROUP BY product_id HAVING COUNT(product_id) > 3)
SELECT d.district_name, CAST(TO_NUMBER(CAST(d.city_population AS TEXT), '9999') AS TEXT) FROM district AS d WHERE TO_NUMBER(CAST(d.city_population AS TEXT), '9999') BETWEEN 200000 AND 2000000
SELECT d.district_name, c.city_population FROM district AS d JOIN city AS c ON d.headquartered_city = c.city_name WHERE d.city_area BETWEEN 200000 AND 2000000
SELECT district.district_name FROM district WHERE district.city_area > 10 OR district.city_population > 100000
SELECT district.district_name FROM district WHERE district.city_area > 10 OR district.city_population > 100000
SELECT d.district_name, COUNT(c.city_population) FROM district AS d JOIN city AS c ON d.district_id = c.district_id GROUP BY d.district_name ORDER BY total_population DESC LIMIT 1
SELECT d.district_name, d.city_population FROM district AS d WHERE d.city_population = (SELECT MAX(city_population) FROM district)
SELECT district.district_name, district.city_population, district.city_area FROM district ORDER BY district.city_area ASC NULLS LAST LIMIT 1
SELECT district.district_name FROM district ORDER BY district.city_area ASC LIMIT 1
SELECT district.district_name, SUM(population) FROM district GROUP BY district.district_name ORDER BY total_population DESC LIMIT 3
SELECT district.district_name, SUM(population) FROM (SELECT district.district_name, district.city_population, RANK() OVER (ORDER BY district.city_area DESC) FROM district ORDER BY rank ASC LIMIT 3) AS subquery GROUP BY district.district_name
SELECT store.type, COUNT(*) FROM store GROUP BY store.type
SELECT store.type, COUNT(*) FROM store GROUP BY store.type
SELECT AVG(product.pages_per_minute_color) FROM product
SELECT AVG(product.pages_per_minute_color) FROM product
SELECT product_id, product FROM product WHERE max_page_size = 'A4' AND pages_per_minute_color < 5
SELECT product_id, product FROM product WHERE max_page_size = 'A4' AND pages_per_minute_color < 5
SELECT product_id, product FROM product WHERE (max_page_size = 'A4' OR pages_per_minute_color < 5)
SELECT product_id, product FROM product WHERE (max_page_size = 'A4' OR pages_per_minute_color < 5)
SELECT product FROM product WHERE product ILIKE '%Scanner%'
SELECT product FROM product WHERE product ILIKE '%Scanner%'
SELECT MAX(product.max_page_size) FROM product
SELECT product.max_page_size, COUNT(*) FROM product GROUP BY product.max_page_size ORDER BY frequency DESC LIMIT 1
SELECT product.product FROM product WHERE product.max_page_size <> (SELECT MAX(product.max_page_size) FROM product)
SELECT product.product FROM product WHERE product.max_page_size <> (SELECT MAX(product.max_page_size) FROM product)
SELECT SUM(district.city_population) FROM district WHERE district.city_area > (SELECT AVG(city_area) FROM district)
SELECT SUM(district.city_population) FROM district WHERE district.city_area > (SELECT AVG(city_area) FROM district)
SELECT SUM(college.enr) FROM college
SELECT CAST(enr AS FLOAT) / NULLIF((SELECT SUM(enr) FROM college), 0) FROM college
SELECT AVG(college.enr) FROM college
SELECT AVG(enrollment) FROM college
SELECT COUNT(*) FROM college
SELECT COUNT(DISTINCT cName) FROM college
SELECT COUNT(*) FROM Player WHERE HS > 1000
SELECT COUNT(DISTINCT p.pID) FROM Player AS p JOIN Training AS t ON p.pID = t.pID WHERE t.hours > 1000
SELECT COUNT(*) FROM college WHERE enr > 15000
SELECT COUNT(*) FROM college WHERE enrollment > 15000
SELECT AVG(training_hours) FROM Player
SELECT AVG(hours) FROM (SELECT p.pID, COUNT(t.tid) * 2 FROM Player AS p JOIN Training AS t ON p.pID = t.pID GROUP BY p.pID) AS subquery
SELECT Player.pName, Player.HS FROM Player WHERE Player.HS < 1500
SELECT p.pName, SUM(t.hours) FROM Player AS p JOIN Training AS t ON p.pID = t.pID WHERE t.hours < 1500 GROUP BY p.pName
SELECT COUNT(DISTINCT cName) FROM Tryout
SELECT COUNT(DISTINCT cName) FROM Tryout
SELECT DISTINCT Tryout.pPos FROM Tryout
SELECT Tryout.pPos FROM Tryout GROUP BY Tryout.pPos
SELECT COUNT(*) FROM Tryout WHERE decision = 'Accepted'
SELECT COUNT(*) FROM Tryout WHERE decision = 'yes'
SELECT COUNT(*) FROM tryout WHERE pPos ILIKE '%goalie%'
SELECT CAST(COUNT(DISTINCT (t.pID)) AS FLOAT) / NULLIF((SELECT COUNT(*) FROM student), 0) FROM tryout AS t
SELECT MAX(training_hours), AVG(training_hours), MIN(training_hours) FROM Player
SELECT AVG(hours_spent), MAX(hours_spent), MIN(hours_spent) FROM Player
SELECT AVG(college.enr) FROM college WHERE college.state = 'FL'
SELECT AVG(college.enr) FROM college WHERE state = 'Florida'
SELECT Player.pName FROM Player WHERE Player.HS BETWEEN 500 AND 1500
SELECT Player.pName FROM Player WHERE (Player.HS / 60) BETWEEN 500 AND 1500
SELECT pID, pName FROM Player WHERE pName ILIKE '%a%'
SELECT Player.pName FROM Player WHERE Player.pName ILIKE '%a%'
SELECT cName, enr FROM college WHERE state = 'LA' AND enr > 10000
SELECT college.cName, college.enr FROM college WHERE college.state = 'Louisiana' AND college.enr > 10000
SELECT cName, state, enr FROM college ORDER BY enr ASC
SELECT college.cName, college.state, college.enr FROM college ORDER BY college.enr ASC
SELECT cName FROM college WHERE enr > 18000 ORDER BY cName NULLS LAST
SELECT cName FROM college WHERE enr > 18000 ORDER BY cName ASC
SELECT Player.pName FROM Player WHERE Player.yCard = 'yes' ORDER BY Player.HS DESC
SELECT p.pName FROM Player AS p WHERE NOT p.yCard IS NULL ORDER BY p.HS DESC
SELECT DISTINCT cName FROM Tryout ORDER BY cName ASC
SELECT DISTINCT cName FROM Tryout ORDER BY cName ASC
SELECT pPos, COUNT(*) FROM Tryout GROUP BY pPos ORDER BY total_players DESC LIMIT 1
SELECT MAX(pPos) FROM Tryout
SELECT cName, COUNT(pID) FROM Tryout GROUP BY cName ORDER BY total_participants DESC
SELECT cName, COUNT(pID) FROM Tryout GROUP BY cName
SELECT college.cname FROM college ORDER BY enr DESC LIMIT 3
SELECT college.cName FROM college WHERE enr IN (SELECT MAX(enr) FROM college GROUP BY cName ORDER BY MAX(enr) DESC LIMIT 3)
SELECT cName, state FROM college ORDER BY state, enr ASC
SELECT cName, state FROM college ORDER BY enr ASC
SELECT t.cName FROM Tryout AS t JOIN College AS c ON t.pID = c.college_id WHERE t.decision = 'yes' AND c.goal = 'yes'
SELECT t.pID, t.cName, CAST(COUNT(g.goal) AS FLOAT) / NULLIF(COUNT(t.pID), 0) FROM tryout AS t JOIN goal AS g ON t.pID = g.pid GROUP BY t.pID, t.cName HAVING COUNT(g.goal) > 0
SELECT college.cName FROM college WHERE (college.state = 'AZ' AND college.enr < 13000) OR (college.state <> 'AZ' AND college.enr > 15000)
SELECT college.cName FROM college WHERE (college.state = 'CA' AND college.enr > 13000) OR (college.state = 'LA' AND college.enr > 15000)
SELECT DISTINCT t.cName FROM Tryout AS t WHERE t.pPos IN ('goalie', 'mid')
SELECT t.cName FROM Tryout AS t WHERE t.pPos = 'goal' AND t.decision = 'mid'
-1
-1
SELECT DISTINCT t.cName FROM Tryout AS t WHERE t.pPos = 'Midfielder' AND t.pPos <> 'Goalkeeper'
SELECT t.cName FROM Tryout AS t WHERE t.pPos = 'Midfield' AND NOT EXISTS(SELECT 1 FROM Goalier AS g WHERE g.pID = t.pID)
-1
-1
SELECT college.state FROM college WHERE college.enr < (SELECT MAX(college.enr) FROM college) GROUP BY college.state
SELECT c.state FROM college AS c WHERE c.enr < (SELECT MIN(c2.enr) FROM college AS c2)
SELECT c.cName FROM college AS c WHERE c.state = 'FL' AND c.enr > (SELECT MIN(d.enr) FROM college AS d WHERE d.state = 'FL')
SELECT cName FROM college WHERE state <> 'Florida' AND enr > (SELECT MIN(enr) FROM college WHERE state = 'Florida')
SELECT college.cName FROM college WHERE college.state <> 'FL' AND college.enr > (SELECT MAX(college.enr) FROM college WHERE college.state = 'FL')
SELECT cName FROM college WHERE state <> 'Florida' AND enr > (SELECT MAX(enr) FROM college WHERE state = 'Florida')
SELECT SUM(college.enr) FROM college WHERE college.cname ILIKE '%goalie%'
SELECT SUM(college.enr) FROM college WHERE college.state IS NULL
SELECT state FROM college GROUP BY state HAVING AVG(enr) < (SELECT enr FROM college WHERE cName = 'College Name')
SELECT state FROM college GROUP BY state HAVING COUNT(enr) > (SELECT AVG(enr) FROM college)
SELECT college.state FROM college GROUP BY college.state HAVING AVG(college.enr) > college.enr
SELECT college.state FROM college GROUP BY college.state HAVING AVG(college.enr) > college.enr
SELECT COUNT(Device_ID) FROM device
SELECT COUNT(Device_ID) FROM device
SELECT device.carrier FROM device ORDER BY device.carrier ASC
SELECT DISTINCT device.carrier FROM device ORDER BY device.carrier ASC
SELECT DISTINCT device.carrier FROM device WHERE device.software_platform <> 'Android'
SELECT DISTINCT device.carrier FROM device WHERE device.software_platform <> 'Android'
SELECT shop.shop_name FROM shop ORDER BY shop.open_year ASC
SELECT shop.shop_name FROM shop ORDER BY shop.open_year ASC
SELECT AVG(quantity) FROM stock
SELECT AVG(Quantity) FROM stock
SELECT shop.shop_name, shop.location FROM shop ORDER BY shop.shop_name ASC
SELECT shop.shop_name, shop.location FROM shop ORDER BY shop.shop_name ASC
SELECT COUNT(DISTINCT Software_Platform) FROM device
SELECT COUNT(DISTINCT Software_Platform) FROM device
SELECT shop.open_date FROM shop WHERE shop.shop_name ILIKE '%apple%' ORDER BY shop.open_year NULLS LAST
SELECT CAST(open_year AS TEXT) || ' - ' || open_date FROM shop WHERE shop_name ILIKE '%Apple%' ORDER BY open_info NULLS LAST
SELECT s.shop_name FROM shop AS s ORDER BY s.open_year DESC LIMIT 1
SELECT shop.shop_name FROM shop WHERE shop.open_year = (SELECT MAX(open_year) FROM shop)
SELECT device.software_platform, COUNT(*) FROM device GROUP BY device.software_platform
SELECT device.software_platform, COUNT(device.device_id) FROM device GROUP BY device.software_platform
SELECT device.software_platform, COUNT(device.device_id) FROM device GROUP BY device.software_platform ORDER BY COUNT DESC
SELECT device.software_platform, COUNT(*) FROM device GROUP BY device.software_platform ORDER BY frequency DESC
SELECT device.software_platform FROM device GROUP BY device.software_platform ORDER BY COUNT(device.device_id) DESC LIMIT 1
SELECT device.software_platform FROM device GROUP BY device.software_platform ORDER BY COUNT(device.software_platform) DESC LIMIT 1
SELECT s.shop_name FROM shop AS s LEFT JOIN device AS d ON s.shop_id = d.shop_id WHERE d.shop_id IS NULL
SELECT s.shop_name FROM shop AS s LEFT JOIN device_stock AS ds ON s.shop_id = ds.shop_id WHERE ds.device_id IS NULL
SELECT DISTINCT shop.location FROM shop WHERE (shop.open_year > 2012 AND shop.open_year < 2008) ORDER BY shop.location NULLS LAST
SELECT DISTINCT shop.location FROM shop WHERE (shop.open_year > 2012 AND shop.open_year < 2008) OR (shop.open_year < 2008 AND shop.open_year > 2012)
SELECT device.carrier FROM device WHERE NOT device.device_id IN (SELECT device_id FROM stock)
SELECT device.carrier FROM device WHERE NOT device.device_id IN (SELECT stock.device_id FROM stock)
SELECT COUNT(*) FROM Bookings
SELECT COUNT(*) FROM Bookings
SELECT Booking_ID, Order_Date FROM Bookings
SELECT Bookings.Booking_ID, CAST(Bookings.Order_Date AS DATE) FROM Bookings
SELECT Bookings.Planned_Delivery_Date, Bookings.Actual_delivery_date FROM Bookings
SELECT bookings.booking_id, bookings.planned_delivery_date, bookings.actual_delivery_date FROM bookings
SELECT COUNT(*) FROM Customers
SELECT COUNT(*) FROM Customers
SELECT Customers.customer_phone, Customers.customer_email FROM Customers WHERE Customers.customer_name ILIKE '%Harold%'
SELECT Customers.personal_phone, Customers.personal_email FROM Customers WHERE customers.customer_name ILIKE '%Harold%'
SELECT Drama_Workshop_Groups.Store_Name FROM Drama_Workshop_Groups
SELECT Drama_Workshop_Groups.Store_Name FROM Drama_Workshop_Groups
SELECT MIN(order_quantity), AVG(order_quantity), MAX(order_quantity) FROM invoices
SELECT MIN(CAST(order_quantity AS FLOAT)), AVG(CAST(order_quantity AS FLOAT)), MAX(CAST(order_quantity AS FLOAT)) FROM invoices
SELECT DISTINCT Invoices.payment_method_code FROM Invoices
SELECT DISTINCT Invoices.payment_method_code FROM Invoices
SELECT Marketing_Region_Descriptrion FROM Marketing_Regions WHERE Marketing_Region_Code = 'China'
SELECT Marketing_Regions.Marketing_Region_Description FROM Marketing_regions WHERE Marketing_regions.Marketing_Region_Code = 'CHN'
SELECT DISTINCT Products.Product_Name FROM Products WHERE Products.Product_Price > (SELECT AVG(Products.Product_Cost) FROM Products)
SELECT DISTINCT Products.Product_Name FROM Products WHERE Products.Product_Cost > (SELECT AVG(Product_Cost) FROM Products)
SELECT Products.Product_Name FROM Products ORDER BY Products.Product_Price DESC LIMIT 1
SELECT Products.Product_Name FROM Products ORDER BY Products.Product_Price DESC LIMIT 1
SELECT Products.Product_Name FROM Products ORDER BY Products.Product_Price ASC
SELECT Products.Product_Name FROM Products ORDER BY Products.Product_Price ASC
SELECT Performers.performer_phone FROM Performers WHERE Performers.performer_name ILIKE '%Ashley%'
SELECT Performers.personal_phone FROM Performers WHERE Performers.performer_name ILIKE '%Ashley%'
SELECT invoices.payment_method_code, COUNT(invoices.order_id) FROM invoices GROUP BY invoices.payment_method_code
SELECT invoices.payment_method_code, COUNT(invoices.order_id) FROM invoices GROUP BY invoices.payment_method_code
SELECT invoices.payment_method_code, COUNT(*) FROM invoices GROUP BY invoices.payment_method_code ORDER BY order_count DESC LIMIT 1
SELECT invoices.payment_method_code, COUNT(*) FROM invoices GROUP BY invoices.payment_method_code ORDER BY frequency DESC LIMIT 1
SELECT Products.Product_Name, AVG(Products.Product_Price) FROM Products GROUP BY Products.Product_Name
SELECT Products.Product_Name, AVG(Products.Product_Price) FROM Products GROUP BY Products.Product_Name
SELECT Products.Product_Name FROM Products WHERE Products.Product_Price < 1000000
SELECT Products.Product_Name FROM Products WHERE Products.Product_Price < 1000000
SELECT COUNT(DISTINCT Drama_Workshop_Groups.Currency_Code) FROM Drama_Workshop_Groups
SELECT COUNT(DISTINCT Currency_Code) FROM Drama_Workshop_Groups
SELECT Drama_Workshop_Groups.Marketing_Region_Code, COUNT(Drama_Workshop_Groups.Workshop_Group_ID) FROM Drama_Workshop_Groups GROUP BY Drama_Workshop_Groups.Marketing_Region_Code ORDER BY number_of_workshops DESC LIMIT 1
SELECT Drama_Workshop_Groups.Marketing_Region_Code FROM Drama_Workshop_Groups GROUP BY Drama_Workshop_Groups.Marketing_Region_Code ORDER BY COUNT(Drama_Workshop_Groups.Workshop_Group_ID) DESC LIMIT 1
SELECT Status_Code, COUNT(*) FROM Bookings GROUP BY Status_Code ORDER BY frequency DESC LIMIT 1
SELECT Bookings.Status_Code, COUNT(*) FROM Bookings GROUP BY Bookings.Status_Code ORDER BY frequency DESC LIMIT 1
SELECT c.client_name FROM clients AS c WHERE NOT c.client_id IN (SELECT b.client_id FROM bookings AS b)
SELECT c.client_name FROM clients AS c LEFT JOIN bookings AS b ON c.client_id = b.client_id WHERE b.client_id IS NULL
SELECT AVG(CAST(order_quantity AS FLOAT)) FROM invoices WHERE payment_method_code = 'MasterCard'
SELECT AVG(CAST(order_quantity AS FLOAT)) FROM invoices WHERE payment_method_code ILIKE '%MasterCard%'
SELECT Invoices.Product_ID FROM Invoices GROUP BY Invoices.Product_ID ORDER BY COUNT(Invoices.Order_ID) DESC LIMIT 1
SELECT Invoices.Product_ID FROM Invoices GROUP BY Invoices.Product_ID ORDER BY COUNT(Invoices.Product_ID) DESC LIMIT 1
SELECT COUNT(*) FROM Band
SELECT COUNT(*) FROM Band
SELECT DISTINCT Albums.label FROM Albums
SELECT DISTINCT Albums.label FROM Albums
SELECT Albums.Aid, Albums.Title FROM Albums WHERE Albums.Year = 2012
SELECT a.aid, a.title FROM albums AS a WHERE a.year = 2012
SELECT COUNT(SongId) FROM Songs
SELECT COUNT(SongId) FROM Songs
SELECT COUNT(DISTINCT label) FROM Albums
SELECT DISTINCT Albums.label FROM Albums
SELECT a.label, COUNT(a.aid) FROM albums AS a GROUP BY a.label ORDER BY number_of_albums DESC LIMIT 1
SELECT a.label, COUNT(a.aid) FROM albums AS a GROUP BY a.label ORDER BY number_of_albums DESC LIMIT 1
SELECT Songs.Title FROM Songs WHERE Songs.Title ILIKE '%the%'
SELECT Songs.Title FROM Songs WHERE Songs.Title ILIKE '%the%' ORDER BY Songs.Title NULLS LAST
SELECT instruments.instrument FROM instruments
SELECT DISTINCT Instruments.Instrument FROM Instruments
SELECT instruments.instrument FROM instruments GROUP BY instruments.instrument ORDER BY COUNT(instruments.instrument) DESC LIMIT 1
SELECT instruments.instrument FROM instruments GROUP BY instruments.instrument ORDER BY COUNT(instruments.instrument) DESC LIMIT 1
SELECT COUNT(*) FROM Instruments WHERE Instrument ILIKE '%drums%'
SELECT COUNT(*) FROM Instruments WHERE Instrument = 'drums'
SELECT Vocals.type, COUNT(Vocals.songid) FROM Vocals GROUP BY Vocals.type ORDER BY frequency DESC LIMIT 1
SELECT Vocals.type, COUNT(Vocals.songid) FROM Vocals GROUP BY Vocals.type ORDER BY frequency DESC LIMIT 1
SELECT DISTINCT Vocals.type FROM Vocals
SELECT Vocals.type FROM Vocals GROUP BY Vocals.type
SELECT Albums.Title FROM Albums WHERE Albums.Year = 2010
SELECT COUNT(*) FROM Albums WHERE Year = 2010
SELECT Manufacturers.Founder FROM Manufacturers WHERE "Name" ILIKE '%Sony%'
SELECT Manufacturers.Founder FROM Manufacturers WHERE "Name" ILIKE '%Sony%'
SELECT Manufacturers.Headquarter FROM Manufacturers WHERE "Founder" ILIKE '%james%'
SELECT Manufacturers.Headquarter FROM Manufacturers WHERE "Founder" ILIKE '%james%'
SELECT Manufacturers.name, Manufacturers.headquarter FROM Manufacturers ORDER BY Manufacturers.revenue DESC
SELECT m.name, m.headquarter FROM Manufacturers AS m ORDER BY m.revenue DESC
SELECT AVG(Revenue), MAX(Revenue), SUM(Revenue) FROM Manufacturers
SELECT AVG(Revenue), MAX(Revenue), SUM(Revenue) FROM Manufacturers
SELECT COUNT(*) FROM Manufacturers WHERE Founder ILIKE '%Andy%'
SELECT COUNT(*) FROM Manufacturers WHERE Founder ILIKE '%Andy%'
SELECT SUM(Manufacturers.revenue) FROM Manufacturers WHERE Manufacturers.headquarter ILIKE '%Austin%'
SELECT SUM(Manufacturers.revenue) FROM Manufacturers WHERE Manufacturers.headquarter ILIKE '%Austin%'
SELECT Manufacturers.Headquarter FROM Manufacturers GROUP BY Manufacturers.Headquarter
SELECT DISTINCT Manufacturers.Headquarter FROM Manufacturers
SELECT COUNT(*) FROM Manufacturers WHERE Headquarter IN ('Tokyo', 'Beijing')
SELECT COUNT(*) FROM Manufacturers WHERE Headquarter IN ('Tokyo', 'Beijing')
SELECT Manufacturers.founder FROM Manufacturers WHERE Manufacturers.name ILIKE 'S%'
SELECT Manufacturers.Founder FROM Manufacturers WHERE Manufacturers.Name ILIKE 'S%'
SELECT Manufacturers.Name FROM Manufacturers WHERE (Manufacturers.Revenuee >= 100 AND Manufacturers.Revenuee <= 150)
SELECT Manufacturers.Name FROM Manufacturers WHERE Manufacturers.Revenue BETWEEN 100 AND 150
SELECT SUM(Manufacturers.revenue) FROM Manufacturers WHERE Manufacturers.headquarter ILIKE '%Tokyo%' OR Manufacturers.headquarter ILIKE '%Taiwan%'
SELECT SUM(Manufacturers.revenue) FROM Manufacturers WHERE Manufacturers.headquarter ILIKE '%Tokyo%' OR Manufacturers.headquarter ILIKE '%Taiwan%'
SELECT m.name, m.headquarter, m.founder FROM manufacturers AS m WHERE m.revenue = (SELECT MAX(revenue) FROM manufacturers)
SELECT m.name, m.headquarter, m.founder FROM manufacturers AS m WHERE m.revenue = (SELECT MAX(revenue) FROM manufacturers)
SELECT m.name, m.headquarter, CAST(TO_TIMESTAMP(m.revenue) AS TEXT) FROM Manufacturers AS m ORDER BY TO_NUMBER(CAST(TO_TIMESTAMP(m.revenue) AS TEXT), 'FM9999999D00') DESC
SELECT m.name, m.headquarter, CAST(m.revenue AS FLOAT) FROM Manufacturers AS m ORDER BY revenue DESC
SELECT Manufacturers.name FROM Manufacturers WHERE Manufacturers.revenue > (SELECT AVG(Manufacturers.revenue) FROM Manufacturers)
SELECT Manufacturers.Name FROM Manufacturers WHERE Manufacturers.Revenue > (SELECT AVG(Manufacturers.Revenue) FROM Manufacturers)
SELECT m.name FROM manufacturers AS m WHERE m.revenue < (SELECT AVG(revenue) FROM manufacturers WHERE headquarter = 'Austin')
SELECT Manufacturers.Name FROM Manufacturers WHERE Manufacturers.Headquarter = 'Austin' ORDER BY Manufacturers.Revenue ASC NULLS LAST
SELECT SUM(Manufacturers.revenue) FROM Manufacturers WHERE Manufacturers.headquarter ILIKE '%Austin%' AND Manufacturers.revenue > (SELECT AVG(revenue) FROM Manufacturers WHERE headquarter ILIKE '%Austin%')
SELECT SUM(Companies.revenue) FROM Companies WHERE headquarter = 'Austin' AND revenue > (SELECT MIN(revenue) FROM Manufacturers)
SELECT m.founder, SUM(m.revenue) FROM manufacturers AS m GROUP BY m.founder
SELECT SUM(Manufacturers.revenue) FROM Manufacturers WHERE NOT Manufacturers.founder IS NULL
SELECT m.name, m.revenue FROM manufacturers AS m JOIN (SELECT headquarter, MAX(revenue) FROM manufacturers GROUP BY headquarter) AS sub ON m.headquarter = sub.headquarter
SELECT m.name, m.revenue FROM Manufacturers AS m JOIN (SELECT headquarter, MAX(revenue) FROM Manufacturers GROUP BY headquarter) AS sub ON m.headquarter = sub.headquarter AND m.revenue = sub.max_revenue
SELECT m.name, SUM(p.price) FROM products AS p JOIN manufacturers AS m ON p.manufacturer = m.code GROUP BY m.name
SELECT Manufacturers.Code, SUM(Manufacturers.Revenue) FROM Manufacturers GROUP BY Manufacturers.Code
SELECT COUNT(*) FROM Products WHERE Manufacturer <> 757001
SELECT COUNT(*) FROM Products WHERE Manufacturer <> 1
SELECT Manufacturers.Name FROM Manufacturers WHERE NOT Manufacturers.Code IN (SELECT DriveManufacturer.Code FROM Drivemanufacturer)
SELECT Manufacturers.name FROM Manufacturers WHERE NOT Manufacturers.code IN (SELECT DriveManufacturer.manufacturer_code FROM Drivemanufacturer)
SELECT Products.Name FROM Products
SELECT Products.Name FROM Products
SELECT p.name, CAST(TO_TIMESTAMP(CAST(p.code AS TEXT)) AS TEXT), CAST(TO_TIMESTAMP(CAST(p.price AS TEXT)) AS TEXT) FROM products AS p
SELECT p.name, p.price FROM Products AS p
SELECT Products.Name FROM Products WHERE Products.Price <= 200
SELECT Products.Name FROM Products WHERE Products.Price <= 200
SELECT Products.Code, Products.Name, Products.Price FROM Products WHERE Products.Price BETWEEN 60 AND 120
SELECT Products.Code, Products.Name, Products.Price FROM Products WHERE (Products.Price >= 60 AND Products.Price <= 120)
SELECT AVG(Price) FROM Products
SELECT AVG(Price) FROM Products
SELECT AVG(Price) FROM Products WHERE Manufacturer = 2
SELECT AVG(Price) FROM Products WHERE Manufacturer = 2
SELECT COUNT(*) FROM Products WHERE Price >= 180
SELECT COUNT(*) FROM Products WHERE Price >= 180
SELECT p.name, p.price FROM Products AS p WHERE p.price >= 180 ORDER BY p.price DESC, p.name ASC
SELECT Products.Name, Products.Price FROM Products WHERE Products.Price >= 180 ORDER BY Products.Price DESC, Products.Name ASC
SELECT m.code, AVG(p.price) FROM Products AS p JOIN Manufacturers AS m ON p.manufacturer = m.id GROUP BY m.code
SELECT Products.Manufacturer, AVG(Products.Price) FROM Products GROUP BY Products.Manufacturer
SELECT Products.Name, Products.Price FROM Products ORDER BY Products.Price ASC LIMIT 1
SELECT Products.Name, Products.Price FROM Products ORDER BY Products.Price ASC LIMIT 1
SELECT p.code, c.name FROM Products AS p JOIN ProductCategories AS c ON p.manufacturer = c.id ORDER BY p.price NULLS LAST
SELECT Products.Code, Products.Name, MIN(Products.Price) FROM Products GROUP BY Products.Category
SELECT MAX(problem_log_id) FROM Problem_Log
SELECT MAX(problem_log.log_entry_date), MIN(problem_log.problem_log_id) FROM problem_log
SELECT Problem_Log.problem_id, MIN(Problem_Log.problem_log_id) FROM Problem_Log GROUP BY Problem_Log.problem_id
SELECT Problem_Log.problem_id, MIN(Problem_Log.problem_log_id) FROM Problem_Log GROUP BY Problem_Log.problem_id
SELECT Problem_Log.problem_log_id, Problem_Log.log_entry_date FROM Problem_Log WHERE Problem_Log.problem_id = 10
SELECT p.problem_id, CAST(p.log_entry_date AS TEXT) FROM Problem_Log AS p WHERE p.problem_id = 10
SELECT problem_log_id, log_entry_description FROM Problem_Log
SELECT p.problem_id, CAST(p.log_entry_date AS TEXT), pl.log_entry_description FROM Problem_Log AS pl
SELECT problem_id FROM Problems WHERE date_problem_reported > '1978-06-26'
SELECT problem_id FROM Problems WHERE date_problem_reported > '1978-06-26'
SELECT problem_id FROM Problems WHERE date_problem_reported < '1978-06-26' ORDER BY problem_id NULLS LAST
SELECT problem_id FROM Problems WHERE date_problem_reported < '1978-06-26'
SELECT Product.product_name FROM Product ORDER BY Product.product_name ASC
SELECT Product.product_name FROM Product ORDER BY Product.product_name ASC
SELECT Product.product_id, Product.product_name FROM Product ORDER BY Product.product_id NULLS LAST
SELECT Product.product_id, Product.product_name FROM Product ORDER BY Product.product_id NULLS LAST
SELECT COUNT(*) FROM branch WHERE CAST(membership_amount AS FLOAT) > (SELECT AVG(CAST(membership_amount AS FLOAT)) FROM branch)
SELECT COUNT(*) FROM branch WHERE CAST(membership_amount AS FLOAT) > (SELECT AVG(CAST(membership_amount AS FLOAT)) FROM branch)
SELECT branch.name, branch.address_road, branch.city FROM branch ORDER BY branch.open_year
SELECT branch.name, branch.address_road, branch.city FROM branch ORDER BY branch.open_year
SELECT branch.name, COUNT(member.member_id) FROM branch JOIN member ON branch.branch_id = member.branch_id GROUP BY branch.name ORDER BY member_count DESC LIMIT 3
SELECT b.name FROM branch AS b WHERE CAST(b.membership_amount AS FLOAT) IN (SELECT MAX(CAST(a.membership_amount AS FLOAT)) FROM branch AS a GROUP BY a.branch_id) GROUP BY b.name HAVING COUNT(*) >= 3 ORDER BY COUNT(*) DESC LIMIT 3
SELECT DISTINCT branch.city FROM branch WHERE CAST(branch.membership_amount AS FLOAT) >= 100
SELECT DISTINCT branch.city FROM branch WHERE CAST(branch.membership_amount AS FLOAT) > 100
SELECT DISTINCT branch.open_year FROM branch WHERE branch.branch_id IN (SELECT branch_id FROM branch GROUP BY branch_id HAVING COUNT(branch_id) >= 2)
SELECT DISTINCT branch.open_year FROM branch GROUP BY branch.open_year HAVING COUNT(branch.branch_id) >= 2
SELECT MIN(CAST(membership_amount AS FLOAT)), MAX(CAST(membership_amount AS FLOAT)) FROM branch WHERE open_year = '2011' AND address_road ILIKE '%London%'
SELECT MIN(CAST(membership_amount AS FLOAT)), MAX(CAST(membership_amount AS FLOAT)) FROM branch WHERE open_year = '2011' OR city = 'London'
SELECT branch.city, COUNT(*) FROM branch WHERE CAST(branch.open_year AS INT) < 2010 GROUP BY branch.city
SELECT branch.city, COUNT(*) FROM branch WHERE CAST(branch.open_year AS INT) < 2010 GROUP BY branch.city
SELECT COUNT(DISTINCT level) FROM member
SELECT level FROM member GROUP BY level
SELECT member.card_number, member.name, member.homeown FROM member ORDER BY member.level DESC
SELECT member.card_number, member.name, member.hometown FROM member ORDER BY member.level DESC
SELECT member.level FROM member GROUP BY member.level ORDER BY COUNT(member.member_id) DESC LIMIT 1
SELECT member.level, COUNT(member.member_id) FROM member GROUP BY member.level ORDER BY total_members DESC LIMIT 1
SELECT member.name FROM member WHERE member.card_number IS NULL
SELECT member.name FROM member WHERE NOT member.member_id IN (SELECT branch.member_id FROM branch)
SELECT b.name, b.city FROM branch AS b WHERE NOT b.branch_id IN (SELECT member_branch FROM member)
SELECT branch.name, branch.city FROM branch WHERE NOT branch.branch_id IN (SELECT member.branch_id FROM member)
SELECT DISTINCT branch.city FROM branch WHERE branch.open_year = '2001' AND CAST(branch.membership_amount AS FLOAT) > 100
SELECT DISTINCT branch.city FROM branch WHERE CAST(branch.open_year AS INT) = 2001 AND CAST(branch.membership_amount AS FLOAT) > 100
SELECT DISTINCT branch.city FROM branch WHERE CAST(branch.membership_amount AS FLOAT) > 100
SELECT DISTINCT branch.city FROM branch WHERE CAST(branch.membership_amount AS FLOAT) > 100
SELECT member.card_number FROM member WHERE member.hometown ILIKE '%Kentucky%'
SELECT member.card_number FROM member WHERE member.hometown = 'Kentucky'
SELECT COUNT(*) FROM Student
SELECT COUNT(*) FROM Student
SELECT COUNT(*) FROM Voting_record
SELECT COUNT(*) FROM vowing_record
SELECT COUNT(DISTINCT President_Vote) FROM Voting_record
SELECT COUNT(DISTINCT President_Vote) FROM Voting_record
SELECT MAX(Student.Age) FROM Student
SELECT MAX(Student.Age) FROM Student
SELECT Student.LName FROM Student WHERE Student.Major = 50
SELECT Student.LName FROM Student WHERE Student.Major = 50
SELECT Student.Fname FROM Student WHERE Student.Age > 22
SELECT Student.Fname FROM Student WHERE Student.Age > 22
SELECT Student.Major FROM Student WHERE Student.Sex = 'M'
SELECT s.lname, s.fname, m.major FROM student AS s JOIN major AS m ON s.major = m.major WHERE sex = 'M'
SELECT AVG(Age) FROM Student WHERE Sex = 'F'
SELECT AVG(Student.Age) FROM Student WHERE Student.Sex = 'Female'
SELECT MAX(s.age), MIN(s.age) FROM student AS s WHERE s.major = 600
SELECT MIN(Student.Age), MAX(Student.Age) FROM Student WHERE Student.Major = 600
SELECT s.lname, s.fname FROM student AS s JOIN advisor AS a ON s.advisor = a.id WHERE s.city_code = 'BAL'
SELECT Student.Advisor FROM Student WHERE Student.city_code = 'BAL'
SELECT COUNT(DISTINCT Secretary_Vote) FROM Voting_record WHERE Election_Cycle = 'Fall'
SELECT Secretary_Vote FROM Voting_record WHERE "Election Cycle" ILIKE '%fall%' GROUP BY Secretary_Vote
SELECT COUNT(DISTINCT President_Vote) FROM Voting_record WHERE "Registration_Date" ILIKE '%08/30/2015%'
SELECT COUNT(President_Vote) FROM Voting_record WHERE Registration_Date = '08/30/2015'
SELECT DISTINCT Registration_Date, Election_Cycle FROM Voting_record
SELECT Registration_Date, Election_Cycle FROM Voting_record GROUP BY Registration_Date, Election_Cycle
SELECT President_Vote, Vice_President_Vote FROM Voting_record GROUP BY President_Vote, Vice_President_Vote
SELECT President_Vote, Vice_President_Vote FROM Voting_record
SELECT a.name, COUNT(s.stuID) FROM advisor AS a JOIN student AS s ON a.advisor_id = s.advisor WHERE a.status = 'active' GROUP BY a.name
SELECT s.advisor, COUNT(*) FROM student AS s GROUP BY s.advisor
SELECT Student.Advisor FROM Student GROUP BY Student.Advisor HAVING COUNT(Student.Advisor) > 2
SELECT Student.Advisor FROM Student GROUP BY Student.Advisor HAVING COUNT(Student.StuID) > 2
SELECT Student.Major FROM Student GROUP BY Student.Major HAVING COUNT(Student.StuID) < 3
SELECT Student.Major FROM Student GROUP BY Student.Major HAVING COUNT(Student.StuID) < 3
SELECT v.election_cycle, COUNT(*) FROM vowing_record AS v GROUP BY v.election_cycle
SELECT Voting_record.Election_Cycle, COUNT(Voting_record.StuID) FROM Voting_record GROUP BY Voting_record.Election_Cycle
SELECT m.major_name, COUNT(s.stuid) FROM student AS s JOIN major AS m ON s.major = m.major_id GROUP BY m.major_name ORDER BY student_count DESC LIMIT 1
SELECT s.major, COUNT(*) FROM student AS s GROUP BY s.major ORDER BY num_students DESC LIMIT 1
SELECT Student.Major FROM Student WHERE Student.Sex = 'F' GROUP BY Student.Major ORDER BY COUNT(Student.Major) DESC LIMIT 1
SELECT s.major, COUNT(*) FROM student AS s WHERE sex = 'F' GROUP BY s.major ORDER BY total_female_students DESC LIMIT 1
SELECT Student.city_code, COUNT(Student.StuID) FROM Student GROUP BY Student.city_code ORDER BY student_count DESC LIMIT 1
SELECT Student.city_code FROM Student GROUP BY Student.city_code ORDER BY COUNT(Student.StuID) DESC LIMIT 1
SELECT DISTINCT Student.Advisor FROM Student GROUP BY Student.Advisor HAVING COUNT(Student.StuID) > 2
SELECT s.advisor FROM student AS s GROUP BY s.advisor HAVING COUNT(s.stuid) > 2
SELECT COUNT(*) FROM Products
SELECT COUNT(*) FROM Products
SELECT COUNT(DISTINCT ref_colors.color_code) FROM ref_colors
SELECT COUNT(DISTINCT ref_colors.color_code) FROM ref_colors
SELECT COUNT(*) FROM Characteristics
SELECT COUNT(*) FROM Characteristics
SELECT p.product_name, CAST(p.typical_buying_price AS FLOAT) FROM Products AS p
SELECT p.product_name, CAST(p.typical_buying_price AS FLOAT) FROM products AS p
SELECT Ref_Colors.color_description FROM Ref_Colors
SELECT Ref_Colors.color_code, Ref_Colors.color_description FROM Ref_Colors
SELECT Characteristics.characteristic_name FROM Characteristics
SELECT Characteristics.characteristic_name FROM Characteristics GROUP BY Characteristics.characteristic_name
SELECT product_name FROM Products WHERE product_category_code = 'Spices'
SELECT product_name FROM Products WHERE product_category_code = 'Spices'
SELECT COUNT(*) FROM Products WHERE product_category_code ILIKE '%Seeds%'
SELECT COUNT(*) FROM products WHERE product_category_code ILIKE '%seeds%'
SELECT COUNT(*) FROM Products WHERE product_category_code = 'Spices' AND CAST(typical_selling_price AS FLOAT) > 1000
SELECT COUNT(*) FROM Products WHERE product_category_code = 'Spices' AND CAST(typical_buying_price AS FLOAT) > 1000
SELECT Products.product_category_code, CAST(Products.typical_buying_price AS FLOAT) FROM Products WHERE Products.product_name ILIKE '%cumin%'
SELECT product_category_code, CAST(typical_buying_price AS FLOAT) FROM products WHERE product_name ILIKE '%cumin%'
SELECT Products.product_category_code FROM Products WHERE Products.product_name ILIKE '%flax%'
SELECT Products.product_category_code FROM Products WHERE Products.product_name ILIKE '%flax%'
SELECT Ref_Product_Categories.unit_of_measure FROM Ref_Product_Categories WHERE Ref_Product_Categories.product_category_code ILIKE '%Hersheys%'
SELECT Ref_Product_Categories.unit_of_measure FROM Ref_Product_Categories WHERE Ref_Product_Categories.product_category_description ILIKE '%herb%'
SELECT Ref_Product_Categories.product_category_description FROM Ref_Product_Categories WHERE Ref_Product_Categories.product_category_code = 'Spices'
SELECT Ref_Product_Categories.product_category_description FROM Ref_Product_Categories WHERE Ref_Product_Categories.product_category_code = 'Spices'
SELECT Ref_Product_Categories.product_category_description, Ref_Product_Categories.unit_of_measure FROM Ref_Product_Categories WHERE Ref_Product_Categories.product_category_code ILIKE '%Hersers%'
SELECT Ref_Product_Categories.product_category_description, Ref_Product_Categories.unit_of_measure FROM Ref_Product_Categories WHERE product_category_code ILIKE '%Hers%'
SELECT Characteristics.characteristic_name, Characteristics.other_characteristic_details, Characteristics.characteristic_data_type FROM Characteristics WHERE NOT Characteristics.characteristic_id IN (SELECT ProductCharacteristics.characteristic_id FROM ProductCharacteristics) ORDER BY Characteristics.characteristic_name NULLS LAST
SELECT Characteristics.characteristic_name, Characteristics.other_characteristic_details, Characteristics.characteristic_data_type FROM Characteristics WHERE NOT Characteristics.characteristic_id IN (SELECT ProductCharacteristics.product_characteristic_id FROM ProductCharacteristics)
-1
SELECT COUNT(DISTINCT ref_colors.color_code) FROM ref_colors LEFT JOIN product_colors ON ref_colors.color_code = product_colors.color_code WHERE product_colors.color_code IS NULL
SELECT COUNT(*) FROM event
SELECT event.name, event.year FROM event ORDER BY event.year DESC
SELECT event.name FROM event WHERE event.year = (SELECT MAX(event.year) FROM event)
SELECT COUNT(*) FROM stadium
SELECT s.name FROM stadium AS s WHERE s.capacity = (SELECT MAX(s2.capacity) FROM stadium AS s2)
SELECT s.name FROM stadium AS s WHERE s.capacity < (SELECT AVG(capacity) FROM stadium)
SELECT c.name, COUNT(*) FROM stadium AS s JOIN city AS c ON s.city = c.name GROUP BY c.name ORDER BY total_stadium DESC LIMIT 1
SELECT c.name, COUNT(g.id) FROM country AS c JOIN stadium AS g ON c.code = g.country GROUP BY c.name HAVING COUNT(g.id) >= 3 ORDER BY number_of_stadium DESC LIMIT 1
SELECT COUNTRY.name FROM COUNTRY WHERE COUNTRY.ID IN (SELECT COUNTRY.id FROM STADIUM WHERE CAPacity > 60000) AND COUNTRY.ID IN (SELECT COUNTRY.id FROM STADIUM WHERE CAPacity < 50000)
SELECT DISTINCT (stadium.city) FROM stadium WHERE stadium.opening_year < 2006
SELECT c.country, COUNT(*) FROM stadium AS s JOIN city AS c ON s.city = c.name GROUP BY c.country
SELECT c.name FROM country AS c JOIN stadium AS s ON c.code = s.country WHERE s.opening_year <= 2006
SELECT COUNT(*) FROM stadium WHERE country <> 'Russia'
SELECT swimmer.name FROM swimmer ORDER BY swimmer.meter_100 ASC
SELECT COUNT(DISTINCT swimmer.nationality) FROM swimmer
SELECT COUNT(DISTINCT s.nationality), c.name FROM swimmer AS s JOIN country AS c ON s.nationality = c.code GROUP BY c.name HAVING COUNT(DISTINCT s.nationality) > 1
SELECT swimmer.meter_200, swimmer.meter_300 FROM swimmer WHERE swimmer.nationality ILIKE '%Australia%' AND (CAST(swimmer.meter_200 AS FLOAT) > 200 OR CAST(swimmer.meter_300 AS FLOAT) > 300)
SELECT s.name FROM stadium AS s LEFT JOIN event AS e ON s.id = e.stadium_id WHERE e.stadium_id IS NULL
SELECT swimmer.name FROM swimmer WHERE swimmer.id IS NULL
SELECT s.id, s.name, n.nationality, m.meter_100, m.meter_200, m.meter_300, m.meter_400, m.meter_500, m.meter_600, m.meter_700, TO_NUMBER(s.time, '99999999') / 60 FROM swimmer AS s JOIN nationality AS n ON s.nationality = n.id JOIN meter AS m ON s.id = m.id
SELECT AVG(capacity) FROM stadium WHERE opening_year = 2005
SELECT COUNT(Railway_ID) FROM railway
SELECT railway.builder FROM railway ORDER BY railway.builder ASC
SELECT railway.wheels, railway.location FROM railway
SELECT MAX(manager.level) FROM manager WHERE manager.country <> 'Australia'
SELECT AVG(manager.age) FROM manager
SELECT manager.name FROM manager ORDER BY manager.level ASC
SELECT t.name, CAST(t.arrival AS TEXT) FROM train AS t
SELECT manager.name FROM manager ORDER BY manager.age ASC LIMIT 1
SELECT railway.builder, COUNT(railway_id) FROM railway GROUP BY railway.builder ORDER BY COUNT DESC
SELECT railway.builder FROM railway GROUP BY railway.builder ORDER BY COUNT(railway.builder) DESC LIMIT 1
SELECT railway.location, COUNT(railway.railway_id) FROM railway GROUP BY railway.location ORDER BY COUNT DESC
SELECT railway.location FROM railway GROUP BY railway.location HAVING COUNT(railway.railway_id) > 1
SELECT COUNT(railway_id) FROM railway WHERE NOT railway_id IN (SELECT railway_id FROM train)
SELECT DISTINCT manager.country FROM manager WHERE (manager.age > 50 AND manager.age < 46) GROUP BY manager.country
SELECT DISTINCT manager.country FROM manager
SELECT manager.manager_id, manager.name, COUNT(manager.working_year_starts) FROM manager GROUP BY manager.manager_id, manager.name ORDER BY manager.level DESC
SELECT manager.country FROM manager WHERE manager.age > 50 OR manager.age < 46
SELECT COUNT(*) FROM Addresses WHERE country = 'USA'
SELECT DISTINCT Addresses.city FROM Addresses
SELECT Addresses.state_province_county, COUNT(Addresses.address_id) FROM Addres GROUP BY Addres.state_province_county
SELECT customers.customer_name, customers.customer_phone FROM customers WHERE customers.customer_address IS NULL
SELECT DISTINCT Products.product_type_code FROM Products GROUP BY Products.product_type_code HAVING COUNT(Products.product_id) >= 2
SELECT Customers.customer_name, Customers.customer_phone, Customers.payment_method_code FROM Customers ORDER BY Customers.customer_id DESC
SELECT MIN(product_price), MAX(product_price), AVG(product_price) FROM Products
SELECT COUNT(*) FROM Products WHERE product_price > (SELECT AVG(product_price) FROM Products)
SELECT p.product_type_code, p.product_name FROM Products AS p WHERE p.product_price > 1000 OR p.product_price < 500
SELECT dorm_name FROM Dorm WHERE gender = 'F'
SELECT Dorm.dorm_name FROM Dorm WHERE Dorm.gender = 'F'
SELECT dorm_name FROM Dorm WHERE student_capacity > 300
SELECT dorm_name FROM Dorm WHERE student_capacity > 300
SELECT COUNT(*) FROM Student WHERE Sex = 'F' AND Age < 25
SELECT COUNT(*) FROM Student WHERE Sex = 'F' AND Age < 25
SELECT Student.Fname FROM Student WHERE Student.Age < 20
SELECT s.fname FROM student AS s WHERE age > 20
SELECT Student.Fname FROM Student WHERE "city_code" ILIKE '%PHL%' AND Age BETWEEN 20 AND 25
SELECT Student.Fname FROM Student WHERE (Student.Age >= 20 AND Student.Age <= 25) AND (Student.city_code = 'PHL')
SELECT COUNT(dormid) FROM Dorm
SELECT COUNT(dormid) FROM Dorm
SELECT COUNT(DISTINCT dorm_amenity.amenity_name) FROM dorm_amenity
SELECT COUNT(DISTINCT Dorm_amenity.amenity_name) FROM Dorm_amenity
SELECT SUM(dorm.student_capacity) FROM dorm
SELECT SUM(dorm.student_capacity) FROM dorm
SELECT COUNT(*) FROM Student
SELECT COUNT(*) FROM Student
SELECT Student.city_code, AVG(Student.Age) FROM Student GROUP BY Student.city_code
SELECT Student.city_code, AVG(Student.Age) FROM Student GROUP BY Student.city_code ORDER BY average_age DESC
SELECT AVG(student_capacity), SUM(student_capacity) FROM Dorm WHERE gender = 'X'
SELECT AVG(student_capacity), SUM(student_capacity) FROM Dorm WHERE gender = 'X'
SELECT COUNT(*) FROM Has_amenity
SELECT COUNT(*) FROM Has_Amenity
SELECT Dorm.dorm_name FROM Dorm WHERE NOT Dorm.dormid IN (SELECT Amenity.dormid FROM Amenity)
SELECT Dorm.dorm_name FROM Dorm WHERE NOT Dorm.dormid IN (SELECT Dorm_Amenity.dormid FROM Dorm_Amenity)
SELECT DISTINCT dorm.gender FROM dorm
SELECT COUNT(DISTINCT gender) FROM Dorm
SELECT Dorm.student_capacity, Dorm.gender FROM Dorm WHERE Dorm.dorm_name ILIKE '%Donor%'
SELECT Dorm.student_capacity, Dorm.gender FROM Dorm WHERE Dorm.dorm_name ILIKE '%Donor%in%it%'
SELECT dorm_name, gender FROM Dorm WHERE student_capacity > 300 OR student_capacity < 100
SELECT dorm.dorm_name, CASE WHEN dorm.student_capacity > 300 THEN 'Large' ELSE 'Small' END FROM dorm WHERE dorm.student_capacity > 300 OR dorm.student_capacity < 100
SELECT Student.major, Student.city_code FROM Student GROUP BY Student.major, Student.city_code
SELECT Student.StuID, COUNT(DISTINCT Student.Major), COUNT(DISTINCT Student.city_code) FROM Student GROUP BY Student.StuID
SELECT Student.LName FROM Student WHERE (Student.Sex = 'F' AND Student.city_code = 'BAL') OR (Student.Sex = 'M' AND Student.Age < 20)
SELECT Student.LName FROM Student WHERE (Student.Sex = 'Female' OR Student.city_code = 'BAL') AND Student.Age < 20
SELECT dorm_name FROM Dorm ORDER BY student_capacity DESC LIMIT 1
SELECT dorm_name FROM Dorm ORDER BY student_capacity DESC LIMIT 1
SELECT Dorm_amenity.amenity_name FROM Dorm_amenity GROUP BY Dorm_amenity.amenity_name ORDER BY Dorm_amenity.amenity_name NULLS LAST
SELECT Dorm_amenity.amenity_name FROM Dorm_amenity ORDER BY Dorm_amenity.amenity_name ASC
SELECT Student.city_code, COUNT(Student.StuID) FROM Student GROUP BY Student.city_code ORDER BY total_students DESC LIMIT 1
SELECT Student.city_code, COUNT(Student.StuID) FROM Student GROUP BY Student.city_code ORDER BY total_students DESC LIMIT 1
SELECT s.fname, s.lname FROM student AS s WHERE s.age < (SELECT AVG(age) FROM student)
SELECT Student.Fname, Student.LName FROM Student WHERE Student.Age < (SELECT AVG(Student.Age) FROM Student)
SELECT Student.LName, Student.Fname, Student.Age FROM Student WHERE "city_code" <> 'HKG' ORDER BY Student.Age NULLS LAST
SELECT Student.LName, Student.Fname FROM Student WHERE "city_code" <> 'HKG' ORDER BY Student.Age NULLS LAST
SELECT gender, COUNT(dormid), SUM(student_capacity) FROM Dorm GROUP BY gender
SELECT Dorm.gender, COUNT(Dorm.dormid), SUM(Dorm.student_capacity) FROM Dorm GROUP BY Dorm.gender
SELECT s.sex, AVG(s.age), MIN(s.age) FROM student AS s GROUP BY s.sex
SELECT Student.Sex, AVG(Student.Age), MIN(Student.Age) FROM Student GROUP BY Student.Sex
SELECT Student.Major, COUNT(*) FROM Student GROUP BY Student.Major
SELECT Student.Major, COUNT(Student.StuID) FROM Student GROUP BY Student.Major
SELECT s.city_code, COUNT(*), AVG(age) FROM student AS s GROUP BY s.city_code
SELECT s.city_code, COUNT(*), AVG(s.age) FROM student AS s GROUP BY s.city_code
SELECT Student.city_code, AVG(Student.Age), COUNT(*) FILTER(WHERE Student.Sex = 'M') FROM Student GROUP BY Student.city_code
SELECT Student.city_code, AVG(Student.Age), COUNT(CASE WHEN Student.Sex = 'M' THEN 1 END) FROM Student GROUP BY Student.city_code
SELECT Student.city_code, COUNT(Student.StuID) FROM Student GROUP BY Student.city_code HAVING COUNT(Student.StuID) > 1
SELECT s.city_code, COUNT(*) FROM student AS s GROUP BY s.city_code HAVING COUNT(*) > 1
SELECT s.fname, s.lname FROM student AS s WHERE NOT EXISTS(SELECT 1 FROM student AS s2 WHERE s.major < s2.major)
SELECT s.lname, s.fname FROM student AS s WHERE NOT EXISTS(SELECT 1 FROM student AS s2 WHERE s2.major > s.major)
SELECT Student.Sex, AVG(Student.Age), COUNT(*) FILTER(WHERE Student.Age < AVG(Student.Age)) FROM Student GROUP BY Student.Sex
SELECT Student.Sex, AVG(Student.Age), COUNT(*) FILTER(WHERE Student.Age > AVG(Student.Age)) FROM Student GROUP BY Student.Sex
SELECT Dorm.dorm_name FROM Dorm WHERE NOT Dorm.dormid IN (SELECT DormTVLounge.dormid FROM DormTVLounge)
SELECT dorm_name FROM Dorm WHERE NOT dormid IN (SELECT dormid FROM TVLounge)
SELECT COUNT(customer_id) FROM customers
SELECT COUNT(*) FROM Customers
SELECT Customers.email_address, Customers.phone_number FROM Customers ORDER BY Customers.email_address ASC, Customers.phone_number ASC
SELECT Customers.email_address, Customers.phone_number FROM Customers ORDER BY Customers.email_address ASC, Customers.phone_number ASC
SELECT c.town_city, COUNT(*) FROM customers AS c WHERE c.customer_type_code = 'good credit rating' GROUP BY c.town_city ORDER BY customer_count ASC NULLS LAST LIMIT 1
SELECT Customers.town_city FROM Customers WHERE Customers.customer_type_code = 'good credit rating' ORDER BY COUNT(Customers.customer_id) ASC NULLS LAST LIMIT 1
SELECT Customers.email_address, Customers.phone_number FROM Customers WHERE NOT Customers.customer_id IN (SELECT customer_id FROM Complaints)
SELECT customers.email_address, customers.phone_number FROM customers WHERE NOT customers.customer_id IN (SELECT customer_id FROM complaints)
SELECT customers.phone_number FROM customers UNION SELECT staff.phone_number FROM staff
SELECT Customers.phone_number FROM Customers UNION ALL SELECT Staff.phone_number FROM Staff
SELECT Products.product_description FROM Products WHERE Products.product_name ILIKE '%Chocolate%'
SELECT Products.product_description FROM Products WHERE Products.product_name ILIKE '%Chocolate%'
SELECT p.product_name, c.category_description FROM Products AS p JOIN Product_Categories AS c ON p.product_category_code = c.category_code ORDER BY p.product_price DESC LIMIT 1
SELECT p.product_name, pc.product_category_code FROM Products AS p JOIN Product_Category AS pc ON p.product_category_code = pc.product_category_code ORDER BY p.product_price DESC LIMIT 1
SELECT Products.product_id, Products.product_price FROM Products WHERE NOT Products.product_id IN (SELECT Complaints.product_id FROM Complaints)
SELECT Products.product_id, Products.product_price FROM Products WHERE NOT Products.product_id IN (SELECT Complaints.product_id FROM Complaints)
SELECT product_category_code, AVG(product_price) FROM Products GROUP BY product_category_code
SELECT Products.product_category_code, AVG(Products.product_price) FROM Products GROUP BY Products.product_category_code
SELECT complaints.complaint_status_code FROM complaints WHERE complaints.product_id IN (SELECT product_id FROM files) GROUP BY complaints.complaint_status_code HAVING COUNT(complaints.product_id) > 3
SELECT complaints.complaint_status_code FROM complaints GROUP BY complaints.complaint_status_code HAVING COUNT(complaints.complaint_id) > 3
SELECT Staff.last_name FROM Staff WHERE Staff.email_address ILIKE '%wrau%'
SELECT Staff.last_name FROM Staff WHERE Staff.email_address ILIKE '%wrau%'
SELECT COUNT(*), customer_type_code FROM customers GROUP BY customer_type_code ORDER BY total_customers DESC LIMIT 1
SELECT COUNT(*) FROM Customers GROUP BY customer_type_code ORDER BY total_customers DESC LIMIT 1
SELECT COUNT(DISTINCT complaints.complaint_type_code) FROM complaints
SELECT COUNT(DISTINCT complaints.complaint_type_code) FROM complaints
SELECT customers.address_line_1, customers.address_line_2 FROM customers WHERE customers.email_address = 'vbogisich@example.org'
SELECT Customers.address_line_1, Customers.address_line_2 FROM Customers WHERE Customers.email_address = 'vbogisich@example.com'
SELECT complaints.complaint_status_code, COUNT(*) FROM complaints WHERE complaints.complaint_type_code = 'Product Failure' GROUP BY complaints.complaint_status_code
SELECT complaint_status_code, COUNT(*) FROM Complaints WHERE complaint_type_code = 'Product Failure' GROUP BY complaint_status_code
SELECT c.state, COUNT(*) FROM customers AS c GROUP BY c.state ORDER BY customer_count DESC LIMIT 1
SELECT c.state, COUNT(*) FROM customers AS c GROUP BY c.state ORDER BY customer_count DESC LIMIT 1
SELECT COUNT(*) FROM submission
SELECT COUNT(*) FROM submission
SELECT submission.author FROM submission ORDER BY submission.scores ASC
SELECT submission.author, submission.score FROM submission ORDER BY submission.score ASC
SELECT submission.author, college FROM submission
SELECT sub.submission_id, sub.author, col.college FROM submission AS sub JOIN college AS col ON sub.college = col.name
SELECT submission.author FROM submission WHERE submission.college IN ('Florida', 'Temple')
SELECT submission.author FROM submission WHERE submission.college IN ('Florida', 'Temple') ORDER BY submission.author NULLS LAST
SELECT AVG(Scores) FROM submission
SELECT AVG(Scores) FROM submission
SELECT submission.author FROM submission WHERE submission.scores = (SELECT MAX(submission.scores) FROM submission)
SELECT submission.author FROM submission WHERE submission.scores = (SELECT MAX(submission.scores) FROM submission)
SELECT college, COUNT(author) FROM submission GROUP BY college ORDER BY author_count DESC
SELECT c.name, COUNT(s.author) FROM college AS c JOIN submission AS s ON c.code = s.college GROUP BY c.name
SELECT submission.college FROM submission GROUP BY submission.college ORDER BY COUNT(submission.college) DESC
SELECT c.name, COUNT(s.author) FROM submission AS s JOIN college AS c ON s.college = c.name GROUP BY c.name ORDER BY number_of_authors DESC LIMIT 1
SELECT DISTINCT college FROM submission WHERE submission_id IN (SELECT submission_id FROM submission WHERE scores > 90) AND submission_id IN (SELECT submission_id FROM submission WHERE scores < 80)
SELECT college FROM submission WHERE submission_id > 90 AND submission_id < 80
SELECT workshop.date, workshop.venue FROM workshop ORDER BY workshop.venue ASC
SELECT workshop.date, workshop.venue FROM workshop ORDER BY workshop.venue ASC
SELECT a.author FROM author AS a LEFT JOIN submission AS s ON a.author = s.author WHERE s.author IS NULL
SELECT author FROM submission GROUP BY author HAVING COUNT(submission_id) = 0
SELECT COUNT(*) FROM Investors
SELECT Investors.investor_id, Investors.investor_details FROM Investors
SELECT lots.lot_id, lots.investor_id, lots.lot_details FROM lots
SELECT MAX(amount_of_transaction) FROM Transactions
SELECT date_of_transaction, share_count FROM Transactions
SELECT CAST(SUM(amount_of_transaction) AS FLOAT) / NULLIF((SELECT SUM(amount_of_transaction) FROM Transactions), 0)
SELECT Transactions.transaction_id FROM Transactions WHERE Transactions.transaction_type_code ILIKE '%PUR%'
SELECT date_of_transaction FROM Transactions WHERE transaction_type_code = 'Sale'
SELECT AVG(amount_of_transaction) FROM Transactions WHERE transaction_type_code = 'Sale'
SELECT Ref_Transaction_Types.transaction_type_description FROM Ref_Transaction_Types WHERE Ref_Transaction_Types.transaction_type_code ILIKE '%PUR%'
SELECT MIN(amount_of_transaction) FROM Transactions WHERE transaction_type_code = 'PUR' AND CAST(share_count AS FLOAT) > 50
SELECT MAX(transaction.share_count) FROM transactions WHERE transactions.amount_of_transaction < 10000
SELECT date_of_transaction FROM Transactions WHERE (share_count > '100' OR amount_of_transaction > 1000)
SELECT COUNT(DISTINCT transaction_type_code) FROM Transactions
SELECT lots.lot_id, lots.investor_id, lots.lot_details FROM lots
SELECT transaction_type_code, AVG(amount_of_transaction) FROM Transactions GROUP BY transaction_type_code
SELECT transaction_type_code, MIN(share_count), MAX(share_count) FROM transactions GROUP BY transaction_type_code
SELECT investor_id, AVG(CAST(share_count AS FLOAT)) FROM Transactions GROUP BY investor_id
SELECT investor_id, AVG(CAST(share_count AS FLOAT)) FROM Transactions GROUP BY investor_id ORDER BY avg_share_count DESC
SELECT investor_id, AVG(amount_of_transaction) FROM Transactions GROUP BY investor_id
SELECT investor_id, COUNT(transaction_id) FROM Transactions WHERE transaction_type_code = 'Sale' AND amount_of_transaction > 0 GROUP BY investor_id
SELECT investor_id, COUNT(transaction_id) FROM Transactions GROUP BY investor_id
SELECT transactions.transaction_type_code FROM transactions GROUP BY transactions.transaction_type_code ORDER BY COUNT(transactions.transaction_id) ASC NULLS LAST LIMIT 1
SELECT Transactions.transaction_type_code, COUNT(*) FROM Transactions GROUP BY Transactions.transaction_type_code ORDER BY frequency DESC LIMIT 1
SELECT date_of_transaction FROM Transactions WHERE (CAST(share_count AS INT) > 100 OR amount_of_transaction > 100)
SELECT CAST(sales.sales_transaction_id AS FLOAT) / CAST(purchases.purchase_transaction_id AS FLOAT), sales.sales_details, purchases.purchase_details FROM sales JOIN purchases ON sales.sales_transaction_id <> purchases.purchase_transaction_id
SELECT lots.lot_id, lots.investor_id, lots.lot_details FROM lots WHERE NOT lots.lot_id IN (SELECT transaction.lot_id FROM transaction)
SELECT COUNT(*) FROM Hotels
SELECT COUNT(*) FROM Hotels WHERE NOT price_range IS NULL
SELECT price_range FROM Hotels
SELECT MIN(price_range), MAX(price_range) FROM Hotels
SELECT DISTINCT Locations.Location_Name FROM Locations
SELECT Locations.Location_Name FROM Locations
SELECT s.name, s.other_details FROM staff AS s
SELECT s.name, s.other_details FROM staff AS s
SELECT v.visitor_id, v.visitor_details FROM visitors AS v
SELECT v.visitor_id, v.visitor_details FROM visitors AS v
SELECT MIN(price_range), MAX(price_range) FROM Hotels WHERE star_rating_code = '5'
SELECT Hotels.price_range FROM Hotels WHERE Hotels.star_rating_code = '5' ORDER BY Hotels.price_range NULLS LAST LIMIT 5
SELECT AVG(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = 'Y'
SELECT AVG(price_range) FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = 'Y'
SELECT Locations.Address FROM Locations WHERE Locations.location_name ILIKE '%Science%Gallery%' ORDER BY Locations.address NULLS LAST
SELECT Locations.Address FROM Locations WHERE Locations.location_name ILIKE '%Science%Gallery%'
SELECT Locations.Location_Name, Locations.Address_Details FROM Locations WHERE Locations.Location_Name ILIKE '%UK%gallery%'
SELECT Locations.Location_Name, Locations.Address FROM Locations WHERE Locations.Location_Name ILIKE '%Japanese%' ORDER BY Locations.Location_Name NULLS LAST
SELECT Locations.Location_Name FROM Locations WHERE Locations.Location_Name ILIKE '%film%'
SELECT Locations.Location_Name FROM Locations WHERE Locations.Location_Name ILIKE '%film%'
SELECT COUNT(DISTINCT Photos.Name) FROM Photos
SELECT COUNT(DISTINCT Photos.Name) FROM Photos
SELECT DATE_TRUNC('DAY', Visit_Date) FROM Visits GROUP BY Visit_Day
SELECT DISTINCT Visit_Date FROM Visits
SELECT ta.name FROM tourism_attractions AS ta JOIN transport_modes AS tm ON ta.transport_mode_code = tm.transport_mode_code WHERE tm.transport_mode_code ILIKE '%bus%'
SELECT ta.name FROM Tourist_attractions AS ta WHERE ta.how_to_get_there IN ('Bus', 'Train')
SELECT ta.name, ta.opening_hours FROM tourist_attractions AS ta WHERE ta.how_to_get_there IN ('bus', 'walk')
SELECT ta.name, ta.opening_hours FROM tourist_attractions AS ta WHERE ta.how_to_get_there IN ('bus', 'walk')
SELECT star_rating_code, AVG(price_range) FROM Hotels GROUP BY star_rating_code
SELECT star_rating_code, AVG(price_range) FROM Hotels GROUP BY star_rating_code
SELECT pets_allowed_yn, AVG(price_range) FROM Hotels GROUP BY pets_allowed_yn
SELECT pets_allowed_yn, AVG(price_range) FROM Hotels GROUP BY pets_allowed_yn
SELECT hotels.hotel_id, CAST(hotels.star_rating_code AS FLOAT) FROM hotels ORDER BY hotels.price_range ASC
SELECT hotels.hotel_id, CAST(hotels.star_rating_code AS FLOAT) FROM hotels ORDER BY hotels.price_range ASC
SELECT Hotels.hotel_id, Hotels.star_rating_code, Hotels.pets_allowed_yn, Hotels.price_range, RANK() OVER (ORDER BY Hotels.price_range DESC) FROM Hotels ORDER BY rank ASC LIMIT 3
SELECT Hotels.hotel_id, Hotels.star_rating_code, Hotels.pets_allowed_yn, Hotels.price_range, RANK() OVER (ORDER BY Hotels.price_range DESC) FROM Hotels ORDER BY rank ASC LIMIT 3
SELECT Hotels.hotel_id, Hotels.star_rating_code, Hotels.pets_allowed_yn, Hotels.price_range, RANK() OVER (ORDER BY Hotels.price_range ASC) FROM Hotels WHERE NOT Hotels.price_range IS NULL ORDER BY rank ASC LIMIT 3
SELECT h.hotel_id, h.star_rating_code, h.other_hotel_details FROM Hotels AS h WHERE h.price_range IN (SELECT MIN(price_range) FROM Hotels) GROUP BY h.hotel_id, h.star_rating_code, h.other_hotel_details
SELECT Tourist_Attraction.How_to_Get_There, COUNT(*) FROM Tourist_Attraction GROUP BY Tourist_Attraction.How_to_Get_There ORDER BY number_of_people DESC LIMIT 1
SELECT ta.attraction_type_code, CAST(COUNT(*) AS FLOAT) / total_attractions FROM tourist_attractions AS ta GROUP BY ta.attraction_type_code ORDER BY fraction DESC LIMIT 1
SELECT attraction_type_code, COUNT(*) FROM touristic_attractions GROUP BY attraction_type_code
SELECT ta.attraction_type_code, COUNT(*) FROM touristic_attractions AS ta GROUP BY ta.attraction_type_code
SELECT COUNT(*) FROM Visitors
SELECT COUNT(DISTINCT Visitors.tourist_id) FROM visitors
SELECT COUNT(GameID) FROM Video_Games
SELECT COUNT(*) FROM Video_Games
SELECT COUNT(DISTINCT Video_Games.GType) FROM Video_Games
SELECT COUNT(DISTINCT Video_Games.GType) FROM Video_Games
SELECT DISTINCT Video_Games.GType FROM Video_Games
SELECT DISTINCT Video_Games.GType FROM Video_Games
SELECT vg.gname, vg.gtype FROM video_games AS vg ORDER BY vg.gname
SELECT vg.gname, vg.gtype FROM video_games AS vg ORDER BY vg.gname ASC NULLS LAST, vg.gtype ASC NULLS LAST
SELECT Video_Games.GameID, Video_Games.GName FROM Video_Games WHERE Video_Games.GType ILIKE '%Collectible%card%game%'
SELECT vg.gname FROM video_games AS vg JOIN card_collectors AS cc ON vg.gameid = cc.card_id
SELECT vg.gtype FROM video_games AS vg WHERE vg.gname ILIKE '%destiny%'
SELECT vg.gtype FROM video_games AS vg WHERE vg.gname ILIKE '%call%of%destiny%'
SELECT COUNT(*) FROM Video_Games WHERE GType ILIKE '%Massive%multiplayer%online%game%'
SELECT COUNT(*) FROM Video_Games WHERE GType ILIKE '%Massively%multiplayer%online%'
SELECT vg.gtype, COUNT(*) FROM video_games AS vg GROUP BY vg.gtype
SELECT vg.gtype, COUNT(*) FROM video_games AS vg GROUP BY vg.gtype
SELECT vg.gtype, COUNT(*) FROM video_games AS vg GROUP BY vg.gtype ORDER BY game_count DESC LIMIT 1
SELECT vg.gtype, COUNT(*) FROM video_games AS vg GROUP BY vg.gtype ORDER BY game_count DESC LIMIT 1
SELECT vg.gtype, COUNT(*) FROM video_games AS vg GROUP BY vg.gtype ORDER BY game_count ASC LIMIT 1
SELECT Video_Games.gtype, COUNT(*) FROM Video_Games GROUP BY Video_Games.gtype ORDER BY game_count ASC LIMIT 1
SELECT Student.StuID FROM Student WHERE Student.city_code = 'CHI'
SELECT Student.StuID FROM Student WHERE Student.city_code = 'CHI'
SELECT Student.StuID FROM Student WHERE Student.Advisor = 1121
SELECT Student.StuID FROM Student WHERE Student.Advisor = 1121
SELECT S.Fname FROM Student AS S WHERE S.Major = 600
SELECT Student.Fname FROM Student WHERE Student.Major = 600
SELECT Student.Major, AVG(Student.Age), MIN(Student.Age), MAX(Student.Age) FROM Student GROUP BY Student.Major
SELECT Student.Major, AVG(Student.Age), MIN(Student.Age), MAX(Student.Age) FROM Student GROUP BY Student.Major
SELECT a.name FROM Advisor AS a JOIN Student AS s ON a.advisor_id = s.advisor WHERE a.name IN (SELECT name FROM Advisor GROUP BY name HAVING COUNT(Student.advisor) >= 2)
SELECT Student.LName, Student.Fname FROM Student WHERE NOT Student.Advisor IS NULL
SELECT COUNT(SportName) FROM SportsInfo
SELECT COUNT(DISTINCT SportName) FROM SportsInfo
SELECT COUNT(*) FROM SportsInfo
SELECT COUNT(DISTINCT SportsInfo.StuID) FROM SportsInfo
SELECT SportsInfo.StuID FROM SportsInfo WHERE SportsInfo.OnScholarship = 'Yes'
SELECT SportsInfo.StuID FROM SportsInfo WHERE SportsInfo.OnScholarship = 'Yes'
SELECT COUNT(SportsInfo.GamesPlayed) FROM SportsInfo
SELECT SUM(GamesPlayed) FROM SportsInfo
SELECT COUNT(GamesPlayed) FROM SportsInfo WHERE OnScholarship = 'Yes' AND SportName = 'Football'
SELECT SUM(GamesPlayed) FROM SportsInfo WHERE "OnScholarship" ILIKE '%yes%'
SELECT SportsInfo.SportName, COUNT(Students.StudentID) FROM SportsInfo JOIN students ON SportsInfo.StuID = students.StuID GROUP BY SportsInfo.SportName
SELECT SportsInfo.SportName, COUNT(Students.StudentID) FROM SportsInfo JOIN students ON SportsInfo.StuID = students.StudentID GROUP BY SportsInfo.SportName
SELECT s.StuID, COUNT(DISTINCT si.SportName), SUM(si.GamesPlayed) FROM SportsInfo AS si JOIN Students AS s ON si.StuID = s.StudentID GROUP BY s.StuID
SELECT s.StuID, COUNT(si.SportName), SUM(si.GamesPlayed) FROM Students AS s JOIN SportsInfo AS si ON s.StuID = si.StuID GROUP BY s.StuID
SELECT S.StuID FROM SportsInfo AS S WHERE S.HoursPerWeek > 10
SELECT SportsInfo.StuID FROM SportsInfo WHERE SportsInfo.HoursPerWeek > 10
SELECT SportsInfo.SportName, COUNT(*) FROM SportsInfo WHERE OnScholarship = 'Yes' GROUP BY SportsInfo.SportName ORDER BY total_students_on_scholarship DESC LIMIT 1
SELECT SportsInfo.SportName, COUNT(SportsInfo.StuID) FROM SportsInfo WHERE SportsInfo.OnScholarship = 'Yes' GROUP BY SportsInfo.SportName ORDER BY total_students DESC LIMIT 1
SELECT Student.StuID FROM Student WHERE NOT Student.StuID IN (SELECT Sports_Student.StuID FROM Sports_Student)
SELECT Student.StuID FROM Student WHERE NOT Student.StuID IN (SELECT Sports_Player.Student_id FROM Sports_player)
SELECT Student.StuID FROM Student WHERE Student.Major = 600 AND Student.StuID IN (SELECT Scholarship.StuID FROM Scholarship)
SELECT Student.StuID FROM Student WHERE Student.Major = 600 AND Student.StuID IN (SELECT Scholarship.Student_id FROM Scholarship)
SELECT Student.StuID FROM Student WHERE Student.Sex = 'Female' AND Student.Major = 1
SELECT Student.StuID FROM Student WHERE Student.Sex = 'Female' AND EXISTS(SELECT 1 FROM TeamMember WHERE TeamMember.Student_id = Student.StuID)
SELECT Student.StuID FROM Student WHERE Student.Sex = 'Male' AND Student.Major <> 1
SELECT Student.StuID FROM Student WHERE Student.Sex = 'M' AND NOT Student.StuID IN (SELECT Student_Athlete.StuID FROM Student AS Student_Athlete JOIN Athlete_in_sport AS athlete_in_sport ON Student_Athlete.StuID = athlete_in_sport.athlete_id WHERE athlete_in_sport.sport_code = 'SOC')
SELECT CAST(COUNT(StuID) AS FLOAT) / CAST(COUNT(GameID) AS FLOAT) FROM Plays_Games
SELECT COUNT(DISTINCT Plays_Games.StuID) FROM Plays_Games
SELECT Student.StuID FROM Student WHERE NOT Student.StuID IN (SELECT VideoGamePlayer.Student_id FROM VideoGamePlayer)
SELECT Student.StuID FROM Student WHERE NOT Student.StuID IN (SELECT VideoGamePlayer.StuID FROM VideoGamePlayer)
SELECT s.StuID FROM SportsInfo AS s JOIN VideoGame AS vg ON s.StuID = vg.StuID
SELECT s.StuID FROM SportsInfo AS s JOIN VideoGameInfo AS vg ON s.StuID = vg.StuID
SELECT p.gameid, CAST(p.hours_played AS FLOAT) FROM Plays_Games AS p
SELECT p.studid, p.gameid, SUM(p.hours_played) FROM plays_games AS p GROUP BY p.studid, p.gameid
SELECT p.StuID, SUM(p.Hours_played) FROM Plays_Games AS p GROUP BY p.StuID
SELECT p.studentid, SUM(p.hours_played) FROM plays_games AS p GROUP BY p.studentid
SELECT s.fname, s.age FROM student_sports AS ss JOIN student AS s ON ss.student_id = s.studid WHERE sport_code IN ('FOOTBALL', 'LACROSSE')
SELECT s.fname, CAST(s.age AS FLOAT) FROM student_football_lacrosse_team AS sf JOIN student AS s ON sf.student_id = s.studid
SELECT s.lname, s.sex FROM student AS s WHERE s.major IN (757071, 829364)
SELECT Student.LName, Student.Sex FROM Student WHERE (Major = 1 OR Major = 2) AND (Advisor = 1 OR Advisor = 2)
SELECT Customers.customer_name FROM Customers
SELECT Customers.customer_name FROM Customers
SELECT COUNT(*) FROM Customers
SELECT COUNT(DISTINCT customer_id) FROM Customers
SELECT AVG(CAST(order_quantity AS FLOAT)) FROM Order_Items
SELECT AVG(CAST(order_quantity AS FLOAT)) FROM Order_Items
SELECT Customers.customer_name FROM Customers WHERE Customers.payment_method ILIKE '%cash%'
SELECT Customers.customer_name FROM Customers WHERE Customers.payment_method ILIKE '%cash%'
SELECT Customers.customer_id, Customers.date_became_customer FROM Customers WHERE Customers.customer_id BETWEEN 10 AND 20
SELECT Customers.date_became_customer FROM Customers WHERE Customers.customer_id BETWEEN 10 AND 20
SELECT Customers.payment_method, COUNT(Customers.customer_id) FROM Customers GROUP BY Customers.payment_method ORDER BY number_of_customers DESC LIMIT 1
SELECT customers.payment_method, COUNT(*) FROM customers GROUP BY customers.payment_method ORDER BY frequency DESC LIMIT 1
SELECT Customers.customer_name FROM Customers GROUP BY Customers.payment_method ORDER BY COUNT(Customers.customer_id) DESC LIMIT 1
SELECT customers.customer_name FROM customers GROUP BY customers.payment_method HAVING COUNT(customers.customer_id) OVER (PARTITION BY customers.payment_method) = MAX(COUNT(customers.customer_id)) OVER (PARTITION BY customers.payment_method)
SELECT DISTINCT Customers.payment_method FROM Customers
SELECT DISTINCT Customers.payment_method FROM Customers
SELECT p.product_id, p.product_details FROM Products AS p
SELECT p.product_id, p.product_details FROM Products AS p
SELECT customers.customer_name FROM customers WHERE customers.customer_name ILIKE '%Alex%'
SELECT customers.customer_name FROM customers WHERE customers.customer_name ILIKE '%Alex%'
SELECT product_details FROM Products WHERE product_details ILIKE '%Leisure%' OR product_details ILIKE '%Americano%'
SELECT Products.product_details FROM Products WHERE Products.product_details ILIKE '%Leote%' OR Products.product_details ILIKE '%Americano%'
SELECT DISTINCT Addresses.city FROM Addresses
SELECT a.city FROM Addresses AS a WHERE NOT a.address_id IN (SELECT customer_address FROM Customers)
SELECT DISTINCT Addresses.city FROM Addresses
SELECT DISTINCT Addresses.city FROM Addresses
SELECT Addresses.city FROM Addres WHERE Addres.zip_postcode = '255'
SELECT Addresses.city FROM Addresses WHERE Addresses.zip_postcode = '255'
SELECT Addresses.city, Addresses.state_province_county, Addresses.country FROM Addres WHERE Addres.zip_postcode LIKE '4%'
SELECT Addresses.city, Addresses.state_province_county, Addresses.country FROM Addres WHERE Addres.zip_postcode LIKE '4.%'
SELECT a.country FROM Addresses AS a GROUP BY a.country HAVING COUNT(a.address_id) > 4
SELECT a.country FROM Addresses AS a GROUP BY a.country HAVING COUNT(DISTINCT a.address_id) > 4
SELECT cc.channel_code FROM customer_contact_channels AS cc WHERE cc.customer_id IN (SELECT customer_id FROM customer_contact_channels GROUP BY customer_id HAVING COUNT(customer_id) < 5)
SELECT COUNT(*) FROM customer_contact_channels WHERE active_to_date > CURRENT_TIMESTAMP()
SELECT AVG(active_to_date - active_from_date) FROM customer_contact_channels
SELECT AVG(active_to_date - active_from_date) FROM customer_contact_channels
SELECT pc_channels.channel_code, pc_channels.contact_number FROM personal_contacts_channels AS pc_channels WHERE (pc_channels.active_to_date IS NULL OR pc_channels.active_to_date > CURRENT_TIMESTAMP()) AND NOT EXISTS(SELECT 1 FROM personal_contacts_channels AS pc_channels2 WHERE pc_channels2.customer_id <> pc_channels.customer_id AND pc_channels2.active_from_date < pc_channels.active_from_date AND pc_channels2.active_to_date > pc_channels.active_to_date) ORDER BY (pc_channels.active_to_date - pc_channels.active_from_date) DESC LIMIT 1
SELECT cc.channel_code, cc.contact_number FROM customer_contact_channels AS cc WHERE (cc.active_to_date - cc.active_from_date) = (SELECT MAX(active_to_date - active_from_date) FROM customer_contact_channels)
SELECT COUNT(DISTINCT customer_id) FROM orders WHERE order_status = 'Cancelled'
SELECT COUNT(DISTINCT customer_id) FROM orders WHERE order_status = 'Cancelled'
SELECT COUNT(*) FROM customer_orders WHERE order_details ILIKE '%Second%time%'
SELECT COUNT(*) FROM customer_orders WHERE order_details ILIKE '%Second%time%'
SELECT Addresses.address_content FROM Addresses WHERE (Address = 'East Julianaside' AND state_province_county = 'Texas') OR (city = 'Gleasonmouth' AND state_province_county = 'Arizona')
SELECT Addresses.address_content FROM Addresses WHERE (Address = 'East Julianaside' AND state_province_county = 'Texas') OR (city = 'Gleasonmouth' AND state_province_county = 'Arizona')
SELECT customers.customer_name FROM customers WHERE payment_method <> 'Cash'
SELECT Customers.customer_name FROM Customers WHERE Customers.payment_method <> 'Cash'
SELECT Customers.customer_name FROM Customers WHERE NOT 'Latatte' ILIKE '%LATTE%'
SELECT Customers.customer_name FROM Customers WHERE NOT Customers.customer_id IN (SELECT OrderItems.customer_id FROM OrderItems JOIN Products ON OrderItems.product_id = Products.product_id WHERE Products.product_name ILIKE '%Latatte%') ORDER BY Customers.customer_name NULLS LAST
SELECT Customers.customer_name FROM Customers WHERE NOT customer_id IN (SELECT OrderItems.customer_id FROM OrderItems)
SELECT Customers.customer_name FROM Customers WHERE NOT customer_id IN (SELECT order_details.customer_id FROM order_details)
SELECT COUNT(*) FROM artist
SELECT COUNT(*) FROM artist
SELECT artist.age FROM artist
SELECT CAST(artist.age AS FLOAT) FROM artist
SELECT AVG(age) FROM artist
SELECT AVG(age) FROM artist
SELECT a.artist_id, a.famous_title FROM artist AS a WHERE a.artist ILIKE '%triumfall%' ORDER BY a.age DESC
SELECT a.famous_title FROM artist AS a WHERE a.artist ILIKE '%Triumfall%' ORDER BY a.age DESC
SELECT DISTINCT artist.famous_release_date FROM artist
SELECT DISTINCT artist.famous_release_date FROM artist
SELECT date_of_ceremony, result FROM music_festival
SELECT mf.musical_festival, TO_DATE(mf.date_of_ceremony, 'YYYY-MM-DD'), mf.category, mf.volume, mf.result FROM music_festival AS mf
SELECT category FROM music_festival WHERE result = 'Ascended'
SELECT category FROM music_festival WHERE result ILIKE '%Ascended%' ORDER BY category NULLS LAST
SELECT MAX(Weeks_on_Top), MIN(Weeks_on_Top) FROM volume
SELECT MAX(Weeks_on_Top), MIN(Weeks_on_Top) FROM volume
SELECT volume.song FROM volume WHERE volume.weeks_on_top > 1
SELECT volume.song FROM volume WHERE weeks_on_top > 1
SELECT volume.song FROM volume ORDER BY volume.song ASC
SELECT volume.volume_id, volume.song FROM volume ORDER BY volume.volume_id ASC
SELECT COUNT(DISTINCT volume.artist_id) FROM volume
SELECT COUNT(DISTINCT volume.artist_id) FROM volume
SELECT artist.age, artist.famous_title FROM artist ORDER BY artist.age DESC
SELECT a.artist_id, a.age, RANK() OVER (PARTITION BY a.artist_id ORDER BY a.famous_title DESC) FROM artist AS a
SELECT a.age, TO_NUMBER(a.famous_release_date, 'YYYYMMDD') FROM artist AS a WHERE NOT a.famous_title IS NULL ORDER BY a.age ASC LIMIT 1
SELECT MAX(artist.famous_release_date) FROM artist
SELECT category, COUNT(*) FROM music_festival GROUP BY category ORDER BY frequency DESC
SELECT category, COUNT(*) FROM music_festival GROUP BY category
SELECT music_festival.result FROM music_festival GROUP BY music_festival.result ORDER BY COUNT(music_festival.result) DESC LIMIT 1
SELECT mf.result, COUNT(*) FROM music_festival AS mf GROUP BY mf.result ORDER BY frequency DESC LIMIT 1
SELECT category FROM music_festival GROUP BY category HAVING COUNT(ID) > 1
SELECT DISTINCT category FROM music_festival GROUP BY category HAVING COUNT(id) > 1
SELECT volume.song, MAX(volume.weeks_on_top) FROM volume GROUP BY volume.song ORDER BY max_weeks_on_top DESC
SELECT volume.song, MAX(volume.weeks_on_top) FROM volume GROUP BY volume.song ORDER BY max_weeks_on_top DESC
SELECT a.artist_id, a.artist, f.famous_title FROM artist AS a LEFT JOIN album AS f ON a.artist_id = f.artist_id WHERE f.album_id IS NULL
SELECT a.artist_id, a.famous_title FROM artist AS a LEFT JOIN volume AS v ON a.artist_id = v.artist_id WHERE v.artist_id IS NULL
SELECT Date_of_ceremony FROM music_festival WHERE Category = 'Best Song' AND Result = 'Ascended'
SELECT music_festival.date_of_ceremony FROM music_festival WHERE music_festival.category = 'Best Song' AND music_festival.result = 'Ascended'
SELECT MIN(volume_id).issue_date FROM volume WHERE weeks_on_top = (SELECT MIN(weeks_on_top) FROM volume)
SELECT volume.issue_date FROM volume ORDER BY volume.weeks_on_top ASC LIMIT 1
SELECT COUNT(DISTINCT volume.artist_id) FROM volume
SELECT COUNT(DISTINCT volume.artist_id) FROM volume
SELECT mf.musual, COUNT(*) OVER (PARTITION BY mf.result) FROM music_festival AS mf
SELECT category, COUNT(*) FROM music_festival GROUP BY category ORDER BY total_festivals DESC
SELECT COUNT(*) FROM roller_coaster
SELECT roller_coaster.name FROM roller_coaster ORDER BY roller_coaster.length ASC
SELECT rollers_coaster.length, rollers_coaster.heath FROM rollers_coaster
SELECT country.name FROM country WHERE NOT country.languages ILIKE '%German%' ORDER BY country.name NULLS LAST
SELECT roller_coaster.status FROM roller_coaster WHERE (roller_coaster.length > 3300 OR roller_coaster.speed > 100)
SELECT roller_coaster.speed FROM roller_coaster ORDER BY roller_coaster.length DESC LIMIT 1
SELECT AVG(CAST(Speed AS FLOAT)) FROM roller_coaster
SELECT status, COUNT(Roller_Coaster_ID) FROM roller_coaster GROUP BY status
SELECT status, COUNT(*) FROM roller_coaster GROUP BY status ORDER BY frequency DESC LIMIT 1
SELECT roller_coaster.status FROM roller_coaster GROUP BY roller_coaster.status HAVING COUNT(roller_coaster.roller_coaster_id) > 2
SELECT roller_coaster.park FROM roller_coaster WHERE roller_coaster.speed = (SELECT MAX(roller_coaster.speed) FROM roller_coaster)
SELECT COUNT(DISTINCT c.country_id) FROM country AS c JOIN population AS p ON c.country_id = p.country_id WHERE p.population > 3000
SELECT COUNT(DISTINCT rank) FROM captain
SELECT COUNT(DISTINCT rank) FROM captain
SELECT captain.rank, COUNT(*) FROM captain GROUP BY captain.rank
SELECT captain.rank, COUNT(*) FROM captain GROUP BY captain.rank
SELECT captain.rank, COUNT(*) FROM captain WHERE age < '50' GROUP BY captain.rank
SELECT captain.rank, COUNT(*) FROM captain WHERE age < '50' GROUP BY captain.rank
SELECT c.name, CAST(c.age AS FLOAT) FROM captain AS c ORDER BY age_cast ASC
SELECT captain.name FROM captain ORDER BY captain.age DESC
SELECT captain.name, captain.class, captain.rank FROM captain
SELECT captain.name, captain.class, captain.rank FROM captain
SELECT captain.rank FROM captain GROUP BY captain.rank ORDER BY COUNT(captain.rank) DESC LIMIT 1
SELECT captain.rank FROM captain GROUP BY captain.rank ORDER BY COUNT(captain.captain_id) ASC NULLS LAST LIMIT 1
SELECT captain.class FROM captain GROUP BY captain.class HAVING COUNT(captain.captain_id) > 2
SELECT captain.class FROM captain GROUP BY captain.class HAVING COUNT(captain.captain_id) > 2
SELECT captain.name FROM captain WHERE captain.rank IN ('Midshipman', 'Lieutenant')
SELECT captain.name FROM captain WHERE captain.rank IN ('Midshipman', 'Lieutenant')
SELECT captain.class, AVG(CAST(captain.age AS FLOAT)), MIN(CAST(captain.age AS FLOAT)) FROM captain GROUP BY captain.class
SELECT captain.class, AVG(CAST(captain.age AS FLOAT)), MIN(CAST(captain.age AS FLOAT)) FROM captain GROUP BY captain.class
SELECT c.rank FROM captain AS c WHERE c.class IN ('Cutter', 'Armed schooner') GROUP BY c.rank HAVING COUNT(DISTINCT c.class) = 2
SELECT captain.rank FROM captain WHERE captain.class IN ('Cutter', 'Armed schooner') ORDER BY captain.rank NULLS LAST
SELECT c.rank FROM captain AS c WHERE NOT c.ship_id IN (SELECT s.ship_id FROM ship AS s JOIN captain AS ca ON s.captain_id = ca.captain_id AND s.class = 'Third') AND c.class = 'Period'
SELECT c.captain_id, c.name, CAST(r.rank AS FLOAT) FROM captain AS c JOIN rating AS r ON c.captain_id = r.captain_id WHERE NOT EXISTS(SELECT 1 FROM captain AS cc WHERE cc.ship_id = c.ship_id AND cc.class = 'Third-rate' AND cc.rank > 'Third')
SELECT c.name FROM captain AS c WHERE c.age = (SELECT MIN(age) FROM captain)
SELECT c.name FROM captain AS c WHERE c.age = (SELECT MIN(age) FROM captain)
SELECT COUNT(*) FROM ship
SELECT COUNT(*) FROM ship
SELECT s.name, s.type, s.flag FROM ship AS s WHERE s.built_year = (SELECT MAX(built_year) FROM ship)
SELECT s.name, s.type, s.flag FROM ship AS s WHERE s.built_year = (SELECT MAX(built_year) FROM ship)
SELECT s.name, COUNT(*) FROM ship AS s GROUP BY s.name
SELECT s.name, COUNT(*) FROM ship AS s GROUP BY s.name
SELECT s.name, CAST(COUNT(*) AS FLOAT) / (SELECT COUNT(*) FROM ship) FROM ship AS s GROUP BY s.name ORDER BY fraction_of_ships_with_given_flag DESC LIMIT 1
SELECT COUNT(*), s.name FROM ship AS s GROUP BY s.flag ORDER BY total_ships_with_flag DESC LIMIT 1
SELECT s.name FROM ship AS s ORDER BY s.built_year ASC, s.class ASC
SELECT Ship.Name, Ship.Built_Year, Ship.Class FROM Ship ORDER BY Ship.Built_Year NULLS LAST, Ship.Class NULLS LAST
SELECT DISTINCT s.type FROM ship AS s WHERE s.flag IN ('Panama', 'Malta') GROUP BY s.type HAVING COUNT(s.flag) = 2
SELECT DISTINCT Ship.Type FROM Ship WHERE (Ship.Flag = 'Panama' AND Ship.flag = 'Malta') GROUP BY Ship.type
SELECT MAX(Built_Year) FROM Ship
SELECT MAX(Ship.Built_Year) FROM Ship
SELECT s.name, c.class FROM ship AS s LEFT JOIN captain AS c ON s.ship_id = c.ship_id WHERE c.ship_id IS NULL
SELECT s.name, c.class FROM ship AS s LEFT JOIN captain AS c ON s.ship_id = c.ship_id WHERE c.ship_id IS NULL
SELECT s.name, s.flag FROM ship AS s WHERE NOT EXISTS(SELECT 1 FROM captain AS c WHERE NOT c.midshipman_rank IS NULL AND s.ship_id = c.ship_id)
SELECT s.name, s.type FROM ship AS s LEFT JOIN captain AS c ON s.ship_id = c.ship_id WHERE c.rank <> 'Midshipman' AND c.ship_id IS NULL
SELECT MAX(year), host_city FROM architected_city GROUP BY host_city ORDER BY max_year DESC LIMIT 1
SELECT MAX(year), host_city FROM organized_city GROUP BY host_city ORDER BY latest_year DESC LIMIT 1
SELECT match.match_id FROM match WHERE "Competition" ILIKE '%"1994%FIFA%World%Cup%'%'
SELECT Match_ID FROM match WHERE "Competition" ILIKE '%"1994%FIFA%World%Cup%'
SELECT city.city_id, city.hanzi, city.hanyu_pinyin, city.regional_population FROM city ORDER BY city.regional_population DESC LIMIT 3
SELECT city.city_id, city.hanzi, city.hanyu_pinyin, city.regional_population FROM city ORDER BY city.regional_population DESC LIMIT 3
SELECT city.city, MIN(city.gpl) FROM city GROUP BY city.city
SELECT c.city, MIN(c.gdp) FROM city AS c GROUP BY c.city
SELECT city.city_id, city.hanzi FROM city WHERE city.regional_population > 10000000
SELECT city.city FROM city WHERE city.regional_population > 10000000
SELECT city.city_id, city.hanzi FROM city WHERE (city.regional_population > 8000000 OR city.regional_population < 5000000) AND city.gdp = 1
SELECT city.city_id, city.hanzi FROM city WHERE city.regional_population > 8000000 OR city.regional_population < 5000000
SELECT competition FROM match GROUP BY competition
SELECT match.competition, COUNT(*) FROM match GROUP BY match.competition
SELECT venue FROM match ORDER BY date DESC
SELECT venue FROM match ORDER BY date DESC
SELECT MAX(city.gpl) FROM city
SELECT MAX(city.gpl) FROM city ORDER BY city.regional_population DESC LIMIT 1
SELECT individuals.individual_first_name, individuals.individual_middle_name, individuals.individual_last_name FROM individuals ORDER BY individuals.individual_last_name ASC
SELECT Individuals.individual_first_name, Individuals.individual_middle_name, Individuals.individual_last_name FROM Individuals ORDER BY Individuals.individual_last_name
SELECT Forms.form_type_code FROM Forms GROUP BY Forms.form_type_code
SELECT Forms.form_type_code FROM Forms GROUP BY Forms.form_type_code
SELECT Parties.payment_method_code, Parties.party_phone FROM Parties WHERE Parties.party_email = 'enrico09@example.com'
SELECT parties.payment_method_code, parties.party_phone FROM parties WHERE parties.party_email = 'enrico09@example.com'
SELECT Organizations.figure_name FROM Organizations ORDER BY Organizations.date_formed NULLS LAST
SELECT Organizations.figure_name FROM Organizations ORDER BY Organizations.date_formed ASC
SELECT organizations.organization_name FROM organizations ORDER BY organizations.date_formed ASC LIMIT 1
SELECT organizations.formation_name FROM organizations ORDER BY organizations.date_formed DESC LIMIT 1
SELECT COUNT(service_id) FROM Services
SELECT COUNT(service_id) FROM Services
SELECT Services.service_name FROM Services WHERE Services.service_id IS NULL
SELECT Services.service_name FROM Services WHERE Services.service_id IS NULL
SELECT a.town_city, a.state_province_county FROM Addresses AS a
SELECT Addresses.town_city, Addresses.state_province_county FROM Addresses
SELECT COUNT(*) FROM Addresses WHERE state_province_county = 'Carolina'
SELECT COUNT(DISTINCT town_city) FROM Addresses WHERE state_province_county = 'Colorado'
SELECT Parties.payment_method_code FROM Parties GROUP BY Parties.payment_method_code HAVING COUNT(Parties.party_id) > 3
SELECT DISTINCT Parties.payment_method_code FROM Parties GROUP BY Parties.payment_method_code HAVING COUNT(Parties.party_id) > 3
SELECT Organizations.figure_name FROM Organizations WHERE Organizations.figure_name ILIKE '%Party%'
SELECT Organizations.figure_name FROM Organizations WHERE 'Party' ILIKE '%Organizations.figure_name%'
SELECT COUNT(DISTINCT Parties.payment_method_code) FROM Parties
SELECT COUNT(DISTINCT Parties.payment_method_code) FROM Parties
SELECT Addresses.state_province_county FROM Addresses WHERE Addresses.zip_postcode = '6862 Kaitlyn Knolls'
SELECT Addresses.state_province_county FROM Addresses WHERE Addresses.period_1_number_building ILIKE '%6862%Kaitlyn%Knolls%'
SELECT COUNT(*) FROM driver
SELECT d.name, d.home_city, d.age FROM drivers AS d
SELECT party, COUNT(driver_id) FROM drivers GROUP BY party
SELECT d.name FROM drivers AS d ORDER BY d.age DESC
SELECT DISTINCT driver.home_city FROM drivers
SELECT d.home_city, COUNT(*) FROM driver AS d GROUP BY d.home_city ORDER BY driver_count DESC LIMIT 1
SELECT party.name FROM party JOIN driver ON party.id = driver.driver_id WHERE home_city = 'Hartford' AND age > 40
SELECT DISTINCT d.home_city FROM drivers AS d WHERE d.age > 40 GROUP BY d.home_city HAVING COUNT(d.driver_id) >= 2
SELECT DISTINCT home_city FROM driver WHERE age >= 40
SELECT d.name FROM drivers AS d WHERE NOT d.driver_id IN (SELECT s.driver_id FROM school_buses AS s)
SELECT school.type FROM school WHERE school.school_id IN (SELECT school1.school_id FROM school AS school1 JOIN school AS school2 ON school1.school_id <> school2.school_id) GROUP BY school.type HAVING COUNT(DISTINCT school.school_id) > 1
SELECT MAX(years_working), MIN(years_working), AVG(years_working) FROM school_bus
SELECT s.school, s.type FROM school AS s LEFT JOIN bus ON s.school_id = b.school_id WHERE b.school_id IS NULL
SELECT COUNT(*) FROM drivers WHERE home_city = 'Hartford' AND age < 40
SELECT driver.name FROM drivers WHERE drivers.home_city = 'Hartford' AND drivers.age < 40
SELECT COUNT(*) FROM flight WHERE velocity > 200
SELECT flight.vehicle_flight_number, flight.date, flight.pilot FROM flight ORDER BY flight.altitude
SELECT a.id, a.country, a.city, a.name FROM airport AS a ORDER BY a.name
SELECT MAX(group_equity_shareholding) FROM run_company
SELECT AVG(flight.velocity) FROM flight WHERE pilot ILIKE '%Thompson%'
SELECT a.name FROM airport AS a WHERE a.country <> 'Iceland'
SELECT Type, COUNT(*) FROM run_company GROUP BY Type ORDER BY frequency DESC LIMIT 1
SELECT COUNT(DISTINCT a.id) FROM airport AS a JOIN flight AS f ON a.icao = f.icao JOIN pilot AS p ON f.pilot_id = p.id WHERE NOT p.name ILIKE '%Thompson%'
SELECT name FROM airport WHERE name ILIKE '%international%'
SELECT a.country, COUNT(*) FROM airport AS a GROUP BY a.country
SELECT DISTINCT a.country FROM airport AS a GROUP BY a.country HAVING COUNT(a.id) > 2
SELECT p.name, COUNT(f.id) FROM pilot AS p JOIN flight AS f ON p.id = f.pilot GROUP BY p.name ORDER BY flight_count DESC LIMIT 1
SELECT COUNT(*) FROM Accounts
SELECT COUNT(*) FROM Accounts
SELECT a.account_id, a.account_details FROM accounts AS a
SELECT a.account_id, a.statement_id, a.account_details FROM accounts AS a
SELECT COUNT(*) FROM Statements
SELECT COUNT(Statement_ID) FROM Statements
SELECT Statements.Statement_ID, Statements.Statement_Details FROM Statements
SELECT s.statement_id, s.statement_details FROM statements AS s
SELECT a.statement_id, COUNT(a.account_id) FROM accounts AS a GROUP BY a.statement_id
SELECT Accounts.statement_id, COUNT(Accounts.account_id) FROM Accounts GROUP BY Accounts.statement_id
SELECT COUNT(Document_ID) FROM Documents
SELECT COUNT(*) FROM Documents
SELECT Documents.Document_Type_Code, Documents.Document_Name, Documents.Document_Description FROM Documents WHERE Documents.Document_Name ILIKE '%Noel%CV%' OR Documents.Document_Name ILIKE '%King%Book%'
SELECT Documents.Document_Type_Code, Documents.Document_Name, Documents.Document_Description FROM Documents WHERE Documents.Document_Name ILIKE '%Noel%CV%' OR Documents.Document_Name ILIKE '%King%Book%'
SELECT Documents.document_id, Documents.document_name FROM Documents
SELECT Documents.Document_ID, Documents.Document_Name FROM Documents
SELECT Documents.Document_ID, Documents.Document_Name FROM Documents WHERE Documents.Document_Type_Code ILIKE '%BK%'
SELECT Documents.Document_Name, Documents.Document_ID FROM Documents WHERE Documents.Document_Type_Code = 'BK'
SELECT Documents.project_id, COUNT(*) FROM Documents WHERE Document_Type_Code = 'BK' GROUP BY Documents.project_id
SELECT Documents.Project_ID, COUNT(Documents.Document_Type_Code) FROM Documents WHERE Documents.Document_Type_Code = 'BK' GROUP BY Documents.Project_ID
SELECT p.project_id, COUNT(d.document_id) FROM projects AS p JOIN documents AS d ON p.project_id = d.project_id GROUP BY p.project_id
SELECT Documents.Project_ID, COUNT(Documents.Document_ID) FROM Documents GROUP BY Documents.Project_ID
SELECT MIN(Project_ID) FROM Documents
SELECT MIN(Project_ID) FROM Documents
SELECT Project_ID FROM Documents GROUP BY Project_ID HAVING COUNT(Document_ID) >= 2
SELECT DISTINCT Documents.Project_ID FROM Documents GROUP BY Documents.Project_ID HAVING COUNT(Documents.Document_ID) >= 2
SELECT Documents.Document_Type_Code, COUNT(*) FROM Documents GROUP BY Documents.Document_Type_Code
SELECT Documents.Document_Type_Code, COUNT(*) FROM Documents GROUP BY Documents.Document_Type_Code
SELECT Documents.Document_Type_Code, COUNT(Documents.Document_ID) FROM Documents GROUP BY Documents.Document_Type_Code ORDER BY total_documents DESC LIMIT 1
SELECT Documents.Document_Type_Code, COUNT(*) FROM Documents GROUP BY Documents.Document_Type_Code ORDER BY frequency DESC LIMIT 1
SELECT Documents.Document_Type_Code FROM Documents GROUP BY Documents.Document_Type_Code HAVING COUNT(Documents.Document_ID) < 3
SELECT Documents.Document_Type_Code FROM Documents GROUP BY Documents.Document_Type_Code HAVING COUNT(Documents.Document_ID) < 3
SELECT ref_document_types.document_type_code, ref_document_types.document_type_name, ref_document_types.document_type_description FROM ref_document_types
SELECT ref_document_types.document_type_code, ref_document_types.document_type_name, ref_document_types.document_type_description FROM ref_document_types
SELECT Ref_Document_Types.Document_Type_Description FROM Ref_Document_Types WHERE Ref_Document_Types.Document_Type_Name ILIKE '%Film%'
SELECT Ref_Document_Types.Document_Type_Description FROM Ref_Document_Types WHERE Ref_Document_Types.Document_Type_Name ILIKE '%Film%'
SELECT COUNT(Projects.Project_ID) FROM Projects
SELECT COUNT(Projects.Project_ID) FROM Projects
SELECT p.project_id, p.project_details FROM projects AS p
SELECT p.project_id, p.project_details FROM projects AS p
SELECT COUNT(DISTINCT Ref_Budget_Codes.Budget_Type_Code) FROM Ref_Budget_Codes
SELECT COUNT(Budget_Type_Code) FROM Ref_Budget_Codes
SELECT Ref_Budget_Codes.Budget_Type_Code, Ref_Budget_Codes.Budget_Type_Description FROM Ref_Budget_Codes
SELECT Ref_Budget_Codes.Budget_Type_Code, Ref_Budget_Codes.Budget_Type_Description FROM Ref_Budget_Codes
SELECT Ref_Budget_Codes.Budget_Type_Description FROM Ref_Budget_Codes WHERE Ref_Budget_Codes.Budget_Type_Code = 'ORc'
SELECT Ref_Budget_Codes.Budget_Type_Description FROM Ref_Budget_Codes WHERE Ref_Budget_Codes.Budget_Type_Code = 'ORc'
SELECT COUNT(*) FROM Documents_with_Expenses
SELECT COUNT(*) FROM Documents_with_Expenses
SELECT Documents_with_Expenses.document_id FROM Documents_with_Expenses WHERE Documents_with_Expenses.budget_type_code = 'SF'
SELECT Documents_with_Expenses.Document_ID FROM Documents_with_Expenses WHERE Documents_with_Expenses.Budget_Type_Code = 'SF'
SELECT Budget_Type_Code, COUNT(Document_ID) FROM Documents_with_Expenses GROUP BY Budget_Type_Code
SELECT Budget_Type_Code, COUNT(Document_ID) FROM Documents_with_Expenses GROUP BY Budget_Type_Code
SELECT Budget_Type_Code, COUNT(Document_ID) FROM Documents_with_Expenses GROUP BY Budget_Type_Code ORDER BY document_count DESC LIMIT 1
SELECT Budget_Type_Code, COUNT(*) FROM Documents_with_Expenses GROUP BY Budget_Type_Code ORDER BY frequency DESC LIMIT 1
SELECT Documents.Document_ID FROM Documents WHERE NOT Documents.Document_Type_Code ILIKE '%Expense%'
SELECT Documents.Document_ID FROM Documents WHERE Documents.Document_Type_Code <> 'Expense'
SELECT Documents.Document_ID FROM Documents WHERE Documents.Document_Type_Code = 'CV' AND Documents.Project_ID IS NULL
SELECT Documents.Document_ID FROM Documents WHERE Documents.Document_Type_Code = 'CV' AND Documents.Other_Details IS NULL
SELECT COUNT(*) FROM Documents WHERE NOT Document_ID IN (SELECT Document_ID FROM Expenses)
SELECT COUNT(*) FROM Documents WHERE Document_Type_Code <> 'Expense'
SELECT Account_Details FROM Accounts WHERE Account_Details LIKE '%5%' ORDER BY CAST(Account_Details AS FLOAT) DESC LIMIT 1
SELECT Account_Details FROM Accounts WHERE Statement_ID = 1005 ORDER BY CAST(Account_Details AS FLOAT) DESC
SELECT COUNT(*) FROM Scientists
SELECT COUNT(*) FROM Scientists
SELECT SUM(Hours) FROM Projects
SELECT SUM(Hours) FROM Projects
SELECT COUNT(DISTINCT AssignedTo.Scientist) FROM AssignedTo
SELECT COUNT(DISTINCT AssignedTo.Scientist) FROM AssignedTo
SELECT COUNT(DISTINCT Code) FROM Projects
SELECT COUNT(DISTINCT Code) FROM Projects
SELECT AVG(Hours) FROM Projects
SELECT AVG(Hours) FROM Projects
SELECT Projects.Name FROM Projects WHERE Projects.Hours = (SELECT MAX(Projects.Hours) FROM Projects)
SELECT Projects.Name FROM Projects ORDER BY Projects.Hours DESC LIMIT 1
SELECT Projects.Name FROM Projects WHERE Projects.Hours > (SELECT AVG(Projects.Hours) FROM Projects)
SELECT Projects.Name FROM Projects WHERE Projects.Hours > (SELECT AVG(Projects.Hours) FROM Projects)
SELECT Projects.Name FROM Projects WHERE Projects.Hours BETWEEN 100 AND 300
SELECT Projects.Name FROM Projects WHERE Projects.Hours BETWEEN 100 AND 300
SELECT Scientists.Name FROM Scientists ORDER BY Scientists.Name ASC
SELECT Scientists.Name FROM Scientists ORDER BY Scientists.Name ASC
SELECT Projects.Name FROM Projects WHERE Projects.Code IS NULL
SELECT Projects.Name FROM Projects WHERE Projects.Code IS NULL
SELECT Scientists.Name FROM Scientists WHERE NOT Scientists.SSN IN (SELECT ProjectScientists.SSN FROM ProjectScientists)
SELECT Scientists.Name FROM Scientists WHERE NOT Scientists.SSN IN (SELECT ProjectsScientists.SSN FROM ProjectsScientists)
SELECT COUNT(*) FROM Scientists WHERE NOT SSN IN (SELECT Project_SSN FROM Projects)
SELECT COUNT(DISTINCT Scientists.SSN) FROM Scientists LEFT JOIN Projects ON Scientists.SSN = Projects.Scientist_SSN WHERE Projects.Scientist_SSN IS NULL
SELECT Scientists.Name FROM Scientists WHERE NOT Scientists.SSN IN (SELECT ProjectScientists.SSN FROM ProjectScientists) ORDER BY COUNT(ProjectScientists.SSN) DESC LIMIT 1
SELECT Scientists.Name FROM Scientists WHERE NOT Scientists.SSN IN (SELECT ProjectScientists.SSN FROM ProjectScientists) ORDER BY COUNT(ProjectScientists.SSN) DESC
SELECT wine.name FROM wine ORDER BY wine.score DESC LIMIT 1
SELECT wine.name FROM wine ORDER BY wine.score DESC LIMIT 1
SELECT w.winery FROM wine AS w WHERE w.score = (SELECT MAX(w2.score) FROM wine AS w2)
SELECT w.winery FROM wine AS w WHERE w.score = (SELECT MAX(score) FROM wine)
SELECT wine.name FROM wine WHERE wine.year = 2008
SELECT wine.name FROM wine WHERE wine.year = 2008
SELECT wine.grape, COUNT(*) FROM wine GROUP BY wine.grape
SELECT wine.grape, COUNT(wine.no) FROM wine GROUP BY wine.grape
SELECT wine.name, AVG(wine.score) FROM wine GROUP BY wine.name
SELECT wine.name, wine.score FROM wine
SELECT appellations.area, appellations.county FROM appellations
SELECT appellations.area, COUNT(*) FROM appellations GROUP BY appellations.area
SELECT wine.price FROM wine WHERE wine.year < 2010
SELECT wine.price FROM wine WHERE wine.year < 2010
SELECT wine.name FROM wine WHERE wine.score > 90
SELECT wine.name FROM wine WHERE wine.score > 90
SELECT COUNT(*) FROM wine WHERE name ILIKE '%Robert%Biale%winery%'
SELECT COUNT(*) FROM wine WHERE name ILIKE '%Robert%Biale%winery%'
SELECT COUNT(*) FROM appellations WHERE area = 'napa'
SELECT COUNT(No) FROM appellations WHERE County = 'Napa'
SELECT wine.grape, COUNT(*) FROM wine GROUP BY wine.grape ORDER BY number_of_wines DESC
SELECT wine.grape, COUNT(wine.no) FROM wine GROUP BY wine.grape ORDER BY total_wines DESC
SELECT wine.year, AVG(wine.price) FROM wine GROUP BY wine.year ORDER BY wine.year NULLS LAST
SELECT region_1.name, AVG(wine.price) FROM wine JOIN region ON wine.state = region.code GROUP BY region_1.name
SELECT wine.name FROM wine WHERE wine.price > (SELECT AVG(wine.price) FROM wine WHERE wine.winery = 'John Anthony Winery')
SELECT DISTINCT wine.name FROM wine WHERE wine.price > (SELECT MAX(wine.price) FROM wine WHERE name ILIKE '%John%Anthony%Winer%')
SELECT DISTINCT wine.name FROM wine ORDER BY wine.name ASC
SELECT wine.name FROM wine ORDER BY wine.name ASC
SELECT wine.name FROM wine ORDER BY wine.price NULLS LAST
SELECT wine.name FROM wine ORDER BY wine.price ASC
SELECT DISTINCT wine.name FROM wine WHERE (wine.year < 2000 OR wine.year > 2010)
SELECT wine.name FROM wine WHERE (wine.year < 2000 OR wine.year > 2010)
SELECT DISTINCT wine.winery FROM wine WHERE wine.price BETWEEN 50 AND 100
SELECT DISTINCT wine.winery FROM wine WHERE wine.price BETWEEN 50 AND 100
SELECT AVG(Price), SUM(Cases) FROM wine WHERE Grape = 'Zinfandel' AND Year = 2009
SELECT AVG(price), SUM(cases) FROM wine WHERE grapey = 'Zinfandel' AND state = 'California' AND year = 2009
SELECT MAX(wine.price), MAX(wine.score) FROM wine WHERE state = 'St. Helena'
SELECT MAX(wine.price), MAX(wine.score) FROM wine WHERE state = 'St. Helena.'
SELECT wine.year, MAX(wine.price), MAX(wine.score) FROM wine GROUP BY wine.year ORDER BY wine.year NULLS LAST
SELECT wine.year, MAX(wine.price), MAX(wine.score) FROM wine GROUP BY wine.year ORDER BY wine.year NULLS LAST
SELECT wine.appelation, AVG(wine.price), AVG(wine.score) FROM wine GROUP BY wine.appelation
SELECT AVG(Price), AVG(Score) FROM wine WHERE Appelation = 'Appellation'
SELECT wine.winery FROM wine GROUP BY wine.winery HAVING COUNT(wine.no) >= 4
SELECT DISTINCT wine.winery FROM wine GROUP BY wine.winery HAVING COUNT(wine.no) >= 4
SELECT wine.name FROM wine WHERE wine.year < (SELECT MIN(winey.year) FROM winery)
SELECT w.name FROM wine AS w WHERE w.year < (SELECT MIN(w2.year) FROM wine AS w2 WHERE w2.winery ILIKE '%Branner%') ORDER BY w.year NULLS LAST
SELECT wine.name FROM wine WHERE wine.year > 2006 AND wine.price > (SELECT AVG(wine.price) FROM wine WHERE wine.year = 2006)
SELECT winery FROM wine WHERE year > 2006 AND price > (SELECT MAX(price) FROM wine WHERE year <= 2006)
SELECT wine.grape, wine.winery, wine.year FROM wine WHERE wine.price > 100 ORDER BY wine.year NULLS LAST
SELECT wine.grape, wine.winery, wine.year FROM wine WHERE wine.price > 100 ORDER BY wine.year NULLS LAST
SELECT wine.grape, wine.appealation, wine.name FROM wine WHERE wine.score > 93 ORDER BY wine.name NULLS LAST
SELECT wine.grape, wine.appelation, wine.name FROM wine WHERE score > 93 ORDER BY name NULLS LAST
SELECT wine.name FROM wine WHERE wine.year > 2008 AND wine.state <> 'Central' ORDER BY wine.name NULLS LAST
SELECT wine.name FROM wine WHERE wine.year > 2008 AND wine.state <> 'Central' ORDER BY wine.name NULLS LAST
SELECT AVG(wine.price) FROM wine WHERE state <> 'Sonoma'
SELECT AVG(wine.price) FROM wine WHERE state <> 'Sonoma'
SELECT COUNT(Station_ID) FROM station
SELECT station.name, station.location, SUM(station_platforms.number_of_platforms) FROM station JOIN station_platforms ON station.station_id = station_platforms.station_id GROUP BY station.name, station.location
SELECT station.location FROM station
SELECT station.name, SUM(station.total_passengers) FROM station JOIN station ON station.location <> 'London' GROUP BY station.name
SELECT station.name, MAX(station_services.main_service) FROM station JOIN station_services ON station.station_id = station_services.station_id GROUP BY station.name ORDER BY MAX(station_services.main_service) DESC LIMIT 3
SELECT AVG(Total_Passengers), MAX(Total_Passengers) FROM station WHERE "Location" ILIKE '%London%' OR "Location" ILIKE '%Glasgow%'
SELECT a.location, COUNT(a.station_id), SUM(a.number_of_platforms), SUM(a.total_passengers) FROM station AS a GROUP BY a.location
SELECT station.location FROM station WHERE (CAST(station.number_of_platforms AS FLOAT) >= 15 AND CAST(station.total_passengers AS FLOAT) > 25) GROUP BY station.location
SELECT h.name FROM has_station AS h JOIN station AS s ON h.station_id = s.station_id WHERE s.number_of_platforms < 15
SELECT a.location, COUNT(a.station_id) FROM station AS a GROUP BY a.location ORDER BY a.station_count DESC LIMIT 1
SELECT t.name, TO_NUMBER(t.time, '99999999'), t.service FROM train AS t
SELECT COUNT(*) FROM train
SELECT train.name, train.service FROM train ORDER BY train.time
SELECT h.name, COUNT(s.station_id) FROM hospital AS h JOIN station AS s ON h.location = s.location GROUP BY h.name HAVING COUNT(s.station_id) = 1
SELECT h.name FROM station AS h LEFT JOIN train_station AS t ON h.station_id = t.station_id WHERE t.station_id IS NULL
SELECT station.name, station.location, (station.annual_entry_exit - LAG(station.annual_entry_exit) OVER (PARTITION BY station.station_id ORDER BY station.annual_entry_exit)) FROM station ORDER BY yearly_change NULLS LAST
SELECT Vehicles.vehicle_id FROM Vehicles
SELECT Vehicles.vehicle_id FROM Vehicles
SELECT COUNT(*) FROM vehicles
SELECT COUNT(*) FROM Vehicles
SELECT Vehicles.vehicle_details FROM Vehicles WHERE Vehicles.vehicle_id = 1
SELECT vehicles.vehicle_id, vehicles.vehicle_details FROM vehicles WHERE vehicles.vehicle_id = 1
SELECT s.first_name, s.middle_name, s.last_name FROM staff AS s
SELECT first_name, middle_name, last_name FROM Staff
SELECT Staff.date_of_birth FROM Staff WHERE Staff.first_name ILIKE '%Janesa%' AND Staff.last_name ILIKE '%Sawayn%'
SELECT Staff.date_of_birth FROM Staff WHERE Staff.last_name = 'Sawan' AND Staff.first_name = 'Janesa'
SELECT Staff.date_joined_staff FROM Staff WHERE Staff.first_name = 'Janessa' AND Staff.last_name = 'Sawayn'
SELECT Staff.date_joined_staff FROM Staff WHERE Staff.first_name = 'Janesa' AND Staff.last_name = 'Sawan'
SELECT Staff.date_left_staff FROM Staff WHERE Staff.first_name = 'Janessa' AND Staff.last_name = 'Sawayn'
SELECT Staff.date_left_staff FROM Staff WHERE Staff.first_name ILIKE '%Janesa%' AND Staff.last_name ILIKE '%Sawan%'
SELECT COUNT(*) FROM Staff WHERE first_name ILIKE '%Ludie%'
SELECT COUNT(*) FROM staff WHERE first_name ILIKE '%Ludie%'
SELECT Staff.nickname FROM Staff WHERE Staff.first_name ILIKE '%Janesa%' AND Staff.last_name ILIKE '%Sawayn%'
SELECT Staff.nickname FROM Staff WHERE Staff.first_name ILIKE '%Janesa%' AND Staff.last_name ILIKE '%Sawan%'
SELECT COUNT(*) FROM Staff
SELECT COUNT(*) FROM staff
SELECT COUNT(*) FROM Addresses WHERE state_province_county = 'Georgia'
SELECT COUNT(*) FROM Addresses WHERE state_province_county = 'Georgia'
SELECT Customers.first_name, Customers.last_name FROM Customers
SELECT c.first_name, c.last_name FROM customers AS c
SELECT customers.email_address, customers.date_of_birth FROM customers WHERE customers.first_name ILIKE '%Carole%'
SELECT Customers.email_address, Customers.date_of_birth FROM Customers WHERE Customers.first_name ILIKE '%Carole%'
SELECT customers.phone_number, customers.email_address FROM customers WHERE customers.amount_outstanding > 2000
SELECT Customers.phone_number, Customers.email_address FROM Customers WHERE Customers.amount_outstanding > 2000
SELECT Customers.customer_status_code, Customers.phone_number, Customers.email_address FROM Customers WHERE (Customers.last_name ILIKE '%Kohler%' OR customers.first_name ILIKE '%Marina%')
SELECT Customers.customer_status_code, Customers.phone_number, Customers.email_address FROM Customers WHERE (Customers.last_name ILIKE '%Kohler%' OR Customers.first_name ILIKE '%Marina%')
SELECT date_of_birth FROM customers WHERE customer_status_code = 'good customer'
SELECT customers.date_of_birth FROM customers WHERE customers.customer_status_code = 'good customer'
SELECT Customers.date_became_customer FROM Customers WHERE customers.first_name ILIKE '%Carole%' AND customers.last_name ILIKE '%Bernhard%' ORDER BY customers.date_became_customer NULLS LAST
SELECT MIN(Customers.date_became_customer) FROM Customers WHERE Customers.first_name ILIKE '%Carole%' AND customers.last_name ILIKE '%Bernhard%'
SELECT COUNT(*) FROM customers
SELECT COUNT(*) FROM customers
SELECT customers.customer_status_code, COUNT(customers.customer_id) FROM customers GROUP BY customers.customer_status_code
SELECT customers.customer_status_code, COUNT(*) FROM customers GROUP BY customers.customer_status_code
SELECT customers.customer_status_code, COUNT(customers.customer_id) FROM customers GROUP BY customers.customer_status_code ORDER BY customer_count ASC NULLS LAST LIMIT 1
SELECT customers.customer_status_code, COUNT(customers.customer_id) FROM customers GROUP BY customers.customer_status_code ORDER BY customer_count ASC LIMIT 1
SELECT MAX(customers.amount_outstanding), MIN(customers.amount_outstand), AVG(customers.amount_outstand) FROM customers
SELECT MAX(customers.amount_outstanding), MIN(customers.amount_outstand), AVG(customers.amount_outstand) FROM customers
SELECT c.first_name, c.last_name FROM Customers AS c WHERE c.amount_outstanding BETWEEN 1000 AND 3000
SELECT customers.first_name, customers.last_name FROM customers WHERE customers.amount_outstanding BETWEEN 1000 AND 3000
SELECT COUNT(*) FROM customers WHERE NOT customer_id IN (SELECT customer_id FROM payments)
SELECT COUNT(*) FROM customers
SELECT p.payment_method_code, COUNT(*) FROM customer_payments AS p GROUP BY p.payment_method_code
SELECT payment_method_code, COUNT(*) FROM customer_payments GROUP BY payment_method_code
SELECT COUNT(*) FROM lessons WHERE lesson_status_code = 'CANCELLED'
SELECT COUNT(*) FROM lessons WHERE lesson_status_code = 'CANCELLED'
SELECT c.last_name FROM customers AS c JOIN staff AS s ON c.last_name = s.last_name
SELECT customers.last_name FROM customers UNION SELECT employees.last_name FROM employees
SELECT s.first_name FROM Staff AS s LEFT JOIN Lesson AS l ON s.staff_id = l.staff_id WHERE l.staff_id IS NULL
SELECT s.first_name FROM staff AS s LEFT JOIN lesson_staff AS ls ON s.staff_id = ls.staff_id WHERE ls.staff_id IS NULL
SELECT COUNT(*) FROM faculty
SELECT COUNT(*) FROM faculty
SELECT faculty.rank FROM faculty ORDER BY faculty.rank NULLS LAST
SELECT DISTINCT Rank FROM Faculty
SELECT DISTINCT building FROM faculty
SELECT DISTINCT building FROM faculty
SELECT faculty.rank, faculty.fname, faculty.lname FROM faculty ORDER BY faculty.rank NULLS LAST
SELECT faculty.rank, faculty.fname, faculty.lname FROM faculty ORDER BY faculty.rank NULLS LAST
SELECT f.first_name, f.last_name, f.phone FROM faculty AS f WHERE sex = 'female'
SELECT f.fname, l.lname, p.phone FROM faculty AS f JOIN people AS p ON f.personid = p.personid WHERE sex = 'female'
SELECT faculty.facID FROM faculty WHERE faculty.sex = 'M'
SELECT f.facID FROM faculty AS f WHERE f.sex = 'M'
SELECT COUNT(*) FROM faculty WHERE sex = 'female'
SELECT COUNT(*) FROM faculty WHERE sex = 'Female'
SELECT faculty.phone, faculty.room, faculty.building FROM faculty WHERE faculty.fname ILIKE '%Jerry%' AND faculty.lname ILIKE '%Prince%'
SELECT faculty.phone, faculty.room, faculty.building FROM faculty WHERE faculty.lname ILIKE '%Jerry%' AND faculty.fname ILIKE '%Prince%'
SELECT COUNT(*) FROM faculty WHERE building ILIKE '%NEB%'
SELECT COUNT(*) FROM faculty WHERE building = 'NEB'
SELECT f.first_name, f.last_name FROM faculty AS f
SELECT f.fname, l.lname FROM faculty AS f JOIN faculty AS l ON f.building = l.building AND f.room = l.room
SELECT building, COUNT(*) FROM faculty GROUP BY building
SELECT building, COUNT(*) FROM faculty GROUP BY building ORDER BY number_of_faculty DESC
SELECT faculty.building, COUNT(*) FROM faculty GROUP BY faculty.building ORDER BY number_of_faculty DESC LIMIT 1
SELECT MAX(Building) FROM Faculty
SELECT DISTINCT building FROM faculty GROUP BY building HAVING COUNT(faculty_id) >= 10
SELECT DISTINCT faculty.building FROM faculty GROUP BY faculty.building HAVING COUNT(faculty.voicid) >= 10
SELECT faculty.rank, COUNT(*) FROM faculty GROUP BY faculty.rank
SELECT Rank, COUNT(*) FROM faculty GROUP BY Rank
SELECT faculty.rank, COUNT(*), SUM(CASE WHEN sex = 'Male' THEN 1 ELSE 0 END), SUM(CASE WHEN sex = 'Female' THEN 1 ELSE 0 END) FROM faculty GROUP BY faculty.rank
SELECT Rank, Sex, COUNT(*) FROM faculty GROUP BY Rank, Sex
SELECT faculty.rank FROM faculty GROUP BY faculty.rank ORDER BY COUNT(faculty.facID) ASC LIMIT 1
SELECT faculty.rank FROM faculty GROUP BY faculty.rank ORDER BY COUNT(faculty.lname) ASC LIMIT 1
SELECT sex, COUNT(*) FROM faculty WHERE rank = 'assistant professor' GROUP BY sex
SELECT COUNT(*) FROM faculty WHERE rank = 'assistant professor' AND (sex = 'male' OR sex = 'female')
SELECT f.facID FROM faculty AS f LEFT JOIN advises_students AS a ON f.facID = a.facID WHERE a.facID IS NULL
SELECT f.facID FROM faculty AS f LEFT JOIN advises_students AS a ON f.facID = a.facID WHERE a.facID IS NULL
SELECT Activity.activity_name FROM Activity
SELECT Activity.activity_name FROM Activity
SELECT COUNT(actid) FROM Activity
SELECT COUNT(*) FROM activity
SELECT COUNT(DISTINCT faculty_participates_in.facid) FROM faculty_participates_in
SELECT COUNT(DISTINCT faculty_participates_in.facid) FROM faculty_participates_in
SELECT f.facID FROM faculty AS f LEFT JOIN activity_faculty AS af ON f.facID = af.facID WHERE af.facID IS NULL
SELECT f.facID FROM faculty AS f LEFT JOIN activity_faculty AS af ON f.facID = af.facID WHERE af.facID IS NULL
SELECT f.faculty_id FROM faculty_participates_in AS fp JOIN faculty AS f ON fp.facID = f.faculty_id
SELECT f.facID FROM faculty_participates_in AS fp JOIN faculty AS f ON fp.facID = f.facID WHERE NOT fp.actid IS NULL AND EXISTS(SELECT 1 FROM advises AS a WHERE a.advisedBy = f.facID)
SELECT Student.StuID FROM Student WHERE NOT Student.StuID IN (SELECT Activity_Student.StuID FROM Activity_Student)
SELECT s.stuid FROM student AS s LEFT JOIN activity_student AS a ON s.stuid = a.stuid WHERE a.stuid IS NULL
SELECT p.stuid FROM Participates_in AS p JOIN Students AS s ON p.stuid = s.id WHERE AGE(s.dob) < 20
SELECT p.stuid FROM Participates_in AS p JOIN Students AS s ON p.stuid = s.id WHERE AGE(s.dob) < 20
SELECT faculty.fname FROM faculty WHERE NOT faculty.rank IN ('Canoeing', 'Kayaking') AND faculty.sex <> 'Male'
SELECT faculty.fname FROM faculty WHERE NOT faculty.rank IN ('Canoeing', 'Kayaking') ORDER BY faculty.fname NULLS LAST
SELECT airports.name FROM airports WHERE airports.city ILIKE '%Goroka%'
SELECT a.name FROM airports AS a WHERE a.city ILIKE '%Goroka%'
SELECT a.name, a.city, a.country, a.elevation FROM airports AS a WHERE a.city ILIKE '%New%York%'
SELECT a.name, a.city, a.country, a.elevation FROM airports AS a WHERE a.city ILIKE '%New%York%' ORDER BY a.name NULLS LAST
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines
SELECT COUNT(*) FROM airlines WHERE country = 'Russia'
SELECT COUNT(*) FROM airlines WHERE country = 'Russia'
SELECT MAX(elevation) FROM airports WHERE country = 'Iceland'
SELECT MAX(airports.elevation) FROM airports WHERE airports.country = 'Iceland'
SELECT a.name FROM airports AS a WHERE a.country IN ('Cuba', 'Argentina')
SELECT a.name FROM airports AS a WHERE a.country IN ('Cuba', 'Argentina')
SELECT airlines.country FROM airlines WHERE airlines.name ILIKE 'Orbit%'
SELECT CAST(COUNT(*) AS FLOAT) / NULLIF((SELECT COUNT(*) FROM airlines), 0) FROM airlines WHERE name ILIKE 'Orbit%'
SELECT airports.name FROM airports WHERE (airports.x > -50 AND airports.x < 50)
SELECT a.name FROM airports AS a WHERE a.elevation BETWEEN -50 AND 50
SELECT a.country FROM airports AS a WHERE a.elevation = (SELECT MAX(elevation) FROM airports)
SELECT airports.country FROM airports WHERE airports.elevation = (SELECT MAX(airports.elevation) FROM airports)
SELECT COUNT(*) FROM airports WHERE name ILIKE '%international%'
SELECT COUNT(*) FROM airports WHERE name ILIKE '%oteranation%'
SELECT DISTINCT airports.city FROM airports WHERE airports.country = 'Greenland'
SELECT COUNT(DISTINCT (airports.city)) FROM airports WHERE airports.country = 'Greenland'
SELECT a.name, a.city, a.country FROM airports AS a WHERE a.elevation = (SELECT MIN(elevation) FROM airports)
SELECT airports.name, airports.city, airports.country FROM airports ORDER BY airports.elevation ASC LIMIT 1
SELECT a.name, a.city, a.country FROM airports AS a WHERE a.elevation = (SELECT MAX(elevation) FROM airports)
SELECT a.name, a.city, a.country FROM airports AS a WHERE a.elevation = (SELECT MAX(b.elevation) FROM airports AS b)
SELECT a.country, COUNT(*) FROM airlines AS a GROUP BY a.country ORDER BY num_airlines DESC LIMIT 1
SELECT a.country, COUNT(*) FROM airlines AS a GROUP BY a.country ORDER BY num_airlines DESC LIMIT 1
SELECT a.country, COUNT(*) FROM airlines AS a WHERE a.active = 'Y' GROUP BY a.country ORDER BY total_active_airlines DESC LIMIT 1
SELECT COUNT(DISTINCT airlines.country), airlines.country FROM airlines WHERE airlines.active = 'Y' GROUP BY airlines.country ORDER BY number_of_countries DESC
SELECT country, COUNT(alid) FROM airlines GROUP BY country ORDER BY num_airlines DESC
SELECT airlines.country, COUNT(*) FROM airlines GROUP BY airlines.country ORDER BY number_of_airlines DESC
SELECT a.country, COUNT(*) FROM airports AS a GROUP BY a.country ORDER BY num_airports DESC
SELECT a.country, COUNT(*) FROM airports AS a GROUP BY a.country ORDER BY num_airports DESC
SELECT a.city, COUNT(*) FROM airports AS a WHERE country = 'United States' GROUP BY a.city ORDER BY num_airports DESC
SELECT a.city, COUNT(*) FROM airports AS a WHERE country = 'US' GROUP BY a.city ORDER BY num_airports DESC
SELECT DISTINCT a.city FROM airports AS a WHERE a.country = 'United States' GROUP BY a.city HAVING COUNT(a.apid) > 3
SELECT COUNT(DISTINCT a.city) FROM airports AS a WHERE a.country = 'United States' GROUP BY a.city HAVING COUNT(a.apid) > 3
-1
-1
SELECT a.city, COUNT(DISTINCT (apid)) FROM airports AS a GROUP BY a.city HAVING COUNT(DISTINCT apid) > 1
SELECT a.city, COUNT(DISTINCT a.apid) FROM airports AS a GROUP BY a.city HAVING COUNT(DISTINCT a.apid) > 1
SELECT a.city, COUNT(*) FROM airports AS a GROUP BY a.city HAVING COUNT(*) > 2 ORDER BY num_airports DESC
SELECT a.city, COUNT(*) FROM airports AS a GROUP BY a.city HAVING COUNT(*) > 2 ORDER BY num_airports DESC
SELECT airports.country, AVG(airports.elevation) FROM airports GROUP BY airports.country
SELECT a.country, AVG(a.elevation) FROM airports AS a GROUP BY a.country
SELECT DISTINCT a.city FROM airports AS a GROUP BY a.city HAVING COUNT(a.apid) = 2
SELECT DISTINCT a.city FROM airports AS a JOIN airports AS b ON a.city = b.city AND a.apid <> b.apid WHERE NOT a.city IS NULL
SELECT COUNT(*) FROM routes WHERE src_ap = 'United States' AND dst_ap = 'Canada'
SELECT COUNT(*) FROM routes WHERE src_ap = 'United States' AND dst_ap = 'Canada'
SELECT rid FROM routes WHERE src_ap IN ('US', 'United States') AND dst_ap IN ('US', 'United States')
SELECT rid FROM routes WHERE src_ap IN ('US', 'United States') AND dst_ap IN ('US', 'United States')
SELECT MAX(order_id) FROM orders
SELECT MAX(order_id) FROM orders
SELECT orders.order_id, customers.customer_id FROM orders JOIN customers ON orders.customer_id = customers.customer_id ORDER BY orders.date_order_placed ASC LIMIT 1
SELECT orders.order_id, customers.customer_id FROM orders JOIN customers ON orders.customer_id = customers.customer_id ORDER BY orders.date_order_placed ASC LIMIT 1
SELECT Shipments.order_id FROM Shipments WHERE Shipments.shipment_tracking_number = '3452'
SELECT Shipments.order_id FROM Shipments WHERE Shipments.shipment_tracking_number = '3452'
SELECT Order_Items.order_item_id FROM Order_Items WHERE Order_Items.product_id = 11
SELECT Order_Items.order_item_id FROM Order_Items WHERE Order_Items.product_id = 11
SELECT o.order_id FROM Orders AS o JOIN Shipments AS s ON o.order_id = s.order_id WHERE s.shipment_date > '2000-01-01'
SELECT Shipments.order_id FROM Shipments WHERE Shipments.shipment_date > '2000-01-01'
SELECT MAX(s.shipment_id) FROM Shipments AS s
SELECT MAX(s.shipment_date), o.order_id FROM Shipments AS s JOIN Orders AS o ON s.order_id = o.order_id GROUP BY o.order_id
SELECT DISTINCT product_name FROM Products ORDER BY product_name ASC
SELECT Products.product_name FROM Products ORDER BY Products.product_name ASC
SELECT o.order_id FROM orders AS o
SELECT orders.order_id FROM orders ORDER BY orders.date_order_placed NULLS LAST
SELECT Invoices.invoice_number FROM Invoices WHERE Invoices.invoice_date < '1989-09-03' OR Invoices.invoice_date > '2007-12-25'
SELECT Invoices.invoice_number FROM Invoices WHERE Invoices.invoice_date < '1989-09-03' OR Invoices.invoice_date > '2007-12-25'
SELECT DISTINCT Invoices.invoice_details FROM Invoices WHERE Invoices.invoice_date BETWEEN '1989-09-03' AND '2007-12-25'
SELECT DISTINCT Invoices.invoice_details FROM Invoices WHERE Invoices.invoice_date BETWEEN '1989-09-03' AND '2007-12-25'
SELECT CAST(COUNT(CASE WHEN gender = 'female' THEN 1 END) AS FLOAT) / NULLIF(COUNT(*), 0) FROM architect
SELECT a.name, a.nationality, a.id FROM architect AS a WHERE gender = 'M'
SELECT AVG(length_feet) FROM bridge
SELECT m.name, CAST(m.built_year AS TEXT) FROM mill AS m WHERE m.type = 'Grondzoiler'
SELECT m.name FROM mill AS m WHERE m.location <> 'Donceel'
SELECT bridge.location FROM bridge WHERE bridge.name IN ('Kolob Arch', 'Rainbow Bridge')
SELECT mill.name FROM mill WHERE mill.name ILIKE '%Moulin%'
SELECT m.type, COUNT(*) FROM mill AS m GROUP BY m.type ORDER BY total_count DESC LIMIT 1
SELECT COUNT(*) FROM architect WHERE NOT id ILIKE '%mill%' AND CAST(nationality AS INT) < 1850
SELECT COUNT(*) FROM book_club
SELECT COUNT(*) FROM book_club
SELECT book_title, author_or_editor FROM book_country WHERE year > 1989
SELECT book_country.book_title, author_or_editor FROM book_country WHERE year > 1989
SELECT DISTINCT book_country.publisher FROM book_country
SELECT DISTINCT Publisher FROM book_country
SELECT book_country.year, book_country.book_title, book_country.publisher FROM book_country ORDER BY book_country.year DESC
SELECT book_country.year, book_country.author_or_editor, book_country.publisher FROM book_country ORDER BY book_country.year DESC
SELECT book_country.publisher, COUNT(book_country.book_title) FROM book_country GROUP BY book_country.publisher
SELECT book_publisher.publisher, COUNT(book_publisher.book_title) FROM book_publisher GROUP BY book_publisher.publisher
SELECT book_publisher.publisher, COUNT(book_title.book_title) FROM book_publisher JOIN book_title ON book_publisher.publisher = book_title.publisher GROUP BY book_publisher.publisher ORDER BY total_books DESC LIMIT 1
SELECT book_publisher.publisher FROM book_publisher GROUP BY book_publisher.publisher ORDER BY COUNT(book_publisher.book_publisher_id) DESC LIMIT 1
SELECT category, COUNT(*) FROM book_category GROUP BY category
SELECT book_category.category, COUNT(*) FROM book_category JOIN book_country ON book_category.book_country = book_country.book_country_id GROUP BY book_category.category
SELECT category FROM book_category WHERE category IN (SELECT category FROM book_category GROUP BY category HAVING COUNT(book_title) >= 2 AND year > 1989)
SELECT category FROM book_category WHERE category IN (SELECT category FROM book_category GROUP BY category HAVING COUNT(book_title) >= 2 AND year > 1989)
SELECT DISTINCT publisher FROM book_publisher WHERE year IN (1989, 1990) ORDER BY publisher NULLS LAST
SELECT DISTINCT book_publisher.publisher FROM book_publisher WHERE year IN (1989, 1990)
SELECT DISTINCT publisher FROM book_country WHERE year <> 1989
SELECT DISTINCT publisher FROM book_publisher WHERE year <> 1989
SELECT movie.title, movie.year, movie.director FROM movie ORDER BY movie.budget_million DESC
SELECT movie.title, movie.year, movie.director FROM movie ORDER BY movie.budget_million DESC
SELECT COUNT(DISTINCT director) FROM movie
SELECT COUNT(DISTINCT director) FROM movie
SELECT movie.title, movie.director FROM movie WHERE movie.year <= 2000 ORDER BY movie.gross_worldwide DESC LIMIT 1
SELECT movie.title, movie.director FROM movie WHERE movie.year <= 2000 ORDER BY movie.gross_worldwide DESC LIMIT 1
SELECT DISTINCT movie.director FROM movie WHERE movie.year IN (1999, 2000) GROUP BY movie.director HAVING COUNT(DISTINCT CASE WHEN movie.year = 1999 THEN 1 END) > 0 AND COUNT(DISTINCT CASE WHEN movie.year = 2000 THEN 1 END) > 0
SELECT DISTINCT movie.director FROM movie WHERE movie.year IN (1999, 2000) GROUP BY movie.director HAVING COUNT(DISTINCT CASE WHEN movie.year = 1999 THEN movie.movie_id END) = COUNT(DISTINCT CASE WHEN movie.year = 2000 THEN movie.movie_id END)
SELECT DISTINCT movie.director FROM movie WHERE movie.year IN (1999, 2000)
SELECT DISTINCT movie.director FROM movie WHERE movie.year IN (1999, 2000)
SELECT AVG(budget_million), MAX(budget_million), MIN(budget_million) FROM movie WHERE year < 2000
SELECT AVG(Budget_million), MAX(Budget_million), MIN(Budget_million) FROM movie WHERE year < 2000
