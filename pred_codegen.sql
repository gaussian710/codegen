SELECT COUNT(*) FROM head WHERE age > 56
SELECT head.name, head.born_state, head.age FROM head ORDER BY head.age
SELECT DATE_PART(YEAR, CAST(creation AS DATE)) AS creation_year, name, budget_in_billions FROM department
SELECT MAX(Budget_in_Billions) AS max_budget, MIN(Budget_in_Billons) AS min_budget FROM department
-1
SELECT head.name FROM head WHERE head.born_state <> 'California'
SELECT DISTINCT head.born_state FROM head GROUP BY head.born_state HAVING COUNT(head.head_id) >= 3
SELECT DATE_PART(YEAR, TO_DATE(creation, 'YYYY-MM-DD')) AS YEAR, COUNT(*) AS number_of_departments FROM department GROUP BY YEAR ORDER BY number_of_departments DESC NULLS LAST LIMIT 1
SELECT COUNT(*) AS total_acting_status FROM management
SELECT COUNT(*) AS num_departments FROM department WHERE NOT "Head" IS NULL AND NOT "Head" IN ('John', 'Jane')
SELECT head.head_id, head.name FROM head WHERE head.name ILIKE '%Ha%'
SELECT COUNT(*) AS total_farms FROM farm
SELECT COUNT(*) FROM farm
SELECT farm.total_horses FROM farm ORDER BY farm.total_horses ASC NULLS FIRST
SELECT farm.farm_id, SUM(farm.total_horses) AS total_horses FROM farm GROUP BY farm.farm_id ORDER BY total_horses ASC NULLS FIRST
SELECT farm_competition.hosts FROM farm_competition WHERE NOT farm_competition.theme ILIKE '%Aliens%'
SELECT farm_competition.hosts FROM farm_competition WHERE NOT farm_competition.theme ILIKE '%Aliens%'
SELECT farm_competition.year, farm_competition.theme FROM farm_competition ORDER BY farm_competition.year ASC NULLS FIRST
SELECT farm_competition.year, farm_competition.theme FROM farm_competition ORDER BY farm_competition.year ASC NULLS FIRST
SELECT AVG(working_horses) AS average_working_horses FROM farm WHERE total_horses > 5000
SELECT AVG(working_horses) AS average_working_horses FROM farm WHERE total_horses > 5000
SELECT MAX(Cows) AS max_cattle, MIN(Cows) AS min_cattle FROM farm
SELECT MAX(Cows) AS max_cattle, MIN(Cows) AS min_cattle FROM farm
SELECT COUNT(DISTINCT city.status) AS number_of_status FROM city
SELECT COUNT(DISTINCT city.status) AS number_of_status FROM city
SELECT city.official_name FROM city ORDER BY city.population DESC NULLS LAST
SELECT city.official_name FROM city ORDER BY city.population DESC NULLS LAST
SELECT c.official_name, c.status FROM city AS c WHERE c.population = (SELECT MAX(population) FROM city)
SELECT city.official_name, city.status FROM city WHERE city.population = (SELECT MAX(population) FROM city)
SELECT city.status, AVG(city.population) AS average_population FROM city GROUP BY city.status
SELECT c.status, AVG(c.population) AS average_population FROM city AS c GROUP BY c.status
SELECT city.status, COUNT(city.official_name) AS number_of_cities FROM city GROUP BY city.status ORDER BY number_of_cities DESC NULLS LAST
SELECT city.status, COUNT(*) AS frequency FROM city GROUP BY city.status ORDER BY frequency ASC
SELECT city.status, COUNT(*) AS frequency FROM city GROUP BY city.status ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT city.status, COUNT(*) AS frequency FROM city GROUP BY city.status ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT city.official_name FROM city WHERE NOT city.city_id IN (SELECT competition.city_id FROM competition)
SELECT city.official_name FROM city WHERE NOT city.city_id IN (SELECT farm_competition.city_id FROM farm_competition)
SELECT city.status FROM city WHERE city.population > 1500 AND city.population < 500
SELECT DISTINCT city.status FROM city WHERE (city.population > 1500 OR city.population < 500) GROUP BY city.status
SELECT city.official_name FROM city WHERE city.population > 1500 OR city.population < 500
SELECT city.official_name FROM city WHERE (city.population > 1500 OR city.population < 500)
SELECT city.census_ranking FROM city WHERE city.status <> 'Village' ORDER BY city.census_ranking
SELECT city.census_ranking FROM city WHERE city.status <> 'Village' ORDER BY city.census_ranking
SELECT Student_Course_registrations.student_id FROM Student_Course_Registrations GROUP BY Student_Course_registrations.student_id HAVING COUNT(Student_Course_registrations.course_id) = (SELECT MIN(COUNT) FROM Student_Course_Registrations)
SELECT Student_Course_registrations.student_id FROM Student_Course_Registrations GROUP BY Student_Course_registrations.student_id HAVING COUNT(Student_Course_registrations.course_id) = (SELECT MIN(COUNT(course_id)) FROM Student_Course_Registrations)
SELECT s.student_id FROM Students LEFT JOIN Students AS e ON s.student_id = e.student_id WHERE e.student_id IS NULL
SELECT s.student_id FROM Students LEFT JOIN Students AS e ON s.student_id = e.student_id WHERE e.student_id IS NULL
SELECT DISTINCT student_id FROM Student_Course_Attendance
SELECT DISTINCT student_id FROM Student_Course_Attendance
SELECT MAX(assessment_date) AS latest_assessment_date, candidate_id FROM Candidate_Assessments GROUP BY candidate_id ORDER BY latest_assessment_date DESC NULLS LAST LIMIT 1
SELECT MAX(assessment_date) AS latest_assessment_date, candidate_id FROM Candidate_Assessments GROUP BY candidate_id ORDER BY latest_assessment_date DESC NULLS LAST LIMIT 1
SELECT candidate_id FROM Candidate_Assessments WHERE asessment_outcome_code = 'Pass'
SELECT candidate_id FROM Candidate_Assessments WHERE asessment_outcome_code = 'Pass'
SELECT Student_Course_attendance.student_id FROM Student_Course_Attendance WHERE Student_Course_attendance.course_id = 301
SELECT Student_Course_attendance.student_id FROM Student_Course_Attendance WHERE Student_Course_attendance.course_id = 301
SELECT s.student_id FROM Student_Course_attendance JOIN Student_Course_Attendance AS s ON sa.student_id = s.student_id WHERE sa.course_id = 301 ORDER BY sa.date_of_attendance DESC NULLS LAST LIMIT 1
SELECT s.student_id FROM Student_Course_attendance JOIN Student_Course_Attendance AS s ON sa.student_id = s.student_id WHERE sa.course_id = 301 ORDER BY sa.date_of_attendance DESC NULLS LAST
SELECT course_name FROM Courses ORDER BY course_name ASC NULLS FIRST
SELECT course_name FROM Courses ORDER BY course_name ASC NULLS FIRST
SELECT People.first_name FROM People ORDER BY People.first_name ASC NULLS FIRST
SELECT People.first_name FROM People ORDER BY People.first_name ASC NULLS FIRST
SELECT Student_Course_registrations.student_id FROM Student_Course_Registrations
SELECT DISTINCT student_id FROM Student_Course_Registrations
SELECT DISTINCT Student_Course_registrations.course_id FROM Student_Course_Registrations WHERE Student_Course_registrations.student_id = 121
SELECT DISTINCT Student_Course_registrations.course_id FROM Student_Course_Registrations WHERE Student_Course_registrations.student_id = 121
SELECT Student_Course_registrations.student_id FROM Student_Course_registrations WHERE NOT Student_Course_registrations.student_id IN (SELECT Student_Course_attendances.student_id FROM Student_Course_Registrations)
SELECT Student_Course_registrations.student_id FROM Student_Course_registrations WHERE NOT EXISTS(SELECT 1 FROM Student_Course_Registrations WHERE Course_attendance.course_id = Student_Course_registrations.course_id)
SELECT weather.date FROM weather WHERE weather.max_temperature_f > 85
SELECT weather.date FROM weather WHERE weather.max_temperature_f > '85' ORDER BY weather.max_temperature_f DESC NULLS LAST
SELECT station.name FROM station WHERE station.lat < 37.5
SELECT station.name FROM station WHERE station.lat < 37.5
SELECT c.name AS city_name, s.name AS station_name, MAX(a.lat) AS max_ft FROM station JOIN station AS c ON a.city = c.id JOIN station_station ON a.id = s.dock_count GROUP BY c.name, s.name
SELECT c.name AS city_name, MAX(s.lat) AS max_lat FROM station JOIN station AS c ON s.city = c.name GROUP BY c.name
SELECT r.id, r.start_date, r.end_date FROM trip AS r ORDER BY r.id ASC LIMIT 3
SELECT r.id, r.start_station_name, r.end_station_name, ROW_NUMBER() OVER (ORDER BY r.id NULLS FIRST) AS row_num FROM trip AS r ORDER BY r.id ASC LIMIT 3
SELECT AVG(lat) AS average_latitude, AVG(long) AS average_longitude FROM station WHERE "city" ILIKE '%San%Jose%'
SELECT AVG(lat) AS average_latitude, AVG(long) AS average_longitude FROM station WHERE "city" ILIKE '%San%Jose%'
SELECT MIN(duration) AS min_duration FROM trip
SELECT MIN(id) AS shortest_trip_id FROM tripride
SELECT SUM(duration) AS total_duration, MAX(duration) AS max_duration FROM trip WHERE bike_id = 636
SELECT SUM(duration) AS total_duration, MAX(duration) AS max_duration FROM trip WHERE bike_id = 636
SELECT weather.zip_code, AVG(weather.mean_temperature_f) AS avg_mean_temperature_f FROM weather GROUP BY weather.zip_code
SELECT weather.zip_code, AVG(weather.mean_temperature_f) AS average_mean_temperature FROM weather WHERE weather.date ILIKE '8%' GROUP BY weather.zip_code
SELECT COUNT(DISTINCT bike_id) AS unique_bikes FROM trip
SELECT COUNT(DISTINCT bike_id) AS number_of_bikes FROM trip
SELECT COUNT(DISTINCT station.city) AS num_cities FROM station
SELECT COUNT(DISTINCT station.city) AS number_of_cities FROM station
SELECT COUNT(*) AS station_count FROM station WHERE city ILIKE '%Mountain%'
SELECT COUNT(*) FROM station WHERE name ILIKE '%Mountain%' AND city ILIKE '%mountain%view%'
SELECT start_station_name, start_station_id FROM ride GROUP BY start_station_name, start_station_id HAVING COUNT(*) > (SELECT COUNT(*) FROM ride WHERE start_date like '%September%')
SELECT s.end_station_name, s.id FROM trip AS s JOIN trip ON r.start_station_id = s.id WHERE r.start_date LIKE '2021-08%' GROUP BY s.end_station_name, s.id ORDER BY COUNT(r.id) DESC NULLS LAST LIMIT 1
SELECT r.bike_id, COUNT(r.id) AS frequency FROM trip AS r WHERE r.zip_code = 94002 GROUP BY r.bike_id ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT MAX(r.duration) AS max_duration, b.id AS bike_id FROM trip AS r JOIN station ON r.start_station_id = h.id WHERE h.zip_code = 94002 GROUP BY b.id
SELECT COUNT(*) AS number_of_days FROM weather WHERE mean_humidity > 50 AND mean_visibility_miles > 8
SELECT COUNT(*) AS num_days FROM weather WHERE mean_humidity > 50 AND mean_visibility_miles > 8
SELECT station.id FROM station WHERE city ILIKE '%San%Francisco%' AND dock_count / lat > 10
SELECT station.id FROM station WHERE station.city = 'San Francisco' AND (station.dock_count > 10 OR station.dock_count IS NULL) GROUP BY station.id HAVING COUNT(station.dock_count) > 10
SELECT weather.cloud_cover, COUNT(*) AS frequency FROM weather WHERE weather.zip_code = 94107 GROUP BY weather.cloud_cover ORDER BY frequency DESC NULLS LAST LIMIT 3
SELECT weather.cloud_cover, COUNT(*) AS frequency FROM weather WHERE weather.zip_code = 94107 GROUP BY weather.cloud_cover ORDER BY frequency DESC NULLS LAST LIMIT 3
SELECT weather.zip_code, AVG(weather.mean_sea_level_pressure_inches) AS avg_pressure FROM weather GROUP BY weather.zip_code ORDER BY avg_pressure ASC LIMIT 1
SELECT weather.zip_code, AVG(weather.mean_sea_level_pressure_inches) AS avg_mean_sea_level_pressure_inches FROM weather GROUP BY weather.zip_code ORDER BY avg_mean_sea_level_pressure_inches ASC NULLS FIRST LIMIT 1
SELECT AVG(status.bikes_available) AS average_bikes_available FROM status WHERE NOT status.station_id IN (SELECT station_id FROM status WHERE time = 'Palo Alto')
SELECT AVG(status.bikes_available) AS average_bikes_available FROM status WHERE NOT station_id IN (SELECT station_id FROM status WHERE docks_available ILIKE '%Palo%Alto%')
SELECT AVG(station.long) AS average_longitude FROM station AS station WHERE station.dock_count > 10
SELECT AVG(station.long) AS average_longitude FROM station AS station WHERE station.dock_count <= 10
SELECT weather.zip_code, MAX(weather.max_temperature_f) AS max_temperature FROM weather WHERE weather.max_temperature_f >= 80 GROUP BY weather.zip_code ORDER BY weather.max_temperature DESC NULLS LAST LIMIT 1
SELECT weather.zip_code, MAX(weather.max_temperature_f) AS max_temp, TO_CHAR(MAX(weather.max_temperature_f), 'DD-MM-YYYY') AS max_temp_date FROM weather WHERE weather.max_temperature_f >= 80 GROUP BY weather.zip_code
SELECT weather.zip_code, COUNT(*) AS number_of_times FROM weather WHERE weather.max_wind_speed_mph >= 25 GROUP BY weather.zip_code
SELECT weather.zip_code, COUNT(*) AS number_of_times FROM weather WHERE weather.max_wind_speed_mph >= 25 GROUP BY weather.zip_code
SELECT weather.date, weather.zip_code FROM weather WHERE weather.min_dew_point_f < (SELECT MIN(weather.min_dew_point_f) FROM weather WHERE weather.zip_code = 94107) AND weather.zip_code <> 94107 ORDER BY weather.date
SELECT weather.min_dew_point_f, weather.zip_code FROM weather WHERE weather.min_dew_point_f < (SELECT MIN(weather.min_dew_point_f) FROM weather WHERE zip_code = 94107) AND weather.zip_code IN (SELECT zip_code FROM weather WHERE zip_code = 94107)
SELECT weather.date FROM weather WHERE weather.zip_code = 94107 AND (weather.mean_visibility_miles > 5 OR weather.max_visibility_miles > 5 OR weather.min_visibility_miles > 5) AND (weather.precipitation_inches > 0.25 OR weather.precipitation_inches < -0.25)
SELECT weather.date FROM weather WHERE weather.zip_code <> 94107 AND weather.mean_visibility_miles IS NULL AND weather.precipitation_inches IS NULL
SELECT station.id FROM station WHERE (station.lat > 37.4 AND station.dock_count >= 7) GROUP BY station.id
SELECT station.id FROM station WHERE (station.lat > 37.4 AND station.dock_count >= 7) GROUP BY station.id
SELECT h.name, TO_CHAR(TO_TIMESTAMP(h.long), 'FM90') AS long_date, c.city FROM harbor_hud JOIN station AS c ON h.city = c.id ORDER BY h.lat ASC
SELECT h.name, TO_CHAR(TO_TIMESTAMP(h.long), 'FM90') AS longitude, h.city FROM station AS h WHERE h.lat > (SELECT MIN(lat) FROM station) AND h.lat < (SELECT MAX(lat) FROM station) AND h.long < (SELECT MIN(long) FROM station)
SELECT weather.date, AVG(weather.mean_temperature_f) AS average_temperature_f, AVG(weather.mean_humidity) AS average_humidity FROM weather GROUP BY weather.date ORDER BY weather.max_gust_speed_mph DESC NULLS LAST LIMIT 3
SELECT weather.date, AVG(weather.max_temperature_f) AS avg_max_temperature_f, AVG(weather.mean_humidity) AS avg_mean_humidity FROM weather GROUP BY weather.date HAVING AVG(weather.max_gust_speed_mph) IN (SELECT MAX(avg_gust_speed_mph) FROM (SELECT AVG(max_gust_speed_mph) AS avg_gust_speed_mph FROM weather GROUP BY date HAVING COUNT(*) >= 3) AS subquery) ORDER BY weather.date
SELECT c.name, COUNT(s.id) AS station_count FROM station AS c JOIN station ON c.id = s.city GROUP BY c.name HAVING COUNT(s.id) >= 15
SELECT c.name AS "City Name", COUNT(s.id) AS "Station Count" FROM station JOIN station AS c ON s.city = c.name GROUP BY c.name HAVING COUNT(s.id) >= 15
SELECT start_station_id, start_station_name FROM trip WHERE start_date LIKE '2019-01-01%' GROUP BY start_station_id, start_station_name HAVING COUNT(id) >= 200
SELECT s.id AS station_station_id, s.end_station_name AS start_station_name FROM station_stations JOIN (SELECT start_station_id, COUNT(*) AS trip_count FROM trip GROUP BY start_station_id) AS c ON s.id = c.start_station_id WHERE c.bike_id >= 200
SELECT weather.zip_code FROM weather WHERE weather.mean_visibility_miles < 10
SELECT weather.zip_code FROM weather WHERE weather.mean_visibility_miles < '10' ORDER BY weather.zip_code
SELECT c.name AS city_name, s.long AS station_latitude FROM station JOIN station AS c ON h.city = c.id JOIN station ON h.id = s.lat
SELECT c.name, AVG(l.long) AS average_longitude FROM station AS c JOIN station ON c.id = l.city GROUP BY c.name ORDER BY lat DESC NULLS LAST
SELECT weather.date, MAX(weather.cloud_cover) AS max_cloud_cover FROM weather GROUP BY weather.date ORDER BY max_cloud_cover DESC NULLS LAST LIMIT 5
SELECT weather.date, weather.cloud_cover FROM weather ORDER BY weather.cloud_cover DESC NULLS LAST LIMIT 5
SELECT r.id, r.duration FROM trip AS r ORDER BY r.duration DESC NULLS LAST LIMIT 3
SELECT id, duration FROM trip ORDER BY duration DESC NULLS LAST LIMIT 1) SELECT r.id, r.duration FROM trip AS r JOIN ride_durations ON r.duration = rd.duration
SELECT DISTINCT start_station_name FROM trip WHERE duration < 100
SELECT DISTINCT start_station_name FROM trip WHERE duration < 100
SELECT weather.zip_code FROM weather WHERE weather.max_dew_point_f < 70 ORDER BY weather.zip_code
SELECT weather.zip_code FROM weather WHERE weather.max_dew_point_f < 70 ORDER BY weather.zip_code
SELECT r.id FROM trip AS r JOIN (SELECT AVG(duration) AS avg_duration FROM trip WHERE zip_code = 94103) AS avg_duration_ride ON r.duration >= avg_duration_ride.avg_duration
SELECT r.id FROM trip AS r JOIN (SELECT AVG(duration) AS avg_duration FROM trip WHERE zip_code = 94103) AS avg_duration_ride ON r.duration >= avg_duration_ride.avg_duration
SELECT weather.date FROM weather WHERE weather.mean_sea_level_pressure_inches BETWEEN 30.3 AND 31
SELECT weather.date FROM weather WHERE (weather.mean_sea_level_pressure_inches >= 30.3 AND weather.mean_sea_level_pressure_inches <= 31) GROUP BY weather.date
SELECT weather.date, (MAX(weather.max_temperature_f) - MIN(weather.min_temperature_f)) AS temperature_difference FROM weather GROUP BY weather.date ORDER BY temperature_difference ASC LIMIT 1
SELECT weather.date, (weather.max_temperature_f - weather.min_temperature_f) AS temperature_range FROM weather ORDER BY temperature_range ASC NULLS FIRST LIMIT 1
SELECT weather.zip_code FROM weather WHERE weather.mean_humidity < 70 GROUP BY weather.zip_code HAVING COUNT(weather.date) >= 100
SELECT weather.zip_code FROM weather WHERE weather.mean_humidity < '70' GROUP BY weather.zip_code HAVING COUNT(weather.date) >= '100'
SELECT station.name FROM station WHERE "city" ILIKE '%Palo%Alto%' AND NOT "id" IN (SELECT the_end.dock_count FROM trip GROUP BY the_end.dock_count HAVING COUNT(the_end.lat) > 100)
SELECT station.name FROM station WHERE "city" ILIKE '%Palo%Alto%' AND NOT id IN (SELECT trip_end.lat FROM trip_end)
SELECT COUNT(*) AS total_books FROM book
SELECT book.writer FROM book ORDER BY book.writer ASC NULLS FIRST
SELECT book.title FROM book ORDER BY book.issues ASC NULLS FIRST
SELECT book.title FROM book WHERE book.writer <> 'Velaine Lee' ORDER BY book.title
SELECT book.title, book.issues FROM book
SELECT publication.publication_date FROM publication ORDER BY publication.price DESC NULLS LAST
SELECT DISTINCT publication.publisher FROM publication WHERE publication.price > 5000000
SELECT publication.publisher FROM publication ORDER BY publication.price DESC NULLS LAST LIMIT 1
SELECT publication.publication_date FROM publication ORDER BY price ASC LIMIT 3
SELECT DISTINCT publication.publisher FROM publication GROUP BY publication.publisher HAVING COUNT(publication.publication_id) > 1
SELECT publication.publisher, COUNT(publication.book_id) AS book_count FROM publication GROUP BY publication.publisher
SELECT publication_date FROM publication GROUP BY publication_date ORDER BY COUNT(publication_date) DESC NULLS LAST LIMIT 1
SELECT writer FROM book GROUP BY writer HAVING COUNT(book_id) > 1
SELECT book.title FROM book WHERE NOT book.issues IS NULL
SELECT DISTINCT publication.publisher FROM publication WHERE publication.price > 10000000 AND publication.price < 5000000
SELECT COUNT(DISTINCT Publication_Date) AS num_publication_dates FROM publication
SELECT COUNT(DISTINCT Publication_Date) AS number_of_publication_dates FROM publication
SELECT publication.price FROM publication WHERE publication.publisher IN ('Person', 'Wiley')
SELECT COUNT(*) AS total_actors FROM actor
SELECT COUNT(*) FROM actor
SELECT actor.name FROM actor ORDER BY actor.name ASC NULLS FIRST
SELECT actor.name FROM actor ORDER BY actor.name ASC NULLS FIRST
SELECT actor.name, COUNT(actor_id) AS number_of_roles, SUM(duration) AS total_duration FROM actor GROUP BY actor.name
SELECT a.actor_id, a.name, c.character, d.duration FROM actor AS a JOIN character_durations AS c ON a.actor_id = c.actor_id_fk JOIN duration AS d ON c.duration_id_fk = d.duration_id
SELECT actor.name FROM actor WHERE actor.age <> 20
SELECT actor.name FROM actor WHERE age <> 20
SELECT actor.name, actor.character FROM actor ORDER BY actor.age DESC NULLS LAST
SELECT actor.character FROM actor ORDER BY actor.age DESC NULLS LAST
SELECT MAX(duration) AS max_duration FROM actor
SELECT MAX(age) AS max_age FROM actor
SELECT Musical.Name FROM musical WHERE Musical.Nominee ILIKE '%Bob%Fosse%' ORDER BY Musical.Name
SELECT m.name FROM musical AS m WHERE m.nominee ILIKE '%Bob%Fosse%'
SELECT DISTINCT musical.nominee FROM musical WHERE musical.award <> 'Tony Award'
SELECT m.name, m.year, m.award, m.category, m.nominee, m.result FROM musical AS m WHERE m.award <> 'Tony Award'
SELECT m.name AS "Musical", COUNT(n.nominee) AS "Number of Nominations" FROM musical AS m JOIN nomine ON m.award = n.award GROUP BY m.name
SELECT m.name, COUNT(n.nominee) AS number_of_nominations FROM musical AS m JOIN nomine ON m.nominee = n.name GROUP BY m.name
SELECT m.name, COUNT(n.nominee) AS total_nominations FROM musical AS m JOIN nomine ON m.musical_id = n.musical_id GROUP BY m.name ORDER BY total_nominations DESC NULLS LAST LIMIT 1
SELECT m.nominee, COUNT(*) AS num_musicals FROM musical AS m GROUP BY m.nominee ORDER BY num_musicals DESC NULLS LAST LIMIT 1
SELECT musical.result FROM musical GROUP BY musical.result ORDER BY COUNT(musical.result) DESC NULLS LAST LIMIT 1
SELECT musical.result, COUNT(*) AS frequency FROM musical GROUP BY musical.result ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT m.name FROM musical AS m GROUP BY m.name HAVING COUNT(m.nominee) > 2
SELECT musical.nominee FROM musical WHERE NOT musical.nominee IS NULL GROUP BY musical.nominee HAVING COUNT(musical.nominee) > 2
SELECT m.name FROM musical LEFT JOIN musical AS a ON m.musical_id = a.musical_id WHERE a.nominee IS NULL
SELECT m.name FROM musical LEFT JOIN musical AS a ON m.musical_id = a.musical_id WHERE a.nominee IS NULL
SELECT DISTINCT musical.nominee FROM musical WHERE musical.award = 'Tony Award' AND musical.name IN (SELECT name FROM musical WHERE award = 'Drama Desk Award')
SELECT musical.nominee FROM musical WHERE (musical.award = 'Tony' AND musical.category = 'Musical') OR (musical.award = 'Drama Desk' AND musical.category = 'Musical')
SELECT Musical_ID, Name, Year, Award, Category, Nominee, Result FROM musical WHERE (Award = 'Bob Fosse' OR Actor = 'Cleavant Darricks')
SELECT musical.nominee FROM musical WHERE (musical.award = 'Bob Fosse' OR musical.award = 'Cleavant Derricks') AND musical.category = 'Musical'
SELECT user_profiles.email FROM user_profiles WHERE user_profiles.name ILIKE '%Mary%'
SELECT user_profiles.partitionid FROM user_profiles WHERE user_profiles.name ilike '%Iron%Man%'
SELECT COUNT(*) AS total_users FROM user_profiles
SELECT u.username, COUNT(f.f1) AS total_followers FROM users u JOIN follows f ON u.id = f.f2 GROUP BY u.username
SELECT u.username, COUNT(f.f1) AS total_followers FROM users u JOIN follows f ON u.id = f.f2 GROUP BY u.username
SELECT COUNT(*) AS total_tweets FROM tweets
SELECT COUNT(DISTINCT uid) AS num_users FROM tweets
SELECT user_profiles.name, user_profiles.email FROM user_profiles WHERE user_profiles.name ILIKE '%Swift%'
SELECT user_profiles.name FROM user_profiles WHERE user_profiles.email ILIKE '%superstar%' OR user_profiles.email ILIKE '%edu%'
SELECT tweets.text FROM tweets WHERE tweets.text ILIKE '%Internet%'
SELECT user_profiles.name, user_profiles.email FROM user_profiles WHERE user_profiles.followers > 1000
SELECT user_profiles.name FROM user_profiles ORDER BY user_profiles.followers DESC NULLS LAST LIMIT 1
SELECT u.name, u.email, COUNT(f) AS followers_count FROM user_profiles u JOIN (SELECT uid FROM user_profiles GROUP BY uid HAVING COUNT(followers) = 1) f ON u.uid = f.uid GROUP BY u.name, u.email ORDER BY followers_count ASC NULLS LAST
SELECT user_profiles.name, user_profiles.followers FROM user_profiles ORDER BY user_profiles.followers DESC NULLS LAST
SELECT u.uid, u.name, COUNT(f.partitionid) AS num_followers FROM user_profiles JOIN user_profiles AS f ON u.uid = f.email OR u.uid = f.partitionid GROUP BY u.uid, u.name), top_5_users AS (SELECT name FROM user_followers ORDER BY num_followers DESC NULLS LAST LIMIT 5) SELECT tf.name, uf.num_followers FROM top_5_users JOIN user_followers ON tf.name = uf.name
SELECT tweets.text FROM tweets ORDER BY tweets.createdate DESC NULLS LAST
SELECT AVG(user_profiles.followers) AS average_followers FROM user_profiles WHERE NOT user_profiles.uid IN (SELECT user_tweets.uid FROM user_tweets)
SELECT user_tweets.uid FROM user_tweets)
SELECT MAX(followers) AS max_followers, SUM(followers) AS total_followers FROM user_profiles
SELECT catalog_entry_name FROM Catalog_Contents
SELECT catalog_entry_name FROM Catalog_Contents
SELECT Attribute_Definitions.attribute_data_type FROM Attribute_Definitions GROUP BY Attribute_Definitions.attribute_data_type HAVING COUNT(Attribute_Themifications.attribute_id) > 3
SELECT Attribute_Definitions.attribute_data_type FROM Attribute_Definitions GROUP BY Attribute_Definitions.attribute_data_type HAVING COUNT(Attribute_Definitions.attribute_id) > 3
SELECT Attribute_Definitions.attribute_data_type FROM Attribute_Definitions WHERE Attribute_Definitions.attribute_name ILIKE '%green%'
SELECT Attribute_Definitions.attribute_data_type FROM Attribute_Topologies JOIN Attribute_Definitions ON Attribute_Topologies.attribute_id = Attribute_Definitions.attribute_id WHERE Attribute_Definitions.attribute_name ILIKE '%Green%'
SELECT Catalog_Structure.catalog_level_name, Catalog_Structure.catalog_level_number FROM Catalog_Structure WHERE (Catalog_Structure.catalog_level_number >= 5 AND Catalog_Structure.catalog_level_number <= 10)
SELECT Catalog_Structure.catalog_level_name, Catalog_Structure.catalog_level_number FROM Catalog_Structure WHERE (Catalogue_Structure.catalog_level_number >= 5 AND Catalog_Structure.catalog_level_number <= 10)
SELECT Catalogs.catalog_publisher FROM Catalogs WHERE Catalogs.catalog_publisher ILIKE '%Murray%'
SELECT Catalogs.catalog_publisher FROM Catalogs WHERE 'Murray' ILIKE '%' || Catalogs.catalog_publisher || '%'
SELECT Catalogs.catalog_publisher, COUNT(Catalogs.catalog_id) AS number_of_catalogs FROM Catalogs GROUP BY Catalogs.catalog_publisher ORDER BY number_of_catalogs DESC NULLS LAST LIMIT 1
SELECT Catalogs.catalog_publisher, COUNT(Catalogs.catalog_id) AS number_of_catalogs FROM Catalogs GROUP BY Catalogs.catalog_publisher ORDER BY number_of_catalogs DESC NULLS LAST LIMIT 1
SELECT Catalog_Contents.catalog_entry_name FROM Catalog_Contents WHERE Catalog_Contents.price_in_dollars = (SELECT MAX(Catalog_Contents.price_in_dollars) FROM Catalog_Contents)
SELECT catalog_contents.catalog_entry_name FROM Catalog_Contents WHERE catalog_contents.price_in_dollars = (SELECT MAX(catalog_contents.price_in_dollars) FROM Catalog_Contents)
SELECT AVG(price_in_euros), MIN(price_in_euros) FROM Catalog_Contents
SELECT AVG(price_in_euros), MIN(price_in_euros) FROM Catalog_Contents
SELECT Catalog_Contents.catalog_entry_name FROM Catalog_Contents WHERE Catalog_Contents.height = (SELECT MAX(Catalog_Contents.height) FROM Catalog_Contents)
SELECT Catalog_Contents.catalog_entry_name FROM Catalog_Contents ORDER BY Catalog_Contents.height DESC NULLS LAST LIMIT 1
SELECT catalog_contents.catalog_entry_name FROM Catalog_Contents ORDER BY catalog_contents.capacity ASC NULLS FIRST LIMIT 1
SELECT catalog_contents.catalog_entry_name FROM Catalog_Contents ORDER BY CAST(catalog_contents.capacity AS FLOAT) ASC LIMIT 1
SELECT catalog_contents.catalog_entry_name FROM Catalog_Contents WHERE catalog_contents.product_stock_number LIKE '2%'
SELECT catalog_contents.catalog_entry_name FROM Catalog_Contents WHERE catalog_contents.product_stock_number LIKE '2%' ORDER BY catalog_contents.catalog_entry_name
SELECT catalog_entry_name FROM Catalog_Contents WHERE (LENGTH(catalog_entry_name) < 3 OR HEIGHT(catalog_entry_name) > 5)
SELECT catalog_contents.catalog_entry_name FROM Catalog_Contents WHERE (LENGTH(catalog_contents.length) < 3 OR LENGTH(catalog_contents.length) > 5)
SELECT catalog_contents.catalog_entry_name, catalog_contents.capacity FROM Catalog_Contents WHERE catalog_contents.price_in_dollars > 700
SELECT catalog_contents.catalog_entry_name, catalog_contents.capacity FROM Catalog_Contents WHERE catalog_contents.price_in_dollars > 700
SELECT date_of_publication FROM Catalogs WHERE date_of_publication IN (SELECT date_of_latest_revision FROM Catalogs GROUP BY date_of_latest_revision HAVING COUNT(date_of_latest_revision) > 1)
SELECT date_of_publication FROM Catalogs WHERE date_of_latest_revision > date_of_publication GROUP BY date_of_publication HAVING COUNT(catalog_id) > 1
SELECT COUNT(product_stock_number) AS total_products FROM Catalog_Contents
SELECT COUNT(catalog_entry_id) AS total_contents FROM Catalog_Contents
SELECT catalog_entry_name FROM Catalog_Contents WHERE next_entry_id > 8
SELECT Catalog_Contents.catalog_entry_name FROM Catalog_Contents WHERE Catalog_Contents.next_entry_id > 8
SELECT COUNT(*) AS total_aircraft FROM aircraft
SELECT COUNT(*) AS total_aircraft FROM aircraft
SELECT a.name, TO_CHAR(CAST(a.distance AS FLOAT), '99999D99') AS distance FROM aircraft AS a
SELECT a.name, TO_CHAR(CAST(a.distance AS FLOAT) / 1000000, '999999D99') AS distance_km FROM aircraft AS a
SELECT a.aid FROM aircraft AS a WHERE a.distance > 1000
SELECT a.aid FROM aircraft AS a WHERE a.distance > 1000
SELECT COUNT(*) FROM aircraft WHERE distance BETWEEN 1000 AND 5000
SELECT COUNT(*) FROM aircraft WHERE distance BETWEEN 1000 AND 5000
SELECT a.name, TO_CHAR(CAST(a.distance AS FLOAT), '99999D99') AS distance FROM aircraft AS a WHERE a.aid = 12
SELECT a.name, a.distance FROM aircraft AS a WHERE a.aid = 12
SELECT MIN(distance) AS min_distance, AVG(distance) AS avg_distance, MAX(distance) AS max_distance FROM aircraft
SELECT MIN(distance) AS min_distance, AVG(distance) AS avg_distance, MAX(distance) AS max_distance FROM aircraft
SELECT a.aid, a.name FROM aircraft AS a WHERE a.distance = (SELECT MAX(b.distance) FROM aircraft AS b)
SELECT a.aid, a.name FROM aircraft AS a WHERE a.distance = (SELECT MAX(b.distance) FROM aircraft AS b)
SELECT a.name FROM aircraft AS a ORDER BY a.distance ASC LIMIT 3
SELECT a.name FROM aircraft AS a ORDER BY LENGTH(a.name) ASC LIMIT 3
SELECT a.name FROM aircraft AS a WHERE a.distance > (SELECT AVG(distance) FROM aircraft)
SELECT a.name FROM aircraft AS a WHERE a.distance > (SELECT AVG(distance) FROM aircraft)
SELECT COUNT(eid) AS total_employees FROM employee
SELECT COUNT(eid) AS total_employees FROM employee
SELECT employee.name, employee.salary FROM employee ORDER BY employee.salary
SELECT employee.name, employee.salary FROM employee ORDER BY employee.salary
SELECT employee.eid FROM employee WHERE employee.salary >= 100000
SELECT eid FROM employee WHERE salary >= 100000
SELECT COUNT(*) FROM employee WHERE salary BETWEEN 100000 AND 200000
SELECT COUNT(*) AS total_employees FROM employee WHERE salary BETWEEN 100000 AND 200000
SELECT e.name, e.salary FROM employee AS e WHERE e.eid = 242518965
SELECT e.name, e.salary FROM employee AS e WHERE e.eid = 242518965
SELECT AVG(salary) AS average_salary, MAX(salary) AS max_salary FROM employee
SELECT AVG(salary) AS average_salary, MAX(salary) AS max_salary FROM employee
SELECT eid, name FROM employee ORDER BY salary DESC NULLS LAST LIMIT 1
SELECT eid, name FROM employee WHERE salary = (SELECT MAX(salary) FROM employee)
SELECT employee.name FROM employee ORDER BY employee.salary ASC LIMIT 3
SELECT employee.name FROM employee ORDER BY employee.salary ASC LIMIT 3
SELECT employee.name FROM employee WHERE employee.salary > (SELECT AVG(employee.salary) FROM employee)
SELECT employee.name FROM employee WHERE employee.salary > (SELECT AVG(employee.salary) FROM employee)
SELECT eid, salary FROM employee WHERE name ILIKE '%Mark%Young%'
SELECT eid, salary FROM employee WHERE name ilike '%Mark%Young%'
SELECT COUNT(flight.flno) AS total_flights FROM flight
SELECT COUNT(flight.flno) AS total_flights FROM flight
SELECT flight.flno, flight.origin, flight.destination FROM flight ORDER BY flight.origin ASC NULLS FIRST
SELECT flight.flno, flight.origin, flight.destination FROM flight ORDER BY flight.origin ASC NULLS FIRST
SELECT flno FROM flight WHERE origin = 'Los Angeles'
SELECT COUNT(flight.flno) AS total_flights FROM flight WHERE origin = 'Los Angeles'
SELECT flight.origin FROM flight WHERE flight.destination = 'Honolulu'
SELECT flight.origin FROM flight WHERE flight.destination = 'Honolulu'
SELECT flight.departure_date, flight.arrival_date FROM flight WHERE flight.origin = 'Los Angeles' AND flight.destination = 'Honolulu'
SELECT flight.departure_date, flight.arrival_date FROM flight WHERE flight.origin = 'LA' AND flight.destination = 'Honolulu'
SELECT flno FROM flight WHERE distance > 2000
SELECT COUNT(*) FROM flight WHERE distance > 2000
SELECT AVG(price) AS average_price FROM flight WHERE origin = 'Los Angeles' AND destination = 'Honolulu'
SELECT AVG(price) AS average_price FROM flight WHERE origin = 'LA' AND destination = 'Honolulu'
SELECT flight.origin, flight.destination FROM flight WHERE flight.price > 300
SELECT flight.origin, flight.destination FROM flight WHERE flight.price > 300
SELECT flno, price, distance FROM flight ORDER BY price DESC NULLS LAST LIMIT 1
SELECT flno, (SELECT distance FROM flight WHERE price = MAX(price)) AS distance_max_price FROM flight GROUP BY flno HAVING MAX(price) = price
SELECT flno FROM flight ORDER BY distance ASC LIMIT 3
SELECT flight.flno FROM flight ORDER BY flight.distance ASC LIMIT 1
SELECT AVG(flight.distance), AVG(flight.price) FROM flight WHERE flight.origin = 'Los Angeles'
SELECT AVG(flight.distance), AVG(flight.price) FROM flight AS flath WHERE flath.origin = 'LA'
SELECT flight.origin, COUNT(flight.flno) AS total_flights FROM flight GROUP BY flight.origin
SELECT flight.origin, COUNT(*) AS number_of_flights FROM flight GROUP BY flight.origin
SELECT flight.destination, COUNT(flight.flno) AS total_flights FROM flight GROUP BY flight.destination
SELECT flight.destination, COUNT(flight.flno) AS total_flights FROM flight GROUP BY flight.destination
SELECT flight.origin, COUNT(flight.flno) AS total_flights FROM flight GROUP BY flight.origin ORDER BY total_flights DESC NULLS LAST LIMIT 1
SELECT flight.origin, COUNT(flight.flno) AS total_flights FROM flight GROUP BY flight.origin ORDER BY total_flights DESC NULLS LAST LIMIT 1
SELECT flight.destination, COUNT(flight.flno) AS total_flights FROM flight GROUP BY flight.destination ORDER BY total_flights ASC LIMIT 1
SELECT flight.origin, COUNT(flight.flno) AS total_flights FROM flight GROUP BY flight.origin ORDER BY total_flights ASC LIMIT 1
SELECT COUNT(*) AS total_employees_with_certificate FROM certificate
SELECT COUNT(DISTINCT c.eid) AS number_of_employees_with_certificates FROM certificate AS c
SELECT eid FROM employee WHERE NOT eid IN (SELECT name FROM employee)
SELECT employee.eid FROM employee WHERE NOT employee.eid IN (SELECT certificate_employee.eid FROM employee)
SELECT employee.name FROM employee WHERE employee.eid NOT IN (SELECT certification.employee_id FROM certification WHERE certification.certificate_type = 'Boeing 737-800')
SELECT e.name FROM employee WHERE NOT EXISTS(SELECT 1 FROM employee AS c WHERE c.eid = e.eid AND c.salary = 'B737-800')
SELECT COUNT(*) AS total_allergies FROM Allergy_Type
SELECT COUNT(*) AS total_allergies FROM Allergy_Type
SELECT COUNT(Allergy_type) AS number_of_allergy_types FROM Allergy_Type
SELECT COUNT(DISTINCT Allergy) AS number_of_allergies FROM Allergy_Type
SELECT Allergy_Type.Allergy AS FROMAllergy_Type
SELECT Allergy_Type.AllergyType FROM Allergy_Type
SELECT a.Allergy, t.allergyType FROM Allergy_Type CROSS JOIN Allergy_Type AS a
SELECT a.name, t.allergy_type FROM allergy AS a JOIN allergy_type AS t ON a.allergy = t.allergy
SELECT Allergy FROMAllergy_Type WHEREAllergyType ILIKE '%food%'
SELECT DISTINCT Allergy_Type.Allergy FROM Allergy_Type
SELECT Allergy_Type.Allergy FROM Allergy_Type WHEREAllergyType ILIKE '%Cat%'
SELECT Allergy_Type.Allergy FROM Allergy_Type WHERE "Allergy" ILIKE '%cat%'
SELECT COUNT(*) AS total_allergies FROM Allergy_Type WHERE AllergyType = 'animal'
SELECT COUNT(*) AS total_allergies FROM Allergy_Type WHERE AllergyType ILIKE '%animal%'
SELECT Allergy_Type.AllergyType, COUNT(Allergy) AS total_allergies FROM Allergy_Type GROUP BYAllergyType
SELECT Allergy_Type.AllergyType, COUNT(Allergy) AS total_allergies FROM Allergy_Type GROUP BYAllergyType
SELECT allergy_type.allergy_type, COUNT(Allergy) AS total_allergies FROM allergy_type JOIN allergy ON allergy_type.allergy = allergy.allergy_type GROUP BY allergy_type.allergy_type ORDER BY total_allergies DESC NULLS LAST LIMIT 1
SELECT Allergy_Type.AllergyType FROM Allergy_Type ORDER BYAllergy_type DESC LIMIT 1
SELECT Allergy_Type.AllergyType FROM Allergy_Type GROUP BYAllergy_Type ORDER BY COUNT(Allergy) ASC NULLS LAST LIMIT 1
SELECT allergy_type.allergytype FROM Allergy_Type GROUP BY allergy_type.allergytype ORDER BY COUNT(allergytype) ASC LIMIT 1
SELECT COUNT(*) AS total_students FROM Student
SELECT COUNT(*) AS total_students FROM Student
SELECT s.fname, s.lname FROM Student AS s
SELECT Student.LName, Student.Fname FROM Student
SELECT COUNT(DISTINCT Student.Advisor) AS number_of_advisors FROM Student
SELECT COUNT(DISTINCT Advisor) AS number_of_advisors FROM Student
SELECT Student.Major FROM Student
SELECT Student.Major FROM Student GROUP BY Student.Major
SELECT DISTINCT Student.city_code FROM Student
SELECT DISTINCT Student.city_code FROM Student
SELECT s.fname, s.lname, s.age FROM Student AS s WHERE s.sex = 'F'
SELECT Student.LName, Student.Fname, CAST(Student.Age AS FLOAT) AS Age FROM Student WHERE Student.Sex = 'F'
SELECT Student.StuID FROM Student WHERE Student.Sex = 'Male'
SELECT Student.StuID FROM Student WHERE Student.Sex = 'M'
SELECT COUNT(*) FROM Student WHERE Age = 18
SELECT COUNT(*) FROM Student WHERE Age = 18
SELECT Student.StuID FROM Student WHERE Student.Age < 20
SELECT Student.StuID FROM Student WHERE Student.Age > 20
SELECT Student.city_code FROM Student WHERE Student.LName ILIKE '%Kim%'
SELECT Student.city_code FROM Student WHERE Student.fname ILIKE '%Kim%'
SELECT s.lname, s.fname FROM Student AS s JOIN Student AS a ON s.advisor = a.stuid WHERE s.stuid = 1004
SELECT s.lname, s.fname FROM Student AS s WHERE s.advisor = 1004
SELECT COUNT(*) FROM Student WHERE city_code IN ('HKG', 'CHI')
SELECT COUNT(*) FROM Student WHERE city_code IN ('HKG', 'CHI')
SELECT MIN(Age) AS min_age, AVG(Age) AS avg_age, MAX(Age) AS max_age FROM Student
SELECT MIN(Age) AS min_age, AVG(Age) AS avg_age, MAX(Age) AS max_age FROM Student
SELECT Student.LName FROM Student ORDER BY Student.Age ASC NULLS FIRST LIMIT 1
SELECT Student.LName FROM Student ORDER BY Student.Age ASC NULLS FIRST LIMIT 1
SELECT MIN(Student.StuID) AS oldest_student_id FROM Student
SELECT MIN(Student.StuID) AS oldest_student_id FROM Student
SELECT s.major AS major_name, COUNT(*) AS student_count FROM Student AS s GROUP BY s.major
SELECT Student.Major, COUNT(Student.StuID) AS total_students FROM Student GROUP BY Student.Major
SELECT s.major, COUNT(*) AS total_students FROM Student AS s GROUP BY s.major ORDER BY total_students DESC NULLS LAST LIMIT 1
SELECT Student.Major FROM Student GROUP BY Student.Major ORDER BY COUNT(Student.Major) DESC NULLS LAST LIMIT 1
SELECT Student.Age, COUNT(Student.StuID) AS total_students FROM Student GROUP BY Student.Age
SELECT Student.Age, COUNT(Student.Age) AS frequency FROM Student GROUP BY Student.Age ORDER BY Student.Age
SELECT CASE Sex WHEN 'Male' THEN 1 ELSE 0 END AS gender_code, AVG(Age) AS average_age FROM Student GROUP BY gender_code
SELECT CASE WHEN Student.Sex = 'Male' THEN 'Male' ELSE 'Female' END AS Sex, AVG(Student.Age) AS Average_Age FROM Student GROUP BY Sex
SELECT s.city_code, COUNT(*) AS num_students FROM Student AS s GROUP BY s.city_code
SELECT s.city_code, COUNT(*) AS total_students FROM Student AS s GROUP BY s.city_code
SELECT a.age AS advisor_name, COUNT(s.stuID) AS num_students FROM Student AS a JOIN student ON a.fname = s.advisor JOIN department ON a.lname = d.city_code GROUP BY a.age
SELECT s.advisor, COUNT(*) AS num_students FROM Student AS s GROUP BY s.advisor
SELECT s.advisor AS advisor_id, COUNT(*) AS student_count FROM Student AS s GROUP BY s.advisor ORDER BY student_count DESC NULLS LAST LIMIT 1
SELECT s.advisor AS advisor_with_most_students, COUNT(*) AS number_of_students FROM Student AS s GROUP BY s.advisor ORDER BY number_of_students DESC NULLS LAST LIMIT 1
SELECT COUNT(*) FROM Has_Allergy WHERE Allergy ILIKE '%cat%'
SELECT COUNT(*) AS total_students FROM Has_Allergy WHERE Allergy ilike '%cat%'
SELECT DISTINCT Has_Allergy.StuID FROM Has_Allergy GROUP BY Has_Allergy.StuID HAVING COUNT(Has_allergy.Allergy) >= 2
SELECT s.id FROM Students AS s WHERE s.id IN (SELECT h.stud_id FROM Has_Allergy AS h GROUP BY h.stud_id HAVING COUNT(h.allergy) > 1)
SELECT Student.StuID FROM Student WHERE NOT Student.StuID IN (SELECT Allergy.Student_id FROM Student)
SELECT s.lname, s.fname FROM student WHERE NOT EXISTS(SELECT 1 FROM Student AS aas WHERE aos.stuid = s.stuid)
SELECT allergy, COUNT(*) AS num_students_affected FROM Has_Allergy GROUP BY allergy ORDER BY num_students_affected DESC NULLS LAST LIMIT 1
SELECT Has_Allergy.Allergy, COUNT(*) AS frequency FROM Has_Allergy GROUP BY Has_Allergy.Allergy ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT allergy, COUNT(stuid) AS num_students FROM Has_Allergy GROUP BY allergy
SELECT allergy, COUNT(*) AS frequency FROM Has_Allergy GROUP BY allergy
SELECT s.lname, s.age FROM Student AS s WHERE 'Milk' ILIKE '%allergy%' AND 'Cat' ILIKE '%allergy%'
SELECT s.lname, CAST(s.age AS FLOAT) FROM Student AS s WHERE s.sex IN ('milk', 'cat') ORDER BY s.lname
SELECT s.fname, s.sex FROM Student AS s WHERE s.age = 'milk' AND s.age <> 'cat'
SELECT s.fname, s.sex FROM student JOIN allergies_to ON s.stuid = a.advisor JOIN Student AS c ON s.stuid = c.advisor WHERE a.age = 'milk' AND c.age = 'cat'
SELECT AVG(Student.Age) FROM Student WHERE (SELECT COUNT(*) FROM Student WHERE Student.StuID = Allergies.StuID AND Type IN ('food', 'animal')) > 0
SELECT AVG(Student.Age) AS average_age FROM Student WHERE (Student.Allergies ILIKE '%food%' AND Student.sex ILIKE '%animal%')
SELECT s.lname, s.fname FROM Student AS s WHERE s.sex IS NULL
SELECT s.lname || ', ' || s.fname AS full_name FROM Student WHERE NOT EXISTS(SELECT 1 FROM Student AS a WHERE a.advisor = s.stuid)
SELECT COUNT(*) FROM Student WHERE Sex = 'M' AND Major IN (SELECT Major FROM Student WHERE Type ILIKE '%allery%')
SELECT COUNT(*) FROM Student WHERE Sex = 'M' AND Major IN (SELECT Major FROM Student)
SELECT COUNT(*) FROM Student WHERE Age > 18 AND (Allergy_to_food IS NULL OR sex = 'No') AND (lname IS NULL OR lname = 'No')
SELECT COUNT(*) FROM Student WHERE Age > 18 AND (Allergy_to_food IS NULL OR sex = 'No') AND (city_code IS NULL OR city_code = 'No')
SELECT s.fname, m.major FROM student LEFT JOIN Student AS a ON s.stuid = a.stuid WHERE a.stuid IS NULL
SELECT s.fname, m.major FROM student JOIN Student AS m ON s.major = m.sex WHERE age > 18
SELECT invoices.billing_country, COUNT(*) AS invoice_count FROM invoices GROUP BY invoices.billing_country ORDER BY invoice_count DESC NULLS LAST LIMIT 5
SELECT c.billing_city, c.billing_address, COUNT(i.id) AS num_invoices FROM customers JOIN invoices ON c.customer_id = i.customer_id GROUP BY c.billing_city, c.billing_address), top_5_countries AS (SELECT billing_city, billing_address, num_invoices FROM invoices ORDER BY num_invoices DESC NULLS LAST LIMIT 5) SELECT tc.*, (SELECT COUNT(*) FROM invoices WHERE i2.customer_id = tc.customer_id) AS total_invoices_for_country FROM top_5_countries
SELECT invoices.billing_country, SUM(invoices.total) AS total_invoice_amount FROM invoices GROUP BY invoices.billing_country ORDER BY total_invoice_amount DESC NULLS LAST LIMIT 8
SELECT invoices.billing_country, SUM(invoices.total) AS total_invoice_amount FROM invoices GROUP BY invoices.billing_country ORDER BY total_invoice_amount DESC NULLS LAST LIMIT 8
SELECT billing_country, AVG(total) AS average_invoiceice_size FROM invoices GROUP BY billing_country ORDER BY average_invoiceice_size DESC NULLS LAST LIMIT 10
SELECT billing_country, AVG(total) AS average_invoice_size FROM invoices GROUP BY billing_country ORDER BY average_invoice_size DESC NULLS LAST LIMIT 10
SELECT albums.title FROM albums
SELECT albums.title FROM albums
SELECT albums.title FROM albums ORDER BY albums.title ASC NULLS FIRST
SELECT albums.title FROM albums ORDER BY albums.title ASC NULLS FIRST
SELECT albums.id, albums.title FROM albums WHERE albums.title ILIKE 'A%' ORDER BY albums.title
SELECT albums.title FROM albums WHERE albums.title ILIKE 'A%' ORDER BY albums.title
SELECT SUM(invoices.total) AS total_amount FROM invoices WHERE invoices.billing_state = 'IL'
SELECT SUM(invoices.total) AS total_amount FROM invoices WHERE invoices.billing_state = 'Illinois'
SELECT COUNT(*) FROM invoices WHERE billing_state = 'IL'
SELECT COUNT(*) FROM invoices WHERE billing_state = 'IL' AND billing_city ILIKE '%Chicago%'
SELECT billing_state, COUNT(*) AS invoice_count FROM invoices WHERE billing_country = 'US' GROUP BY billing_state
SELECT billing_state, COUNT(*) AS number_of_invoices FROM invoices GROUP BY billing_state
SELECT billing_state, COUNT(*) AS number_of_invoices FROM invoices WHERE billing_country = 'US' GROUP BY billing_state ORDER BY number_of_invoices DESC NULLS LAST LIMIT 1
SELECT billing_state, COUNT(*) AS number_of_invoices FROM invoices GROUP BY billing_state ORDER BY number_of_invoices DESC NULLS LAST
SELECT COUNT(id) AS number_of_invoices, SUM(total) AS total_amount FROM invoices WHERE billing_state = 'California'
SELECT COUNT(*) AS number_of_invoices, SUM(total) AS total_amount FROM invoices WHERE billing_state = 'CA'
SELECT customers.company FROM customers WHERE customers.first_name ILIKE '%Eduardo%' AND customers.last_name ILIKE '%Martins%'
SELECT customers.company FROM customers WHERE customers.first_name ILIKE '%Eduardo%' AND customers.last_name ILIKE '%Martins%'
SELECT customers.email, customers.phone FROM customers WHERE customers.first_name ILIKE '%Astrid%' AND customers.last_name ILIKE '%Gruber%'
SELECT customers.email, customers.phone FROM customers WHERE customers.first_name ILIKE '%Astrid%' AND customers.last_name ILIKE '%Gruber%'
SELECT COUNT(*) FROM customers WHERE city ILIKE '%Prague%'
SELECT COUNT(*) FROM customers WHERE city ilike '%Prague%'
SELECT COUNT(*) FROM customers WHERE state = 'CA'
SELECT COUNT(*) FROM customers WHERE state = 'California'
SELECT customers.country FROM customers WHERE customers.last_name ILIKE '%Almeida%' AND customers.first_name ILIKE '%roberto%'
SELECT customers.country FROM customers WHERE customers.last_name ILIKE '%Almeida%' AND customers.first_name ILIKE '%roberto%'
SELECT e.title, e.phone, TO_CHAR(e.hire_date, 'DD-MMM-YYYY') AS hire_date FROM employees AS e WHERE e.first_name = 'Nancy' AND e.last_name = 'Edwards'
SELECT employees.title, employees.phone, employees.hire_date FROM employees WHERE employees.first_name ILIKE '%Nancy%' AND employees.last_name ILIKE '%Edwards%'
SELECT employees.address FROM employees WHERE employees.first_name ILIKE '%Nancy%' AND employees.last_name ILIKE '%Edwards%'
SELECT employees.address FROM employees WHERE employees.last_name ILIKE '%Edwards%' AND employees.first_name ILIKE '%Nancy%'
SELECT COUNT(*) AS total_employees FROM employees WHERE country = 'Canada'
SELECT COUNT(*) AS total_employees FROM employees WHERE country = 'Canada'
SELECT employees.phone FROM employees WHERE employees.first_name ILIKE '%Nancy%' AND employees.last_name ILIKE '%Edwards%'
SELECT employees.phone FROM employees WHERE employees.first_name ILIKE '%Nancy%' AND employees.last_name ILIKE '%Edwards%'
SELECT employees.first_name, employees.last_name FROM employees ORDER BY employees.birth_date ASC NULLS FIRST LIMIT 1
SELECT employees.first_name, employees.last_name FROM employees WHERE employees.birth_date = (SELECT MIN(employees.birth_date) FROM employees)
SELECT employees.first_name, employees.last_name FROM employees ORDER BY (CURRENT_DATE - employees.hire_date) DESC NULLS LAST LIMIT 10
SELECT e.first_name, e.last_name FROM employees AS e ORDER BY (CURRENT_DATE - e.hire_date) DESC NULLS LAST LIMIT 10
SELECT e.city, COUNT(*) AS total_employees FROM employees AS e WHERE title ILIKE '%IT%staff%' GROUP BY e.city
SELECT e.city, CAST(COUNT(CASE WHEN e.title = 'IT' THEN 1 END) AS FLOAT) / NULLIF(COUNT(*), 0) AS proportion_it_staff FROM employees AS e GROUP BY e.city
SELECT mt.name FROM media_types AS mt
SELECT mt.name FROM media_types AS mt
SELECT genres.name FROM genres
SELECT g.name FROM genres AS g
SELECT playlists.name FROM playlists
SELECT playlists.name FROM playlists
SELECT tracks.composer FROM tracks WHERE tracks.name ILIKE '%Fast%As%a%Shark%'
SELECT tracks.composer FROM tracks WHERE tracks.name ilike '%Fast%As%a%Shark%'
SELECT tracks.duration FROM tracks WHERE tracks.name ilike '%Fast%As%a%Shark%'
SELECT tracks.milliseconds FROM tracks WHERE tracks.name ilike '%Fast%As%a%Shark%'
SELECT tracks.name, tracks.milliseconds / NULLIF(tracks.unit_price, 0) AS cost_per_minute FROM tracks WHERE tracks.name ilike '%Fast%As%a%Shark%'
SELECT tracks.unit_price FROM tracks WHERE tracks.name ilike '%Fast%As%a%Shark%'
SELECT COUNT(*) AS total_editors FROM editor
SELECT editor.name FROM editor ORDER BY editor.age ASC NULLS FIRST
SELECT editor.name, editor.age FROM editor
SELECT editor.name FROM editor WHERE editor.age > 25
SELECT editor.name FROM editor WHERE editor.age IN (24, 25)
SELECT editor.name FROM editor ORDER BY editor.age ASC NULLS FIRST LIMIT 1
SELECT editor.age, COUNT(editor.editor_id) AS total_editors FROM editor GROUP BY editor.age ORDER BY editor.age
SELECT AVG(editor.age) AS average_age FROM editor
SELECT journal.theme FROM journal GROUP BY journal.theme
SELECT e.name FROM editor AS e LEFT JOIN journal_committee ON e.editor_id = jc.editor_id WHERE jc.editor_id IS NULL
SELECT j.date, j.theme, j.sales FROM journal j WHERE j.journal_id NOT IN (SELECT e.journal_id FROM editor e JOIN committee c ON e.editor_id = c.editor_id) ORDER BY j.date NULLS LAST
SELECT COUNT(*) AS account_count FROM Accounts
SELECT COUNT(*) AS account_count FROM Accounts
SELECT a.account_id, c.customer_id, c.account_name FROM Accounts AS a JOIN customers ON a.customer_id = c.customer_id
SELECT a.account_id, c.customer_id, a.account_name FROM Accounts AS a
SELECT Accounts.other_account_details FROM Accounts WHERE Accounts.account_name ILIKE '%338%'
SELECT Accounts.other_account_details FROM Accounts WHERE "Account Name" ILIKE '%338%'
SELECT a.customer_id, COUNT(a.account_id) AS account_count FROM Accounts AS a GROUP BY a.customer_id
SELECT a.customer_id, COUNT(a.account_id) AS account_count FROM Accounts AS a GROUP BY a.customer_id
SELECT a.customer_id, COUNT(*) AS account_count FROM Accounts AS a GROUP BY a.customer_id ORDER BY account_count DESC NULLS LAST LIMIT 1
SELECT customer_id, COUNT(account_id) AS account_count FROM Accounts GROUP BY customer_id), max_account_count AS (SELECT MAX(account_count) AS max_account_count FROM account_counts) SELECT ac.customer_id, ac.account_count FROM account_counts JOIN max_account_count ON ac.account_count = mac.max_account_count
SELECT COUNT(*) AS total_customers FROM Customers
SELECT COUNT(DISTINCT Customers.customer_id) AS number_of_customers FROM Customers
SELECT Customers.customer_first_name, Customers.customer_last_name FROM Customers WHERE NOT customer_id IN (SELECT account_holder.customer_id FROM account_holders)
SELECT c.customer_first_name, c.customer_last_name FROM Customers WHERE NOT c.customer_id IN (SELECT a.customer_id FROM Customers AS a)
SELECT COUNT(DISTINCT customer_id) AS number_of_customers FROM Accounts
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM Accounts
SELECT COUNT(*) AS total_customers FROM Customers
SELECT COUNT(*) AS total_customers FROM Customers
SELECT c.customer_id, c.customer_first_name, c.customer_last_name, c.customer_phone FROM Customers AS c
SELECT customers.customer_id, customers.customer_first_name, customers.customer_last_name, customers.customer_phone FROM Customers
SELECT customers.customer_phone, customers.customer_email FROM Customers WHERE customers.customer_first_name ILIKE '%Aniyah%' AND customers.customer_last_name ILIKE '%Feest%'
SELECT customers.customer_phone, customers.customer_email FROM Customers WHERE customers.customer_first_name ILIKE '%Aniyah%' AND customers.customer_last_name ILIKE '%Feest%'
SELECT COUNT(card_id) AS total_cards FROM Customers_Cards
SELECT COUNT(*) AS total_cards FROM Customers_Cards
SELECT customers_cards.card_id, customers_cards.customer_id, customers_cards.card_type_code, customers_cards.card_number FROM Customers_Cards
SELECT customers_cards.card_id, customers_cards.customer_id, customers_cards.card_type_code, customers_cards.card_number FROM Customers_Cards
SELECT Customers_Cards.date_valid_from, Customers_Cards.date_valid_to FROM Customers_Cards WHERE Customers_Cards.card_number = '4560596484842'
SELECT Customers_Cards.date_valid_from, Customers_Cards.date_valid_to FROM Customers_Cards WHERE Customers_Cards.card_id = 4560596484842
SELECT COUNT(*) AS total_debit_cards FROM Customers_Cards WHERE card_type_code ILIKE '%debit%'
SELECT COUNT(*) FROM Customers_Cards WHERE card_type_code = 'Debit'
SELECT customers_cards.customer_id, COUNT(customers_cards.card_id) AS card_count FROM Customers_Cards GROUP BY customers_cards.customer_id
SELECT customers_cards.customer_id, COUNT(customers_cards.card_id) AS card_count FROM Customers_Cards GROUP BY customers_cards.customer_id
SELECT customer_id, COUNT(card_id) AS card_count FROM customers_cards GROUP BY customer_id), max_card_count AS (SELECT MAX(card_count) AS max_card_count FROM Customers_Cards) SELECT cc.customer_id, cc.card_count FROM Customers_Cards AS cc JOIN max_card_count ON cc.card_count = mcc.max_card_count
SELECT customer_id, COUNT(card_id) AS card_count FROM Customers_Cards GROUP BY customer_id), max_card_count AS (SELECT MAX(card_count) AS max_card_count FROM card_counts) SELECT cc.customer_id, cc.card_count FROM card_counts JOIN max_card_count ON cc.card_count = mcc.max_card_count
SELECT card_type_code, COUNT(card_id) AS card_count FROM Customers_Cards GROUP BY card_type_code
SELECT cc.card_type_code, COUNT(*) AS number_of_cards FROM Customers_Cards AS cc GROUP BY cc.card_type_code
SELECT cc.card_type_code, COUNT(*) AS total_cards FROM Customers_Cards AS cc GROUP BY cc.card_type_code ORDER BY total_cards DESC NULLS LAST LIMIT 1
SELECT cc.card_type_code, COUNT(*) AS frequency FROM Customers_Cards AS cc GROUP BY cc.card_type_code ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT DISTINCT cc.card_type_code FROM Customers_Cards AS cc WHERE cc.card_id IN (SELECT card_id FROM Customers_Cards GROUP BY card_id HAVING COUNT(card_id) >= 5)
SELECT cc.card_type_code FROM Customers_Cards AS cc GROUP BY cc.card_type_code HAVING COUNT(cc.card_id) >= 5
SELECT cc.card_type_code, COUNT(DISTINCT cc.customer_id) AS customer_count FROM Customers_Cards AS cc GROUP BY cc.card_type_code
SELECT cc.card_type_code, COUNT(DISTINCT cc.customer_id) AS customer_count FROM Customers_Cards AS cc GROUP BY cc.card_type_code
SELECT customers.customer_id, customers.customer_first_name FROM customers WHERE NOT customers.customer_id IN (SELECT customer_id FROM Customers)
SELECT c.customer_id, c.customer_first_name FROM customers WHERE NOT c.customer_id IN (SELECT cc.customer_id FROM Customers AS cc)
SELECT Customers_Cards.card_type_code FROM Customers_Cards
SELECT DISTINCT Customers_Cards.card_type_code FROM Customers_Cards
SELECT COUNT(DISTINCT card_type_code) AS number_of_card_types FROM Customers_Cards
SELECT COUNT(DISTINCT card_type_code) AS number_of_card_types FROM Customers_Cards
SELECT Financial_Transactions.transaction_type FROM Financial_Transactions
SELECT Financial_Transactions.transaction_type FROM Financial_Transactions GROUP BY Financial_Transactions.transaction_type
SELECT COUNT(DISTINCT transaction_type) AS number_of_transaction_types FROM Financial_Transactions
SELECT COUNT(DISTINCT transaction_type) AS number_of_transaction_types FROM Financial_Transactions
SELECT AVG(transaction_amount) AS average_transaction_amount, SUM(transaction_amount) AS total_transaction_amount FROM Financial_Transactions
SELECT AVG(transaction_amount) AS average_transaction_amount, SUM(transaction_amount) AS total_transaction_amount FROM Financial_Transactions
SELECT Financial_Transactions.transaction_type, COUNT(*) AS total_transactions FROM Financial_Transactions GROUP BY Financial_Transactions.transaction_type
SELECT Financial_Transactions.transaction_type, COUNT(*) AS number_of_transactions FROM Financial_Transactions GROUP BY Financial_Transactions.transaction_type
SELECT Financial_Transactions.transaction_type, SUM(Financial_Transactions.transaction_amount) AS total_transaction_amount FROM Financial_Transactions GROUP BY Financial_Transactions.transaction_type ORDER BY total_transaction_amount DESC NULLS LAST LIMIT 1
SELECT ft.transaction_type, SUM(ft.transaction_amount) AS total_amount FROM Financial_Transactions AS ft GROUP BY ft.transaction_type ORDER BY total_amount DESC NULLS LAST LIMIT 1
SELECT financial_transactions.account_id, COUNT(financial_transactions.transaction_id) AS transaction_count FROM Financial_Transactions GROUP BY financial_transactions.account_id
SELECT Financial_Transactions.account_id, COUNT(*) AS transaction_count FROM Financial_Transactions GROUP BY Financial_Transactions.account_id
SELECT COUNT(*) AS total_tracks FROM track
SELECT COUNT(*) AS total_tracks FROM track
SELECT t.name, t.location FROM track AS t
SELECT t.name, t.location FROM track AS t
SELECT t.name, TO_CHAR(t.seating, 'FM999990D0') AS seating_formatted FROM track AS t WHERE t.year_opened > 2000 ORDER BY t.seating
SELECT t.name, t.seating FROM track AS t WHERE t.year_opened > 2000 ORDER BY t.seating
SELECT t.name, t.location, TO_CHAR(TO_TIMESTAMP(t.year_opened), 'FM90') AS year_opened FROM track AS t WHERE t.year_opened = (SELECT MAX(year_opened) FROM track)
SELECT t.name, t.location, t.seating FROM track AS t WHERE t.year_opened = (SELECT MAX(year_opened) FROM track)
SELECT MIN(seating) AS min_seating, MAX(seating) AS max_seating, AVG(CAST(seating AS FLOAT)) AS avg_seating FROM track
SELECT MIN(seating), MAX(seating), AVG(CAST(seating AS FLOAT)) FROM track
SELECT t.name, t.location, t.year_opened FROM track AS t WHERE t.seating > (SELECT AVG(seating) FROM track)
SELECT t.name, t.location, t.year_opened FROM track t WHERE t.seating > (SELECT AVG(seating) FROM track)
SELECT DISTINCT track.location FROM track
SELECT t.location FROM track AS t GROUP BY t.location
SELECT COUNT(Race_ID) FROM race
SELECT COUNT(Race_ID) FROM race
SELECT DISTINCT race.class FROM race
SELECT DISTINCT race.class FROM race ORDER BY race.class
SELECT race.name, race.class, race.date FROM race
SELECT race.name, race.class, race.date FROM race
SELECT race.class, COUNT(race.race_id) AS total_races FROM race GROUP BY race.class
SELECT race.class, COUNT(*) AS number_of_races FROM race GROUP BY race.class ORDER BY number_of_races DESC NULLS LAST
SELECT race.class, COUNT(*) AS race_count FROM race GROUP BY race.class ORDER BY race_count DESC NULLS LAST LIMIT 1
SELECT race.class FROM race GROUP BY race.class ORDER BY COUNT(*) DESC NULLS LAST LIMIT 1
SELECT DISTINCT race.class FROM race GROUP BY race.class HAVING COUNT(race.race_id) >= 2
SELECT DISTINCT race.class FROM race GROUP BY race.class HAVING COUNT(race.race_id) >= 2
SELECT t.name FROM track LEFT JOIN track AS r ON t.track_id = r.track_id WHERE r.seating <> 'GT' AND r.track_id IS NULL
SELECT t.name FROM track LEFT JOIN track AS r ON t.track_id = r.track_id WHERE r.track_id IS NULL
SELECT t.name FROM track WHERE NOT EXISTS(SELECT 1 FROM track AS r WHERE r.track_id = t.track_id)
SELECT t.name FROM track WHERE NOT t.track_id IN (SELECT r.track_id FROM track AS r)
SELECT DISTINCT t1.year_opened FROM track AS t1 JOIN track AS t2 ON (t1.location = t2.location AND (t1.seating > 5000 OR t2.seating < 4000)) WHERE t1.seating <= 5000 AND t2.seating >= 4000
SELECT year_opened FROM track WHERE seating BETWEEN 4000 AND 5000
SELECT DISTINCT track.location FROM track WHERE (track.seating > 90000 AND track.seating < 70000) GROUP BY track.location
SELECT DISTINCT track.location FROM track WHERE (track.seating > 90000 AND track.seating < 70000) OR (track.seating < 70000 AND track.seating > 90000)
SELECT COUNT(*) FROM member WHERE membership_card = 'black'
SELECT member.address, COUNT(member.member_id) AS member_count FROM member GROUP BY member.address ORDER BY member_count DESC NULLS LAST
SELECT member.name FROM member WHERE member.address ILIKE '%Harford%' OR member.address ILIKE '%Waterbury%'
SELECT member.member_id, member.name FROM member WHERE member.age < 30 OR member.membership_card = 'black'
SELECT member.member_id, member.name, member.age, member.address FROM member ORDER BY member.time_of_purchase ASC NULLS FIRST
SELECT member.membership_card FROM member GROUP BY member.membership_card HAVING COUNT(member.member_id) > 5
SELECT member.address FROM member WHERE member.age < 30 AND member.age > 40
SELECT member.membership_card FROM member WHERE member.address ILIKE '%Hartford%' AND member.address ILIKE '%Waterbury%'
SELECT COUNT(*) AS total_members FROM member WHERE address <> 'Hartford'
SELECT DISTINCT member.address FROM member WHERE member.membership_card <> 'black'
SELECT shop.address FROM shop ORDER BY shop.open_year
SELECT AVG(shop.score) AS average_score, AVG(CAST(shop.num_of_staff AS FLOAT)) AS average_staff FROM shop
SELECT shop.shop_id, shop.address FROM shop WHERE shop.score < (SELECT AVG(score) FROM shop)
SELECT shop.address, CAST(shop.num_of_staff AS FLOAT) FROM shop WHERE NOT shop.shop_id IN (SELECT happy_hour.shop_id FROM shop)
SELECT hh.shop_id, COUNT(*) AS num_of_happy_hours FROM happy_hour AS hh GROUP BY hh.shop_id ORDER BY num_of_happy_hours DESC NULLS LAST LIMIT 1
SELECT MONTH, COUNT(HH_ID) AS num_of_happy_hours FROM happy_hour GROUP BY MONTH ORDER BY num_of_happy_hours DESC NULLS LAST LIMIT 1
SELECT MONTH FROM happy_hour GROUP BY MONTH HAVING COUNT(HH_ID) > 2
SELECT COUNT(Album) AS total_albums FROM Album
SELECT COUNT(Album.albumid) AS total_albums FROM Album
SELECT Genre.name FROM Genre
SELECT Genre.Name FROM Genre
SELECT * FROM Customer WHERE state = 'NY'
SELECT p.firstname, p.lastname, p.company FROM personal JOIN Customer AS a ON p.address = a.address WHERE a.state = 'NY'
SELECT Employee.FirstName, Employee.LastName FROM Employee WHERE Employee.City = 'Calgary'
SELECT Employee.FirstName, Employee.LastName FROM Employee WHERE Employee.City = 'Calgary'
SELECT BillingCountry FROM Invoice GROUP BY BillingCountry
SELECT BillingCountry FROM Invoice GROUP BY BillingCountry
SELECT Artist.Name FROM Artist WHERE Artist.Name ILIKE '%a%'
SELECT Artist.Name FROM Artist WHERE Artist.Name ILIKE '%a%'
SELECT Track.Name FROM Track WHERE Track.Name ILIKE '%you%'
SELECT Track.Name FROM Track WHERE Track.Name ILIKE '%word%' ORDER BY Track.Name
SELECT AVG(Track.UnitPrice) AS average_unit_price FROM Track
SELECT AVG(Track.UnitPrice) AS average_unit_price FROM Track
SELECT TrackId, Milliseconds FROM Track) SELECT MAX(Milliseconds) AS max_duration, MIN(Milliseconds) AS min_duration FROM track_durations
SELECT MAX(Milliseconds) AS max_duration, MIN(Milliseconds) AS min_duration FROM Track
SELECT p.firstname, p.lastname FROM personal_info JOIN Customer AS c ON p.customerid = c.customerid WHERE c.email = 'luisg@embraer.com.br'
SELECT p.firstname, p.lastname FROM personal JOIN Customer AS c ON p.customerid = c.customerid WHERE c.email = 'luisg@embraer.com.br'
SELECT COUNT(*) FROM Customer WHERE email ILIKE '%gmail.com%'
SELECT COUNT(*) FROM Customer WHERE email ILIKE '%gmail.com%'
SELECT COUNT(DISTINCT Employee.City) AS number_of_cities FROM Employee
SELECT COUNT(DISTINCT Employee.City) AS num_cities FROM Employee
SELECT p.lastname FROM personal WHERE NOT EXISTS(SELECT 1 FROM Customer AS i WHERE i.customerid = p.firstname AND TO_NUMBER(i.country, '9999D99') > 20)
SELECT c.lastname FROM Customer AS c WHERE c.address <= 20
SELECT Employee.Phone FROM Employee
SELECT e.employeeid, e.phone FROM Employee AS e
SELECT Album.Title FROM Album ORDER BY Album.Title ASC NULLS FIRST
SELECT a.title FROM Album AS a ORDER BY a.title ASC NULLS FIRST
SELECT a.name FROM artist LEFT JOIN Artist AS al ON a.artistid = al.artistid WHERE al.artistid IS NULL
SELECT a.name FROM artist LEFT JOIN Artist AS al ON a.artistid = al.artistid WHERE al.artistid IS NULL
SELECT Employee.BirthDate FROM Employee WHERE Employee.Address = 'Edmonton'
SELECT Employee.BirthDate FROM Employee WHERE Employee.Address = 'Edmonton'
SELECT DISTINCT Track.UnitPrice FROM Track
SELECT DISTINCT Track.UnitPrice FROM Track
SELECT COUNT(DISTINCT a.artistid) AS number_of_artists FROM artist LEFT JOIN Artist AS ab ON a.artistid = ab.artistid WHERE ab.artistid IS NULL
SELECT COUNT(*) AS num_artists_without_albums FROM Artist WHERE NOT ArtistId IN (SELECT ArtistId FROM Artist)
SELECT Available_Policies.policy_type_code, Available_Policies.customer_phone FROM Available_Policies
SELECT Available_Policies.policy_type_code FROM Available_Policies
SELECT Available_Policies.customer_phone FROM Available_Policies WHERE Available_Policies.policy_type_code ILIKE '%Life%Insurance%'
SELECT Available_Policies.customer_phone FROM Available_Policies WHERE Available_Policies.policy_type_code ILIKE '%Life%Insurance%'
SELECT policy_type_code, COUNT(*) AS record_count FROM Available_Policies GROUP BY policy_type_code ORDER BY record_count DESC NULLS LAST LIMIT 1
SELECT policy_type_code, COUNT(*) AS frequency FROM Available_Policies GROUP BY policy_type_code ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT Available_Policies.customer_phone FROM Available_Policies GROUP BY Available_Policies.customer_phone ORDER BY COUNT(Available_policies.policy_id) DESC NULLS LAST
SELECT Available_Policies.customer_phone FROM Available_Policies GROUP BY Available_Policies.customer_phone ORDER BY COUNT(Available_policies.policy_type_code) DESC NULLS LAST
SELECT Available_Policies.policy_type_code FROM Available_Policies GROUP BY Available_Policies.policy_type_code HAVING COUNT(Available_policies.customer_phone) > 4
SELECT DISTINCT Available_Policies.policy_type_code FROM Available_Policies WHERE Available_Policies.Policy_ID IN (SELECT Customer_Phone FROM Available_Policies GROUP BY customer_phone HAVING COUNT(customer_phone) > 4)
SELECT SUM(Settlement_Amount) AS total_settlement_amount, AVG(Settlement_Amount) AS average_settlement_amount FROM Settlements
SELECT SUM(Settlements.Settlement_Amount) AS total_settlement_amount, AVG(Settlements.Settlement_Amount) AS average_settlement_amount FROM Settlements
SELECT Services.Service_name FROM Services ORDER BY Services.Service_name ASC NULLS FIRST
SELECT Services.Service_name FROM Services ORDER BY Services.Service_name ASC NULLS FIRST
SELECT COUNT(*) AS total_services FROM Services
SELECT COUNT(*) AS total_services FROM Services
SELECT customers.customer_name FROM Customers WHERE NOT customers.customer_id IN (SELECT customer_id FROM loss)
SELECT Customers.customer_name FROM Customers WHERE NOT Customers.customer_id IN (SELECT Loss_customers.customer_id FROM Loss_customers)
SELECT customer_id FROM Customers WHERE customer_name ILIKE '%diana%'
SELECT Customers.customer_id FROM Customers WHERE Customers.customer_name ILIKE '%Diana%'
SELECT MAX(Settlement_Amount) AS max_settlement_amount, MIN(Settlement_Amount) AS min_settlement_amount FROM Settlements
SELECT MAX(Settlements.Settlement_Amount) AS max_settlement_amount, MIN(Settlements.Settlement_Amount) AS min_settlement_amount FROM Settlements
SELECT Customers.customer_id, Customers.customer_name FROM Customers ORDER BY Customers.customer_id ASC NULLS FIRST
SELECT customers.customer_id FROM Customers ORDER BY customers.customer_id NULLS FIRST
SELECT COUNT(DISTINCT name) AS number_of_enzymes FROM enzyme
SELECT COUNT(*) AS total_enzymes FROM enzyme
SELECT enzyme.name FROM enzyme ORDER BY enzyme.name DESC NULLS LAST
SELECT e.name FROM enzyme AS e ORDER BY e.name DESC NULLS LAST
SELECT e.name, e.location FROM enzyme AS e
SELECT e.name, e.location FROM enzyme AS e
SELECT MAX(enzyme.omim) AS max_omim FROM enzyme
SELECT MAX(omim) FROM enzyme
SELECT e.product, e.chromosome, e.porphyria FROM enzyme AS e WHERE e.location = 'Cytosol'
SELECT e.product, e.chromosome, e.porphyria FROM enzyme AS e WHERE e.location ILIKE '%Cytosol%'
SELECT e.name FROM enzyme AS e WHERE NOT e.product ILIKE '%hème%'
SELECT e.name FROM enzyme AS e WHERE e.product <> 'Heme'
SELECT medicine.name, medicine.trade_name FROM medicine WHERE medicine.fda_approved ILIKE '%Yes%'
SELECT medicine.name, medicine.trade_name FROM medicine WHERE medicine.fda_approved = 'Yes'
SELECT medicine_enzyme_interaction.interaction_type, COUNT(*) AS frequency FROM medicine_enzyme_interaction GROUP BY medicine_enzyme_interaction.interaction_type ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT COUNT(DISTINCT interaction_type) AS number_of_interaction_types FROM medicine_enzyme_interaction
SELECT COUNT(*) FROM medicine WHERE fda_approved = 'No'
SELECT COUNT(*) FROM medicine WHERE fda_approved = 'No'
SELECT COUNT(*) FROM enzyme WHERE NOT id IN (SELECT name FROM interactions)
SELECT COUNT(*) FROM enzyme WHERE NOT id IN (SELECT name FROM interactions)
SELECT m.name, m.trade_name FROM medicine m WHERE m.id NOT IN (SELECT e.medicine_id FROM enzyme e JOIN heme h ON e.product_id = h.id)
SELECT m.name, mt.trade_name FROM medicine AS m JOIN medicine_trade ON m.id = mt.fda_approved WHERE NOT m.name ILIKE '%heme%'
SELECT COUNT(DISTINCT medicine.fda_approved) AS number_of_statuses FROM medicine
SELECT COUNT(DISTINCT medicine.fda_approved) AS number_of_status FROM medicine
SELECT enzyme.name FROM enzyme WHERE enzyme.name ILIKE '%ALA%'
SELECT e.name FROM enzyme AS e WHERE e.name ILIKE '%ALA%'
SELECT medicine.trade_name, COUNT(medicine.id) AS total_medicines FROM medicine GROUP BY medicine.trade_name
SELECT medicine.trade_name, COUNT(*) AS number_of_medicines FROM medicine GROUP BY medicine.trade_name
SELECT university.school_id, university.nickname FROM university ORDER BY university.founded ASC NULLS FIRST
SELECT university.school, university.nickname FROM university ORDER BY university.founded NULLS FIRST
SELECT university.school, university.location FROM university WHERE university.founded = 1
SELECT university.school_id, university.location FROM university WHERE university.founded > 1000
SELECT university.school, MAX(university.enrollment) AS max_enrollment, MAX(university.founded) AS earliest_founding FROM university GROUP BY university.school ORDER BY max_enrollment DESC NULLS LAST
SELECT university.founded FROM university WHERE university.enrollment = (SELECT MAX(university.enrollment) FROM university)
SELECT MAX(Founded) AS latest_founded_year FROM university WHERE School_ID <> 3
SELECT university.founded FROM university WHERE university.school_id <> 3 ORDER BY university.founded DESC NULLS LAST LIMIT 1
SELECT COUNT(DISTINCT school_id) AS number_of_schools FROM basketball_match
SELECT COUNT(DISTINCT school_id) AS number_of_schools FROM basketball_match
SELECT MAX(basketball_match.acc_percent) AS max_acc_percent FROM basketball_match
SELECT MAX(basketball_match.acc_percent) AS max_acc_percent FROM basketball_match
SELECT AVG(Enrollment) AS average_enrollment FROM university WHERE Founded < 1850
SELECT AVG(enrollment) FROM university WHERE founded < 1850
SELECT u.enrollment, u.primary_conference FROM university AS u WHERE AGE(u.founded) = (SELECT MIN(AGE(founded)) FROM university)
SELECT u.school_id, u.enrollment, u.primary_conference FROM university AS u ORDER BY u.founded ASC NULLS FIRST LIMIT 1
SELECT SUM(university.enrollment) AS total_enrollment, MIN(university.enrollment) AS min_enrollment FROM university
SELECT SUM(university.enrollment) AS total_enrollment, MIN(university.enrollment) AS min_enrollment FROM university
SELECT university.affiliation, SUM(university.enrollment) AS total_enrollment FROM university GROUP BY university.affiliation
SELECT university.affiliation, SUM(university.enrollment) AS total_enrollment FROM university GROUP BY university.affiliation
SELECT COUNT(*) AS total_schools FROM university WHERE NOT school_id IN (SELECT school_id FROM university)
SELECT COUNT(*) FROM university WHERE NOT school_id IN (SELECT school_id FROM university)
SELECT university.school FROM university WHERE university.founded > 1850 ORDER BY university.founded
SELECT university.school FROM university WHERE university.founded < '1850' OR university.founded IS NULL
SELECT COUNT(DISTINCT university.affiliation) AS number_of_affiliations FROM university
SELECT COUNT(DISTINCT university.affiliation) AS num_affiliations FROM university
SELECT COUNT(*) FROM university WHERE LOWER ILIKE '%ny%'
SELECT COUNT(*) FROM university WHERE "Location" ILIKE '%NY%'
SELECT university.affiliation, COUNT(*) AS total_universities FROM university WHERE university.enrollment > 20000 GROUP BY university.affiliation
SELECT university.affiliation, COUNT(*) AS school_count FROM university WHERE enrollment > 20000 GROUP BY university.affiliation ORDER BY school_count DESC NULLS LAST
SELECT university.affiliation, SUM(university.enrollment) AS total_enrollment FROM university WHERE university.founded > 1850 GROUP BY university.affiliation
SELECT university.affiliation, SUM(CASE WHEN university.founded > 1850 THEN university.enrollment END) AS total_enrollment FROM university GROUP BY university.affiliation
SELECT MAX(university.enrollment) AS max_enrollment FROM university
SELECT MAX(university.enrollment) AS max_enrollment FROM university
SELECT b.team_name, a.acc_regular_season, a.acc_percent, a.all_games, a.all_games_percent FROM basketball_match JOIN basketball_match AS a ON b.team_id = a.team_id
SELECT b.team_name, a.acc_regular_season, a.acc_percent, a.all_games, a.all_games_percent FROM basketball_match JOIN basketball_match AS a ON b.team_id = a.team_id
SELECT b.team_name FROM basketball_match AS b ORDER BY b.all_games_percent DESC NULLS LAST
SELECT b.team_name, CAST(b.all_games_percent AS FLOAT) AS all_games_percent FROM basketball_match AS b ORDER BY all_games_percent DESC NULLS LAST
SELECT chip_model.model_name FROM chip_model WHERE (chip_model.launch_year >= 2002 AND chip_model.launch_year <= 2004)
SELECT chip_model.model_name, MIN(chip_model.ram_miB) AS min_ram FROM chip_model GROUP BY chip_model.model_name
SELECT phone.chip_model, phone.screen_mode FROM phone WHERE phone.hardware_model_name ILIKE '%LG-P760%'
SELECT COUNT(Hardware_Design_name) AS number_of_hardware_designs FROM phone WHERE Company_name ILIKE '%Nokia%Corporation%'
SELECT phone.hardware_model_name, phone.company_name FROM phone WHERE phone.accreditation_type ILIKE '%full%'
SELECT MIN(Company_name), COUNT(*) AS total_phone_models FROM phone
SELECT DISTINCT Company_name FROM phone GROUP BY Company_name HAVING COUNT(chip_model) > 1
SELECT MAX(used_kb) AS max_used_kb, MIN(used_kb) AS min_used_kb, AVG(used_kb) AS avg_used_kb FROM screen_mode
SELECT Accredation_type, COUNT(*) AS phone_count FROM phone GROUP BY Accredation_type
SELECT Accredation_type, COUNT(*) AS number_of_phones FROM phone GROUP BY Accredation_type
SELECT phone.accreditation_level FROM phone GROUP BY phone.accreditation_level HAVING COUNT(phone.company_name) > 3
SELECT chip_model.model_name, chip_model.launch_year, CAST(chip_model.ram_miB AS FLOAT) / NULLIF(chip_model.rom_miB, 0) AS ram_to_rom_ratio FROM chip_model
SELECT COUNT(*) FROM chip_model WHERE WiFi IS NULL
SELECT COUNT(*) FROM chip_model WHERE WiFi IS NULL
SELECT chip_model.model_name, chip_model.launch_year FROM chip_model ORDER BY chip_model.launch_year
SELECT phone_number.chip_model_name FROM phone_number)
SELECT DISTINCT chip_model.model_name FROM chip_model LEFT JOIN phone ON chip_model.model_name = phone.rom_mib WHERE phone.rom_mib IS NULL
SELECT COUNT(*) AS total_countries FROM country
SELECT COUNT(*) FROM country
SELECT c.country_name, c.capital FROM country AS c
SELECT c.country_name, uc.capital FROM country JOIN country AS uc ON c.capital = uc.capital
SELECT country.official_native_language FROM country WHERE country.official_native_language ILIKE '%English%'
SELECT country.official_native_language FROM country WHERE country.official_native_language ILIKE '%English%'
SELECT DISTINCT match_season.position FROM match_season
SELECT DISTINCT position FROM match_season
SELECT match_season.player FROM match_season WHERE match_season.college = 'collegeucla'
SELECT match_season.player FROM match_season WHERE match_season.country = 'ForuCLA'
SELECT match_season.player, match_season.position FROM match_season WHERE college IN ('college', 'College') AND team IN ('duke', 'Duke') GROUP BY match_season.player, match_season.position
SELECT match_season.player, COUNT(DISTINCT match_season.position) AS total_positions FROM match_season WHERE college IN ('Furmancla', 'Duke') GROUP BY match_season.player
SELECT draftees.draft_pick_number, draftees.draft_class FROM match_season WHERE draftees.position = 'defender'
SELECT match_season.draft_pick_number, match_season.draft_class FROM match_season WHERE match_season.position = 'Defender'
SELECT COUNT(DISTINCT Team) AS number_of_teams FROM match_season
SELECT COUNT(DISTINCT Team) AS num_teams FROM match_season
SELECT player.player_id, CAST(player.years_play AS FLOAT) AS years_play FROM player
SELECT p.player_id, p.player, CAST(p.years_play AS FLOAT) AS years_play FROM player AS p
SELECT t.name FROM team AS t
SELECT team.name FROM team
SELECT match_season.position, COUNT(match_season.player) AS player_count FROM match_season GROUP BY match_season.position ORDER BY player_count DESC NULLS LAST
SELECT match_season.position, COUNT(*) AS total_players FROM match_season GROUP BY match_season.position
SELECT match_season.player FROM match_season ORDER BY match_season.college ASC NULLS FIRST
SELECT match_season.player FROM match_season ORDER BY match_season.college ASC NULLS FIRST
SELECT position AS POSITION_PLAYERS FROM match_season GROUP BY POSITION_ORDER BY COUNT(POSITION) DESC LIMIT 1
SELECT m.season, p.position, COUNT(*) AS frequency FROM match_season AS m JOIN player ON m.player = p.team GROUP BY m.season, p.position ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT college, COUNT(*) AS frequency FROM match_season GROUP BY college ORDER BY frequency DESC NULLS LAST LIMIT 3
SELECT college, COUNT(player) AS player_count FROM match_season GROUP BY college ORDER BY player_count DESC NULLS LAST LIMIT 3
SELECT college FROM match_season GROUP BY college HAVING COUNT(player) >= 2
SELECT college FROM match_season GROUP BY college HAVING COUNT(player) >= 2
SELECT college FROM match_season GROUP BY college HAVING COUNT(player) >= 2 ORDER BY college DESC NULLS LAST
SELECT college FROM match_season GROUP BY college HAVING COUNT(player) >= 2 ORDER BY college DESC NULLS LAST
SELECT t.name FROM team LEFT JOIN team AS m ON t.team_id = m.team_id WHERE m.team_id IS NULL
SELECT t.name FROM team LEFT JOIN team AS m ON t.team_id = m.team_id WHERE m.team_id IS NULL
SELECT DISTINCT college.country FROM match_season JOIN player ON player.college = college.country WHERE player.position IN ('midfielder', 'defender')
SELECT DISTINCT college FROM match_season WHERE position IN ('Midfielder', 'Defender')
SELECT COUNT(*) AS total_climbers FROM climber
SELECT COUNT(*) FROM climber
SELECT c.name FROM climber AS c ORDER BY c.points DESC NULLS LAST
SELECT c.name FROM climber AS c ORDER BY c.points DESC NULLS LAST
SELECT c.name FROM climber AS c WHERE c.country <> 'Switzerland'
SELECT c.name FROM climber AS c WHERE c.country <> 'Switzerland'
SELECT MAX(climber.points) AS max_points FROM climber WHERE climber.country = 'United Kingdom'
SELECT MAX(climber.points) AS max_points FROM climber WHERE climber.country = 'United Kingdom'
SELECT COUNT(DISTINCT country) AS number_of_countries FROM climber
SELECT COUNT(DISTINCT climber.country) FROM climber
SELECT mountain.name FROM mountain ORDER BY mountain.name ASC NULLS FIRST
SELECT mountain.name FROM mountain ORDER BY mountain.name ASC NULLS FIRST
SELECT mountain.country FROM mountain WHERE mountain.height > 5000
SELECT mountain.country FROM mountain WHERE mountain.height > 5000
SELECT mountain.name FROM mountain ORDER BY mountain.height DESC NULLS LAST LIMIT 1
SELECT mountain.name FROM mountain ORDER BY mountain.height DESC NULLS LAST LIMIT 1
SELECT mountain.name, mountain.prominence FROM mountain ORDER BY mountain.prominence DESC NULLS LAST LIMIT 3
SELECT mountain.name, mountain.prominence, ROW_NUMBER() OVER (PARTITION BY mountain.country ORDER BY mountain.prominence DESC NULLS LAST) AS rank FROM mountain WHERE mountain.country = 'Spain' AND mountain.height > 10000 GROUP BY mountain.name, mountain.country HAVING COUNT(mountain.height) >= 3
SELECT c.country, COUNT(*) AS total_climbers FROM climber AS c GROUP BY c.country
SELECT c.country, COUNT(*) AS total_climbers FROM climber AS c GROUP BY c.country
SELECT DISTINCT mountain.country FROM mountain GROUP BY mountain.country HAVING COUNT(mountain.mountain_id) > 1
SELECT country FROM mountain GROUP BY country HAVING COUNT(Mountain_id) > 1
SELECT mountain.name FROM mountain WHERE mountain.height IS NULL
SELECT m.name FROM mountain WHERE NOT EXISTS(SELECT 1 FROM mountain AS c WHERE c.mountain_id = m.mountain_id)
SELECT DISTINCT mountain.country FROM mountain WHERE mountain.height > 5600 AND mountain.height < 5200
SELECT DISTINCT mountain.country FROM mountain WHERE mountain.prominence > 5600 AND mountain.prominence < 5200
SELECT mountain.range FROM mountain GROUP BY mountain.range ORDER BY COUNT(mountain.mountain_id) DESC NULLS LAST LIMIT 1
SELECT mountain.range FROM mountain GROUP BY mountain.range ORDER BY COUNT(mountain.mountain_id) DESC NULLS LAST LIMIT 1
SELECT mountain.name FROM mountain WHERE mountain.height > 5000 OR mountain.prominence > 1000
SELECT mountain.name FROM mountain WHERE mountain.height > 5000 OR mountain.prominence > 1000
SELECT COUNT(*) AS total_bodybuilders FROM body_builder
SELECT body_builder.body_builder_id, SUM(body_builder.total) AS total_score FROM body_builder GROUP BY body_builder.body_builder_id ORDER BY total_score ASC NULLS FIRST
SELECT body_builder.snatch, body_builder.clean_jerk FROM body_builder ORDER BY body_builder.snatch ASC NULLS FIRST
SELECT AVG(body_builder.snatch) AS average_snatch FROM body_builder
SELECT body_builder.people_id, MAX(body_builder.total) AS max_total, MAX(body_builder.clean_jerk) AS max_clean_jerk, MIN(body_builder.clean_jerk) AS min_clean_jerk FROM body_builder GROUP BY body_builder.people_id
SELECT people.birth_date FROM people ORDER BY people.height ASC NULLS FIRST
SELECT p.birth_place, COUNT(*) AS total_people FROM people AS p GROUP BY p.birth_place
SELECT birth_place FROM people GROUP BY birth_place ORDER BY COUNT(birth_place) DESC NULLS LAST LIMIT 1
SELECT DISTINCT people.birth_place FROM people GROUP BY people.birth_place HAVING COUNT(people.people_id) >= 2
SELECT people.height, people.weight FROM people ORDER BY people.height DESC NULLS LAST
SELECT body_builder.body_builder_id, body_builder.people_id, body_builder.snatch, body_builder.clean_jerk, body_builder.total FROM body_builder
SELECT p.name, p.birth_place FROM people WHERE NOT p.weight IN (SELECT b.weight FROM people AS b)
SELECT COUNT(DISTINCT Birth_Place) AS number_of_birth_places FROM people
SELECT COUNT(*) FROM people WHERE height IS NULL
SELECT MIN(Snatch) AS min_snatch FROM body_builder
SELECT COUNT(*) FROM election
SELECT election_id, date, votes FROM election ORDER BY votes DESC NULLS LAST
SELECT election.date, (100 * COUNT(*) OVER (PARTITION BY election.date) / NULLIF(COUNT(*), 0)) AS percentage_of_votes FROM election
SELECT MIN(Vote_Percent) AS min_vote_percent, MAX(Vote_Percent) AS max_vote_percent FROM election
SELECT representative.name, representative.party FROM representative
SELECT representative.name FROM representative WHERE representative.party <> 'Republican'
SELECT representative.lifespan FROM representative WHERE representative.state IN ('New York', 'Indiana') ORDER BY representative.lifespan
SELECT p.name, COUNT(r.representative_id) AS num_reps FROM representative AS p JOIN representative ON p.lifespan = r.party JOIN state ON r.state = s.state GROUP BY p.name
SELECT r.party FROM representative AS r GROUP BY r.party ORDER BY COUNT(r.representative_id) DESC NULLS LAST LIMIT 1
SELECT party.name FROM representative WHERE party.party IN (SELECT representative.representative_id FROM representative GROUP BY representative.representative_id HAVING COUNT(representative.party) >= 3)
SELECT state FROM representative GROUP BY state HAVING COUNT(representative_id) >= 2
SELECT representative.name FROM representative WHERE NOT representative.representative_id IN (SELECT election.representative_id FROM representative)
SELECT DISTINCT representative.party FROM representative WHERE "State" ILIKE '%New%York%' AND "State" ILIKE '%Pennsylvania%'
SELECT COUNT(DISTINCT representative.party) AS number_of_parties FROM representative
SELECT COUNT(*) AS total_bookings FROM Apartment_Bookings
SELECT COUNT(*) AS total_bookings FROM Apartment_Bookings
SELECT apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date FROM Apartment_Bookings
SELECT apt_booking_id, apt_id, guest_id, booking_status_code, booking_start_date, booking_end_date FROM Apartment_Bookings
SELECT DISTINCT Apartment_Buildings.building_description FROM Apartment_Buildings
SELECT DISTINCT Apartment_Buildings.building_description FROM Apartment_Buildings
SELECT Apartment_Buildings.building_short_name FROM Apartment_Buildings WHERE Apartment_Buildings.building_manager ILIKE '%Emma%'
SELECT Apartment_Buildings.building_short_name FROM Apartment_Buildings WHERE Apartment_Buildings.building_manager ILIKE '%Emma%'
SELECT Apartment_Buildings.building_address, Apartment_Buildings.building_phone FROM Apartment_Buildings WHERE Apartment_Buildings.building_manager ILIKE '%Brenden%'
SELECT Apartment_Buildings.building_address, Apartment_Buildings.building_phone FROM Apartment_Buildings WHERE Apartment_Buildings.building_manager ILIKE '%Brenden%'
SELECT Apartment_Buildings.building_full_name FROM Apartment_Buildings WHERE Apartment_Buildings.building_full_name ILIKE '%court%'
SELECT Apartment_Buildings.building_full_name FROM Apartment_Buildings WHERE Apartment_Buildings.building_full_name ILIKE '%court%'
SELECT MIN(bathroom_count) AS min_bathroom_count, MAX(bathroom_count) AS max_bathroom_count FROM Apartments
SELECT MIN(bathroom_count) AS min_bathroom_count, MAX(bathroom_count) AS max_bathroom_count FROM Apartments
-1
-1
SELECT a.apt_id, CAST(a.room_count AS FLOAT) AS room_count FROM Apartments AS a
SELECT a.apt_id, CAST(a.room_count AS FLOAT) AS room_count FROM Apartments AS a
SELECT AVG(CAST(room_count AS FLOAT)) AS average_room_count FROM Apartments WHERE apt_type_code ILIKE '%Studio%'
-1
SELECT Apartments.apt_number FROM Apartments WHERE Apartments.apt_type_code ILIKE '%Flat%'
SELECT Apartments.apt_number FROM Apartments WHERE Apartments.apt_type_code ILIKE '%flat%'
SELECT Guests.guest_first_name, Guests.guest_last_name FROM Guests
SELECT Guests.guest_first_name, Guests.guest_last_name FROM Guests
SELECT Guests.date_of_birth FROM Guests WHERE Guests.gender_code = 'Male'
SELECT date_of_birth FROM Guests WHERE gender_code = 'Male'
SELECT Apartment_Bookings.booking_status_code, COUNT(Apartment_Bookings.apt_booking_id) AS total_bookings FROM Apartment_Bookings GROUP BY Apartment_Bookings.booking_status_code
SELECT Apartment_Bookings.booking_status_code, COUNT(Apartment_Bookings.apt_booking_id) AS total_bookings FROM Apartment_Bookings GROUP BY Apartment_Bookings.booking_status_code
SELECT Apartments.apt_id, Apartments.room_count FROM Apartments ORDER BY CAST(Apartments.room_count AS FLOAT) ASC NULLS FIRST
SELECT Apartments.apt_id, Apartments.room_count FROM Apartments ORDER BY CAST(Apartments.room_count AS FLOAT) ASC NULLS FIRST
SELECT Apartments.apt_id, Apartments.building_id, Apartments.apt_type_code, Apartments.apt_number, Apartments.bathroom_count, Apartments.bedroom_count, Apartments.room_count FROM Apartments ORDER BY Apartments.bedroom_count DESC NULLS LAST LIMIT 1
SELECT a.apt_id, a.building_id, a.apt_type_code, a.apt_number, b.bathroom_count, c.bedroom_count FROM Apartments AS a JOIN (SELECT apt_id, MAX(bathroom_count) AS max_bathroom_count FROM Apartments GROUP BY apt_id) AS b ON a.apt_id = b.apt_id JOIN (SELECT apt_id, MAX(bedroom_count) AS max_bedroom_count FROM Apartments GROUP BY apt_id) AS c ON a.apt_id = c.apt_id
SELECT apt_type_code, COUNT(apt_id) AS number_of_apartments FROM Apartments GROUP BY apt_type_code ORDER BY number_of_apartments ASC NULLS FIRST
SELECT apt_type_code, COUNT(*) AS number_of_apartments FROM Apartments GROUP BY apt_type_code ORDER BY number_of_apartments ASC NULLS FIRST
SELECT Apartments.apt_type_code, AVG(CAST(Apartments.room_count AS FLOAT)) AS avg_room_count FROM Apartments GROUP BY Apartments.apt_type_code ORDER BY avg_room_count DESC NULLS LAST LIMIT 3
SELECT apt_type_code, AVG(CAST(room_count AS FLOAT)) AS avg_room_count FROM Apartments GROUP BY apt_type_code ORDER BY avg_room_count DESC NULLS LAST LIMIT 3
SELECT a.apt_type_code, CAST(a.room_count AS FLOAT) AS room_count, b.bathroom_count, c.bedroom_count FROM Apartments AS a JOIN (SELECT apt_id, MAX(bathroom_count) AS bathroom_count FROM Apartments GROUP BY apt_id) AS b ON a.apt_id = b.apt_id JOIN (SELECT apt_id, MAX(bedroom_count) AS bedroom_count FROM Apartments GROUP BY apt_id) AS c ON a.apt_id = c.apt_id
SELECT a.apt_type_code, CAST(a.room_count AS FLOAT) AS room_count, a.bathroom_count, a.bedroom_count FROM Apartments AS a ORDER BY a.room_count DESC NULLS LAST LIMIT 1
SELECT Apartments.apt_type_code FROM Apartments GROUP BY Apartments.apt_type_code ORDER BY COUNT(Apartments.apt_type_code) DESC NULLS LAST LIMIT 1
SELECT Apartments.apt_type_code, COUNT(Apartments.apt_id) AS frequency FROM Apartments GROUP BY Apartments.apt_type_code ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT Apartments.apt_type_code FROM Apartments WHERE Apartments.bathroom_count > 1 GROUP BY Apartments.apt_type_code ORDER BY COUNT(Apartments.apt_type_code) DESC NULLS LAST LIMIT 1
SELECT Apartments.apt_type_code, COUNT(*) AS frequency FROM Apartments WHERE Apartments.bathroom_count > 1 GROUP BY Apartments.apt_type_code ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT apt_type_code, MIN(room_count) AS min_rooms, MAX(room_count) AS max_rooms FROM Apartments GROUP BY apt_type_code
SELECT apt_type_code, MIN(room_count) AS min_rooms, MAX(room_count) AS max_rooms FROM Apartments GROUP BY apt_type_code
SELECT g.gender_code, COUNT(g.guest_id) AS guest_count FROM Guests AS g GROUP BY g.gender_code ORDER BY guest_count DESC NULLS LAST
SELECT g.gender_code, COUNT(g.guest_id) AS guest_count FROM Guests AS g GROUP BY g.gender_code ORDER BY guest_count DESC NULLS LAST
SELECT COUNT(*) AS number_of_apartments FROM Apartments WHERE NOT apt_id IN (SELECT apt_id FROM Facilities)
SELECT COUNT(*) FROM Apartments WHERE NOT apt_id IN (SELECT apt_id FROM Facilities)
SELECT COUNT(*) AS total_games FROM game WHERE season > 2007
SELECT game.date FROM game WHERE game.home_team = 'Chelsea' ORDER BY game.date DESC NULLS LAST
SELECT g.season, g.home_team, g.away_team FROM game AS g
SELECT s.name, MAX(s.home_games) AS max_home_games, MIN(s.home_games) AS min_home_games, AVG(s.home_games) AS avg_home_games FROM stadium AS s GROUP BY s.name
SELECT AVG(Average_Attendance) AS average_attendance FROM stadium WHERE Capacity_Percentage > 100
SELECT i.player, CAST(i.number_of_matches AS FLOAT) AS number_of_matches, i.source FROM injury_accident AS i WHERE i.injury <> 'Knee problem'
SELECT COUNT(DISTINCT injury_accident.source) AS number_of_sources FROM injury_accident
SELECT COUNT(*) AS num_games_without_injury FROM game WHERE NOT 'Injury' IN (SELECT Injury FROM game)
SELECT s.name, AVG(a.home_games) AS average_attendance, SUM(a.total_attendance) AS total_attendance FROM stadium JOIN stadium AS a ON s.id <> a.average_attendance GROUP BY s.name
SELECT stadium.name FROM stadium WHERE stadium.name ILIKE '%Bank%'
SELECT AVG(weight) AS average_weight FROM Player
SELECT MAX(height) AS max_height, MIN(height) AS min_height FROM Player
SELECT preferred_foot, AVG(overall_rating) AS average_rating FROM Player_Attributes GROUP BY preferred_foot
SELECT CASE WHEN preferred_foot = 'Right' THEN 'Right-Footed' ELSE 'Left-Footed' END AS footed FROM Player_Attributes WHERE overall_rating > 80
SELECT p.id FROM Player AS p WHERE p.height >= 180 AND p.player_name > 85
SELECT p.id FROM Player AS p WHERE p.height BETWEEN 180 AND 190 AND p.weight = 'left'
SELECT COUNT(Performance_ID) AS total_performances FROM performance
SELECT performance.host FROM performance ORDER BY performance.attendance ASC NULLS FIRST
SELECT performance.date, performance.location FROM performance
SELECT SUM(performance.attendance) AS total_attendance FROM performance WHERE performance.location IN ('TD Garden', 'Bell Centre')
SELECT AVG(Attendance) FROM performance
SELECT p.date FROM performance AS p WHERE p.attendance = (SELECT MAX(p2.attendance) FROM performance AS p2)
SELECT performance.location, COUNT(performance.performance_id) AS num_performances FROM performance GROUP BY performance.location
SELECT performance.location, COUNT(performance.location) AS frequency FROM performance GROUP BY performance.location ORDER BY frequency DESC NULLS LAST
SELECT DISTINCT performance.location FROM performance GROUP BY performance.location HAVING COUNT(performance.performance_id) >= 2
SELECT DISTINCT performance.location FROM performance WHERE (performance.attendance > 2000 AND performance.attendance < 1000) GROUP BY performance.location
SELECT member.name FROM member WHERE NOT member.member_id IN (SELECT performance.member_id FROM performance)
SELECT DISTINCT classroom.building FROM classroom WHERE classroom.capacity > 50
SELECT DISTINCT classroom.building FROM classroom WHERE classroom.capacity > 50
SELECT COUNT(*) FROM classroom WHERE "building" <> 'Lamberton'
SELECT COUNT(*) AS number_of_classrooms FROM classroom WHERE building <> 'Lamberton'
SELECT department.dept_name, department.building FROM department WHERE department.budget > (SELECT AVG(department.budget) FROM department)
SELECT department.dept_name, department.building FROM department WHERE department.budget > (SELECT AVG(budget) FROM department)
SELECT classroom.room_number, classroom.building FROM classroom WHERE (classroom.capacity >= 50 AND classroom.capacity <= 100) ORDER BY classroom.room_number
SELECT classroom.room_number, classroom.building FROM classroom WHERE (classroom.capacity >= 50 AND classroom.capacity <= 100)
SELECT department.dept_name, department.building FROM department ORDER BY department.budget DESC NULLS LAST LIMIT 1
SELECT department.dept_name, department.building FROM department ORDER BY department.budget DESC NULLS LAST LIMIT 1
SELECT s.name FROM student JOIN student AS d ON s.dept_name = d.name WHERE d.name = 'History' ORDER BY s.tot_cred DESC NULLS LAST LIMIT 1
SELECT s.name, SUM(tc.cred) AS total_credits FROM student s JOIN takes_course tc ON s.id = tc.student_id JOIN course c ON tc.course_id = c.id WHERE s.dept_name = 'History' GROUP BY s.name ORDER BY total_credits DESC NULLS LAST LIMIT 1
SELECT COUNT(room_number) AS room_count FROM classroom WHERE building ILIKE '%Lamberton%'
SELECT COUNT(*) FROM classroom WHERE building ILIKE '%Lamberton%'
SELECT COUNT(DISTINCT a.s_id) AS number_of_students_with_advisors FROM advisor AS a
SELECT COUNT(DISTINCT student.s_id) AS number_of_students FROM student JOIN advisor ON student.s_id = advisor.s_id
SELECT COUNT(DISTINCT course.dept_name) AS number_of_departments FROM course
SELECT COUNT(DISTINCT course.dept_name) AS num_departments FROM course
SELECT COUNT(DISTINCT course.course_id) AS number_of_courses FROM course JOIN department ON course.dept_name = department.dept_name WHERE department.title ILIKE '%Physics%'
SELECT COUNT(*) FROM course WHERE dept_name ILIKE '%Physics%'
SELECT COUNT(*) FROM course WHERE NOT course_id IN (SELECT dept_name FROM prerequisite)
SELECT COUNT(*) FROM course WHERE NOT course_id IN (SELECT dept_name FROM prerequisite)
SELECT course.title FROM course WHERE NOT course.course_id IN (SELECT prereq.dept_name FROM prerequisite)
SELECT course.title FROM course WHERE NOT course.course_id IN (SELECT prerequisite.course_id FROM prerequisite)
SELECT COUNT(DISTINCT teaches.id) AS num_instructors FROM teaches
SELECT COUNT(DISTINCT teaches.id) AS num_instructors FROM teaches
SELECT SUM(department.budget) AS total_budget FROM department WHERE department.dept_name ILIKE '%Marketing%' OR department.dept_name ILIKE '%Finance%'
SELECT SUM(CASE WHEN dept_name = 'Marketing' THEN budget END) + SUM(CASE WHEN dept_name = 'Finance' THEN budget END) AS total_budget FROM department
SELECT instructor.dept_name FROM instructor WHERE instructor.name ILIKE '%Soisalon%'
SELECT instructor.dept_name FROM instructor WHERE instructor.name ILIKE '%Soisalon%'
SELECT COUNT(*) FROM classroom WHERE building = 'Lamberton' AND capacity < 50
SELECT COUNT(*) FROM classroom WHERE building = 'Lamberton' AND capacity < 50
SELECT department.dept_name, department.budget FROM department WHERE department.budget > (SELECT AVG(department.budget) FROM department)
SELECT department.dept_name, department.budget FROM department WHERE department.budget > (SELECT AVG(department.budget) FROM department)
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Statistics' ORDER BY instructor.salary ASC NULLS FIRST LIMIT 1
SELECT instructor.name FROM instructor WHERE instructor.dept_name = 'Statistics' ORDER BY instructor.salary ASC NULLS FIRST LIMIT 1
SELECT course.title FROM course WHERE course.dept_name ILIKE '%Statistics%' AND course.dept_name ILIKE '%Psychology%'
SELECT course.title FROM course WHERE course.course_id IN (SELECT department.course_id FROM department JOIN department_name ON department.dept_name = department_name.credits WHERE department_name.credits ILIKE '%Statistics%') AND course.course_id IN (SELECT department.course_id FROM department JOIN department_name ON department.dept_name = department_name.credits WHERE department_name.credits ILIKE '%Psychology%')
SELECT course.title FROM course WHERE course.dept_name ILIKE '%Statistics%' AND NOT course.dept_name ILIKE '%Psychology%'
SELECT course.title FROM course WHERE course.dept_name ILIKE '%Statistics%' AND NOT course.dept_name ILIKE '%Psychology%'
SELECT teaches.id FROM teaches WHERE teaches.semester = 'Fall' AND teaches.year = 2009 AND NOT teaches.id IN (SELECT teaches.id FROM teaches WHERE teaches.semester = 'Spring' AND teaches.year = 2010)
SELECT DISTINCT teaches.id FROM teaches WHERE teaches.semester = 'Fall' AND teaches.year = 2009 AND NOT teaches.id IN (SELECT teaches.id FROM teaches WHERE teaches.semester = 'Spring' AND teaches.year = 2010)
SELECT dept_name, COUNT(course_id) AS course_count FROM course GROUP BY dept_name ORDER BY course_count DESC NULLS LAST LIMIT 3
SELECT dept_name, COUNT(course_id) AS course_count FROM course GROUP BY dept_name ORDER BY course_count DESC NULLS LAST LIMIT 3
SELECT course.dept_name FROM course GROUP BY course.dept_name ORDER BY SUM(course.credits) DESC NULLS LAST LIMIT 1
SELECT course.dept_name, COUNT(course.title) AS total_courses FROM course GROUP BY course.dept_name ORDER BY total_courses DESC NULLS LAST LIMIT 1
SELECT course.title, course.credits FROM course ORDER BY course.title, course.credits DESC NULLS LAST
SELECT course.title, course.credits FROM course ORDER BY course.title, course.credits DESC NULLS LAST
SELECT dept_name FROM department ORDER BY budget ASC NULLS FIRST LIMIT 1
SELECT department.dept_name FROM department ORDER BY department.budget ASC NULLS FIRST LIMIT 1
SELECT department.dept_name, department.building FROM department ORDER BY department.budget DESC NULLS LAST
SELECT department.dept_name, department.building FROM department ORDER BY department.budget DESC NULLS LAST
SELECT instructor.name, instructor.salary FROM instructor ORDER BY instructor.salary DESC NULLS LAST LIMIT 1
SELECT instructor.name FROM instructor ORDER BY instructor.salary DESC NULLS LAST LIMIT 1
SELECT instructor.id, instructor.name, instructor.dept_name, instructor.salary FROM instructor ORDER BY instructor.salary ASC NULLS FIRST
SELECT instructor.id, instructor.name, instructor.dept_name, instructor.salary FROM instructor ORDER BY instructor.salary ASC NULLS FIRST
SELECT student.name, student.dept_name FROM student ORDER BY student.tot_cred ASC NULLS FIRST
SELECT student.name, department.dept_name FROM student JOIN student ON student.dept_name = department.name ORDER BY student.tot_cred ASC NULLS FIRST
SELECT classroom.building, COUNT(*) AS room_count FROM classroom WHERE classroom.capacity > 50 GROUP BY classroom.building
SELECT classroom.building, COUNT(*) AS room_count FROM classroom WHERE classroom.capacity > 50 GROUP BY classroom.building
SELECT classroom.building, MAX(classroom.capacity) AS max_capacity, AVG(classroom.capacity) AS avg_capacity FROM classroom GROUP BY classroom.building
SELECT classroom.building, MAX(classroom.capacity) AS max_capacity, AVG(classroom.capacity) AS avg_capacity FROM classroom GROUP BY classroom.building
SELECT course.title FROM course WHERE course.dept_name IN (SELECT dept_name FROM department GROUP BY dept_name HAVING COUNT(*) > 1)
SELECT course.title FROM course WHERE course.dept_name IN (SELECT dept_name FROM department GROUP BY dept_name HAVING COUNT(dept_name) > 1)
SELECT dept_name, SUM(credits) AS total_credits FROM course GROUP BY dept_name
SELECT dept_name, SUM(credits) AS total_credits FROM course GROUP BY dept_name
SELECT MIN(instructor.salary) AS min_salary FROM instructor WHERE instructor.dept_name IN (SELECT name FROM instructor GROUP BY name HAVING AVG(salary) > (SELECT AVG(salary) FROM instructor))
SELECT instructor.id, instructor.name, instructor.salary FROM instructor WHERE instructor.salary = (SELECT MIN(instructor.salary) FROM instructor WHERE instructor.dept_name IN (SELECT dept_name FROM instructor GROUP BY dept_name HAVING AVG(salary) > (SELECT AVG(salary) FROM instructor)))
SELECT section.year, section.semester, COUNT(*) AS course_count FROM section GROUP BY section.year, section.semester ORDER BY section.year NULLS FIRST, section.semester NULLS FIRST
SELECT section.year, section.semester, COUNT(*) AS course_count FROM section GROUP BY section.year, section.semester ORDER BY section.year NULLS FIRST, section.semester NULLS FIRST
SELECT MAX(year) AS max_year FROM section
SELECT MAX(year) AS max_year FROM section
SELECT MAX(section.year), section.semester FROM section GROUP BY section.semester
SELECT section.year, section.semester, COUNT(*) AS course_count FROM section GROUP BY section.year, section.semester ORDER BY course_count DESC NULLS LAST LIMIT 1
SELECT department.name FROM student JOIN student ON student.dept_name = department.name GROUP BY department.name ORDER BY COUNT(student.id) DESC NULLS LAST LIMIT 1
SELECT dept_name FROM student GROUP BY dept_name ORDER BY COUNT(ID) DESC NULLS LAST LIMIT 1
SELECT dept_name, COUNT(*) AS total_students FROM student GROUP BY dept_name
SELECT department.dept_name, COUNT(student.id) AS total_students FROM student JOIN student ON student.dept_name = department.dept_name GROUP BY department.dept_name
SELECT takes.semester, takes.year FROM takes GROUP BY takes.semester, takes.year ORDER BY COUNT(takes.id) ASC LIMIT 1
SELECT takes.semester, takes.year, COUNT(takes.id) AS student_count FROM takes GROUP BY takes.semester, takes.year ORDER BY student_count ASC LIMIT 1
SELECT course_id FROM course WHERE NOT course_id IN (SELECT dept_name FROM prerequisite)
SELECT course_id FROM course WHERE NOT course_id IN (SELECT dept_name FROM course_prereq)
SELECT course.title FROM course WHERE NOT course.course_id IN (SELECT prereq.dept_name FROM prerequisite)
SELECT course.title FROM course WHERE NOT course.course_id IN (SELECT prereq.dept_name FROM prequisite)
SELECT c.title FROM course AS c WHERE c.dept_name = 'International Finance' ORDER BY c.course_id DESC NULLS LAST LIMIT 1
SELECT c.title FROM course AS c WHERE c.dept_name = 'International Finance'
SELECT c.title FROM course AS c JOIN prerequisites ON c.course_id = p.dept_name WHERE p.title ILIKE '%Differential%Geometry%'
SELECT course.title FROM course WHERE course.dept_name ILIKE '%Differential%Geometry%' ORDER BY course.title
SELECT student.name FROM student WHERE student.id IN (SELECT course_enrollment.student_id FROM course_enrollment JOIN course ON course_enrollment.course_id = course.id WHERE course.semester = 'Fall' AND EXTRACT(YEAR FROM course.start_date) = 2003)
SELECT s.name FROM student_course sc IN (SELECT course_id FROM course WHERE semester = 'Fall' AND year = 2003) AS sc JOIN student AS s ON sc.student_id = s.id
SELECT c.title FROM course AS c WHERE c.dept_name = (SELECT a.dept_name FROM course AS a WHERE a.title ILIKE '%Mobile%Computing%' ORDER BY a.course_id DESC NULLS LAST LIMIT 1) AND ROW_NUMBER() OVER (ORDER BY c.course_id DESC NULLS LAST) = 2
SELECT c.title FROM course AS c JOIN prerequisites_for ON c.course_id = p.credits WHERE p.dept_name = 'Mobile Computing'
SELECT instructor.name FROM instructor WHERE NOT instructor.id IN (SELECT course_instructor.dept_name FROM instructor)
SELECT instructor.name FROM instructor WHERE NOT instructor.id IN (SELECT course.dept_name FROM instructor)
SELECT instructor.id FROM instructor WHERE NOT instructor.id IN (SELECT course_instructor.dept_name FROM instructor)
SELECT instructor.id FROM instructor WHERE NOT instructor.name ILIKE '%did%not%teach%'
SELECT instructor.name FROM instructor WHERE instructor.id NOT IN (SELECT course_instructor.instructor_id FROM course_instructor JOIN course ON course_instructor.course_id = course.id WHERE season_code = 'SPR')
SELECT instructor.name FROM instructor WHERE instructor.id NOT IN (SELECT course_staffing.instructor_id FROM course_staffing JOIN course ON course_staffing.course_id = course.id WHERE course.semester = 'Spring')
SELECT instructor.dept_name, AVG(instructor.salary) AS avg_salary FROM instructor GROUP BY instructor.dept_name ORDER BY avg_salary DESC NULLS LAST LIMIT 1
SELECT instructor.dept_name, AVG(instructor.salary) AS average_salary FROM instructor GROUP BY instructor.dept_name ORDER BY average_salary DESC NULLS LAST LIMIT 1
SELECT student.name FROM student WHERE NOT student.dept_name ILIKE '%Biology%'
SELECT s.name FROM student LEFT JOIN student AS cse ON s.id = cse.tot_cred AND cse.dept_name = 'Biology' WHERE cse.tot_cred IS NULL
SELECT instructor.name, instructor.salary FROM instructor WHERE instructor.dept_name = 'Physics' AND instructor.salary < (SELECT AVG(instructor.salary) FROM instructor WHERE instructor.dept_name = 'Physics')
SELECT instructor.name, instructor.salary FROM instructor WHERE instructor.dept_name = 'Physics' AND instructor.salary < (SELECT AVG(instructor.salary) FROM instructor WHERE instructor.dept_name = 'Physics')
SELECT instructor.name FROM instructor WHERE instructor.dept_name ILIKE '%computer%science%'
SELECT instructor.name FROM instructor WHERE instructor.dept_name ILIKE '%Comp%Sci.%'
SELECT instructor.name FROM instructor WHERE instructor.dept_name ILIKE '%Comp.%Sci.%' AND instructor.salary > 80000
SELECT instructor.name FROM instructor WHERE instructor.dept_name ILIKE '%Comp.%Sci.%' AND instructor.salary > 80000
SELECT instructor.name FROM instructor WHERE instructor.name ILIKE '%dar%'
SELECT instructor.name FROM instructor WHERE instructor.name ILIKE '%dar%'
SELECT instructor.name FROM instructor ORDER BY instructor.name ASC NULLS FIRST
SELECT instructor.name FROM instructor ORDER BY instructor.name
SELECT DISTINCT course_id FROM section WHERE year IN (2009, 2010) AND semester IN ('Fall', 'Spring')
SELECT DISTINCT course_id FROM section WHERE year IN (2009, 2010) AND semester IN ('Fall', 'Spring')
SELECT DISTINCT course_id FROM section WHERE year IN (2009, 2010) AND semester IN ('Fall', 'Spring')
SELECT DISTINCT course_id FROM section WHERE year = 2009 AND semester = 'Fall' AND year = 2010 AND semester = 'Spring'
SELECT DISTINCT course_id FROM section WHERE semester = 'Fall' AND year = 2009 AND NOT course_id IN (SELECT course_id FROM section WHERE semester = 'Spring' AND year = 2010)
SELECT DISTINCT course_id FROM section WHERE semester = 'Fall' AND year = 2009 AND NOT course_id IN (SELECT course_id FROM section WHERE semester = 'Spring' AND year = 2010)
SELECT instructor.salary FROM instructor WHERE instructor.salary < (SELECT MAX(instructor.salary) FROM instructor)
SELECT instructor.salary FROM instructor WHERE instructor.salary < (SELECT MAX(instructor.salary) FROM instructor) GROUP BY instructor.salary
SELECT COUNT(DISTINCT teaches.id) AS total_instructors FROM teaches WHERE teaches.semester = 'Spring 2010'
SELECT COUNT(DISTINCT teaches.id) AS number_of_instructors FROM teaches WHERE teaches.semester = 'Spring' AND teaches.year = 2010
SELECT instructor.name, AVG(instructor.salary) AS average_salary FROM instructor GROUP BY instructor.name HAVING AVG(instructor.salary) > 42000
SELECT instructor.dept_name, AVG(instructor.salary) AS average_salary FROM instructor GROUP BY instructor.dept_name HAVING AVG(instructor.salary) > 42000
SELECT i.name FROM instructor JOIN instructor AS d ON i.dept_name = d.name WHERE i.salary > (SELECT salary FROM instructor WHERE dept_name ILIKE '%Biology%') AND NOT d.name ILIKE '%Biology%'
SELECT i.name FROM instructor i JOIN department d ON i.dept_name = d.name WHERE i.salary > (SELECT salary FROM instructor WHERE dept_name ilike '%Biology%') AND i.dept_name not ilike '%Biology%'
SELECT instructor.name FROM instructor WHERE instructor.salary > (SELECT AVG(instructor.salary) FROM instructor WHERE instructor.dept_name ILIKE '%Biology%')
SELECT instructor.name FROM instructor WHERE instructor.salary > (SELECT MAX(instructor.salary) FROM instructor WHERE instructor.dept_name ILIKE '%Biology%')
SELECT COUNT(Debate_ID) AS total_debates FROM debate
SELECT debate.venue FROM debate ORDER BY debate.num_of_audience ASC NULLS FIRST
SELECT debate.date, debate.venue FROM debate
SELECT date FROM debate WHERE num_of_audience > 150
SELECT people.name FROM people WHERE people.age IN (35, 36)
SELECT people.district, AVG(people.age) AS average_age FROM people GROUP BY people.district ORDER BY average_age ASC LIMIT 1
SELECT p.district, COUNT(*) AS total_people FROM people AS p GROUP BY p.district
SELECT p.district FROM people AS p GROUP BY p.district ORDER BY COUNT(p.people_id) DESC NULLS LAST LIMIT 1
SELECT DISTINCT debate.venue FROM debate
SELECT p.name FROM people WHERE NOT p.people_id IN (SELECT d.party FROM people AS d)
SELECT Customers.customer_details FROM Customers ORDER BY Customers.customer_details ASC NULLS FIRST
SELECT customers.customer_details FROM Customers ORDER BY customers.customer_details ASC NULLS FIRST
SELECT Policies.Policy_Type_Code, COUNT(*) AS frequency FROM Policies GROUP BY Policies.Policy_Type_Code ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT Policies.Policy_Type_Code, COUNT(Policies.Policy_ID) AS frequency FROM Policies GROUP BY Policies.Policy_Type_Code ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT DISTINCT Policies.Policy_Type_Code FROM Policies GROUP BY Policies.Policy_Type_Code HAVING COUNT(Policies.customer_id) > 2
SELECT Policies.Policy_Type_Code FROM Policies GROUP BY Policies.Policy_Type_Code HAVING COUNT(Policies.customer_id) > 2
SELECT SUM(Amount_Paid) AS total_amount_paid, AVG(Amount_Paid) AS average_amount_paid FROM Claim_Headers
SELECT SUM(Amount_Piad) AS total_amount_paid, AVG(Amount_Piad) AS average_amount_paid FROM Claim_Headers
SELECT Customers.customer_details FROM Customers WHERE NOT Customers.customer_id IN (SELECT policyholders.customer_id FROM policyholders)
SELECT Customers.customer_details FROM Customers WHERE NOT Customers.customer_id IN (SELECT policyholders.customer_id FROM policyholders)
SELECT COUNT(Claim_Stage_ID) AS total_claim_stages FROM Claims_Processing_Stages
SELECT COUNT(DISTINCT Next_Claim_Stage_ID) AS number_of_claim_stages FROM Claims_Processing_Stages
SELECT Customers.customer_details FROM Customers WHERE Customers.customer_details ILIKE '%Diana%'
SELECT Customers.customer_details FROM Customers WHERE Customers.customer_details ILIKE '%Diana%'
SELECT Customers.customer_details FROM Customers
SELECT c.customer_details, s.customer_id FROM Customers AS c CROSS JOIN staff
SELECT p.policy_type_code, COUNT(*) AS record_count FROM Policies AS p GROUP BY p.policy_type_code
SELECT p.policy_type_code, COUNT(*) AS COUNT FROM Policies AS p GROUP BY p.policy_type_code
SELECT Claims_having_Stages.claim_status_description FROM Claims_Processing_Stages WHERE Claims_having_Stations.claim_status_name = 'Open'
SELECT Claims_having_Stages.Claim_Status_Description FROM Claims_Processing_Stages WHERE Claims_having_Stations.Claim_Status_Name = 'Open'
SELECT COUNT(DISTINCT Claims_outstanding.claim_outcome_code) AS number_of_distinct_claim_outcome_codes FROM Claims_Processing
SELECT COUNT(DISTINCT Claims_outstanding.claim_outcome_code) AS number_of_distinct_claim_outcome_codes FROM Claims_Processing
SELECT COUNT(*) AS account_count FROM Accounts
SELECT COUNT(*) AS total_accounts FROM Accounts
SELECT COUNT(DISTINCT customer_id) AS number_of_customers FROM Accounts
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM Accounts
SELECT a.account_id, a.date_account_opened, a.account_name, a.other_account_details FROM Accounts AS a
SELECT a.account_id, TO_CHAR(a.date_account_opened, 'YYYY-MM-DD') AS account_open_date, a.account_name, a.other_account_details FROM Accounts AS a
SELECT COUNT(DISTINCT Custom_accounts.customer_id) AS number_of_customers FROM Customers LEFT JOIN Customers ON Customers.customer_id = Custom_accounts.customer_id WHERE Custom_accounts.customer_id IS NULL
SELECT COUNT(*) AS total_customers FROM Customers
SELECT customers.customer_id FROM customers WHERE NOT customers.customer_id IN (SELECT account_customers.customer_id FROM Customers)
SELECT Customers.customer_id FROM Customers WHERE NOT Customers.customer_id IN (SELECT Accounts.customer_id FROM Customers)
SELECT a.customer_id, COUNT(a.account_id) AS account_count FROM Accounts AS a GROUP BY a.customer_id
SELECT a.customer_id, COUNT(a.account_id) AS account_count FROM Accounts AS a GROUP BY a.customer_id
SELECT COUNT(customer_id) AS total_customers FROM Customers
SELECT COUNT(*) AS total_customers FROM Customers
SELECT genders.gender, COUNT(customers.customer_id) AS customer_count FROM Customers GROUP BY genders.gender
SELECT gender, COUNT(*) AS total_customers FROM Customers GROUP BY gender
SELECT COUNT(*) AS total_transactions FROM Financial_Transactions
SELECT COUNT(*) AS total_transactions FROM Financial_Transactions
SELECT Financial_Transactions.account_id, COUNT(Financial_Transactions.transaction_id) AS total_transactions FROM Financial_Transactions GROUP BY Financial_Transactions.account_id
SELECT Financial_Transactions.account_id, COUNT(Financial_Transactions.transaction_id) AS transaction_count FROM Financial_Transactions GROUP BY Financial_Transactions.account_id
SELECT AVG(transaction_amount) AS average_transaction_amount, MIN(transaction_amount) AS minimum_transaction_amount, MAX(transaction_amount) AS maximum_transaction_amount, SUM(transaction_amount) AS total_transaction_amount FROM Financial_Transactions
SELECT AVG(transaction_amount) AS average_transaction_amount, MIN(transaction_amount) AS minimum_transaction_amount, MAX(transaction_amount) AS maximum_transaction_amount, SUM(transaction_amount) AS total_transaction_amount FROM Financial_Transactions
SELECT financial_transactions.transaction_id FROM Financial_Transactions WHERE financial_transactions.transaction_amount > (SELECT AVG(financial_transactions.transaction_amount) FROM Financial_Transactions)
SELECT ft.transaction_id FROM Financial_Transactions AS ft WHERE ft.transaction_amount > (SELECT AVG(ft.transaction_amount) FROM Financial_Transactions AS ft)
SELECT Financial_Transactions.transaction_type, SUM(Financial_Transactions.transaction_amount) AS total_transaction_amount FROM Financial_Transactions GROUP BY Financial_Transactions.transaction_type
SELECT Financial_Transactions.transaction_type, SUM(Financial_Transactions.transaction_amount) AS total_transaction_amount FROM Financial_Transactions GROUP BY Financial_Transactions.transaction_type
SELECT Financial_Transactions.account_id, COUNT(Financial_Transactions.transaction_id) AS transaction_count FROM Financial_Transactions GROUP BY Financial_Transactions.account_id ORDER BY transaction_count DESC NULLS LAST LIMIT 1
SELECT Financial_Transactions.account_id, COUNT(Financial_Transactions.transaction_id) AS transaction_count FROM Financial_Transactions GROUP BY Financial_Transactions.account_id ORDER BY transaction_count DESC NULLS LAST LIMIT 1
SELECT products.product_id, products.product_name, products.product_size FROM Products
SELECT DISTINCT products.product_size FROM Products
SELECT DISTINCT products.product_color FROM Products
SELECT DISTINCT Products.product_color FROM Products
SELECT financial_transactions.invoice_number, COUNT(financial_transactions.transaction_id) AS transaction_count FROM Financial_Transactions GROUP BY financial_transactions.invoice_number
SELECT financial_transactions.invoice_number, COUNT(*) AS transaction_count FROM Financial_Transactions GROUP BY financial_transactions.invoice_number
SELECT COUNT(*) AS number_of_invoices FROM Invoices
SELECT COUNT(*) AS total_invoices FROM Invoices
SELECT o.order_id, COUNT(i.invoice_number) AS num_invoices FROM orders JOIN Invoices AS i ON o.order_id = i.order_id GROUP BY o.order_id
SELECT o.order_id, COUNT(i.invoice_number) AS num_invoices FROM orders JOIN Invoices AS i ON o.order_id = i.order_id GROUP BY o.order_id
SELECT p.product_name FROM Products WHERE NOT p.product_id IN (SELECT o.product_id FROM Products AS o)
SELECT p.product_name FROM Products LEFT JOIN Products AS o ON p.product_id = o.product_id WHERE o.product_id IS NULL
SELECT o.order_id, COUNT(oi.product_quantity) AS total_products FROM Order_Items AS oi JOIN Orders ON oi.order_id = o.order_id GROUP BY o.order_id
SELECT o.order_id, COUNT(oi.order_item_id) AS total_order_items FROM Order_Items AS oi JOIN Orders ON oi.order_id = o.order_id GROUP BY o.order_id
SELECT oi.product_id, COUNT(DISTINCT oi.order_id) AS num_orders FROM Order_Items AS oi GROUP BY oi.product_id
SELECT oi.product_id, COUNT(DISTINCT oi.order_id) AS num_orders FROM Order_Items AS oi GROUP BY oi.product_id
SELECT o.order_id, COUNT(oi.product_id) AS product_count FROM Order_Items AS oi JOIN orders ON oi.order_id = o.order_id GROUP BY o.order_id
SELECT o.order_id, COUNT(DISTINCT oi.product_id) AS num_products FROM Order_Items AS oi JOIN Orders ON oi.order_id = o.order_id GROUP BY o.order_id
SELECT o.order_id, SUM(oi.product_quantity) AS total_quantity FROM Order_Items AS oi JOIN Orders ON oi.order_id = o.order_id GROUP BY o.order_id
SELECT o.order_id, COUNT(oi.product_quantity) AS total_product_quantity FROM Order_Items AS oi JOIN Orders ON oi.order_id = o.order_id GROUP BY o.order_id
SELECT COUNT(*) AS total_products FROM Products WHERE NOT product_id IN (SELECT parent_product_id FROM Products)
SELECT COUNT(*) AS total_products FROM Products WHERE NOT product_id IN (SELECT DISTINCT parent_product_id FROM Products)
SELECT COUNT(*) FROM church WHERE open_date < 1850
SELECT c.name, TO_CHAR(c.open_date, 'YYYY-MM-DD') AS open_date, co.organized_by FROM church AS c JOIN continuation ON c.continuation_of = co.church_id
SELECT c.name FROM church AS c ORDER BY c.open_date DESC NULLS LAST
SELECT DATE_PART(YEAR, Open_Date) AS Opening_Year FROM church GROUP BY Opening_Year HAVING COUNT(Church_ID) >= 2
SELECT church.organized_by, church.name FROM church WHERE church.open_date BETWEEN 1830 AND 1840
SELECT DATE_PART('year', c.open_date) AS open_year, COUNT(*) AS num_churches FROM church AS c GROUP BY open_year ORDER BY open_year
SELECT c.name, TO_CHAR(c.open_date, 'YYYY') AS open_year FROM church AS c WHERE c.organized_by = 'Catholic' ORDER BY c.open_date DESC NULLS LAST LIMIT 3
SELECT COUNT(*) FROM people WHERE age > 30 AND is_male = 'female'
SELECT p.country FROM people AS p WHERE p.age > 30 AND p.age < 25
SELECT MIN(people.age) AS min_age, MAX(people.age) AS max_age, AVG(CAST(people.age AS FLOAT)) AS avg_age FROM people
SELECT p.name, p.country FROM people AS p WHERE p.age < (SELECT AVG(age) FROM people)
SELECT p.name, p.age FROM people AS p WHERE p.is_male = 'Yes' AND NOT p.people_id IN (SELECT w.people_id FROM weddings)
SELECT c.name FROM church AS c WHERE NOT c.church_id IN (SELECT w.church_id FROM wedding WHERE DATE_PART(YEAR, w.open_date) = 2015)
SELECT COUNT(*) FROM wedding WHERE YEAR = 2016
SELECT COUNT(people_id) AS total_people, country FROM people GROUP BY country
SELECT COUNT(DISTINCT Church_ID) AS number_of_churches FROM wedding WHERE Year = 2016
SELECT COUNT(*) AS total_artists FROM artist
SELECT COUNT(*) AS total_artists FROM artist
SELECT a.name, a.age, a.country FROM artist AS a ORDER BY a.year_join NULLS FIRST
SELECT a.name, TO_CHAR(a.age, 'FM9999') AS age, c.country FROM artist AS a JOIN country ON a.country = c.artist_id ORDER BY a.year_join NULLS FIRST
SELECT DISTINCT artist.country FROM artist
SELECT artist.country FROM artist GROUP BY artist.country
SELECT a.name, a.year_join FROM artist AS a WHERE a.country <> 'United States'
SELECT artist.name, artist.year_join FROM artist WHERE artist.country <> 'United States' ORDER BY artist.name
SELECT COUNT(*) FROM artist WHERE age > 46 AND year_join > 1990
SELECT COUNT(*) FROM artist WHERE age > 46 AND year_join > 1990
SELECT AVG(age), MIN(age) FROM artist WHERE country = 'United States'
SELECT AVG(age), MIN(age) FROM artist WHERE country = 'United States'
SELECT a.name FROM artist AS a WHERE a.year_join = (SELECT MAX(year_join) FROM artist)
SELECT a.name FROM artist AS a ORDER BY a.year_join DESC NULLS LAST LIMIT 1
SELECT COUNT(Exhibition_ID) FROM exhibition WHERE Year >= 2005
SELECT COUNT(Exhibition_ID) FROM exhibition WHERE Year >= 2005
SELECT exhibition.theme, exhibition.year FROM exhibition WHERE exhibition.ticket_price < 15
SELECT exhibition.theme, CAST(exhibition.year AS TEXT) FROM exhibition WHERE exhibition.ticket_price < 15
SELECT a.name FROM artist AS a LEFT JOIN exhibition_artist ON a.artist_id = ea.artist_id WHERE ea.artist_id IS NULL
SELECT a.name FROM artist AS a LEFT JOIN exhibition_artist ON a.artist_id = ea.artist_id WHERE ea.artist_id IS NULL
SELECT AVG(ticket_price), MIN(ticket_price), MAX(ticket_price) FROM exhibition WHERE year < 2009
SELECT AVG(ticket_price), MIN(ticket_price), MAX(ticket_price) FROM exhibition WHERE year < 2009
SELECT exhibition.theme, exhibition.year FROM exhibition ORDER BY exhibition.ticket_price DESC NULLS LAST
SELECT exhibition.theme, exhibition.year FROM exhibition ORDER BY exhibition.ticket_price DESC NULLS LAST
SELECT a.name FROM artist AS a LEFT JOIN exhibition ON a.artist_id = e.artist_id AND DATE_PART(YEAR, TO_DATE(e.year_join, 'YYYYMMDD')) = 2004 WHERE e.artist_id IS NULL
SELECT a.name FROM artist AS a LEFT JOIN exhibition ON a.artist_id = e.artist_id AND DATE_PART(YEAR, TO_DATE(e.year_join, 'YYYYMMDD')) = 2004 WHERE e.artist_id IS NULL
SELECT i_id FROM item WHERE title ilike '%orange%'
SELECT i_id, title FROM item
SELECT COUNT(*) AS total_reviews FROM review
SELECT COUNT(*) AS total_users FROM useracct
SELECT AVG(rating), MAX(rating) FROM review
SELECT MAX(rank) AS max_rank FROM review
SELECT COUNT(DISTINCT review.u_id) AS number_of_users FROM review
SELECT COUNT(DISTINCT review.i_id) AS number_of_items_reviewed FROM review
SELECT COUNT(*) AS total_items FROM item
SELECT u.name FROM useracct LEFT JOIN useracct AS r ON u.u_id = r.u_id WHERE r.u_id IS NULL
SELECT item.title FROM item ORDER BY item.title ASC NULLS FIRST
SELECT i.title FROM item i LEFT JOIN review r ON i.i_id = r.item_id WHERE r.item_id IS NULL
SELECT u.name FROM useracct LEFT JOIN useracct AS r ON u.u_id = r.u_id WHERE r.u_id IS NULL
SELECT COUNT(*) AS total_users FROM useracct
SELECT COUNT(*) AS total_items_without_reviews FROM item WHERE NOT i_id IN (SELECT title FROM review)
SELECT COUNT(*) AS total_players FROM player
SELECT player.player_name FROM player ORDER BY player.votes ASC NULLS FIRST
SELECT player.gender, player.occupation FROM player
SELECT player.player_name, player.residence FROM player WHERE "Occupation" ILIKE '%researcher%' AND "occupation" ILIKE '%not researcher%'
SELECT player.sponsor_name FROM player WHERE (player.residence = 'Brandon' OR player.residence = 'Birtle')
SELECT p.player_name, COUNT(v.votes) AS vote_count FROM player AS p JOIN vote ON p.player_id = v.player_id GROUP BY p.player_name ORDER BY vote_count DESC NULLS LAST LIMIT 1
SELECT player.occupation, COUNT(*) AS total_players FROM player GROUP BY player.occupation
SELECT player.occupation FROM player GROUP BY player.occupation ORDER BY COUNT(player.occupation) DESC NULLS LAST LIMIT 1
SELECT residence FROM player GROUP BY residence HAVING COUNT(player_id) >= 2
SELECT player.player_name FROM player WHERE NOT player.player_id IN (SELECT coach.player_id FROM player)
SELECT DISTINCT residence FROM player WHERE gender IN ('M', 'F')
SELECT COUNT(*) FROM gymnast
SELECT COUNT(*) FROM gymnast
SELECT gymnast_id, total_points FROM gymnast ORDER BY total_points DESC NULLS LAST
SELECT gymnast_id, total_points FROM gymnast ORDER BY total_points DESC NULLS LAST
SELECT gymnast_id, total_points FROM gymnast ORDER BY floor_exercise_points DESC NULLS LAST
SELECT gymnast.gymnast_id, gymnast.floor_exercise_points FROM gymnast ORDER BY gymnast.floor_exercise_points DESC NULLS LAST
SELECT AVG(gymnast.horizontal_bar_points) AS average_horizontal_bar_points FROM gymnast
SELECT AVG(gymnast.horizontal_bar_points) AS average_horizontal_bar_points FROM gymnast
SELECT people.name FROM people ORDER BY people.name ASC NULLS FIRST
SELECT p.name FROM people AS p ORDER BY p.name ASC NULLS FIRST
SELECT MAX(people.age) AS oldest_person_age FROM people
SELECT people.name, MAX(people.height) AS max_height, people.age FROM people GROUP BY people.name, people.age HAVING MAX(people.hometown) = (SELECT MAX(hometown) FROM people)
SELECT p.name FROM people AS p ORDER BY p.age DESC NULLS LAST LIMIT 5
SELECT p.name FROM people AS p ORDER BY age DESC NULLS LAST LIMIT 5
SELECT DISTINCT people.hometown FROM people WHERE NOT people.people_id IN (SELECT gymnasts.name FROM people)
SELECT people.age FROM people WHERE people.age IS NULL
SELECT p.height FROM people AS p WHERE p.age > 23 AND p.age < 20
SELECT DISTINCT people.height FROM people WHERE age > 23 AND age < 20
SELECT COUNT(DISTINCT people.hometown) AS number_of_homes FROM people
SELECT COUNT(DISTINCT people.hometown) AS num_homes FROM people
SELECT COUNT(*) AS total_accounts FROM ACCOUNTS
SELECT COUNT(*) AS account_count FROM ACCOUNTS
SELECT SUM(checking.balance) AS total_balance FROM CHECKING
SELECT SUM(checking.balance) AS total_balance FROM CHECKING
-1
SELECT AVG(checking.balance) AS average_balance FROM CHECKING
SELECT COUNT(*) AS account_count FROM SAVINGS WHERE balance > (SELECT AVG(balance) FROM SAVINGS)
SELECT COUNT(*) FROM SAVINGS WHERE savings.balance > (SELECT AVG(savings.balance) FROM savings)
SELECT accounts.name FROM ACCOUNTS ORDER BY accounts.name ASC NULLS FIRST
SELECT accounts.name FROM ACCOUNTS ORDER BY accounts.name ASC NULLS FIRST
SELECT COUNT(*) FROM browser WHERE market_share >= 5
SELECT browser.name FROM browser ORDER BY browser.market_share DESC NULLS LAST
SELECT browser.id, browser.name, browser.market_share FROM browser
SELECT MAX(market_share) AS max_market_share, MIN(market_share) AS min_market_share, AVG(market_share) AS avg_market_share FROM browser WHERE name IN ('Internet Explorer', 'Firefox', 'Safari')
SELECT browser.id, browser.market_share FROM browser WHERE browser.name ilike '%Safari%'
SELECT Web_client_accelerator.name, Web_client_accelerator.operating_system FROM Web_client_accelerator WHERE Web_client_accelerator.connection <> 'Broadband'
SELECT COUNT(DISTINCT Web_client_accelerator.Client) AS client_count FROM Web_client_accelerator
SELECT COUNT(*) AS total_incompatible_accelerators FROM Web_client_accelerator WHERE NOT name IN (SELECT operating_system FROM Web_client_accelerator)
SELECT Web_client_accelerator.name, Web_client_accelerator.operating_system FROM Web_client_accelerator WHERE "Operating system" <> 'Opera'
SELECT Web_client_accelerator.name FROM Web_client_accelerator WHERE Web_client_accelerator.name ILIKE '%Opera%'
SELECT Web_client_accelerator.Operating_system, COUNT(*) AS total_web_accelerators FROM Web_client_accelerator GROUP BY Web_client_accelerator.Operating_system
SELECT COUNT(*) AS total_wrestlers FROM wrestler
SELECT COUNT(*) FROM wrestler
SELECT wrestler.name FROM wrestler ORDER BY wrestler.days_held DESC NULLS LAST
SELECT wrestler.name FROM wrestler ORDER BY wrestler.days_held DESC NULLS LAST
SELECT wrestler.name FROM wrestler ORDER BY CAST(wrestler.days_held AS FLOAT) ASC NULLS FIRST LIMIT 1
SELECT wrestler.name FROM wrestler ORDER BY CAST(wrestler.days_held AS FLOAT) ASC NULLS FIRST LIMIT 1
SELECT COUNT(DISTINCT reign) AS total_reigns FROM wrestler WHERE LOCATION <> 'Tokyo,Japan'
SELECT wrestler.reign FROM wrestler WHERE wrestler.location <> 'Tokyo, Japan'
SELECT wrestler.name, wrestler.location FROM wrestler
SELECT wrestler.name, wrestler.location FROM wrestler
SELECT Eliminations_Move FROM Elimination WHERE Team = 'Team Orton' ORDER BY Eliminations_Move
SELECT Eliminations.Eliminations_Move FROM Elimination WHERE "Team" ILIKE '%Orton%' ORDER BY Eliminations.Eliminations_Move
SELECT e.team, COUNT(e.elimination_id) AS num_eliminations FROM Elimination AS e GROUP BY e.team
SELECT Team, COUNT(Eliminations_ID) AS number_of_eliminations FROM Elimination GROUP BY Team ORDER BY number_of_eliminations DESC NULLS LAST
SELECT DISTINCT Eliminations.Team FROM Elimination GROUP BY Eliminations.Team HAVING COUNT(Eliminations.Eliminations_ID) > 3
SELECT Eliminations.Team FROM Elimination GROUP BY Eliminations.Team HAVING COUNT(Eliminations.Eliminations_ID) > 3
SELECT wrestler.reign, CAST(wrestler.days_held AS FLOAT) AS days_held FROM wrestler
SELECT wrestler.name, COUNT(wrestler_id) AS number_of_reigns, SUM(CAST(days_held AS INT)) AS total_days_held FROM wrestler GROUP BY wrestler.name
SELECT wrestler.name FROM wrestler WHERE CAST(wrestler.days_held AS FLOAT) < 100
SELECT wrestler.name FROM wrestler WHERE CAST(wrestler.days_held AS FLOAT) < 100
SELECT wrestler.reign, COUNT(*) AS frequency FROM wrestler GROUP BY wrestler.reign ORDER BY frequency DESC NULLS LAST
SELECT reign FROM wrestler GROUP BY reign ORDER BY COUNT(reign) DESC NULLS LAST LIMIT 1
SELECT wrestler.location FROM wrestler GROUP BY wrestler.location HAVING COUNT(wrestler.wrestler_id) > 2
SELECT wrestler.location FROM wrestler GROUP BY wrestler.location HAVING COUNT(wrestler.wrestler_id) > 2
SELECT wrestler.name FROM wrestler WHERE wrestler.reign <> 'eliminated'
SELECT wrestler.name FROM wrestler WHERE NOT wrestler.reign ILIKE '%eliminated%'
SELECT DISTINCT Eliminations.Team FROM Elimination WHERE Eliminations.Eliminated_By ILIKE '%Orton%' AND Eliminations.Eliminated_by ILIKE '%Benjamin%'
SELECT DISTINCT Eliminations.Team FROM Elimination WHERE "Eliminated By" ILIKE '%Orton%' AND "Eliminated By" ILIKE '%Benjamin%'
SELECT COUNT(DISTINCT Eliminations.Team) AS num_teams_eliminated FROM Elimination
SELECT COUNT(DISTINCT Eliminations.Team) AS number_of_teams FROM Elimination
SELECT Eliminations.Time FROM Elimination WHERE (Eliminations.Wrestler_ID = 'Punk' OR Eliminations.Wrestler_ID = 'Orton') AND NOT Eliminations.Team IS NULL
SELECT Eliminations.Time FROM Elimination WHERE Eliminations.Eliminated_By ILIKE '%Punk%' OR Eliminations.Eliminated_by ILIKE '%Orton%'
SELECT COUNT(*) FROM School
SELECT COUNT(*) FROM School
SELECT School_name FROM School ORDER BY school_name ASC NULLS FIRST
SELECT school.school_name, school.location, school.mascot FROM School
SELECT SUM(Enrollment) AS total_enrollment, AVG(Enrollment) AS average_enrollment FROM School
SELECT school.mascot FROM School WHERE school.enrollment > (SELECT AVG(enrollment) FROM School)
SELECT School_name FROM School ORDER BY enrollment ASC NULLS FIRST LIMIT 1
SELECT AVG(Enrollment) AS average_enrollment, MAX(Enrollment) AS max_enrollment, MIN(Enrollment) AS min_enrollment FROM School
SELECT COUNT(school_id) AS school_count, SUM(enrollment) AS total_enrollment FROM School GROUP BY county
SELECT endowment.donator_name, SUM(endowment.amount) AS total_amount FROM endowment GROUP BY endowment.donator_name ORDER BY total_amount DESC NULLS LAST
SELECT School_name FROM School WHERE NOT "Location" ILIKE '%Ave%' ORDER BY "School Name"
SELECT endowment.donator_name FROM endowment WHERE endowment.amount >= 9
SELECT endowment.amount, endowment.donator_name FROM endowment ORDER BY endowment.amount DESC NULLS LAST LIMIT 1
SELECT COUNT(*) FROM budget WHERE budget.budgeted > 3000 AND (year = 2001 OR year < 2001)
SELECT COUNT(*) FROM budget WHERE year <= 2001 AND budgeted > 3000
SELECT endowment.donator_name FROM endowment
SELECT COUNT(*) FROM budget WHERE budget.budgeted < budget.invested
-1
SELECT COUNT(building_id) AS total_buildings FROM building
SELECT building.name, building.street_address, COUNT(floors) AS total_floors FROM building GROUP BY building.name, building.street_address ORDER BY total_floors DESC NULLS LAST
SELECT MAX(Heigh_Feet) AS max_height FROM building
SELECT AVG(Heights_as_tallest) AS average_heights, MAX(Heights_as_tallest) AS max_heights, MIN(Heights_as_tallest) AS min_heights FROM building
SELECT COUNT(*) FROM building WHERE (Heights_tallest > (SELECT AVG(Heights_tallest) FROM building)) OR (Floors > (SELECT AVG(Floors) FROM building))
SELECT building.name FROM building WHERE building.height_feet >= 200 AND building.floors >= 20
SELECT Institution.Institution, Institution.location FROM Institution WHERE Institution.founded > '1990' AND Institution.type ILIKE '%Private%'
SELECT Institution.type, COUNT(Institution.institution_id) AS num_institutions, SUM(institution.enrollment) AS total_enrollment FROM Institution GROUP BY institution.type
SELECT Institution.type, COUNT(Institution_id) AS num_institutions FROM Institution GROUP BY Institution.type ORDER BY num_institutions DESC NULLS LAST LIMIT 1
SELECT Institution.type FROM Institution WHERE Institution.founded > 1990 AND Institution.enrollment >= 1000
SELECT building.name FROM building LEFT JOIN institution ON building.building_id = institution.building_id WHERE institution.building_id IS NULL
SELECT building.name FROM building WHERE building.years_as_tallest <> '2003'
SELECT DISTINCT Institution.Type FROM Institution
SELECT COUNT(DISTINCT Institution.institution_id) AS number_of_institutions FROM Institution LEFT JOIN Protein ON Institution.institution_id = Protein.institution_id WHERE Protein.institution_id IS NULL
SELECT DISTINCT LOCATION FROM cinema WHERE CAPacity <= 800
SELECT DISTINCT cinema.location FROM cinema WHERE cinema.openning_year IN (2010, 2011)
SELECT COUNT(Cinema_ID) AS number_of_cinemas FROM cinema
SELECT COUNT(Cinema_ID) AS total_cinemas FROM cinema
SELECT c.name, TO_CHAR(TO_DATE(CAST(c.openning_year AS TEXT), 'YYYY'), 'YYYY') AS open_year, c.capacity FROM cinema AS c
SELECT c.name, c.location FROM cinema AS c WHERE c.capacity > (SELECT AVG(capacity) FROM cinema)
SELECT DISTINCT cinema.location FROM cinema
SELECT DISTINCT cinema.location FROM cinema
SELECT c.name, c.openning_year FROM cinema AS c ORDER BY c.openning_year DESC NULLS LAST
SELECT cinema.name, cinema.location FROM cinema ORDER BY cinema.capacity DESC NULLS LAST LIMIT 1
SELECT AVG(capacity), MIN(capacity), MAX(capacity) FROM cinema WHERE openning_year >= 2011
SELECT cinema.location, COUNT(cinema.cinema_id) AS number_of_cinemas FROM cinema GROUP BY cinema.location
SELECT cinema.location, COUNT(cinema.cinema_id) AS number_of_cinemas FROM cinema WHERE cinema.openning_year >= 2010 GROUP BY cinema.location ORDER BY number_of_cinemas DESC NULLS LAST LIMIT 1
SELECT DISTINCT cinema.location FROM cinema WHERE cinema.capacity > 300 GROUP BY cinema.location HAVING COUNT(cinema.cinema_id) >= 2
SELECT DISTINCT cinema.location FROM cinema WHERE cinema.capacity > 300 GROUP BY cinema.location HAVING COUNT(cinema.cinema_id) >= 2
SELECT film.title, film.directed_by FROM film
SELECT film.title, film.directed_by FROM film
SELECT film.directed_by FROM film
SELECT DISTINCT film.directed_by FROM film
SELECT film.directed_by, COUNT(film.title) AS num_films FROM film GROUP BY film.directed_by
SELECT film.title, film.directed_by FROM film WHERE film.original_air_date IS NULL
SELECT DISTINCT cinema.location FROM cinema WHERE cinema.capacity > 300 GROUP BY cinema.location HAVING COUNT(cinema.cinema_id) > 1
SELECT DISTINCT cinema.location FROM cinema WHERE cinema.capacity > 300 GROUP BY cinema.location HAVING COUNT(cinema.cinema_id) > 1
SELECT COUNT(*) FROM film WHERE title ILIKE '%Dummy%'
SELECT COUNT(*) FROM film WHERE title ILIKE '%Dummy%'
SELECT p.customer_id, SUM(p.amount_paid) AS total_amount_paid FROM Payments AS p GROUP BY p.customer_id ORDER BY total_amount_paid DESC NULLS LAST
SELECT products_booked.product_id FROM Products_Booked WHERE products_booked.booked_count = 3
SELECT COUNT(DISTINCT product_type_code) AS number_of_product_types FROM Products_for_Hire
SELECT Customers.first_name, Customers.last_name, Customers.gender_mf FROM Customers WHERE "good_or_bad_customer" ILIKE '%Good%' ORDER BY Customers.last_name
SELECT AVG(payments.amount_due) AS average_amount_due FROM Payments
SELECT MAX(booked_count) AS max_booked_count, MIN(booked_count) AS min_booked_count, AVG(booked_count) AS avg_booked_count FROM Products_Booked
SELECT DISTINCT payments.payment_type_code FROM Payments
SELECT Products_for_Hire.product_id, Products_for_Hire.daily_hire_cost FROM Products_for_Hire WHERE Products_for_Hire.product_name ILIKE '%Book%'
SELECT COUNT(*) FROM Products_for_Hire WHERE daily_hire_cost <= 200
SELECT Payments.payment_date FROM Payments WHERE (Payments.amount_paid > 300 OR Payments.payment_type_code = 'check')
SELECT product_name, product_description FROM Products_for_Hire WHERE product_type_code = 'Cutlery' AND daily_hire_cost < 20
SELECT COUNT(Phone_ID) AS total_phones FROM phone
SELECT phone.name FROM phone ORDER BY phone.price ASC NULLS FIRST
SELECT phone.memory_in_g, phone.carrier FROM phone
SELECT DISTINCT phone.carrier FROM phone WHERE phone.memory_in_g > 32
SELECT phone.name FROM phone WHERE phone.carrier IN ('Sprint', 'TMobile')
SELECT phone.carrier FROM phone WHERE price = (SELECT MAX(price) FROM phone)
SELECT phone.carrier, COUNT(phone.phone_id) AS number_of_phones FROM phone GROUP BY phone.carrier
SELECT phone.carrier, COUNT(phone.phone_id) AS frequency FROM phone GROUP BY phone.carrier ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT DISTINCT phone.carrier FROM phone WHERE (phone.memory_in_g < 32 AND phone.memory_in_g > 64)
SELECT phone.name FROM phone WHERE phone.carrier IS NULL
SELECT COUNT(*) FROM company WHERE main_industry ILIKE '%gas%'
SELECT COUNT(Company_ID) AS total_companies FROM company
SELECT c.company, c.rank FROM company AS c ORDER BY c.sales_billion DESC NULLS LAST
SELECT c.company_id, c.rank, c.company FROM company AS c ORDER BY c.sales_billion DESC NULLS LAST
SELECT c.company, i.main_industry FROM company AS c JOIN industry ON c.main_industry = i.company_id WHERE c.headquarters <> 'USA'
SELECT company.company, industry.company_id FROM company JOIN industry ON company.main_industry = industry.rank WHERE company.headquarters <> 'United States'
SELECT c.company, c.headquarters FROM company AS c ORDER BY c.market_value DESC NULLS LAST
SELECT company.company, company.headquarters FROM company ORDER BY company.market_value DESC NULLS LAST
SELECT MIN(market_value) AS min_market_value, MAX(market_value) AS max_market_value, AVG(market_value) AS avg_market_value FROM company
SELECT c.company_id, MIN(c.market_value) AS min_market_value, MAX(c.market_value) AS max_market_value, AVG(c.market_value) AS avg_market_value FROM company AS c GROUP BY c.company_id
SELECT company.main_industry FROM company
SELECT company.main_industry FROM company GROUP BY company.main_industry
SELECT headquarters, COUNT(*) AS company_count FROM company GROUP BY headquarters
SELECT headquarters, COUNT(*) AS company_count FROM company GROUP BY headquarters
SELECT company.main_industry, SUM(company.market_value) AS total_market_value FROM company GROUP BY company.main_industry
SELECT c.company_id, c.main_industry, SUM(c.market_value) AS total_market_value FROM company AS c GROUP BY c.company_id, c.main_industry
SELECT company.main_industry, SUM(company.market_value) AS total_market_value, COUNT(*) AS num_companies FROM company GROUP BY company.main_industry ORDER BY total_market_value DESC NULLS LAST, num_companies DESC NULLS LAST LIMIT 1
SELECT main_industry, rank FROM company GROUP BY main_industry ORDER BY rank DESC NULLS LAST) SELECT ir.main_industry, COUNT(c.company_id) AS num_companies FROM industry_rank JOIN company AS c ON ir.main_industry = c.main_industry GROUP BY ir.main_industry
SELECT headquarters FROM company WHERE main_industry ILIKE '%banking%' GROUP BY headquarters HAVING COUNT(company_id) >= 2
SELECT DISTINCT company.headquarters FROM company WHERE company.main_industry ILIKE '%banking%' GROUP BY company.headquarters HAVING COUNT(company.company_id) >= 2
SELECT g.station_id, g.location, g.manager_name FROM gas_station AS g ORDER BY g.open_year NULLS FIRST
SELECT g.station_id, g.location, g.manager_name FROM gas_station AS g ORDER BY g.open_year NULLS FIRST
SELECT COUNT(*) FROM gas_station WHERE open_year BETWEEN 2000 AND 2005
SELECT COUNT(*) FROM gas_station WHERE open_year BETWEEN 2000 AND 2005
SELECT LOCATION, COUNT(STATION_ID) AS station_count FROM gas_station GROUP BY LOCATION ORDER BY station_count DESC NULLS LAST
SELECT gas_station.location, COUNT(*) AS station_count FROM gas_station GROUP BY gas_station.location ORDER BY gas_station.location
SELECT DISTINCT company.headquarters FROM company WHERE company.main_industry ILIKE '%banking%' AND company.main_industry ILIKE '%oil and gas%'
SELECT DISTINCT company.headquarters FROM company WHERE company.main_industry ILIKE '%banking%' AND company.main_industry ILIKE '%oil and gas%'
SELECT headquarters FROM company WHERE main_industry not ilike '%banking%'
SELECT company.headquarters FROM company WHERE NOT company.main_industry ILIKE '%banking%' AND NOT company.company IS NULL
SELECT c.company, c.main_industry FROM company AS c WHERE c.assets_billion IS NULL
SELECT company.company, company.main_industry FROM company WHERE company.assets_billion IS NULL
SELECT m.manager_name, COUNT(*) AS station_count FROM gas_station AS g JOIN manager ON g.manager_name = m.manager_name WHERE open_year > 2000 GROUP BY m.manager_name ORDER BY representative_name DESC NULLS LAST LIMIT 1
SELECT m.manager_name, COUNT(*) AS number_of_stations FROM gas_station AS g JOIN manager ON g.manager_name = m.manager_name WHERE open_year > 2000 GROUP BY m.manager_name ORDER BY number_of_stations DESC NULLS LAST LIMIT 1
SELECT gas_station.location, gas_station.open_year FROM gas_station ORDER BY gas_station.open_year
SELECT gas_station.location FROM gas_station ORDER BY gas_station.open_year
SELECT c.company_id, c.rank, c.company, c.sales_billion, c.profits_billion, ROW_NUMBER() OVER (PARTITION BY c.main_industry ORDER BY c.market_value DESC NULLS LAST) AS market_value_rank FROM company AS c WHERE main_industry = 'banking'
SELECT c.company_id, c.rank, c.company, c.sales_billion, c.profits_billion, c.market_value FROM company AS c WHERE main_industry = 'banking' ORDER BY sales_billion DESC NULLS LAST, profits_billion DESC NULLS LAST
SELECT COUNT(Region_ID) AS number_of_regions FROM region
SELECT COUNT(*) FROM region
SELECT DISTINCT region.region_name FROM region ORDER BY region.label NULLS FIRST
SELECT region.region_name FROM region ORDER BY region.label NULLS FIRST
SELECT COUNT(*) AS total_parties FROM party
SELECT COUNT(DISTINCT party.party_id) AS number_of_parties FROM party
SELECT party.minister, (party.left_office - party.took_office) AS duration FROM party ORDER BY party.duration DESC NULLS LAST
SELECT party.minister, party.took_office, party.left_office FROM party ORDER BY party.left_office DESC NULLS LAST
SELECT party.minister FROM party WHERE CAST(party.took_office AS DATE) > '1961-01-01' AND CAST(party.took_office AS DATE) < '1959-12-31'
SELECT party.minister FROM party WHERE CAST(party.took_office AS DATE) > '1960-01-01' AND CAST(party.took_office AS DATE) < '1959-12-31'
SELECT party.minister FROM party WHERE NOT party.minister ILIKE '%Progress%' ORDER BY party.minister
SELECT p.minister FROM party AS p LEFT JOIN progress_party ON p.party_id = pr.party_id WHERE pr.party_id IS NULL
SELECT p.minister, ROW_NUMBER() OVER (PARTITION BY p.party_id ORDER BY p.took_office DESC NULLS LAST) AS rank FROM party AS p
SELECT p.minister, COUNT(*) OVER (PARTITION BY p.minister) AS total_parties FROM party AS p GROUP BY p.minister ORDER BY total_parties DESC NULLS LAST
SELECT party.minister FROM party WHERE party.left_office = (SELECT MAX(party.took_office) FROM party)
SELECT party.minister FROM party WHERE party.left_office = (SELECT MAX(party.took_office) FROM party)
SELECT p.party_name FROM party LEFT JOIN party AS m ON p.party_id = m.party_id WHERE m.region_id IS NULL
SELECT p.party_name FROM party LEFT JOIN party AS m ON p.party_id = m.party_id WHERE m.region_id IS NULL
SELECT m.member_name FROM member AS m WHERE m.member_id IN (SELECT p.member_id FROM party WHERE p.party_id = 3) AND m.member_id IN (SELECT q.member_id FROM party WHERE q.party_id = 1)
SELECT m1.member_name FROM member AS m1 JOIN member AS m2 ON (m1.member_id = m2.member_id AND m1.party_id <> m2.party_id) WHERE m1.party_id IN (3, 1)
SELECT COUNT(*) AS total_events FROM party_events
SELECT COUNT(*) AS total_events FROM party_events
SELECT member.member_name FROM member WHERE NOT member.member_id IN (SELECT event.member_id FROM member)
SELECT member.member_name FROM member WHERE NOT member.member_id IN (SELECT event.member_id FROM member)
SELECT party_events.event_name FROM party_events GROUP BY party_events.event_name HAVING COUNT(party_events.event_id) > 2
SELECT DISTINCT event_name FROM party_events WHERE event_id IN (SELECT event_id FROM party_events GROUP BY event_id HAVING COUNT(event_id) > 2)
SELECT COUNT(*) AS total_pilots FROM pilot
SELECT pilot.pilot_name FROM pilot ORDER BY pilot.rank ASC NULLS FIRST
SELECT pilot.position, pilot.team FROM pilot
SELECT DISTINCT pilot.position FROM pilot WHERE pilot.age > 30
SELECT pilot.pilot_name FROM pilot WHERE pilot.team IN ('Bradley', 'Fordham')
SELECT MAX(pilot.join_year) AS max_join_year FROM pilot
SELECT pilot.nationality, COUNT(pilot.pilot_id) AS total_pilots FROM pilot GROUP BY pilot.nationality
SELECT pilot.nationality, COUNT(pilot.pilot_id) AS frequency FROM pilot GROUP BY pilot.nationality ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT pilot.position FROM pilot WHERE (pilot.join_year > 2005 AND pilot.join_year < 2000) GROUP BY pilot.position HAVING COUNT(pilot.join_year) > 1
SELECT pilot.pilot_name FROM pilot WHERE pilot.pilot_id IS NULL
SELECT Ref_Document_Status.document_status_code FROM Ref_Document_Status
SELECT Ref_Document_Status.document_status_description FROM Ref_Document_Status WHERE Ref_Document_Status.document_status_code ILIKE '%working%'
SELECT Ref_Document_Types.document_type_code FROM Ref_Document_Types
SELECT Ref_Document_Types.document_type_description FROM Ref_Document_Types WHERE Ref_Document_Types.document_type_code = 'Paper'
SELECT Ref_Shipping_Agents.shipping_agent_name FROM Ref_Shipping_Agents
SELECT Ref_Shipping_Agents.shipping_agent_code FROM Ref_Shipping_Agents WHERE Ref_Shipping_Agentuples.shipping_agent_name ILIKE '%Ups%'
SELECT roles.role_code FROM Roles
SELECT role_description FROM Roles WHERE role_code = 'ED'
SELECT COUNT(employee_id) AS total_employees FROM Employees
SELECT Documents.document_id, Documents.receipt_date FROM Documents
SELECT COUNT(*) AS total_documents_with_status_code_done FROM Documents WHERE document_status_code = 'done'
SELECT Documents.document_type_code FROM Documents WHERE Documents.document_id = 2
SELECT Documents.document_id FROM Documents WHERE Documents.document_status_code = 'done' AND Documents.document_type_code = 'paper'
SELECT Documents.receipt_date FROM Documents WHERE Documents.document_id = 3
SELECT Documents_Mailed.mailing_date FROM Documents_Mailed WHERE Documents_Mailed.document_id = 7
SELECT Documents.document_id FROM Documents WHERE Documents.document_status_code = 'done' AND Documents.document_type_code = 'Paper' AND Documents.shipping_agent_code <> 'USPS'
SELECT Documents.document_id FROM Documents WHERE Documents.document_status_code = 'done' AND Documents.document_type_code = 'Paper' AND Documents.shipping_agent_code = 'USPS'
SELECT Document_Drafts.draft_details FROM Document_Drafts WHERE Document_Drafts.document_id = 7
SELECT COUNT(*) AS total_copies FROM Draft_Copies WHERE document_id = 2
SELECT dc.document_id, COUNT(dc.copy_number) AS copy_count FROM Draft_Copies AS dc GROUP BY dc.document_id ORDER BY copy_count DESC NULLS LAST LIMIT 1
SELECT document_id, copy_number FROM Draft_Copies WHERE copy_number > 1
SELECT e.employee_name FROM Employees LEFT JOIN Employees AS d ON e.employee_id = d.employee_id WHERE d.employee_id IS NULL
SELECT c.document_id, COUNT(DISTINCT ch.employee_id) AS employee_count FROM Circulation_History AS ch GROUP BY c.document_id
SELECT d.dname FROM department AS d ORDER BY d.mgr_start_date NULLS FIRST
SELECT dependent.dependent_name FROM dependent WHERE dependent.relationship ILIKE '%spouse%' AND NOT dependent.essn IS NULL
SELECT COUNT(*) FROM dependent WHERE sex = 'female'
SELECT employee.fname, employee.lname FROM employee WHERE employee.salary > 30000
SELECT employee.sex, COUNT(*) AS total_employees FROM employee WHERE salary < 50000 GROUP BY employee.sex
SELECT employee.fname, employee.lname, employee.address FROM employee ORDER BY employee.bdate ASC NULLS FIRST
SELECT p.participant_id, p.participant_type_code, p.participant_details FROM Participants AS p
SELECT COUNT(*) FROM Participants WHERE Participant_Type_Code = 'Organizer'
SELECT Services.Service_Type_Code FROM Services ORDER BY Services.Service_Type_Code ASC NULLS FIRST
SELECT Events.service_id, Events.event_details FROM Events
SELECT Participants.Participant_Type_Code, COUNT(*) AS frequency FROM Participants GROUP BY Participants.Participant_Type_Code ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT Event_ID FROM Participants_in_Events GROUP BY Event_ID ORDER BY COUNT(Participant_ID) DESC NULLS LAST LIMIT 1
SELECT Events.Event_ID FROM Events WHERE Events.Event_Details not ilike '%Kenyatta%Kushn%'
SELECT COUNT(*) AS event_count FROM Events WHERE NOT Event_ID IN (SELECT Event_ID FROM Participants)
SELECT DISTINCT Participants_in_Events.Participant_ID FROM Participants_in_Events
SELECT races.name FROM races ORDER BY races.year DESC NULLS LAST LIMIT 1
SELECT races.name FROM races ORDER BY races.year DESC NULLS LAST LIMIT 1
SELECT races.name, TO_DATE(races.date, 'YYYY-MM-DD') AS race_date FROM races WHERE races.year = (SELECT MAX(races.year) FROM races) ORDER BY races.year DESC NULLS LAST LIMIT 1
SELECT races.name, TO_DATE(races.date, 'YYYY-MM-DD') AS race_date FROM races WHERE races.year = (SELECT MAX(races.year) FROM races) ORDER BY races.raceId DESC NULLS LAST LIMIT 1
SELECT name FROM races WHERE year = 2017
SELECT races.name FROM races WHERE races.year = 2017
SELECT DISTINCT races.name FROM races WHERE races.year BETWEEN 2014 AND 2017
SELECT DISTINCT races.name FROM races WHERE races.year BETWEEN 2014 AND 2017
SELECT COUNT(DISTINCT drivers.driverId) AS total_drivers FROM results WHERE NOT drivers.driverId IN (SELECT results.driverId FROM races JOIN results ON races.raceId = results.raceId WHERE DATE_PART(YEAR, races.raceDate) = 2009)
SELECT COUNT(DISTINCT drivers.driverId) AS number_of_drivers FROM results WHERE NOT drivers.driverId IN (SELECT results.driverId FROM races WHERE DATE_PART(YEAR, races.raceDate) = 2009)
SELECT drivers.forename, drivers.surname FROM drivers WHERE drivers.nationality ILIKE '%German%'
SELECT forename, surname FROM drivers WHERE nationality = 'German' ORDER BY forename ASC NULLS FIRST, surname ASC NULLS FIRST
SELECT nationality, COUNT(*) AS number_of_constructors FROM constructors GROUP BY nationality ORDER BY number_of_constructors DESC NULLS LAST
SELECT nationality, COUNT(DISTINCT constructorId) AS num_constructors FROM constructors GROUP BY nationality
SELECT c.constructorId, COUNT(r.raceId) AS race_count FROM constructorStandings AS c JOIN race ON c.raceId = r.raceId GROUP BY c.constructorId
SELECT c.constructorId, COUNT(r.raceId) AS race_count FROM constructorStandings AS c JOIN race ON c.raceId = r.raceId GROUP BY c.constructorId
SELECT p.driverId, p.stop FROM pitStops AS p WHERE p.raceId = 841 ORDER BY p.duration ASC
SELECT p.raceId, p.stop FROM pitStops AS p WHERE p.duration < (SELECT duration FROM pitStops WHERE raceId = 841) ORDER BY p.duration
SELECT DISTINCT p.driverId FROM pitStops AS p WHERE p.raceId = 841 AND p.stop > (SELECT AVG(stop) FROM pitStops WHERE raceId = 841)
SELECT p.driverId, TO_NUMBER(p.duration, '999999999') AS duration FROM pitStops WHERE p.raceId = 841 UNION ALL SELECT d.driverId, TO_NUMBER(d.stop, '999999999') AS stop FROM pitStops AS d
SELECT DISTINCT drivers.forename FROM drivers ORDER BY drivers.forename ASC NULLS FIRST
SELECT drivers.forename FROM drivers GROUP BY drivers.forename ORDER BY drivers.forename ASC NULLS FIRST
SELECT DISTINCT name FROM races ORDER BY name DESC NULLS LAST
SELECT REVERSE(races.name) AS name FROM races GROUP BY REVERSE(races.name)
SELECT DISTINCT races.name FROM races WHERE races.year BETWEEN 2009 AND 2011
SELECT races.name FROM races WHERE races.year BETWEEN 2009 AND 2011
SELECT name FROM races WHERE time > '12:00:00' OR time < '09:00:00'
SELECT races.name FROM races WHERE (CAST(races.time AS TIME) > '12:00:00' OR CAST(races.time AS TIME) < '09:00:00')
SELECT DISTINCT c.name FROM circuits AS c WHERE c.country IN ('UK', 'malaysia') ORDER BY c.name
SELECT c.name FROM circuits AS c WHERE c.country IN ('UK', 'malaysia') ORDER BY c.name
SELECT c.circuitId, c.location FROM circuits c WHERE c.country IN ('France', 'Belgium')
SELECT c.circuitId, c.location FROM circuits c WHERE c.country IN ('France', 'Belgium')
SELECT COUNT(*) AS total_technicians FROM technician
SELECT COUNT(*) AS total_technicians FROM technician
SELECT technician.name FROM technician ORDER BY technician.age ASC NULLS FIRST
SELECT technician.name FROM technician ORDER BY technician.age ASC NULLS FIRST
SELECT technician.team, technician.starting_year FROM technician
SELECT t.name, t.team, CAST(t.starting_year AS TEXT) AS starting_year FROM technician AS t
SELECT technician.name FROM technician WHERE technician.team <> 'NYY'
SELECT technician.name FROM technician WHERE technician.team <> 'NYY'
SELECT technician.name FROM technician WHERE (technician.age = 36 OR technician.age = 37)
SELECT technician.name FROM technician WHERE (technician.age = 36 OR technician.age = 37)
SELECT MIN(technician.starting_year) AS earliest_starting_year FROM technician
SELECT MIN(technician.starting_year) AS earliest_starting_year FROM technician
SELECT technician.team, COUNT(*) AS total_technicians FROM technician GROUP BY technician.team
SELECT t.team, COUNT(*) AS total_technicians FROM technician AS t GROUP BY t.team
SELECT t.team FROM technician AS t GROUP BY t.team ORDER BY COUNT(t.technician_id) DESC NULLS LAST LIMIT 1
SELECT t.team FROM technician AS t GROUP BY t.team ORDER BY COUNT(t.technician_id) DESC NULLS LAST
SELECT DISTINCT technician.team FROM technician GROUP BY technician.team HAVING COUNT(technician.technician_id) >= 2
SELECT DISTINCT technician.team FROM technician GROUP BY technician.team HAVING COUNT(technician.technician_id) >= 2
SELECT t.name FROM technician LEFT JOIN technician AS mt ON t.technician_id = mt.technician_id WHERE mt.technician_id IS NULL
SELECT t.name FROM technician LEFT JOIN technician AS mt ON t.technician_id = mt.technician_id WHERE mt.technician_id IS NULL
SELECT technician.starting_year FROM technician WHERE technician.team IN ('CLE', 'CWS')
SELECT MIN(technician.starting_year) AS earliest_starting_year FROM technician WHERE technician.team IN ('CLE', 'CWS')
SELECT COUNT(*) AS total_entrepreneurs FROM entrepreneur
SELECT COUNT(*) AS total_entrepreneurs FROM entrepreneur
SELECT entrepreneur.company FROM entrepreneur ORDER BY entrepreneur.money_requested DESC NULLS LAST
SELECT entrepreneur.company FROM entrepreneur ORDER BY entrepreneur.money_requested DESC NULLS LAST
SELECT entrepreneur.company, entrepreneur.investor FROM entrepreneur
SELECT e.company, e.investor FROM entrepreneur AS e
-1
-1
SELECT people.name FROM people ORDER BY people.weight ASC NULLS FIRST
SELECT people.name FROM people ORDER BY people.weight ASC NULLS FIRST
SELECT MIN(people.weight) AS minimum_weight FROM people
SELECT MIN(people.weight) AS minimum_weight FROM people
SELECT e.investor, COUNT(DISTINCT (e.people_id)) AS num_entrepreneurs FROM entrepreneur AS e GROUP BY e.investor
SELECT entrepreneur.investor, COUNT(entrepreneur.people_id) AS number_of_entrepreneurs FROM entrepreneur GROUP BY entrepreneur.investor
SELECT entrepreneur.investor, COUNT(entrepreneur.people_id) AS num_investments FROM entrepreneur GROUP BY entrepreneur.investor ORDER BY num_investments DESC NULLS LAST LIMIT 1
SELECT entrepreneur.investor, COUNT(entrepreneur.people_id) AS num_investments FROM entrepreneur GROUP BY entrepreneur.investor ORDER BY num_investments DESC NULLS LAST LIMIT 1
SELECT entrepreneur.investor FROM entrepreneur GROUP BY entrepreneur.investor HAVING COUNT(entrepreneur.people_id) >= 2
SELECT entrepreneur.investor FROM entrepreneur GROUP BY entrepreneur.investor HAVING COUNT(entrepreneur.people_id) >= 2
SELECT p.name FROM people AS p WHERE p.weight <> 1
SELECT p.name FROM people AS p WHERE p.weight <> 1
SELECT entrepreneur.investor FROM entrepreneur WHERE (entrepreneur.money_requested > 140000 OR entrepreneur.money_requested < 120000) GROUP BY entrepreneur.investor
SELECT DISTINCT entrepreneur.investor FROM entrepreneur WHERE (entrepreneur.money_requested > 140000 AND entrepreneur.money_requested < 120000) GROUP BY entrepreneur.investor HAVING COUNT(DISTINCT CASE WHEN entrepreneur.money_requested > 140000 THEN entrepreneur.entrepreneur_id END) = COUNT(DISTINCT CASE WHEN entrepreneur.money_requested < 120000 THEN entrepreneur.entrepreneur_id END)
SELECT COUNT(DISTINCT entrepreneur.company) AS number_of_companies FROM entrepreneur
SELECT COUNT(DISTINCT entrepreneur.company) AS num_companies FROM entrepreneur
SELECT COUNT(*) AS total_perpetrators FROM perpetrator
SELECT p.date, COUNT(p.killed) AS total_killed FROM perpetrator AS p GROUP BY p.date ORDER BY total_killed DESC NULLS LAST
SELECT perpetrator.injured FROM perpetrator ORDER BY perpetrator.injured ASC NULLS FIRST
-1
SELECT p.location FROM perpetrator AS p WHERE p.killed = (SELECT MAX(killed) FROM perpetrator)
SELECT people.name FROM people ORDER BY people.height ASC NULLS FIRST
SELECT p.country, COUNT(*) AS total_perpetrators FROM perpetrator AS p GROUP BY p.country
SELECT p.country, COUNT(*) AS total_perpetrations FROM perpetrator AS p GROUP BY p.country ORDER BY total_perpetrations DESC NULLS LAST LIMIT 1
SELECT country FROM perpetrator GROUP BY country HAVING COUNT(perpetrator_id) >= 2
SELECT p.name FROM people AS p WHERE p.weight IS NULL
SELECT p.country FROM perpetrator AS p WHERE p.injured > 50 AND p.injured < 20 GROUP BY p.country HAVING COUNT(*) > 1
SELECT COUNT(DISTINCT Location) AS number_of_locations FROM perpetrator
SELECT MAX(p.year) AS latest_year FROM perpetrator AS p
SELECT Campuses.campus FROM Campuses WHERE "County" ILIKE '%Los%Angeles%'
SELECT Campuses.Campus FROM Campuses WHERE "County" ILIKE '%Los%Angeles%'
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
SELECT degrees.year, degrees.degrees FROM degrees ORDER BY degrees.year DESC NULLS LAST LIMIT 1
SELECT MAX(year) AS max_year FROM degrees
SELECT degrees.campus, SUM(degrees.degrees) AS total_degrees FROM degrees GROUP BY degrees.campus ORDER BY total_degrees DESC NULLS LAST LIMIT 1
SELECT degrees.campus, SUM(degrees.degrees) AS total_degrees FROM degrees GROUP BY degrees.campus ORDER BY total_degrees DESC NULLS LAST LIMIT 1
SELECT AVG(csufees_fees.campusfee) AS average_campus_fee FROM csu_fees WHERE csu_tes.year = 1996
SELECT AVG(campus) AS average_campus_fee FROM csu_fees WHERE year = 1996
SELECT AVG(csufees_2005.campusfee) AS average_campus_fee FROM csu_fees WHERE csu_tes.year = 2005
SELECT AVG(campus) AS average_campus_fee FROM csu_fees WHERE year = 2005
SELECT COUNT(*) FROM Campuses WHERE "County" ILIKE '%Los%Angeles%'
SELECT COUNT(*) FROM Campuses WHERE County = 'LA'
SELECT Campus FROM Campuses WHERE "County" ILIKE '%Los%Angeles%'
SELECT Campus FROM Campuses WHERE "County" ILIKE '%Los%Angeles%'
SELECT COUNT(faculty) AS total_faculty FROM faculty WHERE year = 2002
SELECT COUNT(faculty) AS total_faculty FROM faculty WHERE year = 2002
SELECT COUNT(*) FROM Campuses WHERE "Campus" ILIKE '%CSU%'
SELECT COUNT(*) AS total_campuses FROM Campuses
SELECT COUNT(Candidate.candidate_id) AS total_candidates FROM candidate
SELECT COUNT(*) AS total_candidates FROM candidate
SELECT c.poll_source, COUNT(*) AS total_candidates FROM candidate AS c GROUP BY c.poll_source ORDER BY total_candidates DESC NULLS LAST LIMIT 1
SELECT candidate.poll_source, COUNT(candidate.people_id) AS number_of_candidates FROM candidate GROUP BY candidate.poll_source ORDER BY number_of_candidates DESC NULLS LAST LIMIT 1
SELECT candidate.people_id, MAX(candidate.support_rate) AS max_support_rate FROM candidate GROUP BY candidate.people_id ORDER BY max_support_rate DESC NULLS LAST LIMIT 3
SELECT candidate.support_rate FROM candidate ORDER BY candidate.support_rate DESC NULLS LAST LIMIT 3
SELECT MIN(candidate.oppose_rate) AS min_oppose_rate, c.candidate_id FROM candidate AS c GROUP BY c.candidate_id
SELECT MIN(candidate.oppose_rate) AS min_oppose_rate, c.candidate_id FROM candidate AS c GROUP BY c.candidate_id
SELECT candidate.candidate_id, candidate.support_rate, candidate.consider_rate, candidate.oppose_rate, (candidate.support_rate + candidate.consider_rate + candidate.oppose_rate) AS total_rate FROM candidate ORDER BY candidate.unsure_rate ASC NULLS FIRST
SELECT candidate.candidate_id, candidate.people_id, candidate.poll_source, candidate.support_rate, candidate.consider_rate, candidate.oppose_rate FROM candidate ORDER BY candidate.unsure_rate ASC NULLS FIRST
SELECT candidate.poll_source, MAX(candidate.oppose_rate) AS max_oppose_rate FROM candidate GROUP BY candidate.poll_source ORDER BY max_oppose_rate DESC NULLS LAST LIMIT 1
SELECT candidate.poll_source FROM candidate WHERE candidate.oppose_rate = (SELECT MAX(candidate.oppose_rate) FROM candidate)
SELECT people.name FROM people ORDER BY people.date_of_birth ASC NULLS FIRST
SELECT people.name FROM people ORDER BY people.date_of_birth
SELECT AVG(Height) AS average_height, AVG(Weight) AS average_weight FROM people WHERE Sex = 'M'
SELECT AVG(Height), AVG(Weight) FROM people WHERE Sex = 'M'
SELECT people.name FROM people WHERE (people.height > 200 OR people.height < 190)
SELECT people.name FROM people WHERE people.height > 200 OR people.height < 190
SELECT people.sex, AVG(people.weight) AS average_weight, MIN(people.weight) AS min_weight FROM people GROUP BY people.sex
SELECT Sex, AVG(Weight) AS average_weight, MIN(Weight) AS min_weight FROM people GROUP BY Sex
SELECT p.name FROM people LEFT JOIN people AS s ON p.people_id = s.people_id WHERE s.people_id IS NULL
SELECT p.name FROM people WHERE NOT p.people_id IN (SELECT c.date_of_birth FROM people AS c)
SELECT sex, COUNT(*) AS total_people FROM people WHERE weight > 85 GROUP BY sex
SELECT people.sex, COUNT(*) AS total_people FROM people WHERE people.weight > 85 GROUP BY people.sex
SELECT Candidate_ID, MAX(Support_rate) AS max_support FROM candidate GROUP BY Candidate_ID), candidate_consider AS (SELECT Candidate_ID, MIN(Consider_rate) AS min_consider FROM candidate GROUP BY Candidate_ID), candidate_oppose AS (SELECT Candidate_ID, MIN(Oppose_rate) AS min_oppose FROM candidate GROUP BY Candidate_ID) SELECT cs.candidate_id, cc.min_consider, cop.min_oppose FROM candidate_support JOIN candidate_consider ON cs.candidate_id = cc.candidate_id JOIN candidate_oppose ON cs.candidate_id = cop.candidate_id
SELECT MAX(support_rate) AS max_support_rate, MIN(consider_rate) AS min_consider_rate, MIN(oppose_rate) AS min_oppose_rate FROM candidate
SELECT p.name FROM people AS p WHERE p.height < (SELECT AVG(height) FROM people)
SELECT p.name FROM people AS p WHERE p.height < (SELECT AVG(height) FROM people)
SELECT p.people_id, p.sex, p.name, TO_NUMBER(p.date_of_birth, 'YYYYMMDD') AS date_of_birth, p.height, p.weight FROM people AS p
SELECT p.people_id, p.sex, p.name, TO_NUMBER(p.date_of_birth, 'YYYYMMDD') AS date_of_birth, p.height, p.weight FROM people AS p
SELECT COUNT(*) AS total_movies FROM Movie WHERE director ILIKE '%Steven%Spielberg%'
SELECT m.title FROM Movie AS m WHERE m.director ILIKE '%Steven%Spielberg%' ORDER BY m.title
SELECT Movie.title FROM Movie WHERE Movie.year > 2000 AND Movie.director ILIKE '%James%Cameron%'
SELECT Movie.title FROM Movie WHERE Movie.director ILIKE '%James%Cameron%' AND Movie.year > 2000
SELECT COUNT(*) FROM Movie WHERE year < 2000
SELECT COUNT(*) FROM Movie WHERE year < 2000
SELECT Movie.director FROM Movie WHERE Movie.title ilike '%Avatar%'
SELECT AVG(movie.year) AS average_year FROM Movie WHERE movie.director ILIKE '%Avatar%'
SELECT COUNT(*) AS total_reviewers FROM Reviewer
SELECT COUNT(rID) AS total_reviewers FROM Reviewer
SELECT Reviewer.rID FROM Reviewer WHERE Reviewer.name ILIKE '%Mike%'
SELECT Reviewer.rID FROM Reviewer WHERE Reviewer.name ILIKE '%Mike%'
SELECT Reviewer.rID FROM Reviewer WHERE Reviewer.name ilike '%Daniel%Lewis%'
SELECT Reviewer.rID FROM Reviewer WHERE Reviewer.name ilike '%Daniel%Lewis%'
SELECT COUNT(*) AS total_ratings FROM Rating WHERE stars > 3
SELECT COUNT(*) FROM Rating WHERE stars > 3
SELECT AVG(stars) AS avg FROM Rating), min_max_rating AS (SELECT MIN(rID) AS min, MAX(rID) AS max FROM Rating) SELECT avg_rating.avg, min_max_rating.min, min_max_rating.max FROM avg_rating, min_max_rating
SELECT MAX(stars) AS max_stars, MIN(stars) AS min_stars FROM Rating
SELECT COUNT(*) AS total_movies_without_ratings FROM Movie WHERE NOT mID IN (SELECT mID FROM Rating)
SELECT Movie.title FROM Movie WHERE NOT Movie.mID IN (SELECT Rating.director FROM Rating)
SELECT title FROM Movie ORDER BY year DESC NULLS LAST LIMIT 1
SELECT Movie.title FROM Movie ORDER BY Movie.year DESC NULLS LAST LIMIT 1
SELECT m.title FROM Movie AS m WHERE m.year > (SELECT MAX(m2.year) FROM Movie AS m2 WHERE m2.director ILIKE '%Steven%Spielberg%') ORDER BY m.title
SELECT m.title FROM Movie AS m WHERE m.year > (SELECT MAX(m2.year) FROM Movie AS m2 WHERE m2.director ILIKE '%Steven%Spielberg%') ORDER BY m.year
SELECT r.name AS reviewer_name, m.rid AS movie_title FROM Reviewer CROSS JOIN Reviewer AS m
SELECT r.name, m.rid FROM Reviewer CROSS JOIN Reviewer AS m
SELECT COUNT(*) AS total_movies FROM Movie WHERE "director" <> 'Chris Jackson'
SELECT Movie.title FROM Movie WHERE Movie.mID NOT IN (SELECT Review.movie_id FROM Review JOIN Person ON Review.reviewer_id = Person.pID WHERE Person.name ILIKE '%Chris%Jackson%') ORDER BY Movie.title NULLS LAST
SELECT DISTINCT Movie.director FROM Movie GROUP BY Movie.director HAVING COUNT(Movie.mID) = 1
SELECT DISTINCT Movie.director FROM Movie
SELECT DISTINCT Movie.director FROM Movie WHERE NOT Movie.director IS NULL GROUP BY Movie.director HAVING COUNT(Movie.mID) = 1
SELECT DISTINCT Movie.director FROM Movie WHERE NOT Movie.director IS NULL
SELECT AVG(r.stars) AS average_rating FROM rating JOIN movie ON r.mID = m.mID WHERE NOT r.rID IN (SELECT br.rID FROM Rating AS br)
SELECT AVG(r.ratingdate) AS average_rating FROM rating JOIN movie ON r.mID = m.mID WHERE NOT r.rID IN (SELECT br.rID FROM Rating AS br)
SELECT m.mID FROM Rating AS m LEFT JOIN Rating ON m.mID = r.mID AND r.raterID = 757071 GROUP BY m.mID HAVING COUNT(r.rID) = 0
SELECT m.mID FROM Rating AS m LEFT JOIN Rating ON m.mID = r.mID AND r.raterName = 'Britney Harris' WHERE r.raterName IS NULL
SELECT m.mID, AVG(r.stars) AS avg_stars FROM Rating AS m JOIN Rating ON m.mID = r.mID GROUP BY m.mID HAVING COUNT(r.rID) >= 2
SELECT m.ratingdate, AVG(r.stars) AS average_rating FROM Rating AS m JOIN Rating ON m.mID = r.mID GROUP BY m.ratingdate HAVING COUNT(r.rID) > 3
SELECT r.rID FROM Rating AS r WHERE r.stars <> 4
SELECT r.rID FROM Rating AS r WHERE r.stars <> 4
SELECT DISTINCT r.rID FROM Rating AS r WHERE NOT EXISTS(SELECT 1 FROM Rating AS r2 WHERE r2.stars = 4 AND r.mID = r2.mID)
SELECT DISTINCT r.rID FROM Rating AS r WHERE r.stars <> 4
SELECT title FROM Movie WHERE year < 1980 OR director ilike '%James%Cameron%'
SELECT Movie.title FROM Movie WHERE (Movie.year < 1980 OR Movie.director = 'James Cameron') AND NOT Movie.director IS NULL
SELECT COUNT(*) FROM county_public_safety
SELECT COUNT(*) FROM county_public_safety
SELECT county_public_safety.name FROM county_public_safety ORDER BY county_public_safety.population DESC NULLS LAST
SELECT county_public_safety.name FROM county_public_safety ORDER BY county_public_safety.population DESC NULLS LAST
SELECT DISTINCT county_public_safety.police_force FROM county_public_safety WHERE NOT county_public_safety.location ILIKE '%east%'
SELECT county_public_safety.police_force FROM county_public_safety WHERE NOT county_public_safety.location ILIKE '%East%' GROUP BY county_public_safety.police_force
SELECT MIN(Crime_rate) AS min_crime_rate, MAX(Crime_rate) AS max_crime_rate FROM county_public_safety
SELECT MIN(crime_rate) AS min_crime_rate, MAX(crime_rate) AS max_crime_rate FROM county_public_safety
SELECT county_public_safety.name, COUNT(county_public_safety.police_officers) AS police_officer_count, SUM(county_public_safety.crime_rate) AS total_crimes FROM county_public_safety GROUP BY county_public_safety.name ORDER BY police_officer_count ASC NULLS FIRST
SELECT county_public_safety.name, COUNT(county_public_safety.police_officers) AS police_officers_count, AVG(county_public_safety.crime_rate) AS average_crime_rate FROM county_public_safety GROUP BY county_public_safety.name ORDER BY police_officers_count ASC NULLS FIRST
SELECT city.name FROM city ORDER BY city.name ASC NULLS FIRST
SELECT city.name FROM city ORDER BY city.name ASC NULLS FIRST
SELECT city.name, (city.hispanic / NULLIF(SUM(city.white, city.black, city.amerindian, city.asian, city.multiracial), 0)) * 100 AS hispanic_ratio FROM city WHERE city.black > 10 GROUP BY city.name ORDER BY hispanic_ratio DESC NULLS LAST
SELECT city.name, (cast(city.hispanic AS FLOAT) / NULLIF(SUM(city.white, city.black, city.amerindian, city.asian, city.multiracial), 0)) * 100 AS hispanic_percentage FROM city WHERE city.black > 10 GROUP BY city.name ORDER BY hispanic_percentage DESC NULLS LAST
SELECT c.name, c.population FROM county_public_safety AS c ORDER BY c.population DESC NULLS LAST LIMIT 1
SELECT county_public_safety.name, COUNT(county_public_safety.population) AS total_population FROM county_public_safety GROUP BY county_public_safety.name ORDER BY total_population DESC NULLS LAST LIMIT 1
SELECT c.name, (cast(c.white AS FLOAT) / NULLIF(SUM(c.white, c.black, c.amerindian, c.asian, c.multiracial, c.hispanic), 0)) AS white_percentage FROM city c GROUP BY c.name ORDER BY white_percentage DESC NULLS LAST LIMIT 5
SELECT city.name, (CAST(city.white AS FLOAT) / NULLIF(SUM(city.white), 0)) AS proportion_white FROM city GROUP BY city.name ORDER BY proportion_white DESC NULLS LAST LIMIT 5
SELECT city.name FROM city WHERE city.county_id = (SELECT COUNT(*) FROM city GROUP BY county_id ORDER BY COUNT(*) DESC NULLS LAST LIMIT 1)
SELECT city.name FROM city WHERE city.county_id = (SELECT COUNT(*) FROM city GROUP BY county_id ORDER BY COUNT(*) DESC NULLS LAST LIMIT 1)
SELECT COUNT(DISTINCT city.name) AS number_of_cities FROM city WHERE (city.white > 20000 OR city.black > 20000 OR city.amerindian > 20000 OR city.asian > 20000 OR city.hispanic > 20000)
SELECT COUNT(DISTINCT city.name) AS number_of_cities FROM city WHERE white > 20000
SELECT county_public_safety.police_force, COUNT(county_id) AS number_of_counties FROM county_public_safety GROUP BY county_public_safety.police_force
SELECT county_public_safety.police_force, COUNT(county_id) AS number_of_counties FROM county_public_safety GROUP BY county_public_safety.police_force
SELECT county_public_safety.location, COUNT(county_public_safety.county_id) AS county_population FROM county_public_safety GROUP BY county_public_safety.location ORDER BY county_public_safety.county_population DESC NULLS LAST LIMIT 1
SELECT county_public_safety.location, COUNT(county_public_safety.name) AS county_name_count FROM county_public_safety GROUP BY county_public_safety.location ORDER BY county_name_count DESC NULLS LAST LIMIT 1
SELECT county_public_safety.name FROM county_public_safety WHERE county_public_safety.location IS NULL
SELECT county_public_safety.name FROM county_public_safety WHERE county_public_safety.location IS NULL
SELECT county_public_safety.county_id, COUNT(*) AS number_of_cities FROM county_public_safety WHERE county_public_safety.location ILIKE '%east%' OR county_public_safety.location ILIKE '%west%' GROUP BY county_public_safety.county_id
SELECT DISTINCT county_public_safety.police_force FROM county_public_safety WHERE county_public_safety.location ILIKE '%East%' AND county_public_safety.location ILIKE '%West%'
SELECT city.name FROM city WHERE (city.white / CAST(city.city_id AS FLOAT)) + (city.black / CAST(city.city_id AS FLOAT)) + (city.amerindian / CAST(city.city_id AS FLOAT)) + (city.asian / CAST(city.city_id AS FLOAT)) + (city.multiracial / CAST(city.city_id AS FLOAT)) + (city.hispanic / CAST(city.city_id AS FLOAT)) < 100
SELECT city.name FROM city WHERE (city.white / NULLIF(city.city_id, 0)) + (city.black / NULLIF(city.city_id, 0)) + (city.amerindian / NULLIF(city.city_id, 0)) + (city.asian / NULLIF(city.city_id, 0)) + (city.multiracial / NULLIF(city.city_id, 0)) + (city.hispanic / NULLIF(city.city_id, 0)) < 100
SELECT county_public_safety.name, SUM(county_public_safety.case_burden) AS total_cases FROM county_public_safety GROUP BY county_public_safety.name ORDER BY total_cases DESC NULLS LAST
SELECT county_public_safety.name, COUNT(county_public_safety.case_burden) AS total_cases FROM county_public_safety GROUP BY county_public_safety.name ORDER BY total_cases DESC NULLS LAST
SELECT Rooms.roomName FROM Rooms WHERE Rooms.decor = 'modern' AND Rooms.basePrice < 160 AND Rooms.beds = 2
SELECT Rooms.roomName FROM Rooms WHERE CAST((Rooms.decor) AS TEXT) ILIKE '%modern%' AND Rooms.basePrice < '160' AND Rooms.beds = '2'
SELECT Rooms.roomId, Rooms.roomName FROM Rooms WHERE (Rooms.beds > 2) AND (Rooms.basePrice > 160)
SELECT Rooms.roomId, Rooms.roomName FROM Rooms WHERE (Rooms.beds > 2) AND (CAST(Rooms.basePrice AS FLOAT) > 160)
SELECT COUNT(Kids) AS total_kids FROM Reservations WHERE "FirstName" ILIKE '%Roy%Sweazzy%'
SELECT COUNT(Kids) AS total_kids FROM Reservations WHERE "FirstName" ILIKE '%Roy%Sweaz%' AND "Adults" > 0
SELECT COUNT(*) AS reservation_count FROM Reservations WHERE FirstName = 'ROY' AND LastName = 'SWEAZY'
SELECT COUNT(*) AS reservation_count FROM Reservations WHERE FirstName = 'ROY' AND LastName = 'SWEAZY'
SELECT COUNT(Reservations.Adults) AS total_adults FROM Reservations WHERE Reservations.Room = 'CONRAD SELBIG' AND TO_DATE(Reservations.CheckIn, 'MM/DD/YYYY') = TO_DATE('10/23/2010', 'MM/DD/YYYY')
SELECT Reservations.Adults FROM Reservations WHERE "CheckIn" ILIKE '%oct%23,%2010%' AND "Room" ILIKE '%CONRAD%SELBIG%'
SELECT Reservations.Kids FROM Reservations WHERE Reservations.CheckIn ilike '%Sep%21,%2010%' AND Reservations.Room ilike '%DAMIEN%TRACHSEL%'
SELECT Reservations.Kids FROM Reservations WHERE Reservations.CheckIn ILIKE '%damien%trachsel%sep%21,%2010%' AND Reservations.checkOut ILIKE '%damien%trachsel%sep%21,%2010%'
SELECT COUNT(*) AS total_king_beds FROM Rooms WHERE bedType = 'King'
SELECT COUNT(*) AS total_king_beds FROM Rooms WHERE bedType = 'King'
SELECT Rooms.roomName, Rooms.decor FROM Rooms WHERE Rooms.bedType = 'king' ORDER BY Rooms.basePrice DESC NULLS LAST
SELECT Rooms.roomName, Rooms.decor FROM Rooms WHERE Rooms.bedType = 'king' ORDER BY Rooms.basePrice
SELECT Rooms.roomName, MIN(Rooms.basePrice) AS min_base_price FROM Rooms GROUP BY Rooms.roomName
SELECT Rooms.roomName, Rooms.basePrice FROM Rooms ORDER BY Rooms.basePrice ASC NULLS FIRST LIMIT 1
SELECT Rooms.decor FROM Rooms WHERE Rooms.roomName ilike '%Recluse%and%defiance%'
SELECT Rooms.decor FROM Rooms WHERE Rooms.roomName ILIKE '%recluse%and%defiance%'
SELECT roomType, AVG(basePrice) AS average_base_price FROM Rooms GROUP BY roomType
SELECT Rooms.bedType, AVG(Rooms.basePrice) AS average_base_price FROM Rooms GROUP BY Rooms.bedType
SELECT COUNT(*) AS total_people FROM Rooms WHERE decor ILIKE '%modern%'
SELECT COUNT(*) AS total_people FROM Rooms WHERE decor ILIKE '%modern%'
SELECT COUNT(RoomId) AS room_count FROM Rooms
SELECT COUNT(*) AS total_rooms FROM Rooms
SELECT COUNT(*) FROM Rooms WHERE bedType ILIKE '%king%'
SELECT COUNT(*) FROM Rooms WHERE bedType = 'king'
SELECT Rooms.bedType, COUNT(Rooms.RoomId) AS room_count FROM Rooms GROUP BY Rooms.bedType
SELECT Rooms.bedType, COUNT(Rooms.RoomId) AS room_count FROM Rooms GROUP BY Rooms.bedType
SELECT Rooms.roomName FROM Rooms ORDER BY Rooms.maxoccupancy DESC NULLS LAST LIMIT 1
SELECT Rooms.roomName, MAX(Rooms.maxoccupancy) AS max_occupancy FROM Rooms GROUP BY Rooms.roomName ORDER BY max_occupancy DESC NULLS LAST LIMIT 1
SELECT Rooms.RoomId, Rooms.roomName FROM Rooms ORDER BY Rooms.basePrice DESC NULLS LAST LIMIT 1
SELECT Rooms.roomName FROM Rooms ORDER BY Rooms.baseprice DESC NULLS LAST LIMIT 1
SELECT Rooms.bedType, Rooms.roomName FROM Rooms WHERE Rooms.baseFeet
SELECT Rooms.bedType, Rooms.roomName FROM Rooms WHERE "decor" ILIKE '%traditional%' ORDER BY Rooms.bedType
SELECT Rooms.decor, COUNT(*) AS room_count FROM Rooms WHERE bedType = 'king' GROUP BY Rooms.decor
SELECT Rooms.decor, COUNT(*) AS room_count FROM Rooms WHERE bedType = 'king' GROUP BY Rooms.decor
SELECT decor, AVG(baseprice) AS average_price, MIN(baseprice) AS min_price FROM Rooms GROUP BY decor
SELECT Rooms.decor, AVG(Rooms.basePrice) AS avg_base_price, MIN(Rooms.beds) AS min_beds FROM Rooms GROUP BY Rooms.decor
SELECT Rooms.roomName FROM Rooms ORDER BY Rooms.beds DESC NULLS LAST
SELECT Rooms.roomName FROM Rooms ORDER BY Rooms.basePrice DESC NULLS LAST
SELECT decor, COUNT(*) AS room_count FROM Rooms WHERE basePrice > 120 GROUP BY decor
SELECT Rooms.decor, COUNT(*) AS room_count FROM Rooms WHERE CAST(Rooms.baseFeet AS FLOAT) > 120 GROUP BY Rooms.decor
SELECT Rooms.bedType, AVG(Rooms.basePrice) AS average_base_price FROM Rooms GROUP BY Rooms.bedType
SELECT Rooms.bedType, AVG(Rooms.basePrice) AS average_base_price FROM Rooms GROUP BY Rooms.bedType
SELECT Rooms.roomName FROM Rooms WHERE (Rooms.bedType ILIKE '%king%' OR Rooms.bedType ILIKE '%que%') AND (Rooms.bedType ILIKE '%que%' OR Rooms.bedType ILIKE '%que%')
SELECT Rooms.roomName FROM Rooms WHERE (Rooms.bedType ILIKE '%king%' OR Rooms.bedType ILIKE '%que%') AND (Rooms.bedType ILIKE '%que%' OR Rooms.bedType ILIKE '%que%')
SELECT COUNT(DISTINCT room_beds.bedtype) AS number_of_bed_types FROM Rooms AS room_beds
SELECT COUNT(DISTINCT roomname) AS total_bed_types FROM Rooms
SELECT Rooms.roomId, Rooms.roomName FROM Rooms ORDER BY Rooms.basePrice DESC NULLS LAST LIMIT 3
SELECT Rooms.roomId, Rooms.roomName FROM Rooms ORDER BY Rooms.basePrice DESC NULLS LAST LIMIT 3
SELECT Rooms.roomName FROM Rooms WHERE Rooms.basePrice > (SELECT AVG(Rooms.basePrice) FROM Rooms)
SELECT r.roomname FROM Rooms AS r WHERE r.baseprice > (SELECT AVG(r2.baseprice) FROM Rooms AS r2)
SELECT COUNT(*) FROM Rooms WHERE NOT RoomId IN (SELECT roomid FROM bookings)
SELECT COUNT(*) FROM Rooms WHERE NOT EXISTS(SELECT 1 FROM Rooms AS re WHERE re.roomId = r.roomid)
SELECT Rooms.roomName FROM Rooms WHERE (Rooms.basePrice >= 120 AND Rooms.basePrice <= 150)
SELECT Rooms.roomName FROM Rooms WHERE (Rooms.basePrice >= 120 AND Rooms.baseCost <= 150)
SELECT COUNT(DISTINCT source_system_code) AS number_of_source_system_codes FROM CMI_Cross_References
SELECT personal_master_index.master_customer_id, personal_master_index.cmi_details FROM Customer_Master_Index ORDER BY personal_master_index.cmi_details DESC NULLS LAST
SELECT p.council_tax_id, COUNT(p.cmi_cross_ref_id) AS total_fines FROM Parking_Fines AS p GROUP BY p.council_tax_id
SELECT COUNT(*) AS total_council_taxes FROM Rent_Arrears
SELECT CMI_Cross_References.cmi_cross_ref_id FROM CMI_Cross_References WHERE NOT CMI_Cross_References.cmi_cross_ref_id IN (SELECT Parking_Taxes.master_customer_id FROM Parking_Taxes) ORDER BY CMI_Cross_References.cmi_cross_ref_id
SELECT DISTINCT CMI_Cross_References.source_system_code FROM CMI_Cross_References WHERE CMI_Cross_References.source_system_code ILIKE '%en%'
SELECT COUNT(*) AS total_parties FROM party
SELECT COUNT(*) FROM party
SELECT party.party_theme, COUNT(party.number_of_hosts) AS total_hosts FROM party GROUP BY party.party_theme ORDER BY total_hosts ASC NULLS FIRST
SELECT party.party_theme, COUNT(party.number_of_hosts) AS total_hosts FROM party GROUP BY party.party_theme ORDER BY total_hosts ASC NULLS FIRST
SELECT p.party_theme, p.location FROM party AS p
SELECT p.party_id, p.party_theme, p.location FROM party AS p
SELECT MIN(first_year), MAX(last_year) FROM party WHERE party_theme IN ('Spring', 'Teqnology')
SELECT MIN(first_year) AS earliest_year, MAX(last_year) AS latest_year FROM party WHERE party_theme IN ('Spring', 'Teqnology')
SELECT AVG(party.number_of_hosts) AS average_number_of_hosts FROM party
SELECT AVG(number_of_hosts) AS average_number_of_hosts FROM party
SELECT p.location, COUNT(*) AS number_of_hosts FROM party AS p GROUP BY p.location ORDER BY number_of_hosts DESC NULLS LAST LIMIT 1
SELECT p.location, COUNT(*) AS total_hosts FROM party AS p GROUP BY p.location ORDER BY total_hosts DESC NULLS LAST LIMIT 1
SELECT host.nationality, COUNT(*) AS total_hosts FROM host GROUP BY host.nationality
SELECT host.nationality, COUNT(*) AS total_hosts FROM host GROUP BY host.nationality
SELECT host.nationality, COUNT(*) AS frequency FROM host GROUP BY host.nationality ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT host.nationality, COUNT(*) AS total_hosts FROM host GROUP BY host.nationality ORDER BY total_hosts DESC NULLS LAST LIMIT 1
SELECT host.nationality FROM host WHERE CAST(host.age AS FLOAT) > 45 AND CAST(host.age AS FLOAT) < 35 GROUP BY host.nationality
SELECT host.nationality FROM host WHERE CAST(host.age AS FLOAT) > 45 AND CAST(host.age AS FLOAT) < 35 GROUP BY host.nationality HAVING COUNT(host.host_id) > 1
SELECT host.name, host.nationality FROM host ORDER BY host.age ASC NULLS FIRST LIMIT 1
SELECT host.name, host.nationality FROM host WHERE host.age = (SELECT MAX(host_id.age) FROM host_id)
SELECT h.name FROM host AS h LEFT JOIN party_host ON h.host_id = ph.host_id WHERE ph.host_id IS NULL
SELECT h.name FROM host AS h LEFT JOIN party_host ON h.host_id = ph.host_id WHERE ph.host_id IS NULL
SELECT COUNT(*) AS region_count FROM region
SELECT COUNT(*) FROM region
SELECT region.region_code, region.region_name FROM region ORDER BY region.region_code NULLS FIRST
SELECT region.region_code, region.region_name FROM region ORDER BY region.region_code NULLS FIRST
SELECT region.region_name FROM region ORDER BY region.region_name ASC NULLS FIRST
SELECT region_name FROM region ORDER BY region_name ASC NULLS FIRST
SELECT region.region_name FROM region WHERE NOT region.region_name ILIKE '%Denmark%' ORDER BY region.region_name
SELECT region.region_name FROM region WHERE NOT region.region_name ILIKE '%Denmark%' ORDER BY region.region_name
SELECT COUNT(*) FROM storm
SELECT COUNT(*) FROM storm WHERE number_deaths > 0
SELECT s.name, TO_DATE(s.dates_active, 'YYYY-MM-DD') AS date_active, SUM(CASE WHEN d.max_speed = 'Yes' THEN 1 ELSE 0 END) AS deaths FROM storm JOIN storm AS d ON s.storm_id = d.storm_id GROUP BY s.name, number_deaths
SELECT s.name, TO_DATE(s.dates_active, 'YYYY-MM-DD') AS date_active, SUM(CASE WHEN d.deaths > 0 THEN 1 ELSE 0 END) AS deaths FROM storm JOIN storm AS d ON s.storm_id = d.storm_id GROUP BY s.name, number_deaths
SELECT AVG(damage_millions_usd), MAX(damage_millions_usd) FROM storm WHERE max_speed > 1000
SELECT AVG(Damage_millions_usd), MAX(damage_millions_usd) FROM storm WHERE max_speed > 1000
SELECT SUM(storm.number_deaths) AS total_deaths, SUM(storm.damage_millions_usd) AS total_damage FROM storm WHERE storm.max_speed > (SELECT AVG(storm.max_speed) FROM storm)
SELECT SUM(storm.number_deaths) AS total_deaths, SUM(storm.damage_millions_usd) AS total_damage_millions FROM storm WHERE storm.max_speed > AVG(storm.max_speed)
SELECT s.name, TO_CHAR(TO_TIMESTAMP(s.dates_active), 'MM-DD-YYYY') AS date_of_storm, s.max_speed, s.damage_millions_usd FROM storm AS s ORDER BY s.max_speed DESC NULLS LAST
SELECT s.name, TO_CHAR(CAST(s.damage_millions_usd AS FLOAT) / 1000000, 'FM999990D00') AS damage_in_millions, RANK() OVER (ORDER BY s.max_speed DESC NULLS LAST) AS rank FROM storm AS s
SELECT COUNT(*) AS total_regions_affected FROM affected_region
SELECT COUNT(DISTINCT region_id) AS number_of_regions FROM affected_region
SELECT region.region_name FROM region WHERE NOT region.region_id IN (SELECT region_id FROM region)
SELECT region.region_name FROM region WHERE NOT region.region_id IN (SELECT region_id FROM region)
SELECT s.name FROM storm AS s WHERE s.damage_millions_usd IS NULL
SELECT s.name FROM storm WHERE NOT s.storm_id IN (SELECT d.storm_id FROM storm AS d)
SELECT s.name FROM storm WHERE NOT s.storm_id IN (SELECT DISTINCT d.storm_id FROM storm AS d)
SELECT s.name FROM storm WHERE NOT EXISTS(SELECT 1 FROM storm AS r WHERE r.storm_id = s.storm_id) AND NOT EXISTS(SELECT 1 FROM storm AS r2 WHERE r2.storm_id = s.storm_id)
SELECT COUNT(*) AS total_counties FROM county
SELECT COUNT(*) AS total_counties FROM county
SELECT county.county_name, COUNT(*) AS population FROM county GROUP BY county.county_name
SELECT c.county_name, c.population FROM county AS c
SELECT AVG(Population) FROM county
SELECT AVG(Population) AS average_population FROM county
SELECT MAX(Population) AS max_population, MIN(Population) AS min_population FROM county
SELECT MAX(Population) AS max_population, MIN(Population) AS min_population FROM county
SELECT DISTINCT election.district FROM election
SELECT DISTINCT election.district FROM election
SELECT county.zip_code FROM county WHERE county.county_name ilike '%Howard%'
SELECT county.zip_code FROM county WHERE county.county_name ILIKE '%Howard%'
SELECT election.delegate FROM election WHERE election.district = 1
SELECT election.delegate FROM election WHERE election.district = 1
SELECT election.delegate, election.committee FROM election
SELECT e.election_id, e.counties_represented, d.delegate, c.committee FROM election JOIN delegate ON e.first_elected = d.party JOIN election AS c ON e.committee = c.district
SELECT COUNT(DISTINCT Governor) AS number_of_governors FROM party
SELECT COUNT(DISTINCT Governor) AS number_of_governors FROM party
SELECT party.Lieutenant_Governor, party.Comptroller FROM party WHERE party.party = 'Democratic'
SELECT party.Lieutenant_Governor, party.Comptroller FROM party WHERE party.party = 'Democratic'
SELECT DISTINCT party.year FROM party WHERE party.governor ILIKE '%Eliot%Spitzer%' ORDER BY party.year
SELECT DISTINCT party.year FROM party WHERE party.governor ILIKE '%Eliot%Spitzer%' ORDER BY party.year
SELECT * FROM election
SELECT e.election_id, e.counties_represented, e.district, e.delegate, e.party, e.first_elected, e.committee FROM election AS e
SELECT county.county_name FROM county ORDER BY county.population ASC NULLS FIRST
SELECT county.county_name FROM county ORDER BY population ASC NULLS FIRST
SELECT county.county_name FROM county ORDER BY county.county_name DESC NULLS LAST
SELECT county.county_name FROM county ORDER BY county.county_name DESC NULLS LAST
SELECT county.county_name, COUNT(zip.zip_code) AS total_population FROM county JOIN zip ON county.county_id = zip.county_id GROUP BY county.county_name ORDER BY total_population DESC NULLS LAST LIMIT 1
SELECT county.county_name FROM county ORDER BY county.population DESC NULLS LAST LIMIT 1
SELECT county.county_name, county.population FROM county ORDER BY county.population ASC LIMIT 3
SELECT c.county_name FROM county AS c JOIN (SELECT COUNT(*) AS total_population, county_id FROM county GROUP BY county_id ORDER BY total_population ASC LIMIT 3) AS d ON c.county_id = d.county_id
SELECT p.party FROM party AS p GROUP BY p.party HAVING COUNT(p.year) >= 2
SELECT p.party FROM party AS p GROUP BY p.party HAVING COUNT(p.year) >= 2
SELECT p.party_id, COUNT(*) AS num_governor_terms FROM party AS p GROUP BY p.party_id ORDER BY num_governor_terms DESC NULLS LAST
SELECT p.party_id, COUNT(*) AS frequency FROM party AS p GROUP BY p.party_id ORDER BY frequency DESC NULLS LAST
SELECT party.governor, COUNT(party.year) AS total_years FROM party WHERE NOT party.comptroller IS NULL GROUP BY party.governor ORDER BY total_years DESC NULLS LAST
SELECT p.party_id, COUNT(*) AS frequency FROM party AS p WHERE NOT comptroller IS NULL GROUP BY p.party_id ORDER BY frequency DESC NULLS LAST
SELECT p.party FROM party AS p WHERE p.year IS NULL
SELECT p.party FROM party LEFT JOIN party AS d ON p.party_id = d.party_id WHERE d.party_id IS NULL
SELECT COUNT(journalist.journalist_id) AS total_journalists FROM journalist
SELECT journalist.name FROM journalist ORDER BY journalist.years_working ASC NULLS FIRST
SELECT journalist.nationality, CAST(journalist.age AS FLOAT) FROM journalist
SELECT journalist.name FROM journalist WHERE journalist.nationality ILIKE '%England%' OR journalist.nationality ILIKE '%Wales%'
SELECT AVG(journalist.years_working) AS average_years_working FROM journalist
SELECT journalist.nationality FROM journalist WHERE journalist.years_working = (SELECT MAX(journalist.years_working) FROM journalist)
SELECT journalist.nationality, COUNT(*) AS total_journalists FROM journalist GROUP BY journalist.nationality
SELECT journalist.nationality FROM journalist GROUP BY journalist.nationality ORDER BY COUNT(journalist.nationality) DESC NULLS LAST LIMIT 1
SELECT journalist.nationality FROM journalist WHERE (journalist.years_working > 10 OR journalist.years_working < 3) GROUP BY journalist.nationality HAVING COUNT(*) >= 2
SELECT event.date, event.venue, event.name FROM event ORDER BY event.event_attendance DESC NULLS LAST
SELECT journalist.name FROM journalist WHERE NOT journalist.journalist_id IN (SELECT reporter.journalist_id FROM journalist JOIN reporter ON event.age = reporter.age)
SELECT AVG(event_attendance) AS average_attendance, MAX(event_attendance) AS max_attendance FROM event
SELECT venue, name, event_attendance FROM event ORDER BY event_attendance DESC NULLS LAST LIMIT 2
SELECT Restaurant.ResID, Restaurant.ResName, Restaurant.Address FROM Restaurant
SELECT Restaurant.Address FROM Restaurant WHERE ResName ILIKE '%Subway%'
SELECT AVG(Rating) AS average_rating FROM Restaurant WHERE ResName = 'Subway'
SELECT Restaurant_Type.ResTypeName FROM Restaurant_Type
SELECT Restaurant_Type.ResTypeDescription FROM Restaurant_Type WHERE Restaurant_Type.ResTypeName ILIKE '%Sandwich%'
SELECT Restaurant.ResName, MAX(Restaurant.Rating) AS max_rating FROM Restaurant GROUP BY Restaurant.ResName ORDER BY max_rating DESC NULLS LAST
SELECT Student.Age FROM Student WHERE Student.LName ILIKE '%Linda%Smith%'
SELECT Student.Sex FROM Student WHERE Student.LName ilike '%Linda%Smith%'
SELECT Student.Fname, Student.LName FROM Student WHERE Student.Major = 600
SELECT Student.city_code FROM Student WHERE Student.LName ILIKE '%Linda%Smith%' AND Student.Fname ILIKE '%Smith%'
SELECT COUNT(*) AS total_students FROM Student WHERE Advisor = 1121
SELECT s.advisor, COUNT(*) AS student_count FROM Student AS s GROUP BY s.advisor ORDER BY student_count DESC NULLS LAST
SELECT s.major, COUNT(*) AS student_count FROM Student AS s GROUP BY s.major ORDER BY student_count ASC LIMIT 1
SELECT Student.Major, COUNT(Student.StuID) AS num_students FROM Student GROUP BY Student.Major HAVING COUNT(Student.StuID) BETWEEN 2 AND 30
SELECT Student.Fname, Student.LName FROM Student WHERE "Age" > '18' AND "Major" = '600'
SELECT Student.Fname, Student.LName FROM Student WHERE Student.Sex = 'female' AND Student.Age > 18 AND Student.Major <> 600
SELECT actual_orders.actual_order_id FROM Actual_Orders WHERE order_status_code = 'success'
SELECT COUNT(*) AS total_customers FROM Customers
SELECT COUNT(DISTINCT Customers.payment_method) AS number_of_payment_methods FROM Customers
SELECT Trucks.truck_id, Trucks.truck_licence_number, Trucks.truck_details FROM Trucks ORDER BY Trucks.truck_id NULLS FIRST
SELECT Products.product_name FROM Products ORDER BY Products.product_price DESC NULLS LAST LIMIT 1
SELECT Customers.customer_name FROM Customers WHERE NOT Customers.customer_id IN (SELECT customer_id FROM Customers WHERE date_became_customer = 'California')
SELECT customers.customer_name, customers.customer_email FROM Customers WHERE payment_method ILIKE '%Visa%'
SELECT state_province_county FROM Addresses GROUP BY state_province_county HAVING COUNT(address_id) = 0
SELECT customers.customer_name, customers.customer_phone, customers.customer_email FROM Customers ORDER BY customers.date_became_customer NULLS FIRST
SELECT c.customer_name FROM Customers AS c ORDER BY c.customer_id ASC NULLS FIRST LIMIT 5
SELECT customers.payment_method, COUNT(*) AS frequency FROM Customers GROUP BY customers.payment_method ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT route_name FROM Delivery_Routes ORDER BY route_name ASC NULLS FIRST
SELECT COUNT(*) AS total_authors FROM Authors
SELECT COUNT(*) AS total_authors FROM Authors
SELECT COUNT(*) FROM Inst
SELECT COUNT(*) FROM Inst
SELECT COUNT(*) AS total_papers FROM Papers
SELECT COUNT(*) AS total_papers FROM Papers
SELECT CAST(COUNT(*) AS FLOAT) / NULLIF((SELECT COUNT(*) FROM Papers), 0) AS fraction_of_papers_with_ml FROM Papers WHERE title ILIKE '%ML%'
SELECT Papers.title FROM Papers WHERE Papers.title ILIKE '%ML%'
SELECT Papers.title FROM Papers WHERE Papers.title ILIKE '%database%'
SELECT Papers.title FROM Papers WHERE Papers.title ILIKE '%database%'
SELECT Authors.fname FROM Authors WHERE Authors.lname ILIKE '%Ueno%'
SELECT Authors.fname FROM Authors WHERE Authors.lname ILIKE '%Ueno%'
SELECT Authors.lname FROM Authors WHERE Authors.fname ILIKE '%Amal%'
SELECT Authors.lname FROM Authors WHERE Authors.fname ILIKE '%Amal%' ORDER BY Authors.lname
SELECT fname FROM Authors ORDER BY fname ASC NULLS FIRST
SELECT Authors.fname FROM Authors ORDER BY Authors.fname ASC NULLS FIRST
SELECT Authors.lname FROM Authors ORDER BY Authors.lname ASC NULLS FIRST
SELECT Authors.lname FROM Authors ORDER BY Authors.lname ASC NULLS FIRST
SELECT Authors.lname, Authors.fname FROM Authors ORDER BY Authors.lname ASC NULLS FIRST
SELECT Authors.lname, Authors.fname FROM Authors ORDER BY Authors.lname ASC NULLS FIRST
SELECT COUNT(DISTINCT actor.last_name) AS number_of_last_names FROM actor
SELECT COUNT(DISTINCT actor.last_name) AS num_last_names FROM actor
SELECT actor.first_name, COUNT(actor.actor_id) AS COUNT FROM actor GROUP BY actor.first_name ORDER BY COUNT DESC NULLS LAST LIMIT 1
SELECT actor.first_name, COUNT(actor.first_name) AS COUNT FROM actor GROUP BY actor.first_name ORDER BY COUNT DESC NULLS LAST LIMIT 1
SELECT a.first_name, a.last_name, COUNT(*) AS total_movies FROM actor AS a GROUP BY a.first_name, a.last_name ORDER BY total_movies DESC NULLS LAST LIMIT 1
SELECT actor.first_name, actor.last_name FROM actor GROUP BY actor.first_name, actor.last_name ORDER BY COUNT(actor.actor_id) DESC NULLS LAST LIMIT 1
SELECT DISTINCT address.district FROM address GROUP BY address.district HAVING COUNT(address.address_id) >= 2
SELECT district FROM address GROUP BY district HAVING COUNT(address_id) >= 2
SELECT address.phone, address.postal_code FROM address WHERE address.address ILIKE '%1031%Daugavpings%Parkway%'
SELECT address.phone, address.postal_code FROM address WHERE address.address ILIKE '%1031%Daugavpings%Parkway%' ORDER BY address.address
SELECT COUNT(*) AS total_addresses FROM address WHERE district = 'California'
SELECT COUNT(*) FROM address WHERE district = 'California'
SELECT film_id, title FROM film WHERE rental_rate = 0.99 AND rating < 3
SELECT film_id, title FROM film WHERE rental_rate = 0.99 AND length < 3
SELECT payment_date FROM payment WHERE amount > 10 AND staff_id IN (SELECT staff_id FROM staff WHERE first_name ilike '%Elsa%')
SELECT payment_date FROM payment WHERE amount > 10 AND staff_first_name = 'Elsa'
SELECT COUNT(*) FROM customer WHERE active = TRUE
SELECT COUNT(*) AS total_active_customers FROM customer WHERE active = TRUE
SELECT film.title, MAX(film.rental_rate) AS max_rental_rate FROM film GROUP BY film.title
SELECT film.title, film.rental_rate FROM film ORDER BY film.rental_rate DESC NULLS LAST LIMIT 1
SELECT inventory.store_id, COUNT(inventory.film_id) AS total_films FROM inventory GROUP BY inventory.store_id ORDER BY total_films DESC NULLS LAST
SELECT store_id FROM inventory GROUP BY store_id ORDER BY COUNT(inventory_id) DESC NULLS LAST LIMIT 1
SELECT SUM(payment.amount) AS total_amount FROM payment
SELECT SUM(payment.amount) AS total_amount FROM payment
SELECT COUNT(DISTINCT film.language_id) AS number_of_languages FROM film
SELECT COUNT(DISTINCT film.language_id) AS number_of_languages FROM film
SELECT film.title FROM film WHERE film.rating = 'R'
SELECT film.title FROM film WHERE film.rating = 'R'
SELECT COUNT(*) AS number_of_stores FROM store
SELECT COUNT(*) FROM store
SELECT COUNT(DISTINCT film.replacement_cost) AS number_of_different_ratings FROM film
SELECT COUNT(DISTINCT film.film_id) AS number_of_different_genres FROM film
SELECT film.title FROM film WHERE 'Deletedandsenes' ILIKE '%special_features%'
SELECT COUNT(*) AS number_of_films FROM film WHERE special_features ILIKE '%Deleted%'
SELECT COUNT(inventory_id) AS total_items FROM inventory WHERE store_id = 1
SELECT COUNT(inventory_id) AS total_items FROM inventory WHERE store_id = 1
SELECT MIN(payment.payment_date) AS earliest_payment_date FROM payment
SELECT MIN(payment.payment_date) AS earliest_payment_date FROM payment
SELECT film_id, title FROM film WHERE length > 100 OR (rating = 'PG' AND replacement_cost <= 200) AND NOT film_id IN (SELECT film_id FROM film WHERE replacement_cost > 200)
SELECT film.title FROM film WHERE (film.length > 100 OR film.rating = 'PG') AND film.replacement_cost <= 200
SELECT c.store_id, COUNT(*) AS customer_count FROM customer AS c GROUP BY c.store_id ORDER BY customer_count DESC NULLS LAST LIMIT 1
SELECT c.store_id, COUNT(*) AS customer_count FROM customer AS c GROUP BY c.store_id ORDER BY customer_count DESC NULLS LAST LIMIT 1
SELECT MAX(payment.amount) AS max_amount FROM payment
SELECT MAX(payment.amount) AS max_amount FROM payment
SELECT customer.first_name FROM customer WHERE customer.create_date < '2005-08-23 02:06:01' AND NOT customer.customer_id IN (SELECT rental.customer_id FROM rental)
SELECT customer.first_name FROM customer WHERE customer.create_date < '2005-08-23 02:06:01' AND NOT customer.customer_id IN (SELECT rental.customer_id FROM rental)
SELECT COUNT(*) AS number_of_branches FROM bank
SELECT COUNT(*) AS total_branches FROM bank
SELECT CAST(SUM(branch_id) AS FLOAT) / NULLIF(COUNT(*), 0) AS avg_customers_per_branch FROM bank
SELECT SUM(branch_id) AS total_customers FROM bank
SELECT SUM(no_of_customers) AS total_customers FROM bank WHERE city = 'New York City.'
SELECT SUM(banks.no_of_customers) AS total_customers FROM bank WHERE city = 'New York'
SELECT AVG(no_of_customers) AS average_customers FROM bank WHERE state = 'Utah'
SELECT AVG(no_of_customers) AS average_customers FROM bank WHERE state = 'Utah'
-1
-1
SELECT b.city, b.state FROM bank AS b WHERE b.branch_id = 757071
SELECT branch_id, bname, city, state FROM bank WHERE bname ilike '%morningside%'
SELECT bname FROM bank WHERE state = 'New York'
SELECT bname FROM bank WHERE state = 'New York'
SELECT customer.cust_name FROM customer ORDER BY customer.acc_bal ASC NULLS FIRST
SELECT customer.cust_name, customer.acc_bal FROM customer ORDER BY customer.acc_bal DESC NULLS LAST
SELECT customer.state, customer.acc_type, customer.credit_score FROM customer WHERE customer.no_of_loans = 0
SELECT customer.state, customer.acc_type, customer.credit_score FROM customer WHERE customer.no_of_loans = 0
SELECT DISTINCT city FROM bank
SELECT COUNT(DISTINCT city) AS number_of_cities FROM bank
SELECT COUNT(DISTINCT state) AS num_states FROM bank
SELECT COUNT(DISTINCT state) AS number_of_states FROM bank
SELECT COUNT(DISTINCT customer.acc_type) AS number_of_account_types FROM customer
SELECT COUNT(DISTINCT customer.acc_type) AS number_of_account_types FROM customer
SELECT customer.cust_name, customer.acc_bal FROM customer WHERE customer.cust_name ILIKE '%a%'
SELECT customer.cust_name, customer.acc_bal FROM customer WHERE customer.cust_name ILIKE '%a%'
SELECT customer.cust_name, SUM(customer.acc_bal) AS total_account_balance FROM customer WHERE customer.state IN ('Utah', 'Texas') GROUP BY customer.cust_name
SELECT customer.cust_name, SUM(customer.acc_bal) AS total_balance FROM customer WHERE customer.state IN ('Utah', 'Texas') GROUP BY customer.cust_name
SELECT customer.cust_name FROM customer WHERE customer.acc_type ILIKE '%saving%' AND customer.acc_type ILIKE '%checking%'
SELECT customer.cust_name FROM customer WHERE customer.acc_type ILIKE '%savings%' AND customer.acc_type ILIKE '%checking%'
SELECT customer.cust_name FROM customer WHERE customer.acc_type <> 'saving'
SELECT customer.cust_name FROM customer WHERE customer.acc_type <> 'saving'
SELECT customer.cust_name FROM customer WHERE NOT customer.acc_type ILIKE '%Mortgages%'
SELECT customer.cust_name FROM customer WHERE customer.acc_type <> 'Mortgage'
SELECT customer.cust_name FROM customer WHERE customer.credit_score < (SELECT AVG(customer.credit_score) FROM customer)
SELECT customer.cust_name FROM customer WHERE customer.credit_score < (SELECT AVG(customer.credit_score) FROM customer)
SELECT b.branch_id FROM bank AS b WHERE b.no_of_customers = (SELECT MAX(c.no_of_customers) FROM bank AS c)
SELECT bname FROM bank ORDER BY no_of_customers DESC NULLS LAST LIMIT 1
SELECT customer.cust_name FROM customer ORDER BY customer.credit_score ASC NULLS FIRST LIMIT 1
SELECT customer.cust_name FROM customer ORDER BY customer.credit_score ASC LIMIT 1
SELECT customer.cust_name, customer.acc_type, customer.acc_bal FROM customer WHERE customer.credit_score = (SELECT MAX(customer.credit_score) FROM customer)
SELECT customer.cust_name, customer.acc_type, customer.acc_bal FROM customer WHERE customer.credit_score = (SELECT MAX(customer.credit_score) FROM customer)
SELECT bank.state, SUM(bank.no_of_customers) AS total_customers FROM bank GROUP BY bank.state ORDER BY total_customers DESC NULLS LAST LIMIT 1
SELECT state, SUM(no_of_customers) AS total_customers FROM bank GROUP BY state ORDER BY total_customers DESC NULLS LAST LIMIT 1
SELECT customer.acc_type, AVG(customer.acc_bal) AS average_account_balance FROM customer WHERE customer.credit_score < 50 GROUP BY customer.acc_type
SELECT customer.acc_type, AVG(customer.acc_bal) AS average_balance FROM customer WHERE customer.credit_score < 50 GROUP BY customer.acc_type
SELECT customer.state, SUM(customer.acc_bal) AS total_account_balance FROM customer WHERE customer.credit_score > 100 GROUP BY customer.state
SELECT state, SUM(acc_bal) AS total_balance FROM customer WHERE credit_score > 100 GROUP BY state
SELECT AVG(customer.credit_score) FROM customer WHERE customer.no_of_loans > 0
SELECT AVG(customer.credit_score) AS average_credit_score FROM customer WHERE customer.no_of_loans > 0
SELECT AVG(credit_score) FROM customer WHERE no_of_loans = 0
SELECT AVG(customer.credit_score) FROM customer WHERE customer.no_of_loans = 0
SELECT COUNT(*) AS total_notes FROM Assessment_Notes
SELECT date_of_notes FROM Assessment_Notes
SELECT COUNT(*) FROM Addresses WHERE zip_postcode = '197'
SELECT COUNT(DISTINCT behavior_incident.incident_type_code) AS number_of_incident_type_codes FROM Behavior_Incident
SELECT DISTINCT detention_type_code FROM Detention
SELECT date_incident_start, date_incident_end FROM behavior_incident WHERE incident_type_code = 'NOISE'
SELECT detention_summary FROM Detention
SELECT Students.student_id, Students.first_name, Students.middle_name, Students.last_name, Students.address_id, Students.date_first_rental, Students.date_left_university, Students.other_student_details, Students.cell_mobile_number, Students.email_address FROM Students
SELECT Students.email_address FROM Students WHERE Students.first_name ILIKE '%Emma%' AND Students.last_name ILIKE '%Rohan%'
SELECT COUNT(DISTINCT student_id) AS number_of_students FROM Students_in_Detention
SELECT Teachers.gender FROM Teachers WHERE Teachers.last_name ILIKE '%Medehurst%'
SELECT Ref_Incident_Type.incident_type_description FROM Ref_Incident_Type WHERE Ref_Incident_Type.incident_type_code = 'VIOLENCE'
SELECT MIN(monthly_rental) AS min_monthly_rental, MAX(monthly_rental) AS max_monthly_rental FROM Student_Addresses
SELECT Teachers.first_name FROM Teachers WHERE 'man' ILIKE '%' || TEacheers.email_address || '%'
SELECT Assessment_Notes.notes_id, Assessment_notess.student_id, Assessment_notess.teacher_id, Assessment_notess.date_of_notes, Assessment_notess.text_of_notes, Assessment_notess.other_details FROM Assessment_Notes ORDER BY date_of_notes ASC NULLS FIRST
SELECT DISTINCT Addresses.city FROM Addresses ORDER BY Addresses.city ASC NULLS FIRST
SELECT teachers.first_name, teachers.last_name FROM Teachers ORDER BY teachers.last_name ASC NULLS FIRST
SELECT Student_addresses.student_id, Student_addresses.address_id, Student_addresses.date_address_from, Student_addresses.date_address_to, Student_addresses.monthly_rental, Student_addresses.other_details FROM Student_Addresses ORDER BY Student_addresses.monthly_rental DESC NULLS LAST
SELECT COUNT(*) AS total_students FROM students WHERE NOT student_id IN (SELECT student_id FROM Students)
SELECT Teachers.last_name FROM Teachers WHERE NOT Teachers.teacher_id IN (SELECT Detention.teacher_id FROM Teachers)
SELECT DISTINCT Maintenance_Engineers.last_name FROM Maintenance_Engineers
SELECT COUNT(DISTINCT fault_status) AS number_of_fault_status FROM Fault_Log_Parts
SELECT m.first_name, m.last_name FROM Maintenance_Engineers WHERE NOT m.engineer_id IN (SELECT company_id FROM Maintenance_Engineers)
SELECT a.asset_id, a.asset_details, a.asset_make, a.asset_model FROM Assets AS a
SELECT MIN(assets.asset_acquired_date) AS earliest_acquisition_date FROM Assets
SELECT DISTINCT Assets.asset_make FROM Assets
SELECT asset_make, asset_model, other_asset_details FROM Assets ORDER BY asset_disposed_date ASC NULLS FIRST
SELECT parts.part_id, CAST(parts.chargeable_amount AS FLOAT) AS chargeable_amount FROM Parts WHERE parts.chargeable_yn = 'Y' ORDER BY parts.chargeable_amount ASC
SELECT Staff.gender FROM Staff GROUP BY Staff.gender HAVING COUNT(Staff.staff_id) > COUNT(CASE WHEN Staff.gender = 'female' THEN Staff.staff_id END) / 2
SELECT DISTINCT a.asset_model FROM Assets AS a LEFT JOIN fault_logs ON a.asset_id = fl.asset_id WHERE fl.asset_id IS NULL
SELECT station.local_authority, ARRAY_AGG(DISTINCT station.services) AS services FROM station GROUP BY station.local_authority
SELECT t.train_number, t.name FROM train AS t ORDER BY t.time ASC NULLS FIRST
SELECT t.time, COUNT(*) AS number_of_trains FROM train AS t WHERE destination = 'Chennai' GROUP BY t.time ORDER BY t.time
SELECT COUNT(*) FROM train WHERE name ILIKE '%Express%'
SELECT t.train_number, TO_NUMBER(t.time, '999999999') AS time_in_minutes FROM train AS t WHERE t.origin = 'Chennai' AND t.destination = 'Guruvayur'
SELECT train.origin, COUNT(*) AS total_trains FROM train GROUP BY train.origin
SELECT daily_weather.day_of_week, AVG(daily_weather.high_temperature) AS average_high_temperature FROM weekly_weather GROUP BY daily_weather.day_of_week
SELECT COUNT(DISTINCT station.services) AS number_of_services FROM station
SELECT MIN(low_temperature) AS lowest_low_temperature, MAX(wind_speed_mph) AS highest_wind_speed_mph FROM weekly_weather
SELECT DISTINCT train.origin FROM train GROUP BY train.origin HAVING COUNT(train.id) > 1
SELECT COUNT(*) AS num_professors FROM CLASS WHERE CLASS_CODE = 'ACCT-211'
SELECT COUNT(DISTINCT PROF_NUM) AS number_of_professors FROM CLASS WHERE CLASS_CODE = 'ACCT-211'
SELECT SCHOOL_CODE FROM DEPARTMENT WHERE DEPT_NAME ILIKE '%Accounting%'
SELECT DEPARTMENT.SCHOOL_CODE FROM DEPARTMENT WHERE DEPARTMENT.DEPT_NAME ILIKE '%Accounting%'
SELECT COURSE.CRS_CREDIT, COURSE.CRS_DESCRIPTION FROM COURSE WHERE COURSE.CRS_CODE = 'CIS-220'
SELECT COURSE.CRS_DESCRIPTION, COURSE.CRS_CREDIT FROM COURSE WHERE COURSE.CRS_CODE = 'CIS-220'
SELECT DEPARTMENT.DEPT_ADDRESS FROM DEPARTMENT WHERE DEPARTMENT.DEPT_NAME ILIKE '%History%'
SELECT DEPARTMENT.DEPT_NAME FROM DEPARTMENT WHERE DEPARTMENT.DEPT_NAME ILIKE '%History%'
SELECT COUNT(DISTINCT dept_address) AS num_locations FROM DEPARTMENT WHERE dept_code = 'BUS'
SELECT DISTINCT DEPARTMENT.DEPT_ADDRESS FROM DEPARTMENT WHERE DEPARTMENT.DEPT_CODE = 'BUS'
SELECT SCHOOL_CODE, COUNT(DISTINCT DEPT_ADDRESS) AS num_locations FROM DEPARTMENT GROUP BY SCHOOL_CODE
SELECT SCHOOL_CODE, COUNT(DEPT_ADDRESS) AS num_addresses FROM DEPARTMENT GROUP BY SCHOOL_CODE
SELECT c.crs_description, c.crs_credit FROM COURSE AS c WHERE c.crs_code = 'QM-261'
SELECT COURSE.CRS_DESCRIPTION, COURSE.CRS_CREDIT FROM COURSE WHERE COURSE.CRS_CODE = 'QM-261'
SELECT SCHOOL_CODE, COUNT(DEPT_CODE) AS dept_num FROM DEPARTMENT GROUP BY SCHOOL_CODE
SELECT SCHOOL_CODE, COUNT(DEPT_CODE) AS dept_num FROM DEPARTMENT GROUP BY SCHOOL_CODE
SELECT SCHOOL_CODE, COUNT(DEPT_CODE) AS dept_count FROM DEPARTMENT GROUP BY SCHOOL_CODE HAVING COUNT(DEPT_CODE) < 5
SELECT SCHOOL_CODE, COUNT(DEPT_CODE) AS dept_count FROM DEPARTMENT GROUP BY SCHOOL_CODE HAVING COUNT(APts) < 5
SELECT COUNT(DISTINCT class_section) AS num_sections FROM CLASS
SELECT COUNT(DISTINCT class_section) AS num_sections FROM CLASS
SELECT COURSE.DEPT_CODE, SUM(COURSE.CRS_CREDIT) AS total_credits FROM COURSE GROUP BY COURSE.DEPT_CODE
SELECT COUNT(CRS_CREDIT) AS total_credits FROM COURSE WHERE DEPT_CODE = 'DEPT_CODE'
SELECT COUNT(*) AS total_classes FROM (SELECT CLASS.CLASS_CODE, COUNT(*) AS num_classes FROM CLASS GROUP BY CLASS.CLASS_CODE HAVING COUNT(*) >= 2) AS subquery
SELECT c.class_code, COUNT(*) AS num_classes FROM CLASS AS c GROUP BY c.class_code HAVING COUNT(*) >= 2
SELECT EMPLOYEE.EMP_JOBCODE, COUNT(*) AS COUNT FROM EMPLOYEE GROUP BY EMPLOYEE.EMP_JOBCODE ORDER BY COUNT DESC NULLS LAST LIMIT 1
SELECT department_code.emp_fname, COUNT(employee.emp_num) AS total_employees FROM EMPLOYEE GROUP BY department_code.emp_fname ORDER BY total_employees DESC NULLS LAST LIMIT 1
SELECT dept_code, COUNT(*) AS num_professors FROM PROFESSOR WHERE prof_high_degree = 'Ph.D.' GROUP BY dept_code
SELECT dept_code, COUNT(*) AS num_professors FROM PROFESSOR WHERE prof_high_degree = 'Yes' GROUP BY dept_code
SELECT dept_code, COUNT(*) AS total_students FROM STUDENT GROUP BY dept_code
SELECT dept_code, COUNT(*) AS total_students FROM STUDENT GROUP BY dept_code
SELECT dept_code, COUNT(*) AS total_hours FROM STUDENT GROUP BY dept_code
SELECT dept_code, COUNT(*) AS total_hours FROM STUDENT GROUP BY dept_code
SELECT dept_code, MAX(stu_gpa) AS max_gpa, AVG(stu_gpa) AS avg_gpa, MIN(stu_gpa) AS min_gpa FROM STUDENT GROUP BY dept_code
SELECT dept_code, MAX(stu_gpa) AS max_gpa, MIN(stu_gpa) AS min_gpa, AVG(stu_gpa) AS avg_gpa FROM STUDENT GROUP BY dept_code
SELECT COUNT(*) AS total_schools FROM DEPARTMENT
SELECT COUNT(DISTINCT SCHOOL_CODE) AS school_count FROM DEPARTMENT
SELECT COUNT(DISTINCT class_code) AS number_of_classes FROM CLASS
SELECT COUNT(DISTINCT class_code) AS num_classes FROM CLASS
SELECT COUNT(*) AS total_courses FROM CLASS
SELECT COUNT(DISTINCT class_code) AS num_class_codes FROM CLASS
SELECT COUNT(*) AS total_departments FROM DEPARTMENT
SELECT COUNT(DISTINCT dept_code) AS number_of_departments FROM DEPARTMENT
SELECT COUNT(*) AS total_sections FROM CLASS WHERE crs_code = 'ACCT-211'
SELECT COUNT(DISTINCT CLASS_SECTION) AS num_sections FROM CLASS WHERE CRS_CODE = 'ACCT-211'
SELECT COUNT(*) AS total_employees FROM EMPLOYEE
SELECT COUNT(*) AS total_employees FROM EMPLOYEE
SELECT COUNT(*) FROM PROFESSOR WHERE PROF_HIGH_DEGREE = 'Ph.D.'
SELECT COUNT(*) AS total_professors FROM PROFESSOR WHERE PROF_HIGH_DEGREE = 'Ph.D.'
SELECT DEPARTMENT.DEPT_NAME FROM DEPARTMENT ORDER BY DEPARTMENT.DEPT_NAME
SELECT DEPARTMENT.DEPT_NAME FROM DEPARTMENT ORDER BY DEPARTMENT.DEPT_NAME ASC NULLS FIRST
SELECT DISTINCT class_code FROM CLASS WHERE class_room = 'KLR209'
SELECT DISTINCT class_code FROM CLASS WHERE class_room = 'KLR209'
SELECT EMPLOYEE.EMP_FNAME FROM EMPLOYEE WHERE EMPLOYEE.EMP_JOBCODE = 'PROF' ORDER BY EMPLOYEE.EMP_DOB
SELECT EMPLOYEE.EMP_FNAME FROM EMPLOYEE WHERE EMPLOYEE.EMP_JOBCODE = 'Professor' ORDER BY EMPLOYEE.EMP_DOB
SELECT EMPLOYEE.EMP_FNAME, EMPLOYEE.EMP_LNAME FROM EMPLOYEE ORDER BY EMPLOYEE.EMP_HIREDATE ASC NULLS FIRST LIMIT 1
SELECT EMPLOYEE.EMP_FNAME, EMPLOYEE.EMP_LNAME FROM EMPLOYEE ORDER BY EMPLOYEE.EMP_DOB ASC NULLS FIRST LIMIT 1
SELECT s.stu_fname, s.stu_lname, s.stu_gpa FROM STUDENT AS s WHERE s.stu_gpa > 3 ORDER BY s.stu_dob ASC NULLS FIRST LIMIT 1
SELECT s.stu_fname, s.stu_lname, MAX(s.stu_gpa) AS max_gpa FROM STUDENT AS s WHERE s.stu_gpa > 3 AND s.stu_num = (SELECT MIN(stu_num) FROM STUDENT) GROUP BY s.stu_fname, s.stu_lname
SELECT e.emp_fname FROM EMPLOYEE AS e LEFT JOIN teaches ON e.emp_num = t.emp_num WHERE t.emp_num IS NULL
SELECT EMPLOYEE.EMP_FNAME FROM EMPLOYEE WHERE EMPLOYEE.EMP_JOBCODE <> 'INSTRUCTOR'
SELECT COUNT(*) FROM PROFESSOR WHERE (PROF_HIGH_DEGREE ILIKE '%Ph.D.%' OR PROF_HIGH_DEGREE ILIKE '%MA%')
SELECT COUNT(*) FROM PROFESSOR WHERE PROF_HIGH_DEGREE IN ('Ph.D.', 'Masters')
SELECT STUDENT.STU_FNAME, STUDENT.STU_GPA, STUDENT.STU_PHONE FROM STUDENT ORDER BY STUDENT.STU_GPA DESC NULLS LAST LIMIT 5
SELECT STUDENT.STU_FNAME, STUDENT.STU_GPA, STUDENT.STU_PHONE FROM STUDENT ORDER BY STUDENT.STU_GPA DESC NULLS LAST LIMIT 5
SELECT s.stu_fname, s.stu_gpa FROM STUDENT AS s WHERE s.stu_gpa < (SELECT AVG(stu_gpa) FROM STUDENT)
SELECT s.stu_fname, s.stu_gpa FROM STUDENT AS s WHERE s.stu_gpa < (SELECT AVG(stu_gpa) FROM STUDENT)
SELECT COUNT(*) AS total_club FROM club
SELECT COUNT(*) AS total_clubbs FROM club
SELECT DISTINCT club.region FROM club ORDER BY club.region ASC NULLS FIRST
SELECT region FROM club ORDER BY region ASC NULLS FIRST
SELECT AVG(gold) AS average_gold FROM club_rank
SELECT AVG(Gold) AS average_gold FROM club_rank
SELECT competition.competition_type, competition.country FROM competition ORDER BY competition.competition_type, competition.country
SELECT competition.competition_type, competition.country FROM competition ORDER BY competition.competition_type, competition.country
SELECT DISTINCT competition.year FROM competition WHERE NOT competition.competition_type ILIKE '%tournament%' ORDER BY competition.year
SELECT DISTINCT competition.year FROM competition WHERE competition.competition_type <> 'tournament'
SELECT MIN(Silver) AS Min_Silver, MAX(Silver) AS Max_Silver FROM club_rank
SELECT MIN(Silver) AS Min_Silver, MAX(Silver) AS Max_Silver FROM club_rank
SELECT COUNT(*) FROM club_rank WHERE total < 10
SELECT COUNT(*) FROM club_rank WHERE total < 10
SELECT c.name FROM club AS c ORDER BY CAST(c.start_year AS INT) ASC NULLS FIRST
SELECT c.name FROM club AS c JOIN (SELECT MIN(start_year) AS min_start_year FROM club) AS m ON TO_NUMBER(c.start_year, 'YYYY') >= m.min_start_year
SELECT c.name FROM club AS c ORDER BY c.name DESC NULLS LAST
SELECT club.name FROM club ORDER BY club.name DESC NULLS LAST
SELECT p.position, AVG(p.points) AS average_points FROM player AS p GROUP BY p.position
SELECT p.position, AVG(p.points) AS average_points FROM player AS p GROUP BY p.position
SELECT p.position, AVG(p.points) AS average_points FROM player AS p GROUP BY p.position HAVING AVG(p.points) > 20 ORDER BY p.position
SELECT p.position FROM player AS p GROUP BY p.position HAVING AVG(p.points) > 20
SELECT competition.competition_type, COUNT(*) AS competition_count FROM competition GROUP BY competition.competition_type
SELECT competition_type, COUNT(competition_id) AS competition_count FROM competition GROUP BY competition_type
SELECT competition_type FROM competition GROUP BY competition_type ORDER BY COUNT(competition_type) DESC NULLS LAST LIMIT 1
SELECT competition.competition_type FROM competition GROUP BY competition.competition_type ORDER BY COUNT(*) DESC NULLS LAST LIMIT 1
SELECT competition.competition_type FROM competition GROUP BY competition.competition_type HAVING COUNT(competition.competition_id) > 5
SELECT competition.competition_type, COUNT(competition.competition_id) AS competition_count FROM competition GROUP BY competition.competition_type HAVING COUNT(competition.competition_id) >= 5 ORDER BY competition_count DESC NULLS LAST
SELECT c.name FROM club AS c LEFT JOIN player ON c.club_id = p.club_id WHERE p.start_year IS NULL
SELECT c.name FROM club AS c LEFT JOIN player ON c.club_id = p.club_id WHERE p.start_year IS NULL
SELECT p.position FROM player AS p WHERE p.points > 20 AND p.points < 10
SELECT p.name, p.position FROM player AS p WHERE p.points > 20 AND p.points < 10
SELECT SUM(Points) AS total_points FROM player
SELECT SUM(player_id.points) AS total_points FROM player
SELECT COUNT(DISTINCT player.position) AS number_of_positions FROM player
SELECT COUNT(DISTINCT player.position) AS number_of_positions FROM player
SELECT p.name FROM player AS p WHERE p.points > (SELECT AVG(points) FROM player)
SELECT p.name FROM player AS p WHERE p.points > (SELECT AVG(points) FROM player)
SELECT p.position, COUNT(*) AS player_count FROM player AS p WHERE p.points < 30 GROUP BY p.position
SELECT p.position, COUNT(*) AS player_count FROM player AS p WHERE p.points < 30 GROUP BY p.position
SELECT competition.country, COUNT(competition.competition_id) AS num_competitions FROM competition WHERE competition.competition_type ILIKE '%tournament%' GROUP BY competition.country ORDER BY num_competitions DESC NULLS LAST LIMIT 1
SELECT c.country FROM competition AS c GROUP BY c.country ORDER BY COUNT(c.competition_id) DESC NULLS LAST LIMIT 1
SELECT DISTINCT competition.country FROM competition WHERE competition.competition_type ILIKE '%Friendly%' AND competition.competition_type ILIKE '%Tournament%'
SELECT DISTINCT competition.country FROM competition WHERE competition.competition_type ILIKE '%friendly%' AND competition.competition_type ILIKE '%tournament%'
SELECT DISTINCT c.country FROM competition AS c WHERE NOT c.competition_type ILIKE '%Friendly%'
SELECT DISTINCT competition.country FROM competition WHERE competition_type <> 'friendly'
SELECT SUM(furniture.num_of_component) AS total_components FROM furniture
SELECT furniture.name, furniture.furniture_id FROM furniture ORDER BY furniture.market_rate DESC NULLS LAST LIMIT 1
SELECT SUM(furniture.market_rate) AS total_market_rate FROM furniture ORDER BY furniture.market_rate DESC NULLS LAST LIMIT 2
SELECT furniture.name, SUM(furniture_component.num_of_component) AS total_component_amount FROM furniture JOIN furniture_component ON furniture.furniture_id = furniture_component.furniture_id GROUP BY furniture.name HAVING SUM(furniture_component.num_of_component) > 10
SELECT f.name, f.num_of_component FROM furniture AS f WHERE f.market_rate = (SELECT MIN(f2.market_rate) FROM furniture AS f2)
SELECT m.name, TO_CHAR(TO_TIMESTAMP(m.open_year), 'YYYY') AS open_year FROM manufacturer AS m WHERE m.num_of_shops = (SELECT MAX(num_of_shops) FROM manufacturer)
SELECT AVG(manufacturer.num_of_factories) AS average_factories FROM manufacturer WHERE manufacturer.num_of_shops > 20
SELECT m.manufacturer_id, m.name FROM manufacturer AS m ORDER BY m.open_year
SELECT manufacturer.name, manufacturer.open_year FROM manufacturer WHERE (manufacturer.num_of_factories < 10 OR manufacturer.num_of_shops > 10)
SELECT AVG(Num_of_Factories) AS average_factories, MAX(Num_of_Shops) AS max_shops FROM manufacturer WHERE Open_Year < 1990
SELECT furniture.name, SUM(furniture.market_rate) AS total_market_share FROM furniture WHERE NOT furniture.num_of_component IN (SELECT component.furniture_id FROM furniture) GROUP BY furniture.name
SELECT first_name, last_name, salary FROM employees WHERE salary < 6000
SELECT first_name, last_name, salary FROM employees WHERE salary < 6000
SELECT e.first_name, d.phone_number FROM employees JOIN employees AS d ON e.department_id = d.department_id WHERE e.last_name ILIKE '%McEwen%'
SELECT e.first_name, d.phone_number FROM employees JOIN employees AS d ON e.department_id = d.department_id WHERE e.last_name ILIKE '%McEwen%'
SELECT first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id FROM employees WHERE department_id IS NULL
SELECT first_name, last_name FROM employees WHERE department_id IS NULL
SELECT departments.department_name FROM departments WHERE departments.department_name ILIKE '%Marketing%'
SELECT departments.department_name FROM departments WHERE departments.department_name ILIKE '%Marketing%' ORDER BY departments.department_name
SELECT employees.hire_date FROM employees WHERE NOT employees.first_name ILIKE '%Mary%' AND NOT employees.first_name ILIKE '%mary%'
SELECT employees.hire_date FROM employees WHERE NOT employees.first_name ILIKE '%M%' AND NOT employees.first_name ILIKE '%m%'
SELECT e.first_name, e.last_name, e.hire_date, e.salary, d.department_id FROM employees JOIN employees AS d ON e.department_id = d.department_id WHERE NOT first_name ILIKE '%M%'
SELECT e.first_name, e.last_name, e.hire_date, e.salary, d.department_id FROM employees JOIN employees AS d ON e.department_id = d.department_id WHERE NOT e.first_name ILIKE '%Michael%'
SELECT e.first_name, e.last_name, TO_CHAR(e.hire_date, 'DD-Mon-YYYY') AS hire_date, e.salary, d.phone_number FROM employees JOIN employees AS d ON e.department_id = d.department_id WHERE NOT first_name ILIKE '%M%' ORDER BY d.phone_number ASC NULLS FIRST
SELECT e.first_name, e.last_name, e.hire_date, e.salary, e.department_id FROM employees AS e WHERE NOT e.first_name ILIKE '%M%' ORDER BY e.department_id ASC NULLS FIRST
SELECT COUNT(*) AS total_employees FROM employees WHERE salary BETWEEN 8000 AND 12000
SELECT employees.phone_number FROM employees WHERE employees.salary BETWEEN 8000 AND 12000
SELECT employees.employee_id, employees.first_name, employees.last_name, employees.email, employees.phone_number, employees.hire_date, employees.job_id, employees.salary, employees.commission_pct, employees.manager_id, employees.department_id FROM employees WHERE (employees.salary BETWEEN 8000 AND 12000) AND ((employees.commission_pct IS NOT NULL) OR (employees.department_id != 40))
SELECT employees.first_name, employees.last_name, employees.salary, employees.commission_pct, employees.department_id FROM employees WHERE (employees.salary BETWEEN 8000 AND 12000) AND ((employees.commission_pct IS NOT NULL) OR (employees.department_id != 40))
SELECT e.first_name, e.last_name, e.salary FROM employees AS e WHERE e.commission_pct IS NULL
SELECT first_name, last_name, salary FROM employees WHERE commission_pct IS NULL
SELECT employees.first_name, employees.last_name, employees.salary FROM employees WHERE employees.first_name ILIKE '%m%'
SELECT e.first_name, e.last_name, e.salary FROM employees AS e WHERE e.first_name ILIKE '%m'
SELECT employees.employee_id, employees.hire_date FROM employees WHERE employees.hire_date BETWEEN '2007-11-05' AND '2009-07-05'
SELECT e.employee_id, TO_DATE(CAST(e.hire_date AS TEXT), 'YYYYMMDD') AS hire_date FROM employees AS e WHERE TO_DATE(CAST(e.hire_date AS TEXT), 'YYYYMMDD') BETWEEN '2007-11-05' AND '2009-07-05'
SELECT employees.first_name, employees.last_name FROM employees WHERE employees.department_id IN (70, 90)
SELECT first_name, last_name FROM employees WHERE department_id IN (70, 90)
SELECT e.first_name, e.last_name, m.phone_number, e.salary FROM employees AS e JOIN managers ON e.manager_id = m.manager_id
SELECT e.first_name, e.last_name, m.salary AS manager_salary, m.manager_id AS manager_id FROM employees AS e JOIN employees AS m ON e.manager_id = m.employee_id
SELECT employees.first_name, employees.last_name, employees.hire_date FROM employees WHERE employees.hire_date < '2002-06-21' ORDER BY employees.hire_date
SELECT first_name, last_name FROM employees WHERE hire_date < '2002-06-21'
SELECT employees.first_name, employees.last_name, employees.salary FROM employees WHERE (employees.first_name ILIKE 'D%' OR employees.first_name ILIKE 'S%') ORDER BY employees.salary DESC NULLS LAST
SELECT employees.first_name, employees.last_name, employees.salary FROM employees WHERE (employees.first_name ILIKE 'D%' OR employees.first_name ILIKE 'S%') ORDER BY employees.salary DESC NULLS LAST
SELECT first_name, last_name FROM employees WHERE hire_date > '1987-09-07'
SELECT first_name, last_name FROM employees WHERE hire_date > '1987-09-07'
SELECT j.job_title FROM jobs AS j WHERE j.min_salary > 9000
SELECT j.job_title FROM jobs AS j WHERE j.max_salary > 9000
SELECT j.job_title, (MAX(j.max_salary) - MIN(j.min_salary)) AS salary_range FROM jobs AS j WHERE j.max_salary BETWEEN 12000 AND 18000 GROUP BY j.job_title
SELECT j.job_title, TO_CHAR(AVG(s.min_salary), 'FM999990D00') AS average_salary FROM salaries JOIN jobs AS j ON s.job_id = j.job_id WHERE j.max_salary BETWEEN 12000 AND 18000 GROUP BY j.job_title
SELECT employees.email FROM employees WHERE employees.commission_pct IS NULL AND employees.salary BETWEEN 7000 AND 12000 AND employees.department_id = 50
SELECT employees.email FROM employees WHERE employees.commission_pct IS NULL AND employees.salary BETWEEN 7000 AND 12000 AND employees.department_id = 50
SELECT e.employee_id, p.start_date, LAG(p.end_date) OVER (PARTITION BY e.employee_id ORDER BY p.start_date NULLS FIRST) AS previous_position_end_date FROM job_history AS e JOIN position_history ON e.employee_id = p.employee_id
SELECT e.employee_id, j.job_id, r.end_date FROM job_history AS e JOIN role_history ON e.employee_id = fh.employee_id JOIN jobs ON fh.job_id = j.job_id ORDER BY e.employee_id
SELECT e.department_id, COUNT(e.employee_id) AS employee_count FROM employees AS e GROUP BY e.department_id HAVING COUNT(e.employee_id) > 10 AND NOT commission_pct IS NULL
SELECT DISTINCT employees.department_id FROM employees WHERE NOT employees.commission_pct IS NULL GROUP BY employees.department_id HAVING COUNT(employees.employee_id) > 10
SELECT DISTINCT managers.department_id FROM (SELECT employees.department_id, COUNT(employees.employee_id) AS employee_count FROM employees WHERE employees.job_id = 'Manager' GROUP BY employees.department_id HAVING COUNT(employees.employee_id) >= 4) AS managers
SELECT DISTINCT employees.department_id FROM employees WHERE NOT employees.manager_id IS NULL GROUP BY employees.department_id HAVING COUNT(employees.manager_id) > 3
SELECT departments.department_id, AVG(employees.salary) AS average_salary FROM employes JOIN employees ON employes.department_id = departments.department_id GROUP BY departments.department_id
SELECT AVG(employees.salary) AS average_salary FROM employees WHERE NOT employees.commission_pct IS NULL
SELECT locations.country_id, COUNT(locations.city) AS city_count FROM locations GROUP BY locations.country_id
SELECT COUNTRY_ID, COUNT(CITY) AS city_count FROM locations GROUP BY COUNTRY_ID
SELECT r.EMPLOYEE_ID FROM (SELECT e.EMPLOYEE_ID, COUNT(j.JOB_ID) AS COUNT_JOBS FROM job_history AS e JOIN job_history ON e.EMPLOYEE_ID = j.EMPLOYEE_ID GROUP BY e.EMPLOYEE_ID HAVING COUNT(j.JOB_ID) > 2) AS r JOIN (SELECT e.EMPLOYEE_ID, (SELECT COUNT(*) FROM job_history WHERE h.START_DATE < e.END_DATE AND h.END_DATE > e.START_DATE) AS DAY_Count FROM job_history AS e GROUP BY e.EMPLOYEE_ID HAVING COUNT(*) > 1) AS d ON r.EMPLOYEE_ID = d.EMPLOYEE_ID WHERE d.Day_Count > 300
SELECT r.EMPLOYEE_ID FROM (SELECT e.EMPLOYEE_ID, COUNT(j.JOB_ID) AS COUNT_JOBS FROM job_history AS e JOIN job_history ON e.EMPLOYEE_ID = j.EMPLOYEE_ID GROUP BY e.EMPLOYEE_ID HAVING COUNT(j.JOB_ID) > 1) AS r JOIN (SELECT j.EMPLOYEE_ID, (j.END_DATE - j.START_DATE) / (24 * 60 * 60) AS DAY FROM job_history WHERE (j.END_DATE - j.START_DATE) / (24 * 60 * 60)) AS d ON r.EMPLOYEE_ID = d.EMPLOYEE_ID HAVING d.DAYS > 300
SELECT employee_id FROM job_history GROUP BY employee_id HAVING COUNT(job_id) >= 2
SELECT DISTINCT r.employee_id FROM (SELECT eh.employee_id, COUNT(eh.job_id) AS job_count FROM job_history AS eh GROUP BY eh.employee_id HAVING COUNT(eh.job_id) >= 2) AS r
SELECT e.first_name, e.last_name FROM employees AS e WHERE e.salary > (SELECT salaries.salary FROM employees AS salaries WHERE salaries.employee_id = 163)
SELECT e.first_name, e.last_name FROM employees AS e WHERE e.salary > (SELECT salaries.salary FROM employees AS salaries WHERE salaries.employee_id = 163)
SELECT employees.department_id, MIN(employees.salary) AS min_salary FROM employees GROUP BY employees.department_id
SELECT d.first_name, MIN(e.salary) AS min_salary FROM employees JOIN employees AS d ON e.department_id = d.department_id GROUP BY d.first_name
SELECT e.first_name, e.last_name, d.department_id FROM employees AS e JOIN (SELECT department_id, MIN(salary) AS min_salary FROM employees GROUP BY department_id) AS d ON e.salary = d.min_salary
SELECT e.first_name, e.last_name, d.department_id FROM employees AS e JOIN (SELECT department_id, MIN(salary) AS min_salary FROM employees GROUP BY department_id) AS d ON e.salary = d.min_salary AND e.department_id = d.department_id
SELECT employees.employee_id FROM employees WHERE employees.salary > (SELECT AVG(salary) FROM employees)
SELECT e.employee_id FROM employees AS e WHERE e.salary > (SELECT AVG(salary) FROM employees)
SELECT e.employee_id, e.salary FROM employees AS e WHERE first_name ILIKE '%Payam%'
SELECT e.employee_id, e.salary FROM employees AS e WHERE e.first_name ILIKE '%Payam%' AND e.last_name ILIKE '%Payam%'
SELECT d.department_name, m.manager_first_name, m.manager_last_name, CAST(AVG(e.employee_salary) AS FLOAT) / NULLIF(MAX(e.employee_salary), 0) AS average_salary_to_max_salary_ratio FROM employees e JOIN departments d ON e.department_id = d.department_id JOIN managers m ON m.manager_id = e.manager_id WHERE d.department_name ilike '%Marketing%' GROUP BY d.department_name, m.manager_first_name, m.manager_last_name
SELECT departments.department_name FROM departments WHERE departments.department_name ILIKE '%Marketing%' ORDER BY departments.department_name
SELECT employee_id FROM job_history GROUP BY employee_id HAVING COUNT(job_id) >= 2
SELECT DISTINCT r.EMPLOYEE_ID FROM (SELECT e.EMPLOYEE_ID FROM job_history AS e GROUP BY e.EMPLOYEE_ID HAVING COUNT(e.EMPLOYEE_ID) >= 2) AS r JOIN role_history ON r.EMPLOYEE_ID = rh.EMPLOYEE_ID
SELECT DISTINCT employees.department_id FROM employees WHERE (SELECT COUNT(*) FROM employees WHERE employees.manager_id = employees.employee_id) >= 4
SELECT DISTINCT managers.department_id FROM (SELECT employees.manager_id, COUNT(employees.employee_id) AS employee_count FROM employees GROUP BY employees.manager_id HAVING COUNT(employees.employee_id) >= 4) AS managers JOIN employees ON managers.manager_id = employees.employee_id
SELECT employees.job_id FROM employees WHERE employees.salary > 8000
SELECT employees.employee_id FROM employees WHERE employees.salary > 8000 GROUP BY employees.employee_id
SELECT employees.first_name, employees.last_name, employees.salary FROM employees WHERE employees.salary >= (SELECT MIN(employees.salary) FROM employees) AND employees.salary <= 2500
SELECT first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id FROM employees WHERE salary > MIN(salary) AND salary < 2500
SELECT e.employee_id FROM employees AS e WHERE NOT e.manager_id BETWEEN 100 AND 200
SELECT e.employee_id FROM employees JOIN employees AS d ON e.department_id = d.department_id WHERE NOT e.manager_id BETWEEN 100 AND 200
SELECT e.first_name, e.last_name, e.hire_date FROM employees AS e JOIN employees AS c ON e.department_id = c.department_id WHERE c.first_name ILIKE '%Clara%'
SELECT e.first_name, e.last_name, e.hire_date FROM employees AS e JOIN employees AS c ON e.department_id = c.department_id WHERE c.first_name ILIKE '%Clara%'
SELECT e.first_name, e.last_name, e.hire_date FROM employees AS e WHERE e.department_id = (SELECT department_id FROM employees WHERE first_name ILIKE '%Clara%' AND last_name ILIKE '%Clara%') AND NOT e.first_name ILIKE '%Clara%' AND NOT e.last_name ILIKE '%Clara%'
SELECT e.first_name, e.last_name, e.hire_date FROM employees AS e JOIN employees AS c ON e.department_id = c.department_id WHERE NOT e.first_name ILIKE '%Clara%' AND NOT e.first_name IS NULL
SELECT e.employee_id, e.first_name, e.last_name FROM employees JOIN employees AS d ON e.department_id = d.department_id WHERE e.first_name ILIKE '%T%' OR e.last_name ILIKE '%T%'
SELECT e.employee_id, e.first_name, e.last_name FROM employees JOIN employees AS d ON e.department_id = d.department_id WHERE e.first_name ILIKE '%T%'
SELECT e.employee_id, e.first_name, e.last_name, e.salary FROM employees AS e WHERE e.salary > (SELECT AVG(salary) FROM employees) AND EXISTS(SELECT 1 FROM employees AS j WHERE j.first_name ILIKE '%J%' AND j.department_id = e.department_id)
SELECT e.employee_id, e.first_name, e.last_name, e.salary FROM employees e WHERE e.salary > (SELECT AVG(salary) FROM employees) AND EXISTS (SELECT 1 FROM employees d WHERE d.department_id = e.department_id AND d.first_name ilike '%J%')
SELECT e.employee_id, j.job_id FROM employees e JOIN jobs j ON e.job_id = j.job_id WHERE e.salary < (SELECT MIN(e2.salary) FROM employees e2 WHERE e2.job_title ilike '%MK_MAN%') AND j.job_title not ilike '%MK_MAN%'
SELECT e.employee_id, j.job_id FROM employees e JOIN jobs j ON e.job_id = j.job_id WHERE e.salary < (SELECT MIN(salary) FROM employees WHERE job_name ilike '%MK_MAN%') AND j.job_id not ilike '%MK_MAN%'
SELECT e.employee_id, e.first_name, e.last_name, j.hire_date, e.salary FROM employees AS e JOIN jobs ON e.job_id = j.job_id WHERE e.salary > (SELECT MAX(e2.salary) FROM employees AS e2 WHERE e2.hire_date ILIKE '%Pu_Man%') AND NOT j.hire_date ILIKE '%Pu_Man%' ORDER BY e.employee_id
SELECT e.employee_id, e.first_name, e.last_name, j.hire_date FROM employees AS e JOIN jobs ON e.job_id = j.job_id WHERE j.hire_date = 'PU_MAN' AND e.salary > (SELECT MAX(salary) FROM employees)
SELECT e.department_id, COUNT(e.employee_id) AS employee_count, SUM(e.salary) AS total_salary FROM employees AS e GROUP BY e.department_id HAVING COUNT(e.employee_id) >= 2
SELECT departments.department_id, COUNT(employees.employee_id) AS employee_count, SUM(employees.salary) AS total_salary FROM employees JOIN employees ON employees.department_id = departments.department_id GROUP BY departments.department_id HAVING COUNT(employees.employee_id) > 2
SELECT e.first_name, e.last_name, e.email, e.phone_number, e.hire_date, e.job_id, e.salary, e.commission_pct, e.manager_id, e.department_id FROM employees AS e WHERE NOT e.employee_id IN (SELECT employee_id FROM previous_jobs)
SELECT e.first_name, e.last_name FROM employees AS e WHERE NOT e.employee_id IN (SELECT m.employee_id FROM managers)
SELECT e.department_id, e.first_name, e.last_name, MAX(e.salary) AS max_salary FROM employees AS e GROUP BY e.department_id, e.first_name, e.last_name
SELECT e.department_id, e.first_name, e.last_name, e.salary AS MAX_SALARY FROM employees AS e WHERE e.salary = (SELECT MAX(e2.salary) FROM employees AS e2 WHERE e2.department_id = e.department_id)
SELECT song.song_name FROM song ORDER BY song.releasedate DESC NULLS LAST LIMIT 1
SELECT song_name FROM song ORDER BY releasedate DESC NULLS LAST LIMIT 1
SELECT files.f_id FROM files WHERE duration = (SELECT MAX(duration) FROM files)
SELECT files.f_id FROM files ORDER BY CAST(files.duration AS FLOAT) DESC NULLS LAST LIMIT 1
SELECT song.song_name FROM song WHERE song.languages ILIKE '%English%'
SELECT song.song_name FROM song WHERE languages ILIKE '%English%' ORDER BY song.song_name
SELECT f_id FROM files WHERE formats ilike '%mp3%'
SELECT f_id FROM files WHERE formats ilike '%mp3%'
SELECT COUNT(*) FROM files WHERE duration = '4'
SELECT COUNT(*) AS total_songs FROM files WHERE duration ~ '^4$$$$$$$sh$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
SELECT COUNT(*) FROM artist WHERE country = 'Bangladesh'
SELECT COUNT(*) FROM artist WHERE country = 'Bangladesh'
SELECT files.formats FROM files GROUP BY files.formats ORDER BY COUNT(files.formats) DESC NULLS LAST LIMIT 1
SELECT formats FROM files GROUP BY formats ORDER BY COUNT(f_id) DESC NULLS LAST LIMIT 1
SELECT artist.artist_name FROM artist WHERE artist.country = 'UK' AND artist.preferred_genre = 'english'
SELECT artist.artist_name FROM artist WHERE artist.country = 'UK' AND artist.preferred_genre = 'english'
SELECT f_id FROM files WHERE formats ILIKE '%mp4%' AND CAST(file_size AS FLOAT) < 1000
SELECT f_id FROM files WHERE formats ILIKE '%mp4%' AND CAST(file_size AS FLOAT) < 1000
SELECT gender, COUNT(*) AS total_artists FROM artist GROUP BY gender
SELECT gender, COUNT(*) AS COUNT FROM artist GROUP BY gender
SELECT languages, AVG(rating) AS average_rating FROM song GROUP BY languages
SELECT languages, AVG(rating) AS average_rating FROM song GROUP BY languages
SELECT files.formats, COUNT(DISTINCT files.artist_name) AS num_artists FROM files GROUP BY files.formats
SELECT files.formats AS file_format, COUNT(*) AS number_of_files FROM files GROUP BY files.formats
SELECT DISTINCT song.song_name FROM song WHERE song.resolution > (SELECT MIN(song.resolution) FROM song WHERE song.languages ILIKE '%Englishish%')
SELECT song.song_name FROM song WHERE song.resolution > (SELECT AVG(song.resolution) FROM song WHERE song.languages ILIKE '%Englishish%') GROUP BY song.song_name
SELECT s.song_name FROM song AS s WHERE s.genre_is = 'blues' AND EXISTS(SELECT 1 FROM song AS s2 WHERE s2.rating < s.rating)
SELECT s.song_name FROM song AS s WHERE s.genre_is <> 'blues' AND EXISTS(SELECT 1 FROM song AS sb WHERE sb.genre_is = 'blues' AND sb.rating < s.rating)
SELECT genre.g_name, genre.rating AS FLOAT FROM genre ORDER BY genre.g_name ASC NULLS FIRST
SELECT genre.g_name, genre.rating AS FLOAT FROM genre ORDER BY genre.g_name ASC NULLS FIRST
SELECT song.song_name FROM song ORDER BY song.resolution
SELECT song.song_name FROM song ORDER BY song.resolution
SELECT f_id FROM files WHERE formats ILIKE '%mp4%' OR CAST(duration AS FLOAT) > 720
SELECT f_id FROM files WHERE formats ILIKE '%mp4%' OR CAST(duration AS INT) > 720
SELECT languages, COUNT(*) AS frequency FROM song GROUP BY languages ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT song.languages FROM song GROUP BY song.languages ORDER BY COUNT(song.languages) DESC NULLS LAST
SELECT languages, COUNT(*) AS frequency FROM song WHERE resolution > 500 GROUP BY languages ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT song.languages, song.artist_name FROM song WHERE song.resolution > 500 GROUP BY song.languages, song.artist_name ORDER BY song.languages
SELECT artist_name FROM artist WHERE gender = 'Male' AND country = 'UK'
SELECT artist.artist_name FROM artist WHERE gender = 'M' AND country = 'Britain'
SELECT song.song_name FROM song WHERE (song.genre_is = 'modern' OR song.languages = 'English')
SELECT song.song_name FROM song WHERE (song.genre_is ILIKE '%modern%' OR song.languages ILIKE '%Englishish%') AND NOT song.genre_is IS NULL AND NOT song.languages IS NULL
SELECT artist.artist_name FROM artist WHERE artist.country = 'UK' AND artist.preferred_genre = 'english'
SELECT artist.artist_name FROM artist WHERE artist.country = 'UK' AND artist.preferred_genre = 'english'
SELECT AVG(song.rating), AVG(song.resolution) FROM song WHERE song.country = 'Bangladesh'
SELECT AVG(song.rating), AVG(song.resolution) FROM song WHERE genre_is ILIKE '%bangla%'
SELECT song.song_name FROM song WHERE song.languages ILIKE '%English%' AND song.rating < (SELECT MIN(song.rating) FROM song)
SELECT s.song_name FROM song AS s WHERE s.languages ILIKE '%English%' AND s.rating < (SELECT MIN(artist_name) FROM song WHERE languages ILIKE '%English%')
SELECT s.song_name, a.artist_name, TO_CHAR(s.releasedate, 'YYYY-MM-DD') AS released_date FROM song JOIN song AS a ON s.f_id = a.f_id WHERE s.rating >= 8 AND s.resolution > (SELECT MIN(resolution) FROM song WHERE rating < 8)
SELECT s1.f_id FROM song AS s1 JOIN song AS s2 ON (s1.resolution > s2.resolution AND s2.rating < 8) WHERE NOT s1.f_id IS NULL
SELECT s.song_name, s.artist_name, s.genre_is, AVG(s.resolution) AS average_resolution FROM song AS s WHERE s.genre_is = 'modern' AND s.resolution > (SELECT AVG(resolution) FROM song WHERE genre_is = 'modern') GROUP BY s.song_name, s.artist_name, s.genre_is
SELECT s.song_name FROM song AS s WHERE s.genre_is = 'modern' AND s.resolution > (SELECT AVG(resolution) FROM song WHERE genre_is = 'modern')
SELECT s.song_name, s.genre_is, a.artist_name FROM song JOIN song AS a ON s.f_id = a.f_id WHERE languages ILIKE '%English%' ORDER BY rating DESC NULLS LAST
SELECT s.f_id AS id, g.genre_is AS genre, a.artist_name AS artist FROM song JOIN genre ON s.genre_is = g.genre_is JOIN song AS a ON s.artist_name = a.artist_name WHERE languages ILIKE '%Englishish%' ORDER BY rating ASC NULLS FIRST
SELECT song.artist_name FROM song WHERE song.languages ILIKE '%English%' AND song.rating <= 8
SELECT DISTINCT song.artist_name FROM song WHERE song.languages ILIKE '%English%' AND song.rating <= 8
SELECT artist_name FROM artist WHERE country = 'Bangladesh' AND preferred_genre > 7
SELECT artist.artist_name FROM artist WHERE artist.country = 'Bangladesh' AND NOT EXISTS(SELECT 1 FROM artist WHERE album.gender = artist.gender GROUP BY album.gender HAVING AVG(album.preferred_genre) > 7)
SELECT yearid, COUNT(player_id) AS player_count FROM hall_of_fame GROUP BY yearid ORDER BY yearid NULLS FIRST
SELECT yearid, COUNT(player_id) AS player_count FROM hall_of_fame GROUP BY yearid
SELECT AVG(attendance) AS average_attendance FROM home_game WHERE year = 2019
SELECT AVG(games) AS average_games FROM home_game WHERE year = 2017
SELECT COUNT(*) FROM park WHERE state = 'NY'
SELECT COUNT(park_id) AS park_count FROM park WHERE state = 'NY'
SELECT p.birth_country, COUNT(*) AS player_count FROM player AS p GROUP BY p.birth_country ORDER BY player_count ASC LIMIT 3
SELECT birth_country FROM player GROUP BY birth_country ORDER BY COUNT(player_id) ASC LIMIT 3
SELECT p.name_first, p.name_last FROM player AS p WHERE p.birth_year IS NULL AND p.birth_month IS NULL AND p.birth_day IS NULL AND p.death_year IS NULL AND p.death_month IS NULL AND p.death_day IS NULL
SELECT player.name_first, player.name_last FROM player WHERE (player.birth_year IS NULL OR player.birth_year = 0) AND (player.birth_month IS NULL OR player.birth_month = 0) AND (player.birth_day IS NULL OR player.birth_day = 0) AND (player.death_year IS NULL OR player.death_year = 0) AND (player.death_month IS NULL OR player.death_month = 0)
SELECT COUNT(*) FROM player WHERE birth_country = 'USA' AND bats = 'R'
SELECT COUNT(*) FROM player WHERE birth_country = 'USA' AND bats = 'R'
SELECT p.name_first, p.name_last FROM player AS p WHERE p.weight > 220 OR p.height < 75
SELECT p.name_first, p.name_last FROM player AS p WHERE p.weight > 220 OR p.height < 75
-1
-1
SELECT COUNT(*) FROM postseason WHERE year = 1885 AND ties = 1
SELECT COUNT(*) AS total_ties FROM postseason WHERE year = 1885 AND ties = 1
SELECT salary.player_id, salary.salary FROM salary WHERE salary.year = 2001 ORDER BY salary.salary DESC NULLS LAST LIMIT 3
SELECT player_id, SUM(salary) AS total_salary FROM salary WHERE year = 2001 GROUP BY player_id ORDER BY total_salary DESC NULLS LAST LIMIT 3
SELECT salary.year, AVG(salary.salary) AS average_salary FROM salary GROUP BY salary.year
SELECT year, AVG(salary) AS average_salary FROM salary WHERE year IN (2010, 2001) GROUP BY year
SELECT MIN(yearid) AS min_year FROM hall_of_fame
SELECT MIN(yearid) AS earliest_year FROM hall_of_fame
SELECT COUNT(*) FROM park WHERE city = 'Atlanta'
SELECT COUNT(*) FROM park WHERE city ILIKE '%Atlanta%'
SELECT state FROM park GROUP BY state HAVING COUNT(park_id) > 2
SELECT state FROM park GROUP BY state HAVING COUNT(park_id) > 2
SELECT COUNT(*) FROM team_franchise WHERE active = 'Y'
SELECT COUNT(franchise_id) AS num_active_franchises FROM team_franchise WHERE active = 'Y'
SELECT DISTINCT park.city FROM park GROUP BY park.city HAVING COUNT(park.park_id) BETWEEN 2 AND 4
SELECT DISTINCT park.city FROM park GROUP BY park.city HAVING COUNT(park.park_id) BETWEEN 2 AND 4
SELECT COUNT(*) FROM camera_lens WHERE focal_length_mm > 15
SELECT camera_lens.id, camera_lens.brand, camera_lens.name, MAX(camera_lens.max_aperture) AS max_aperture FROM camera_lens GROUP BY camera_lends.id, camera_lends.brand, camera_lends.name ORDER BY max_aperture DESC NULLS LAST
SELECT p.id, p.color, p.name FROM photos AS p
SELECT MAX(Height) AS max_height, AVG(Height) AS average_height FROM mountain
SELECT AVG(Prominence) FROM mountain WHERE "Country" ILIKE '%morocco%'
SELECT mountain.name, mountain.height, mountain.prominence FROM mountain WHERE "Aberdare" not ilike "%mountain.range%' AND "Aberdare" not ilike '%mountain.country%' ORDER BY mountain.prominence DESC NULLS LAST
SELECT COUNT(DISTINCT camera_lens.brand) AS number_of_brands FROM camera_lens
SELECT COUNT(*) AS total_unused_lenses FROM camera_lens
SELECT mountain.name, mountain.prominence FROM mountain WHERE NOT "Lens" ILIKE '%Sigma%' ORDER BY mountain.prominence DESC NULLS LAST
SELECT camera_lens.name FROM camera_lens WHERE camera_lens.name ILIKE '%Digital%'
SELECT p.name FROM channel AS p WHERE p.owner <> 'CCTV'
SELECT p.name FROM channel AS p WHERE p.owner <> 'CCTV'
SELECT p.name FROM channel AS p ORDER BY p.rating_in_percent DESC NULLS LAST
SELECT p.name FROM channel AS p ORDER BY p.rating_in_percent DESC NULLS LAST
SELECT p.owner FROM channel AS p JOIN (SELECT channel_id, AVG(rating_in_percent) AS avg_rating FROM channel GROUP BY channel_id) AS avg_ratings ON p.channel_id = avg_ratings.channel_id WHERE avg_ratings.avg_rating = (SELECT MAX(avg_rating) FROM channel)
SELECT p.owner FROM channel AS p WHERE p.rating_in_percent = (SELECT MAX(q.rating_in_percent) FROM channel AS q)
SELECT COUNT(Program_ID) AS number_of_programs FROM program
SELECT COUNT(*) AS program_count FROM program
SELECT p.name FROM program AS p ORDER BY p.launch NULLS FIRST
SELECT p.name, TO_CHAR(p.launch, 'YYYY-MM-DD') AS launch_date FROM program AS p ORDER BY p.launch
SELECT p.name, p.origin, o.owner FROM program JOIN program AS o ON p.owner = o.program_id
SELECT p.name, o.origin, e.owner FROM program JOIN owner ON p.owner = e.program_id JOIN program AS o ON p.origin = o.program_id
SELECT p.name FROM program AS p ORDER BY p.launch DESC NULLS LAST LIMIT 1
SELECT p.name FROM program AS p ORDER BY p.launch DESC NULLS LAST LIMIT 1
SELECT SUM(Share_in_percent) / NULLIF((SELECT SUM(Share_in_percent) FROM channel WHERE Owner = 'CCTV'), 0) AS total_share_in_percent FROM platform WHERE Owner = 'CCTV'
SELECT SUM(Share_in_percent) / NULLIF((SELECT SUM(Share_in_percent) FROM channel WHERE Owner = 'CCTV'), 0) AS total_share_in_percent FROM channel WHERE Owner = 'CCTV'
SELECT time_of_day, COUNT(program_id) AS program_count FROM broadcast GROUP BY time_of_day
SELECT TIME_OF_DAY, COUNT(*) AS program_count FROM broadcast GROUP BY TIME_OF_DAY
SELECT COUNT(DISTINCT Program_ID) AS number_of_programs FROM broadcast WHERE Time_of_day = 'Night'
SELECT COUNT(DISTINCT Program_ID) AS number_of_programs FROM broadcast WHERE Time_of_day = 'Night'
SELECT p.name FROM program WHERE NOT p.launch IN (SELECT l.launch FROM program AS l JOIN time ON l.program_id = t.program_id WHERE t.origin OR t.owner)
SELECT p.name FROM program WHERE NOT p.launch IN (SELECT l.launch FROM program AS l JOIN time ON l.program_id = t.program_id WHERE t.origin OR t.owner)
SELECT DISTINCT program.origin FROM program ORDER BY program.origin ASC NULLS FIRST
SELECT DISTINCT program.origin FROM program ORDER BY program.origin ASC NULLS FIRST
SELECT COUNT(DISTINCT Owner) AS number_of_owners FROM channel
SELECT COUNT(DISTINCT Owner) AS number_of_owners FROM channel
SELECT program.name FROM program WHERE program.origin <> 'Beijing'
SELECT p.name FROM program AS p WHERE p.origin <> 'Beijing'
SELECT p.name FROM platform JOIN channel AS o ON p.owner = o.name WHERE o.name IN ('CCTV', 'HBS')
SELECT p.name FROM channel AS p WHERE p.owner IN ('CCTV', 'HBS')
SELECT o.owner, CAST(SUM(r.rating_in_percent) AS FLOAT) / NULLIF(COUNT(*), 0) AS total_rating_ratio FROM rating JOIN channel AS f ON r.channel_id = f.channel_id JOIN owner ON f.owner = o.owner GROUP BY o.owner
SELECT p.name AS platform_name, SUM(r.rating_in_percent) AS total_rating FROM platform JOIN channel AS p ON r.channel_id = p.channel_id GROUP BY p.name
SELECT COUNT(course_id) AS total_courses FROM Courses
SELECT COUNT(*) AS total_courses FROM Courses
SELECT course_description FROM Courses WHERE course_name ilike '%Database%'
SELECT Courses.course_description FROM Courses WHERE Courses.course_name ILIKE '%Database%'
SELECT Course_Authors_and_Tutors.address_line_1 FROM Course_Authors_and_Tutors WHERE Course_Authors_and_Tutors.personal_name ILIKE '%Cathrine%'
SELECT Course_Authors_and_Tutors.address_line_1 FROM Course_Authors_and_Tutors WHERE Course_Authors_and_Tutors.personal_name ILIKE '%Cathrine%'
SELECT Course_Authors_and_Tutors.address_line_1 FROM Course_Authors_and_Tutors
SELECT Course_Authors_and_Tutors.author_id, Course_Authors_and_Tutors.address_line_1 FROM Course_Authors_and_Tutors
SELECT Course_Authors_and_Tutors.login_name, Course_Authors_and_Tutors.family_name FROM Course_Authors_and_Tutors
SELECT Course_Authors_and_Tutors.login_name, Course_Authors_and_Tutors.family_name FROM Course_Authors_and_Tutors
SELECT Student_Course_Enrolment.date_of_enrolment, Student_Course_Enrolment.date_of_completion FROM Student_Course_Enrolment
SELECT Student_Course_Enrolment.date_of_enrolment, Student_Course_Enrolment.date_of_completion FROM Student_Course_Enrolment
SELECT COUNT(DISTINCT student_id) AS number_of_students FROM Student_Course_Enrolment
SELECT COUNT(DISTINCT student_id) AS total_students FROM Student_Course_Enrolment
SELECT COUNT(DISTINCT course_id) AS number_of_courses FROM Student_Course_Enrolment
SELECT COUNT(DISTINCT course_id) AS num_courses FROM Student_Course_Enrolment
SELECT date_test_taken FROM Student_Tests_Taken WHERE test_result = 'Pass'
SELECT Student_Tests_Taken.date_test_taken FROM Student_Tests_Taken WHERE Student_Tests_Taken.test_result ILIKE '%Pass%'
SELECT COUNT(*) FROM Student_Tests_Taken WHERE test_result = 'Fail'
SELECT COUNT(*) FROM Student_Tests_Taken WHERE test_result = 'Fail'
SELECT Students.login_name FROM Students WHERE Students.family_name ILIKE '%Ward%'
SELECT Students.login_name FROM Students WHERE Students.family_name ILIKE '%Ward%'
SELECT Students.date_of_latest_logon FROM Students WHERE (Students.family_name ILIKE '%Jaskolski%' OR students.family_name ILIKE '%Langosh%') ORDER BY Students.date_of_registration DESC NULLS LAST
SELECT MAX(date_of_latest_logon) AS latest_login_date FROM Students WHERE family_name IN ('Jaskolski', 'Langosh')
SELECT COUNT(*) FROM Students WHERE personal_name ILIKE '%son%'
SELECT COUNT(*) FROM Students WHERE personal_name ILIKE '%son%'
SELECT Subjects.subject_name FROM Subjects
SELECT Subjects.subject_name FROM Subjects
SELECT Course_Authors_and_Tutors.personal_name, Course_Authors_and_Tutors.middle_name, Course_Authors_and_Tutors.family_name FROM Course_Authors_and_Tutors ORDER BY Course_Authors_and_Tutors.personal_name ASC
SELECT Course_Authors_and_Tutors.personal_name FROM Course_Authors_and_Tutors ORDER BY Course_Authors_and_Tutors.personal_name ASC NULLS FIRST
SELECT Students.personal_name, Students.family_name FROM Students ORDER BY Students.family_name ASC NULLS FIRST
SELECT Students.family_name, Students.personal_name FROM Students ORDER BY Students.family_name ASC NULLS FIRST
SELECT Student_Tests_Taken.test_result, COUNT(Student_Tests_Taken.registration_id) AS total_tests FROM Student_Tests_Taken GROUP BY Student_Tests_Taken.test_result ORDER BY total_tests DESC NULLS LAST
SELECT Student_Tests_Taken.test_result, COUNT(Student_Tests_Taken.registration_id) AS total_students FROM Student_Tests_Taken GROUP BY Student_Tests_Taken.test_result
SELECT Students.personal_name FROM Students WHERE NOT Students.student_id IN (SELECT CourseEnrollments.student_id FROM Students)
SELECT Students.personal_name FROM Students WHERE NOT Students.student_id IN (SELECT CourseEnrollments.student_id FROM Students)
SELECT COUNT(*) AS total_students_without_courses FROM Students WHERE NOT student_id IN (SELECT student_id FROM Students)
SELECT COUNT(*) AS total_students FROM Students
SELECT Course_Authors_and_Tutors.login_name FROM Course_Authors_and_Tutors WHERE Course_Authors_and_Tutors.author_id IN (SELECT Student_Course_Authors.personal_name FROM Student_Course_Authors) OR Course_Authors_and_Tutors.author_id IN (SELECT Author_Course_Authors.author_id FROM Course_Authors_and_Tutors)
SELECT Course_Authors_and_Tutors.login_name FROM Course_Authors_and_Tutors WHERE Course_Authors_and_Tutors.login_name IN (SELECT Students.login_name FROM Students) AND Course_Authors_and_Tutors.login_name IN (SELECT Course_Authors_and_Tutors.login_name FROM Course_Authors_and_Tutors)
SELECT Course_Authors_and_Tutors.personal_name FROM Course_Authors_and_Tutors WHERE Course_Authors_and_Tutors.author_id IN (SELECT Student_Course_Enrollments.login_name FROM Student_Course_Enrollments) OR Course_Authors_and_Tutors.author_id IN (SELECT Course_Authors_and_Tutors.author_id FROM Course_Authors_and_Tutors)
SELECT Course_Authors_and_Tutors.personal_name FROM Course_Authors_and_Tutors WHERE Course_Authors_and_Tutors.personal_name IN (SELECT Students.personal_name FROM Students) AND Course_Authors_and_Tutors.personal_name IN (SELECT Course_Authors_and_Tutors.personal_name FROM Course_Authors_and_Tutors)
SELECT Payment_Method_Code, Date_payment_made, Amount_payment FROM Payments ORDER BY Date_payment_made ASC NULLS FIRST
SELECT Payment_Method_Code, Date_payment_made, Amount_payment FROM Payments ORDER BY Date_payment_made ASC NULLS FIRST
SELECT c.claim_id, c.amount_claimed, s.amount_settled FROM Claims AS c JOIN settlements ON c.claim_id = s.claim_id ORDER BY c.amount_claimed DESC NULLS LAST LIMIT 1
SELECT Claims.Claim_ID, MAX(Claims.Amount_Settled) AS max_settlement_amount, MIN(Claims.Amount_Claimed) AS min_claim_amount FROM Claims GROUP BY Claims.Claim_ID
SELECT c.claim_id, MIN(c.amount_settled) AS min_settlement_amount, MAX(c.amount_claimed) AS max_claim_amount FROM Claims AS c GROUP BY c.claim_id
SELECT c.claim_id, c.amount_claimed, MIN(s.amount_settled) AS min_settled_amount FROM Claims AS c JOIN settlements ON c.claim_id = s.claim_id GROUP BY c.claim_id, c.amount_claimed
SELECT c.claim_id, c.date_claim_made, c.date_claim_settled, TO_CHAR(AVG(c.amount_claimed), 'FM999990D00') AS average_amount_claimed FROM Claims AS c GROUP BY c.claim_id, c.date_claim_made, c.date_claim_settled HAVING TO_NUMBER(TO_CHAR(c.amount_claimed), 'FM999990D00') > TO_NUMBER(TO_CHAR(AVG(c.amount_claimed), 'FM999990D00'), 'FM999990D00')
SELECT c.claim_id, c.date_claim_made, c.date_claim_settled FROM Claims AS c WHERE c.amount_claimed > (SELECT AVG(amount_claimed) FROM Claims)
SELECT c.date_claim_made FROM Claims c WHERE c.amount_claimed <= AVG(c.amount_claimed)
SELECT c.date_claim_made FROM Claims AS c WHERE c.amount_claimed <= (SELECT AVG(c2.amount_claimed) FROM Claims AS c2)
SELECT MIN(Date_Claim_Made) AS earliest_claim_date FROM Claims
SELECT MIN(Date_Claim_Made) AS earliest_claim_date FROM Claims
SELECT SUM(Settlements.Amount_Settled) AS total_amount_settled FROM Settlements
SELECT SUM(Amount_Settled) AS total_amount_settled FROM Settlements
SELECT Settlements.settlement_id, Settlements.date_claim_made, Settlements.date_claim_settled FROM Settlements
SELECT s.settlement_id, TO_CHAR(s.date_claim_made, 'YYYY-MM-DD') AS claim_date, TO_CHAR(s.date_claim_settled, 'YYYY-MM-DD') AS settlement_date FROM Settlements AS s
SELECT p.payment_method_code, CAST(COUNT(*) AS FLOAT) / (SELECT COUNT(*) FROM Payments) AS proportion FROM Payments AS p GROUP BY p.payment_method_code ORDER BY proportion DESC NULLS LAST LIMIT 1
SELECT p.payment_method_code, CAST(COUNT(*) AS FLOAT) / (SELECT COUNT(*) FROM Payments) AS fraction FROM Payments AS p GROUP BY p.payment_method_code ORDER BY fraction DESC NULLS LAST LIMIT 1
SELECT Payments.Paymentment_method_code, COUNT(Payments.payment_id) AS COUNT FROM Payments GROUP BY Payments.payment_method_code ORDER BY COUNT ASC NULLS FIRST LIMIT 1
SELECT Payments.Payment_method_code, COUNT(Payments.payment_id) AS COUNT FROM Payments GROUP BY Payments.payment_method_code ORDER BY COUNT ASC LIMIT 1
SELECT SUM(Payments.Amount_Payment) AS Total_Amount_Paid FROM Payments
SELECT SUM(Payments.Amount_payment) AS total_amount_paid FROM Payments
SELECT Customers.customer_details FROM Customers
SELECT Customers.customer_details FROM Customers
SELECT p.policy_type_code, COUNT(*) AS number_of_customers FROM Customer_Policies AS p GROUP BY p.policy_type_code ORDER BY number_of_customers DESC NULLS LAST LIMIT 1
SELECT policy_type_code, COUNT(*) AS number_of_customers FROM Customer_Policies GROUP BY policy_type_code ORDER BY number_of_customers DESC NULLS LAST LIMIT 1
SELECT COUNT(*) AS total_settlements FROM Settlements
SELECT COUNT(*) AS total_settlements FROM Settlements
SELECT p.payment_id, p.date_payment_made, p.amount_payment FROM Payments AS p WHERE payment_method_code = 'Visa'
SELECT p.payment_id, TO_CHAR(p.date_payment_made, 'DD-Mon-YYYY') AS payment_date, CAST(p.amount_payment AS FLOAT) AS amount FROM Payments AS p WHERE payment_method_code = 'Visa'
SELECT Customers.customer_details FROM Customers WHERE NOT Customers.customer_id IN (SELECT policyholders.customer_id FROM policyholders)
SELECT Customers.customer_details FROM Customers WHERE NOT Customers.customer_id IN (SELECT policyholders.customer_id FROM policyholders)
SELECT SUM(Amount_Claimed) AS total_claimed_amount FROM Claims
SELECT SUM(Claims.Amount_Claimed) AS total_amount_claimed FROM Claims
SELECT Department.Name, COUNT(Employee.EmployeeID) AS Employee_Count FROM Department JOIN Employee ON Department.DepartmentID = Employee.Head GROUP BY Department.Name ORDER BY Employee_Count DESC NULLS LAST LIMIT 1
SELECT Department.Name FROM Department WHERE Department.Head IN (SELECT Employee.Department FROM Employee GROUP BY Employee.departmentid ORDER BY COUNT(Employee.departmentid) DESC NULLS LAST LIMIT 1)
SELECT Department.Head FROM Department WHERE Department.Name IN (SELECT MIN(Employee.Department) FROM Employee GROUP BY Employee.departmentid)
SELECT Department.Head FROM Department ORDER BY COUNT(Employee.EmployeeID) ASC LIMIT 1
SELECT Appointment.AppointmentID FROM Appointment ORDER BYStartment.starttime DESC LIMIT 1
SELECT Appointment.AppointmentID FROM Appointment ORDER BY Start DESC NULLS LAST LIMIT 1
SELECT p.name FROM physician LEFT JOIN Physician AS a ON p.employeeid = a.ssn WHERE a.ssn IS NULL
SELECT p.name FROM physician LEFT JOIN Physician AS a ON p.employeeid = a.ssn WHERE a.ssn IS NULL
SELECT COUNT(*) AS total_stays FROM Stay WHERE Room = 112
SELECT COUNT(DISTINCT Patient) AS patient_count FROM Stay WHERE Room = 112
SELECT p.stayid FROM Stay AS p JOIN Stay ON p.patient = s.patient WHERE s.room = 111 ORDER BY s.stayend DESC NULLS LAST LIMIT 1
SELECT s.patient FROM Stay AS s WHERE s.room = 111 ORDER BY s.stayend DESC NULLS LAST LIMIT 1
SELECT DISTINCT Room.BlockCode FROM Room WHERE Room.Unavailable = FALSE
SELECT DISTINCT Room.BlockCode FROM Room WHERE Room.Unavailable = FALSE
SELECT COUNT(DISTINCT Room.RoomType) AS number_of_room_types FROM Room
SELECT COUNT(DISTINCT Room.RoomType) AS number_of_room_types FROM Room WHERE Room.Unavailable = FALSE
SELECT Physician.name FROM Physician WHERE physician.position ILIKE '%senior%'
SELECT Physician.name FROM Physician WHERE "Position" ILIKE '%senior%'
SELECT p.name AS patient_name, phy.name AS physician_name, pr.procedure_name, MAX(u.dateundergoes) AS latest_treatment_date FROM undergoes u JOIN patients p ON p.patientid = u.patient JOIN physicians phy ON phy.physicianid = u.physician JOIN procedures pr ON pr.procedureid = u.procedure GROUP BY patient_name, physician_name, procedure_name
SELECT p.stay AS patient_name, phy.stay AS physician_name, pr.procedures, ROW_NUMBER() OVER (PARTITION BY p.patient ORDER BY pr.procedures DESC NULLS LAST) AS recent_treatment_rank FROM Undergoes AS p JOIN procedures ON p.patient = pr.patient JOIN physicians ON pr.physician = phy.physician
SELECT Nurse.Name FROM Nurse ORDER BY Nurse.Name ASC NULLS FIRST
SELECT Nurse.name FROM Nurse ORDER BY Nurse.name ASC NULLS FIRST
SELECT DISTINCT medication.name FROM Medication ORDER BY medication.name ASC NULLS FIRST
SELECT Medication.Code, Medication.Name FROM Medication ORDER BY Medication.Code ASC NULLS FIRST
SELECT physician, department FROM Affiliated_With WHERE primaryaffiliation = TRUE
SELECT a.physician, a.department FROM Affiliated_With AS a WHERE a.primaryaffiliation = TRUE
SELECT n.oncallend FROM On_Call AS n JOIN on_call ON n.nurse = oc.nurse WHERE oc.blockfloor = 1 AND oc.blockcode = 1
SELECT nurse FROM On_Call WHERE blockfloor = 1 AND blockcode = 1
SELECT MAX(Cost) AS highest_cost, MIN(Cost) AS lowest_cost, AVG(Cost) AS average_cost FROM Procedures
SELECT MAX(Cost) AS highest_cost, MIN(Cost) AS lowest_cost, AVG(Cost) AS average_cost FROM Procedures
SELECT Procedures.Name, Procedures.Cost FROM Procedures ORDER BY Procedures.Cost DESC NULLS LAST
SELECT Procedures.Name, Procedures.Cost FROM Procedures ORDER BY Procedures.Cost DESC NULLS LAST
SELECT Procedures.Code, Procedures.Name, Procedures.Cost FROM Procedures ORDER BY Procedures.Cost DESC NULLS LAST LIMIT 3
SELECT Procedures.Code, Procedures.Name, Procedures.Cost FROM Procedures ORDER BY Procedures.Cost DESC NULLS LAST LIMIT 3
SELECT Procedures.Code, Procedures.Name, Procedures.Cost FROM Procedures WHERE (Procedures.Cost > 1000 OR Procedures.Name ILIKE '%John%Wen%')
SELECT Procedures.Code, Procedures.Name, Procedures.Cost FROM Procedures WHERE Procedures.Cost > 1000 OR Procedures.Name ILIKE '%John%Wen%'
SELECT Procedures.Name FROM Procedures WHERE Procedures.Cost > 1000 AND Procedures.Code NOT IN (SELECT Physicians_Trained_In.Code FROM Physicians_Trained_In WHERE Physicians_Trained_In.Physician = 'John Wen')
SELECT Procedures.Code, Procedures.Name, Procedures.Cost FROM Procedures WHERE Procedures.Cost > 1000 AND Procedures.Code NOT IN (SELECT Specialization.Procedure_code FROM Specialists WHERE Specialists.Last_name = 'Wen' AND Specialists.First_name = 'John') ORDER BY Procedures.Cost DESC NULLS LAST
SELECT Procedures.Name FROM Procedures WHERE Procedures.Cost < '5000' AND Procedures.Code IN (SELECT Physician_Training.Procedure_Code FROM Physician_Training WHERE Physician_Training.Physician_Name ILIKE '%John%Wen%') 
SELECT Procedures.Code, Procedures.Name, Procedures.Cost FROM Procedures WHERE Procedures.Cost < '5000' AND Procedures.Name ILIKE '%John%Wen%'
SELECT p.name FROM Patient AS p WHERE p.insuranceid <> (SELECT insuranceid FROM provider WHERE name ILIKE '%Procrastin-X%')
SELECT p.name FROM Patient AS p WHERE p.insuranceid <> (SELECT insuranceid FROM Patient WHERE name ILIKE '%Procrastin-X%')
SELECT COUNT(*) FROM Patient WHERE insuranceid <> 757071707
SELECT COUNT(*) FROM Patient WHERE insuranceid IS NULL
SELECT COUNT(*) AS number_of_appointments FROM Appointment
SELECT COUNT(*) AS total_appointments FROM Appointment
SELECT COUNT(*) AS total_ships FROM ship
SELECT COUNT(*) AS total_ships FROM ship
SELECT ship.name FROM ship ORDER BY ship.tonnage ASC NULLS FIRST
SELECT ship.name FROM ship ORDER BY ship.tonnage ASC NULLS FIRST
SELECT ship.type, ship.nationality FROM ship
SELECT s.ship_id, s.type, s.nationality FROM ship AS s
SELECT ship.name FROM ship WHERE ship.nationality <> 'United States'
SELECT ship.name FROM ship WHERE ship.nationality <> 'United States'
SELECT ship.name FROM ship WHERE ship.nationality IN ('United States', 'United Kingdom')
SELECT ship.name FROM ship WHERE ship.nationality IN ('US', 'UK')
SELECT ship.name FROM ship WHERE ship.tonnage = (SELECT MAX(ship.tonnage) FROM ship)
SELECT MAX(ship.tonnage) AS max_tonnage, ship.name FROM ship GROUP BY ship.name HAVING MAX(ship.tonnage) = AVG(ship.tonnage)
SELECT ship.type, COUNT(*) AS total_ships FROM ship GROUP BY ship.type
SELECT ship.type, COUNT(*) AS number_of_ships FROM ship GROUP BY ship.type
SELECT ship.type FROM ship GROUP BY ship.type ORDER BY COUNT(ship.type) DESC NULLS LAST LIMIT 1
SELECT ship.type FROM ship GROUP BY ship.type ORDER BY COUNT(ship.type) DESC NULLS LAST LIMIT 1
SELECT nationality FROM ship GROUP BY nationality HAVING COUNT(ship_id) > 2
SELECT nationality FROM ship GROUP BY nationality HAVING COUNT(ship_id) > 2
SELECT ship.type, AVG(ship.tonnage) AS average_tonnage FROM ship GROUP BY ship.type
SELECT ship.type, AVG(ship.tonnage) AS average_tonnage FROM ship GROUP BY ship.type
SELECT ship.name FROM ship WHERE NOT ship.ship_id IN (SELECT mission.ship_id FROM ship)
SELECT s.name FROM ship LEFT JOIN ship AS ms ON s.ship_id = ms.ship_id WHERE ms.ship_id IS NULL
SELECT DISTINCT s.type FROM ship AS s WHERE s.tonnage > 6000 AND EXISTS(SELECT 1 FROM ship AS s2 WHERE s2.ship_id <> s.ship_id AND s2.tonnage < 4000)
SELECT DISTINCT ship.type FROM ship WHERE ship.tonnage > 6000 AND ship.tonnage < 4000
SELECT COUNT(*) AS total_students FROM list
SELECT COUNT(*) AS total_students FROM list
SELECT list.lastname FROM list WHERE list.classroom = 111
SELECT list.lastname FROM list WHERE list.classroom = 111
SELECT list.First_name FROM list WHERE list.classroom = 108
SELECT list.First_name FROM list WHERE list.classroom = 108
SELECT list.First_name FROM list WHERE list.classroom = 107
SELECT list.First_name FROM list WHERE list.classroom = 107
SELECT list.classroom, list.grade FROM list ORDER BY list.classroom, list.grade
SELECT list.grade, list.classroom FROM list
SELECT list.grade FROM list WHERE list.classroom = 103
SELECT list.grade FROM list WHERE list.classroom = 103
SELECT list.grade FROM list WHERE list.classroom = 105
SELECT list.grade FROM list WHERE list.classroom = 105
SELECT list.classroom FROM list WHERE list.grade = 4
SELECT classroom FROM list WHERE grade = 4
SELECT list.classroom FROM list WHERE list.grade = 5
SELECT list.lastname, list.firstname FROM list WHERE list.grade = 5
SELECT teachers.firstname FROM teachers WHERE teachers.classroom = 110
SELECT teachers.firstname FROM teachers WHERE teachers.classroom = 110
SELECT teachers.lastname FROM teachers WHERE teachers.classroom = 109
SELECT teachers.lastname FROM teachers WHERE teachers.classroom = 109
SELECT teachers.firstname, teachers.lastname FROM teachers
SELECT teachers.firstname, teachers.lastname FROM teachers
SELECT list.firstname, list.lastname FROM list
SELECT list.firstname, list.lastname FROM list
SELECT list.grade, COUNT(DISTINCT list.classroom) AS classroom_count, COUNT(list.firstname) AS student_count FROM list GROUP BY list.grade
SELECT list.grade, COUNT(DISTINCT list.classroom) AS classroom_count, COUNT(list.firstname) AS student_count FROM list GROUP BY list.grade
SELECT list.classroom, COUNT(list.grade) AS grade_count FROM list GROUP BY list.classroom
SELECT list.classroom, COUNT(DISTINCT list.grade) AS grade_count FROM list GROUP BY list.classroom
SELECT list.classroom, COUNT(list.firstname) AS number_of_students FROM list GROUP BY list.classroom ORDER BY number_of_students DESC NULLS LAST LIMIT 1
SELECT list.classroom FROM list GROUP BY list.classroom ORDER BY COUNT(list.classroom) DESC NULLS LAST LIMIT 1
SELECT list.classroom, COUNT(*) AS student_count FROM list GROUP BY list.classroom
SELECT list.classroom, COUNT(list.firstname) AS student_count FROM list GROUP BY list.classroom
SELECT list.grade, COUNT(list.firstname) AS total_students FROM list WHERE list.classroom = 0 GROUP BY list.grade
SELECT list.classroom, COUNT(list.firstname) AS student_count FROM list WHERE list.grade = 0 GROUP BY list.classroom
SELECT list.classroom, COUNT(*) AS total_students FROM list WHERE grade = 4 GROUP BY list.classroom
SELECT list.classroom, COUNT(list.lastname) AS total_students FROM list WHERE grade = 4 GROUP BY list.classroom
SELECT COUNT(*) AS total_students FROM list WHERE classroom = 1
SELECT classroom, COUNT(grade) AS number_of_students FROM list GROUP BY classroom
SELECT COUNT(*) FROM company WHERE headquarters ILIKE '%US%'
SELECT company.name FROM company ORDER BY company.sales_in_billion ASC NULLS FIRST
SELECT c.name AS company_name, h.company_id, i.profits_in_billion FROM company AS c JOIN headquarters ON c.headquarters = h.sales_in_billion JOIN industry ON c.industry = i.assets_in_billion
SELECT company.name FROM company WHERE company.industry ILIKE '%banking%' OR company.industry ILIKE '%retailing%'
SELECT MAX(market_value_in_billion) AS max_market_value, MIN(market_value_in_billion) AS min_market_value FROM company
SELECT c.name, c.headquarters FROM company AS c WHERE c.sales_in_billion = (SELECT MAX(sales_in_billion) FROM company)
SELECT headquarters, COUNT(company_id) AS company_count FROM company GROUP BY headquarters
SELECT headquarters FROM company GROUP BY headquarters ORDER BY COUNT(headquarters) DESC NULLS LAST LIMIT 1
SELECT DISTINCT company.headquarters FROM company GROUP BY company.headquarters HAVING COUNT(company.company_id) >= 2
SELECT DISTINCT company.headquarters FROM company WHERE company.industry ILIKE '%banking%' AND company.industry ILIKE '%oil and gas%'
SELECT p.name FROM people LEFT JOIN people AS e ON p.people_id = e.people_id WHERE e.people_id IS NULL
SELECT c.name FROM company AS c WHERE c.sales_in_billion > 200 ORDER BY c.sales_in_billion DESC NULLS LAST, c.profits_in_billion DESC NULLS LAST
SELECT COUNT(*) AS total_films FROM film
SELECT COUNT(*) AS total_films FROM film
SELECT DISTINCT film.director FROM film
SELECT DISTINCT director FROM film
SELECT AVG(gross_in_dollar) AS average_gross_in_dollars FROM film
SELECT AVG(gross_in_dollar) AS average_gross_in_dollars FROM film
SELECT market_id, MIN(low_estimate) AS min_low_estimate, MAX(high_estimate) AS max_high_estimate FROM film_market_estimation GROUP BY market_id
SELECT market_id, MIN(low_estimate) AS min_low_estimate, MAX(high_estimate) AS max_high_estimate FROM film_market_estimation GROUP BY market_id
SELECT film_market_estimation.type FROM film_market_estimation WHERE film_market_estimation.year = 1995
SELECT TYPE FROM film_market_estimation WHERE YEAR = 1995
SELECT MAX(number_cities) AS max_cities, MIN(number_cities) AS min_cities FROM market
SELECT MAX(market_id) AS max_cities, MIN(market_id) AS min_cities FROM market
SELECT COUNT(*) FROM market WHERE number_cities < 300
SELECT COUNT(*) FROM market WHERE number_cities < 300
SELECT market.country FROM market ORDER BY market.country ASC NULLS FIRST
SELECT market.country, COUNT(market.market_id) AS number_of_markets FROM market JOIN market_to_countries ON market.market_id = market_to_countries.market_id GROUP BY market.country ORDER BY number_of_markets DESC NULLS LAST
SELECT market.country FROM market ORDER BY market.number_cities DESC NULLS LAST
SELECT market.country, COUNT(market.city_id) AS number_of_cities FROM market JOIN city ON market.market_id = city.market_id GROUP BY market.country ORDER BY number_of_cities DESC NULLS LAST
SELECT film.studio, COUNT(film.title) AS total_films, SUM(CAST(film.gross_in_dollar AS FLOAT)) AS total_budget FROM film GROUP BY film.studio
SELECT film.studio, CAST(COUNT(film.title) AS FLOAT) / NULLIF((SELECT COUNT(*) FROM film WHERE NOT studio IS NULL), 0) AS proportion_of_films_produced_by_studio FROM film GROUP BY film.studio ORDER BY proportion_of_films_produced_by_studio DESC NULLS LAST
SELECT studio FROM film GROUP BY studio ORDER BY COUNT(film_id) DESC NULLS LAST LIMIT 1
SELECT film.studio, COUNT(film.title) AS number_of_films FROM film GROUP BY film.studio ORDER BY number_of_films DESC NULLS LAST LIMIT 1
SELECT DISTINCT studio FROM film GROUP BY studio HAVING COUNT(film_id) >= 2
SELECT DISTINCT studio FROM film GROUP BY studio HAVING COUNT(film_id) >= 2
SELECT film.title FROM film WHERE film.gross_in_dollar IS NULL
SELECT film.title FROM film WHERE film.gross_in_dollar IS NULL
SELECT DISTINCT studio FROM film WHERE director ILIKE '%Nicholas%Meyer%' AND director ILIKE '%Walter%Hill%'
SELECT DISTINCT film.director FROM film WHERE director ILIKE '%Nicholas%Meyer%' AND director ILIKE '%Walter%Hill%'
SELECT COUNT(*) AS total_films, SUM(gross_in_dollar) AS total_budget FROM film WHERE studio ILIKE '%universal%'
SELECT COUNT(*) AS total_films, CAST(COUNT(CASE WHEN title > 90 THEN 1 END) AS FLOAT) / NULLIF(COUNT(*), 0) AS films_with_long_title_ratio FROM film WHERE studio ILIKE '%Universal%'
SELECT studio FROM film WHERE director <> 'Walter Hill' GROUP BY studio HAVING COUNT(film_id) > 0
SELECT studio FROM film WHERE "director" not ilike '%Walter%Hill%'
SELECT film.title FROM film WHERE film.gross_in_dollar > 4500000
SELECT studio FROM film WHERE gross_in_dollar > 4500000
SELECT film.title, film.director FROM film WHERE NOT film.studio ILIKE '%China%' ORDER BY film.title
SELECT film.title, film.director FROM film WHERE NOT film.studio ILIKE '%China%' ORDER BY film.title
SELECT CAST(COUNT(*) AS FLOAT) / NULLIF(COUNT(*), 0) AS average_items_per_day FROM Ref_Calendar
SELECT COUNT(*) AS total_items FROM Ref_Calendar
SELECT Ref_Calendar.Calendar_Date, Ref_Calendar.Day_Number FROM Ref_Calendar
SELECT Ref_Calendar.Calender_Date, Ref_Calendar.Day_Number FROM Ref_Calendar
SELECT COUNT(Ref_Document_Types.Document_Type_Code) AS total_document_types FROM Ref_Document_Types
SELECT COUNT(*) AS total_document_types FROM Ref_Document_Types
SELECT Ref_Document_Types.Document_Type_Code, Ref_Document_Types.Document_Type_Name FROM Ref_Document_Types
SELECT Ref_Document_Types.Document_Type_Code, Ref_Document_Types.Document_Type_Name FROM Ref_Document_Types
SELECT Ref_Document_Types.Document_Type_Name, Ref_Document_Types.Document_Type_Description FROM Ref_Document_Types WHERE Ref_Document_Types.Document_Type_Code = 'RV'
SELECT Ref_Document_Types.Document_Type_Name, Ref_Document_Types.Document_Type_Description FROM Ref_Document_Types WHERE Ref_Document_Types.Document_Type_Code = 'RV'
SELECT Ref_Document_Types.Document_Type_Code FROM Ref_Document_Types WHERE Ref_Document_Types.Document_Type_Name ILIKE '%Paper%'
SELECT Ref_Document_Types.Document_Type_Code FROM Ref_Document_Types WHERE Ref_Document_Types.Document_Type_Name ilike '%Paper%'
SELECT COUNT(*) FROM All_Documents WHERE Document_Type_Code IN ('CV', 'BK')
SELECT COUNT(*) FROM All_Documents WHERE Document_Type_Code IN ('CV', 'BK')
SELECT All_Documents.Date_Stored FROMAll_Documents WHEREAll_Documents.Document_Name ilike '%Marry%CV%' 
SELECT All_Documents.Date_Stored FROMAll_Documents WHEREAll_Documents.Document_Name ilike '%Marry%CV%' 
SELECT COUNT(*) FROM Ref_Locations
-1
SELECT Ref_locations.location_code, Ref_locations.location_name FROM Ref_Locations
SELECT Ref_locations.location_code, Ref_locations.location_name FROM Ref_Locations
SELECT Ref_locations.location_name, Ref_locations.location_description FROM Ref_Locations WHERE Ref_locations.location_code = 'x'
SELECT Ref_locations.location_name, Ref_locations.location_description FROM Ref_Locations WHERE Ref_locations.location_code = 'x'
SELECT Ref_locations.location_code FROM Ref_Locations WHERE "Country Name" ILIKE '%Canada%'
SELECT Ref_locations.location_code FROM Ref_Locations WHERE "Country" ILIKE '%canada%'
SELECT COUNT(Role.role_code) AS total_roles FROM Roles
SELECT COUNT(Role.role_code) AS total_roles FROM Roles
SELECT role_code, role_name, role_description FROM Roles
SELECT r.role_code, r.role_name, r.role_description FROM Roles AS r
SELECT r.role_name, r.role_description FROM Roles AS r WHERE r.role_code = 'MG'
SELECT Role_Name, Role_Description FROM Roles WHERE Role_Code = 'MG'
SELECT Roles.role_description FROM Roles WHERE roles.role_name ILIKE '%proof%reader%'
SELECT Role_Description FROM Roles WHERE Role_Name ilike '%Proof%Reader%'
SELECT COUNT(Employee_ID) AS total_employees FROM Employees
SELECT COUNT(Employee_ID) AS total_employees FROM Employees
SELECT Employees.Employee_Name, Employees.Role_Code, Employees.Date_of_Birth FROM Employees WHERE Employees.Employee_Name ILIKE '%Armoni%'
SELECT Employees.Employee_Name, Employees.Role_Code, Employees.Date_of_Birth FROM Employees WHERE "Employee Name" ILIKE '%Armoni%'
SELECT Employees.Employee_ID FROM Employees WHERE Employees.Employee_Name ILIKE '%ebba%'
SELECT Employees.Employee_ID FROM Employees WHERE Employees.Employee_Name ILIKE '%Ebba%'
SELECT Employees.Employee_Name FROM Employees WHERE Employees.Role_Code ILIKE '%HR%'
SELECT Employees.Employee_Name FROM Employees WHERE Employees.Role_Code ILIKE '%HR%'
SELECT Employees.Role_code, COUNT(Employees.employee_id) AS employee_count FROM Employees GROUP BY Employees.role_code
SELECT Role_Code, COUNT(Employee_ID) AS Employee_Count FROM Employees GROUP BY Role_Code
SELECT Employees.Role_code, COUNT(Employees.employee_id) AS employee_count FROM Employees GROUP BY Employees.role_code ORDER BY employee_count DESC NULLS LAST LIMIT 1
SELECT Employees.Role_code, COUNT(Employees.employee_id) AS employee_count FROM Employees GROUP BY Employees.role_code ORDER BY employee_count DESC NULLS LAST LIMIT 1
SELECT Role_Code FROM Employees GROUP BY Role_Code HAVING COUNT(Employee_ID) >= 3
SELECT Role_Code FROM Employees GROUP BY Role_Code HAVING COUNT(Employee_ID) >= 3
SELECT Employees.Role_code, COUNT(Employees.employee_id) AS employee_count FROM Employees GROUP BY Employees.role_code ORDER BY employee_count ASC LIMIT 1
SELECT Employees.role_code FROM Employees GROUP BY Employees.role_code ORDER BY COUNT(Employees.employee_id) ASC
SELECT Document_locations.location_code FROM Document_Locations GROUP BY document_locations.location_code
SELECT DISTINCT Document_Locations.location_code FROM Document_Locations
SELECT Document_locations.location_code, MIN(document_locations.date_in_location_from) AS min_date_in_location_from, MAX(document_locations.date_in_locaton_to) AS max_date_in_location_to FROM Document_Locations GROUP BY document_locations.location_code
SELECT Document_locations.location_code, MIN(document_locations.date_in_location_from) AS min_date_in_location_from, MAX(document_locations.date_in_locaton_to) AS max_date_in_location_to FROM Document_Locations GROUP BY document_locations.location_code
SELECT Document_locations.location_code, COUNT(Document_locations.document_id) AS document_count FROM Document_Locations GROUP BY Document_locations.location_code
SELECT dl.location_code, COUNT(dl.document_id) AS document_count FROM Document_Locations AS dl GROUP BY dl.location_code
SELECT Document_Locations.location_code, COUNT(Document_locations.document_id) AS document_count FROM Document_Locations GROUP BY Document_locations.location_code ORDER BY document_count DESC NULLS LAST LIMIT 1
SELECT Document_Locations.location_code, COUNT(Document_locations.document_id) AS document_count FROM Document_Locations GROUP BY Document_locations.location_code ORDER BY document_count DESC NULLS LAST LIMIT 1
SELECT Document_Locations.location_code FROM Document_Locations GROUP BY Document_locations.location_code HAVING COUNT(Document_locations.document_id) >= 3
SELECT DISTINCT Document_Locations.location_code FROM Document_Locations GROUP BY Document_locations.location_code HAVING COUNT(Document_locations.document_id) >= 3
SELECT e.destroyed_by_employee_id, COUNT(dd.document_id) AS total_documents_destroyed FROM employees JOIN Documents_to_be_Destroyed AS dd ON e.destroyed_by_employee_id = dd.destruction_authorised_by_employee_id GROUP BY e.destroyed_by_employee_id
SELECT e.destroyed_by_employee_id, COUNT(dd.document_id) AS total_documents_destroyed FROM employees JOIN Documents_to_be_Destroyed AS dd ON e.destroyed_by_employee_id = dd.destruction_authorised_by_employee_id GROUP BY e.destroyed_by_employee_id
SELECT e.other_details, COUNT(dd.document_id) AS document_count FROM employees JOIN Documents_to_be_Destroyed AS dd ON e.other_details = dd.destruction_authorised_by_employee_id OR e.other_details = dd.destroyed_by_employee_id GROUP BY e.other_details
SELECT e.destroyed_by_employee_id, COUNT(dd.document_id) AS total_documents_destroyed FROM employees JOIN Documents_to_be_Destroyed AS dd ON e.destroyed_by_employee_id = dd.destruction_authorised_by_employee_id GROUP BY e.destroyed_by_employee_id
SELECT Employees.Employee_ID FROM Employees WHERE NOT "Role_Code" ILIKE '%Destruction%'
SELECT Employees.Employee_ID FROM Employees WHERE NOT Employees.Employee_ID IN (SELECT Destroy_Authorizer_Employee_IDs.Employee_ID FROM Employees)
SELECT Documents_to_be_Destroyed.Destruction_Authorised_by_Employee_ID FROM Documents_to_be_Destroyed
SELECT Documents_to_be_Destroyed.Destruction_Authorised_by_Employee_ID FROM Documents_to_be_Destroyed
SELECT Documents_to_be_Destroyed.Destruction_Authorised_by_Employee_ID FROM Documents_to_be_Destroyed
SELECT e.destroyed_by_employee_id FROM Employees JOIN Documents_to_be_Destroyed AS d ON e.destroyed_by_employee_id = d.destruction_authorised_by_employee_id
SELECT Employees.Employee_ID FROM Employees WHERE NOT Employees.Employee_ID IN (SELECT Destroyed_By.Employee_ID FROM Employees)
SELECT Employees.Employee_ID FROM Employees WHERE Employees.Employee_ID NOT IN (SELECT Destroyed_By.Employee_ID FROM Documents_Destroyed BY Destroyed_By)
SELECT Documents_to_be_Destroyed.Destruction_Authorised_by_Employee_ID, Documents_to_be_Destroyed.Destroyed_by_Employee_ID FROM Documents_to_be_Destroyed
SELECT Documents_to_be_Destroyed.Destruction_Authorised_by_Employee_ID, Documents_to_be_Destroyed.Destroyed_by_Employee_ID FROM Documents_to_be_Destroyed
SELECT COUNT(*) AS total_club FROM Club
SELECT COUNT(*) AS total_clubbs FROM Club
SELECT c.clubname FROM Club AS c
SELECT c.clubname FROM Club AS c
SELECT COUNT(*) AS total_students FROM Student
SELECT COUNT(*) AS total_students FROM Student
SELECT Student.Fname FROM Student
SELECT Student.Fname FROM Student
SELECT Club.ClubDesc FROM Club WHERE Club.ClubName ILIKE '%Tennis%Club%' ORDER BY Club.ClubDescription
SELECT Club.ClubDesc FROM Club WHERE Club.ClubName ILIKE '%Tennis%Club%'
SELECT Club.ClubDesc FROM Club WHERE Club.ClubName ILIKE '%Pen%and%Paper%Gaming%'
SELECT Club.ClubDesc FROM Club WHERE Club.ClubName ILIKE '%Pen%and%Paper%Gaming%'
SELECT Club.ClubLocation FROM Club WHERE Club.ClubName ILIKE '%Tennis%Club%'
SELECT Club.ClubLocation FROM Club WHERE Club.ClubName ilike '%Tennis%Club%'
SELECT Club.ClubLocation FROM Club WHERE "Club Name" ILIKE '%pen%and%paper%gaming%'
SELECT Club.ClubLocation FROM Club WHERE Club.ClubName ILIKE '%Pen%and%Paper%Gaming%'
SELECT Club.ClubLocation FROM Club WHERE Club.ClubName ILIKE '%Hopkins%Student%Enterprises%'
SELECT Club.ClubLocation FROM Club WHERE Club.ClubName ILIKE '%Hopkins%Student%Enterprises%'
SELECT c.clubname FROM Club AS c WHERE c.clublocation ILIKE '%akw%'
SELECT Club.ClubName FROM Club WHERE Club.ClubLocation ILIKE '%AKW%' ORDER BY Club.ClubName
SELECT COUNT(*) FROM Club WHERE ClubLocation ILIKE '%HHH%'
SELECT COUNT(*) FROM Club WHERE ClubLocation ILIKE '%HHH%'
SELECT MIN(project_staff.date_from) AS earliest_start_date, MAX(project_staff.date_to) AS latest_end_date FROM project_staff WHERE project_staff.project_id IN (SELECT project_id FROM project_staff GROUP BY project_id HAVING COUNT(staff_id) > ALLINNER SELECT MIN(date_from) AS earliest_start_date, MAX(date_to) AS latest_end_date FROM project_staff WHERE project_staff.project_id IN (SELECT project_id FROM project_staff GROUP BY project_id HAVING COUNT(staff_id) > ALLINNER SELECT MIN(date_from) AS earliest_start_date, MAX(date_to) AS latest_end_date FROM project_staff WHERE project_staff.project_id IN (SELECT project_id FROM project_staff GROUP BY project_id HAVING COUNT(staff_id) > 1))
SELECT MIN(project_staff.date_from) AS earliest_start_date, MAX(project_staff.date_to) AS latest_end_date FROM Project_Staff WHERE project_staff.role_code = 'leader' GROUP BY project_staff.project_id HAVING COUNT(project_staff.staff_id) > (SELECT COUNT(staff_id) FROM Project_Staff WHERE role_code <> 'leader')
SELECT p.project_id, p.organisation_id, p.project_details FROM Projects p LEFT JOIN Staff s ON p.project_id = s.project_id AND s.staff_role = 'Researcher' WHERE s.project_id IS NULL
SELECT p.project_id, p.organisation_id, p.project_details FROM Projects p LEFT JOIN Staff s ON p.project_id = s.project_id AND s.role_id = 3 WHERE s.project_id IS NULL
SELECT p.staff_id, TO_CHAR(p.date_from, 'DD-MM-YYYY') AS date_from, TO_CHAR(p.date_to, 'DD-MM-YYYY') AS date_to FROM Project_Staff AS p WHERE p.role_code = 'researcher'
SELECT p.staff_id, TO_CHAR(p.date_from, 'YYYY-MM-DD') AS start_date, TO_CHAR(p.date_to, 'YYYY-MM-DD') AS end_date FROM Project_Staff AS p
SELECT COUNT(DISTINCT Project_Staff.role_code) AS number_of_roles FROM Project_Staff
SELECT COUNT(DISTINCT Project_Staff.role_code) AS number_of_roles FROM Project_Staff
SELECT g.organisation_id, SUM(g.grant_amount) AS total_grant_amount FROM Grants AS g GROUP BY g.organisation_id
SELECT g.grant_id, SUM(g.grant_amount) AS total_grant_amount FROM Grants AS g GROUP BY g.grant_id
SELECT sr.role_description FROM Staff_Roles AS sr
SELECT sr.role_description FROM Staff_Roles AS sr WHERE sr.role_code = 'RESEARCHER'
SELECT MIN(date_from) AS earliest_start_date FROM Project_Staff
SELECT MIN(date_from) AS earliest_start_date FROM Project_Staff
SELECT Projects.project_id, Projects.organisation_id, Projects.project_details FROM Projects WHERE Projects.project_id IS NULL
SELECT Projects.project_details FROM Projects WHERE NOT Projects.project_id IN (SELECT Outcomes.project_id FROM Projects)
SELECT Document_Types.document_type_code FROM Document_Types WHERE Document_Types.document_description ILIKE 'Initial%'
-1
SELECT MAX(grant_id), COUNT(document_id) AS document_count FROM Documents
SELECT g.grant_id, COUNT(d.document_id) AS total_documents, MAX(document_type_code) AS max_rows FROM grants JOIN Documents AS d ON g.grant_id = d.grant_id GROUP BY g.grant_id
SELECT COUNT(*) AS total_outcomes FROM Project_Outcomes WHERE outcome_code ILIKE '%Patent%'
SELECT COUNT(*) AS total_outcomes FROM Project_Outcomes
SELECT COUNT(*) FROM Project_Staff WHERE date_from < '1989-04-24 23:51:54'
SELECT COUNT(DISTINCT staff_id) AS total_staff FROM Project_Staff WHERE date_from < '1989-04-24 23:51:54'
SELECT MAX(date_to) AS latest_exit_date FROM Project_Staff
SELECT MAX(date_to) AS latest_exit_date FROM Project_Staff
SELECT Projects.project_details FROM Projects WHERE Projects.organisation_id = 757071
SELECT p.project_details FROM Projects AS p WHERE organisation_id = (SELECT MAX(organisation_id) FROM Projects)
SELECT Research_Staff.staff_id, Research_Staff.employer_organisation_id, Research_Staff.staff_details FROM Research_Staff ORDER BY Research_Staff.staff_id ASC NULLS FIRST
SELECT Research_Staff.staff_details FROM Research_Staff ORDER BY Research_Staff.staff_details ASC NULLS FIRST
SELECT COUNT(*) AS total_tasks FROM Tasks
SELECT COUNT(task_id) AS total_tasks FROM Tasks
SELECT p.staff_id, ps.role_code FROM Project_Staff AS p JOIN Staff ON p.staff_id = s.staff_id
SELECT ps.staff_id, ps.project_id, ps.other_details FROM Project_Staff AS ps WHERE ps.date_from >= TO_TIMESTAMP('2003-04-19 15:06:20', 'YYYY-MM-DD HH24:MI:SS') AND ps.date_to <= TO_TIMESTAMP('2016-03-15 00:33:18', 'YYYY-MM-DD HH24:MI:SS')
SELECT ps.staff_id, ps.project_id, COUNT(*) AS frequency FROM Project_Staff AS ps GROUP BY ps.staff_id, ps.project_id ORDER BY frequency DESC NULLS LAST
SELECT ps.staff_id, ps.project_id, COUNT(*) AS frequency FROM Project_Staff AS ps GROUP BY ps.staff_id, ps.project_id ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT COUNT(*) FROM Person WHERE gender = 'female'
SELECT COUNT(*) FROM Person WHERE gender = 'female'
SELECT AVG(age) AS average_age FROM Person
SELECT AVG(age) FROM Person
SELECT COUNT(DISTINCT person.city) AS number_of_cities FROM Person
SELECT COUNT(DISTINCT city) AS number_of_cities FROM Person
SELECT COUNT(DISTINCT Person.job) AS number_of_jobs FROM Person
SELECT COUNT(DISTINCT Person.job) AS number_of_jobs FROM Person
SELECT MAX(age) AS max_age, name FROM Person GROUP BY name ORDER BY max_age DESC NULLS LAST LIMIT 1
SELECT Person.name FROM Person ORDER BY Person.age DESC NULLS LAST LIMIT 1
SELECT MAX(p.age) AS oldest_person_with_student_job FROM Person AS p WHERE p.job = 'student'
SELECT Person.name FROM Person ORDER BY Person.age DESC NULLS LAST LIMIT 1
SELECT MIN(Person.age) AS min_age FROM Person WHERE person.gender = 'male'
SELECT Person.name FROM Person WHERE Person.gender = 'male' ORDER BY Person.age ASC NULLS FIRST LIMIT 1
SELECT CAST(Person.age AS FLOAT) AS age FROM Person WHERE person.name ILIKE '%Zach%' AND person.job ILIKE '%doctor%'
SELECT CAST(Person.age AS FLOAT) FROM Person WHERE "name" ILIKE '%Zach%'
SELECT Person.name FROM Person WHERE "age" < '30'
SELECT Person.name FROM Person WHERE "age" < '30'
SELECT COUNT(*) FROM Person WHERE age > 30 AND job ILIKE '%engineer%'
SELECT COUNT(*) FROM Person WHERE age > 30 AND job = 'engineer'
SELECT gender, AVG(age) AS average_age FROM Person GROUP BY gender
SELECT gender, AVG(age) AS average_age FROM Person GROUP BY gender
SELECT Person.job, AVG(Person.age) AS average_age FROM Person GROUP BY Person.job
SELECT Person.job, AVG(Person.age) AS average_age FROM Person GROUP BY Person.job
SELECT Person.job, AVG(Person.age) AS average_age FROM Person WHERE Person.gender = 'male' GROUP BY Person.job
SELECT Person.job, AVG(Person.age) AS average_age FROM Person WHERE Person.gender = 'male' GROUP BY Person.job
SELECT p.name, MIN(p.age) AS min_age FROM Person AS p GROUP BY p.job
SELECT p.name, p.age, r.job FROM Person AS p JOIN Role ON p.job = r.city ORDER BY p.age ASC NULLS FIRST
SELECT Person.gender, COUNT(*) AS total_people FROM Person WHERE age < 40 GROUP BY Person.gender
SELECT Person.gender, COUNT(*) AS total_people FROM Person WHERE age < 40 GROUP BY Person.gender
SELECT p.name FROM Person WHERE p.age > (SELECT MIN(e.age) FROM Person AS e)
SELECT p.name FROM Person JOIN Person AS e ON p.gender = e.gender ORDER BY p.age
SELECT COUNT(*) AS total_people FROM Person WHERE age > (SELECT AVG(age) FROM Person)
SELECT p.name AS person_name, e.name AS engineer_name, COUNT(d.city) AS days_older FROM Person JOIN Person AS e ON p.age > e.age GROUP BY p.name, e.name
SELECT p.name, p.job FROM Person AS p ORDER BY p.name NULLS FIRST
SELECT p.name, p.job FROM Person AS p ORDER BY p.name ASC NULLS FIRST
SELECT p.name FROM Person AS p ORDER BY p.age DESC NULLS LAST
SELECT Person.name FROM Person ORDER BY Person.age DESC NULLS LAST
SELECT p.name, p.age FROM Person AS p WHERE gender = 'Male' ORDER BY p.age
SELECT p.name, p.age FROM Person AS p WHERE gender = 'male' ORDER BY p.age
SELECT p.name FROM Person AS p LEFT JOIN Student_Friends ON p.gender = sf.age WHERE sf.city IS NULL
SELECT p1.name FROM Person AS p1 LEFT JOIN Person AS p2 ON (p1.name = p2.name AND p2.age BETWEEN 18 AND 24) WHERE p2.name IS NULL
SELECT PersonFriend.name FROM PersonFriend GROUP BY PersonFriend.name HAVING COUNT(Personfriend.friend) = 1
SELECT pf.name FROM PersonFriend AS pf WHERE NOT pf.friend IS NULL GROUP BY pf.name HAVING COUNT(pf.friend) = 1
SELECT PersonFriend.name FROM PersonFriend WHERE "friend" ILIKE '%Zach%' ORDER BY PersonFriend.year DESC NULLS LAST LIMIT 1
SELECT PersonFriend.name FROM PersonFriend WHERE "friend" ILIKE '%Zach%' ORDER BY (CURRENT_DATE - TO_DATE(CAST(year AS TEXT), 'YYYY')) DESC NULLS LAST LIMIT 1
SELECT PersonFriend.name FROM PersonFriend WHERE "friend" ILIKE '%Alice%' ORDER BY year ASC LIMIT 1
SELECT pf.name FROM PersonFriend AS pf WHERE pf.friend = 'Alice' ORDER BY pf.year ASC NULLS FIRST
SELECT p1.name FROM Person AS p1 LEFT JOIN Person AS p2 ON (p1.name <> p2.name AND p1.city = p2.city) WHERE p2.name IS NULL
SELECT p1.name FROM Person AS p1 LEFT JOIN Person AS p2 ON (p1.name = p2.name) WHERE p2.name IS NULL
SELECT COUNT(*) FROM PersonFriend WHERE year IS NULL AND NOT friend ILIKE '%Austin%'
SELECT COUNT(*) FROM PersonFriend WHERE year IS NULL AND NOT friend ILIKE '%Austin%'
SELECT COUNT(*) AS total_members FROM member
SELECT member.name FROM member ORDER BY member.name ASC NULLS FIRST
SELECT member.name, member.country FROM member
SELECT member.name FROM member WHERE member.country IN ('United States', 'Canada')
SELECT member.country, COUNT(member.member_id) AS total_members FROM member GROUP BY member.country
SELECT member.country, COUNT(member.member_id) AS total_members FROM member GROUP BY member.country ORDER BY total_members DESC NULLS LAST LIMIT 1
SELECT member.country FROM member GROUP BY member.country HAVING COUNT(member.member_id) > 2
SELECT college.leader_name, college.college_location FROM college
SELECT member.name FROM member WHERE NOT member.member_id IN (SELECT round_member.member_id FROM round_member)
SELECT Documents.document_name, Documents.access_count FROM Documents ORDER BY Documents.document_name ASC NULLS FIRST
SELECT Documents.document_name, Documents.access_count FROM Documents ORDER BY Documents.document_name ASC NULLS FIRST
SELECT document_name, access_count FROM Documents) SELECT document_name, MAX(access_count) AS max_access_count FROM document_access GROUP BY document_name
SELECT document_name, access_count FROM Documents) SELECT document_name, access_count FROM document_access_count ORDER BY access_count DESC NULLS LAST LIMIT 1
SELECT Documents.document_type_code FROM Documents GROUP BY Documents.document_type_code HAVING COUNT(Documents.document_name) > 4
SELECT Documents.document_type_code FROM Documents GROUP BY Documents.document_type_code HAVING COUNT(Documents.document_code) >= 2
SELECT SUM(documents.access_count) AS total_access_count FROM Documents WHERE documents.document_type_code = (SELECT MAX(documents.document_type_code) FROM Documents)
SELECT SUM(documents.access_count) AS total_access_count FROM Documents GROUP BY documents.document_type_code ORDER BY total_access_count DESC NULLS LAST LIMIT 1
-1
-1
SELECT Documents.document_type_code FROM Documents WHERE Documents.document_name ilike '%David%CV%'
SELECT Documents.document_type_code FROM Documents WHERE Documents.document_name ILIKE '%David%CV%'
SELECT Documents.document_name FROM Documents WHERE Documents.access_count IN (SELECT MAX(Documents.access_count) FROM Documents GROUP BY Documents.document_type_code HAVING COUNT(DISTINCT Documents.document_structure_code) >= 3)
SELECT Documents.document_name FROM Documents WHERE Documents.document_type_code IN (SELECT type_code FROM (SELECT type_code, COUNT(*) AS count FROM Documents GROUP BY type_code ORDER BY count DESC NULLS LAST LIMIT 3) AS subquery) AND Documents.document_structure_code IN (SELECT structure_code FROM (SELECT structure_code, COUNT(*) AS count FROM Documents GROUP BY structure_code ORDER BY count DESC NULLS LAST LIMIT 3) AS subquery2)
SELECT documents.document_type_code FROM Documents WHERE documents.access_count > 10000 GROUP BY documents.document_type_code
SELECT Documents.document_type_code FROM Documents WHERE Documents.access_count <= 10000 ORDER BY Documents.document_type_code
SELECT Documents.document_name FROM Documents WHERE Documents.document_structure_code IS NULL
SELECT Documents.document_name FROM Documents WHERE NOT Documents.document_name ILIKE '%section%'
SELECT users.user_name, users.password FROM Users WHERE users.role_code = (SELECT MAX(users2.role_code) FROM Users AS users2)
SELECT Users.user_name, Users.password FROM Users WHERE Users.role_code = (SELECT MAX(Users.role_code) FROM Users)
SELECT Documents.document_name FROM Documents WHERE NOT Documents.document_name ILIKE '%image%'
SELECT Documents.document_name FROM Documents WHERE NOT Documents.document_name ILIKE '%image%'
SELECT Documents.document_name FROM Documents WHERE Documents.document_name ILIKE '%CV%'
SELECT Documents.document_name FROM Documents WHERE Documents.document_name ILIKE '%CV%'
SELECT COUNT(*) AS total_users FROM Users WHERE NOT user_login IS NULL
SELECT COUNT(*) AS total_users FROM Users WHERE NOT user_login IS NULL
SELECT r.role_description FROM roles r WHERE r.role_id IN (SELECT u.role_id FROM users u JOIN sessions s ON u.user_id = s.user_id GROUP BY u.user_id HAVING COUNT(s.session_id) > 0)
SELECT r.role_description FROM Roles AS r WHERE r.role_code IN (SELECT u.role_code FROM users) GROUP BY r.role_description ORDER BY COUNT(r.role_code) DESC NULLS LAST LIMIT 1
SELECT AVG(access_count) AS average_access_count FROM Documents WHERE document_name = (SELECT MIN(document_name) FROM Documents)
SELECT AVG(documents.access_count) AS average_access_count FROM Documents WHERE documents.document_name = (SELECT MIN(documents.document_name) FROM Documents)
SELECT Images.image_name, Images.image_url FROM Images ORDER BY Images.image_name
SELECT Images.image_name, Images.image_url FROM Images ORDER BY Images.image_name ASC NULLS FIRST
SELECT Users.role_code, COUNT(*) AS user_count FROM Users GROUP BY Users.role_code
SELECT Users.role_code, COUNT(*) AS user_count FROM Users GROUP BY Users.role_code
SELECT Documents.document_type_code FROM Documents GROUP BY Documents.document_type_code HAVING COUNT(Documents.document_code) > 2
SELECT Documents.document_type_code FROM Documents GROUP BY Documents.document_type_code HAVING COUNT(Documents.document_code) > 2
SELECT COUNT(*) FROM Companies
SELECT COUNT(*) FROM Companies
SELECT Companies.name FROM Companies ORDER BY Companies.Market_Value_billion DESC NULLS LAST
SELECT Companies.name FROM Companies ORDER BY Companies.Market_Value_billion DESC NULLS LAST
SELECT Companies.name FROM Companies WHERE "Headquarters" <> 'USA'
SELECT Companies.name FROM Companies WHERE "Headquarters" <> 'USA'
SELECT c.name, CAST(c.assets_billion AS FLOAT) AS assets FROM Companies AS c ORDER BY c.name ASC NULLS FIRST
SELECT c.name, CAST(c.assets_billion AS FLOAT) AS assets FROM Companies AS c ORDER BY c.name ASC NULLS FIRST
SELECT AVG(Profits_billion) AS average_profit FROM Companies
SELECT AVG(Profits_billion) AS average_profit FROM Companies
SELECT MAX(Sales_billion) AS max_sales, MIN(Sales_billion) AS min_sales FROM Companies WHERE Industry <> 'Banking'
SELECT MAX(Sales_billion) AS max_sales, MIN(Sales_billion) AS min_sales FROM Companies WHERE Industry <> 'Banking'
SELECT COUNT(DISTINCT Companies.Industry) AS number_of_industries FROM Companies
SELECT COUNT(DISTINCT Companies.Industry) AS num_industries FROM Companies
SELECT b.name FROM buildings AS b ORDER BY b.height DESC NULLS LAST
SELECT b.name FROM buildings AS b ORDER BY b.height DESC NULLS LAST
SELECT MAX(buildings.stories) AS max_stories FROM buildings
SELECT MAX(Stories) AS max_stories FROM buildings
SELECT b.name FROM buildings AS b WHERE b.status = 'on-hold' ORDER BY b.stories ASC NULLS FIRST
SELECT b.name FROM buildings AS b WHERE b.status = 'on-hold' ORDER BY b.stories ASC NULLS FIRST
SELECT Companies.Industry, COUNT(*) AS num_companies FROM Companies GROUP BY Companies.industry
SELECT c.industry, COUNT(*) AS num_companies FROM Companies AS c GROUP BY c.industry
SELECT Companies.Industry, COUNT(Companies.id) AS company_count FROM Companies GROUP BY Companies.industry ORDER BY company_count DESC NULLS LAST
SELECT Companies.Industry, COUNT(*) AS num_companies FROM Companies GROUP BY Companies.industry ORDER BY num_companies DESC NULLS LAST
SELECT Companies.Industry FROM Companies GROUP BY Companies.industry ORDER BY COUNT(Companies.id) DESC NULLS LAST LIMIT 1
SELECT Companies.Industry, COUNT(*) AS num_companies FROM Companies GROUP BY Companies.industry ORDER BY num_companies DESC NULLS LAST LIMIT 1
SELECT b.name FROM buildings AS b LEFT JOIN offices ON b.id = o.city WHERE o.city IS NULL
SELECT b.name FROM buildings AS b LEFT JOIN offices ON b.id = o.city WHERE o.city IS NULL
SELECT Companies.Industry FROM Companies WHERE Companies.Headquarters IN ('USA', 'China') GROUP BY Companies.industry
SELECT DISTINCT Companies.Industry FROM Companies WHERE (Comanies.headquarters ILIKE '%usa%' AND companies.headquarters ILIKE '%china%') GROUP BY companies.industry
SELECT COUNT(*) FROM Companies WHERE Industry IN ('Banking', 'Conglomerate')
SELECT COUNT(*) FROM Companies WHERE Industry IN ('Banking', 'Conglomerate')
SELECT Companies.Headquarters FROM Companies GROUP BY Companies.Headquarters HAVING COUNT(Companies.id) > 2
SELECT Companies.Headquarters FROM Companies GROUP BY Companies.Headquarters HAVING COUNT(Companies.id) > 2
SELECT COUNT(Product_ID) AS total_products FROM Products
SELECT Products.Product_Name FROM Products ORDER BY Products.Product_Price ASC NULLS FIRST
SELECT Products.Product_Name, Products.Product_Type_Code FROM Products
SELECT Products.Product_Name, Products.Product_Type_Code, Products.Product_ID, Products.Product_Price FROM Products WHERE (Products.Product_Name ILIKE '%Dining%' OR Products.Product_Name ILIKE '%Trading Policy%')
SELECT AVG(Products.Product_Price) AS average_price FROM Products
SELECT Products.Product_Name FROM Products ORDER BY Products.Product_Price DESC NULLS LAST LIMIT 1
SELECT Products.Product_Type_Code, COUNT(*) AS product_count FROM Products GROUP BY Products.Product_Type_Code
SELECT Products.Product_Type_Code, COUNT(*) AS frequency FROM Products GROUP BY Products.Product_Type_Code ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT DISTINCT Products.Product_Type_Code FROM Products GROUP BY Products.Product_Type_Code HAVING COUNT(Products.Product_ID) >= 2
SELECT DISTINCT Products.Product_Type_Code FROM Products WHERE Products.Product_ID IN (SELECT Product_ID FROM Products WHERE Product_Price > 4500) AND Products.Product_ID IN (SELECT Product_ID FROM Products WHERE Product_Typed < 3000)
SELECT p.product_name FROM products LEFT JOIN Products AS ep ON p.product_id = ep.product_id WHERE ep.product_id IS NULL
SELECT COUNT(*) AS total_artworks FROM artwork
SELECT artwork.name FROM artwork ORDER BY artwork.name ASC NULLS FIRST
SELECT artwork.name FROM artwork WHERE artwork.type <> 'Program Talent Show'
SELECT festival_detail.festival_name, festival_detail.location FROM festival_detail
SELECT festival_detail.chair_name FROM festival_detail ORDER BY festival_detail.year ASC NULLS FIRST
SELECT festival_detail.location FROM festival_detail ORDER BY festival_detail.num_of_audience DESC NULLS LAST LIMIT 1
SELECT festival_detail.festival_name FROM festival_detail WHERE festival_detail.year = 2007
SELECT AVG(festival_detail.num_of_audience) AS average_audience FROM festival_detail
SELECT festival_detail.festival_name FROM festival_detail ORDER BY festival_detail.year DESC NULLS LAST LIMIT 3
SELECT artwork.type, COUNT(artwork.artwork_id) AS number_of_artworks FROM artwork GROUP BY artwork.type ORDER BY number_of_artworks DESC NULLS LAST
SELECT artwork.type FROM artwork GROUP BY artwork.type ORDER BY COUNT(artwork.type) DESC NULLS LAST LIMIT 1
SELECT festival_detail.year FROM festival_detail GROUP BY festival_detail.year HAVING COUNT(festival_detail.festival_id) > 1
SELECT artwork.name FROM artwork WHERE NOT artwork.artwork_id IN (SELECT nom.type FROM nominated)
SELECT SUM(festival_detail.num_of_audience) AS total_audience FROM festival_detail WHERE festival_detail.year IN (2008, 2010)
SELECT SUM(festival_detail.num_of_audience) AS total_audience FROM festival_detail
SELECT festival_detail.year FROM festival_detail WHERE festival_detail.location ILIKE '%United%States%' AND NOT festival_detail.location ILIKE '%United%States%'
SELECT COUNT(premises.premise_id) AS number_of_premises FROM Premises
SELECT Premises.premise_id FROM Premises GROUP BY Premises.premise_id
SELECT Premises.premise_id, Premises.premise_details FROM Premises ORDER BY Premises.premise_id NULLS FIRST
SELECT Premises.premise_details, COUNT(Premises.premise_id) AS total_premises FROM Premises GROUP BY Premises.premise_details
SELECT product_category, COUNT(mailshot_id) AS number_of_mailshots FROM Mailshot_Campaigns GROUP BY product_category
SELECT customers.customer_name, customers.customer_phone FROM Customers WHERE customers.customer_email IS NULL
SELECT Mailshot_Customers.outcome_code, COUNT(*) AS total_mailshots FROM Mailshot_Customers GROUP BY Mailshot_customers.outcome_code
SELECT DISTINCT address_type_code FROM Customer_Addresses
SELECT customer_id, order_shipping_charges FROM customer_orders WHERE order_status_code IN ('Cancelled', 'Paid')
SELECT COUNT(CID) AS total_courses FROM Course
SELECT COUNT(CID) AS total_courses FROM Course
SELECT COUNT(*) FROM Course WHERE Credits > 2
SELECT COUNT(*) FROM Course WHERE Credits > 2
SELECT Course.CName FROM Course WHERE Course.Credits = '1'
SELECT Course.CName FROM Course WHERE Course.Credits = '1'
SELECT Course.CName FROM Course WHERE Course.Days ILIKE '%MTW%' ORDER BY Course.CName
SELECT Course.CName FROM Course WHERE Course.Days ILIKE '%MTW%'
SELECT COUNT(*) AS department_count FROM Department WHERE Division ILIKE '%AS%'
SELECT COUNT(*) FROM Department WHERE Division ILIKE '%AS%'
SELECT Department.DPhone FROM Department WHERE "Room" ILIKE '%268%'
SELECT Department.DPhone FROM Department WHERE "Room" ILIKE '%268%'
SELECT COUNT(DISTINCT StUid) AS num_students FROM Enrolled_in WHERE Grade ILIKE '%B%'
SELECT COUNT(DISTINCT Enrolled_in.StuID) AS number_of_students FROM Enrolled_in WHERE Enrolled_in.Grade = 'B'
SELECT MAX(gradepoint) AS max_gradepoint, MIN(gradepoint) AS min_gradepoint FROM Gradeconversion
SELECT MAX(gradeconversion.gradepoint) AS max_grade_points, MIN(gradeconversion.gradepoint) AS min_grade_points FROM Gradeconversion
SELECT Student.Fname FROM Student WHERE Student.Fname ILIKE '%a%'
SELECT Student.Fname FROM Student WHERE Student.Fname ILIKE '%a%'
SELECT faculty.fname, faculty.lname FROM Faculty WHERE faculty.building = 'NEB' AND faculty.sex = 'M'
SELECT faculty.lname, faculty.fname FROM Faculty WHERE faculty.sex = 'M' AND faculty.building ILIKE '%NEB%'
SELECT faculty.room FROM Faculty WHERE faculty.rank = 'Professor' AND faculty.building = 'NEB'
SELECT faculty.room FROM Faculty WHERE faculty.rank = 'Professor' AND faculty.building = 'NEB'
SELECT Department.DName FROM Department WHERE "Building" ILIKE '%mergenthaler%'
SELECT Department.DName FROM Department WHERE "Building" ILIKE '%Mergenthaler%'
SELECT Course.CID, Course.CName, Course.Credit FROM Course ORDER BY Course.Credit ASC NULLS FIRST
SELECT Course.CID, Course.CName, Course.Credit FROM Course ORDER BY Course.Credit ASC NULLS FIRST
SELECT Course.CName FROM Course ORDER BY Course.Credits DESC NULLS LAST
SELECT Course.CName FROM Course ORDER BY Course.Credits DESC NULLS LAST
SELECT Student.Fname FROM Student ORDER BY Student.Age DESC NULLS LAST
SELECT s.fname, s.age FROM Student AS s ORDER BY s.age DESC NULLS LAST
SELECT Student.LName FROM Student WHERE Student.Sex = 'F' ORDER BY Student.Age DESC NULLS LAST
SELECT Student.LName FROM Student WHERE Student.Sex = 'Female' ORDER BY Student.Age DESC NULLS LAST
SELECT faculty.lname FROM Faculty WHERE faculty.building = 'Barton' ORDER BY faculty.lname ASC NULLS FIRST
SELECT lname FROM Faculty WHERE building = 'Barton' ORDER BY lname
SELECT faculty.fname FROM Faculty WHERE faculty.rank ILIKE '%Professor%' ORDER BY faculty.fname ASC NULLS FIRST
SELECT f.fname FROM Faculty AS f
SELECT Department.DName FROM Department WHERE NOT Department.DNo IN (SELECT Student.DNo FROM Student)
SELECT Department.DName FROM Department WHERE NOT Department.DNo IN (SELECT Student.DNo FROM Student)
SELECT faculty.lname, faculty.fname, COUNT(courses.room) AS course_count FROM faculty JOIN Faculty ON faculty.rank = courses.rank GROUP BY faculty.lname, faculty.fname ORDER BY course_count ASC LIMIT 1
SELECT MIN(faculty.rank) AS least_common_rank FROM Faculty GROUP BY faculty.rank
SELECT CName FROM Course WHERE (Credit = '3' OR Credit = '1') AND Hours = '4'
SELECT Course.CName FROM Course WHERE (Course.Credit = 3 OR (Course.Credit = 1 AND Course.Hours = 4))
SELECT DName FROM Department WHERE "Division" IN ('AS', 'EN') AND "Building" = 'NEB' ORDER BY DName
SELECT DName FROM Department WHERE "Division" IN ('AS', 'EN') AND "Building" = 'NEB'
SELECT Student.Fname FROM Student WHERE NOT Student.StuID IN (SELECT CourseEnrollment.Student_ID FROM Student)
SELECT S.Fname FROM Student LEFT JOIN Student AS E ON S.StuID = E.Student_id WHERE E.Student_id IS NULL
SELECT ps.product_id, RANK() OVER (ORDER BY ps.total_value_purchased DESC NULLS LAST) AS rank FROM Product_Suppliers AS ps WHERE NOT total_value_purchased IS NULL AND product_id IN (SELECT product_id FROM Product_Suppliers GROUP BY product_id HAVING COUNT(product_id) > 1)
SELECT ps.product_id FROM Product_Suppliers AS ps GROUP BY ps.product_id ORDER BY total_value_purchased DESC NULLS LAST LIMIT 3
SELECT p.product_id, pt.product_type_code FROM Products AS p JOIN (SELECT MIN(product_price) AS min_price, product_id FROM Products GROUP BY product_id) AS mp ON p.product_price = mp.min_price
SELECT p.product_id, pt.product_type_code FROM Products JOIN Products AS pt ON p.product_type_code = pt.product_type_code ORDER BY p.product_price ASC LIMIT 1
SELECT COUNT(DISTINCT product_type_code) AS number_of_product_types FROM Products
SELECT COUNT(DISTINCT product_type_code) AS number_of_product_types FROM Products
SELECT payment_method_code, COUNT(*) AS number_of_customers FROM Customers GROUP BY payment_method_code
SELECT c.payment_method_code, COUNT(*) AS customer_count FROM Customers AS c GROUP BY c.payment_method_code
SELECT Order_Items.product_id FROM Order_Items GROUP BY Order_Items.product_id ORDER BY COUNT(Order_Items.order_item_id) DESC NULLS LAST LIMIT 1
SELECT Order_Items.product_id FROM Order_Items GROUP BY Order_Items.product_id ORDER BY COUNT(Order_Items.order_item_id) DESC NULLS LAST LIMIT 1
SELECT product_type_code, AVG(product_price) AS average_price FROM Products GROUP BY product_type_code
SELECT product_type_code, AVG(product_price) AS average_price FROM Products GROUP BY product_type_code
SELECT d.dept_store_chain_id, COUNT(s.dept_store_id) AS num_stores FROM Department_Stores AS d JOIN Store_Locations ON d.dept_store_id = s.dept_store_id GROUP BY d.dept_store_chain_id ORDER BY num_stores DESC NULLS LAST LIMIT 2
SELECT department_stores.dept_store_chain_id FROM department_stores GROUP BY department_stores.dept_store_chain_id HAVING COUNT(department_stores.dept_store_id) > (SELECT COUNT(dept_store_id) FROM department_stores WHERE dept_store_chain_id != department_stores.dept_store_chain_id GROUP BY dept_store_chain_id HAVING COUNT(dept_store_id) > 1))
SELECT MIN(department_id) AS min_department_id FROM Staff_Department_Assignments
SELECT MIN(department_id) AS min_staff_department_id FROM Staff_Department_Assignments
SELECT product_type_code, MIN(product_price) AS min_price, MAX(product_price) AS max_price FROM Products GROUP BY product_type_code
SELECT product_type_code, MIN(product_price) AS min_product_price, MAX(product_price) AS max_product_price FROM Products GROUP BY product_type_code
SELECT p.product_type_code FROM Products AS p WHERE p.product_price > (SELECT AVG(product_price) FROM Products)
SELECT Products.product_type_code FROM Products WHERE (SELECT AVG(Products.product_price) FROM Products) < (SELECT AVG(Products.product_price) FROM Products WHERE Products.product_type_code = 'Products.product_type_code') GROUP BY Products.product_type_code
SELECT p.product_id, p.product_name FROM Products AS p WHERE p.product_price BETWEEN 600 AND 700
SELECT p.product_id, p.product_name FROM Products AS p WHERE p.product_price BETWEEN 600 AND 700
SELECT DISTINCT a.customer_id FROM customer_orders JOIN (SELECT order_id FROM Customer_Orders) AS b ON a.order_id > b.order_id
SELECT DISTINCT a.customer_id FROM Customer_Orders AS a JOIN Customer_Orders AS b ON a.order_id > b.order_id AND b.order_status_code = 'Cancelled' WHERE a.order_status_code <> 'Cancelled'
SELECT sda.staff_id FROM Staff_Department_Assignments AS sda JOIN (SELECT sd.staff_id, MIN(sd.date_assigned_from) AS min_date FROM Staff_Department_Assignments AS sd WHERE sd.job_title_code = 'C' GROUP BY sd.staff_id) AS sdmin ON sda.staff_id = sdmin.staff_id WHERE sda.date_assigned_from < sdmin.min_date
SELECT s.staff_id FROM Staff_Department_assignments s JOIN (SELECT staff_id, MIN(date_assigned_from) AS min_date FROM Staff_department_assignments WHERE department_id IN (SELECT id FROM Departments WHERE department_name = 'Clerical') GROUP BY staff_id) c ON s.staff_id = c.staff_id AND s.date_assigned_from < c.min_date
SELECT Customers.customer_name, Customers.customer_id FROM Customers WHERE Customers.customer_address ILIKE '%TN%'
SELECT Customers.customer_name, Customers.customer_id FROM Customers WHERE 'TN' ILIKE '%customers.customer_address%'
SELECT Customers.customer_phone FROM Customers
SELECT Customers.customer_phone FROM Customers
SELECT DISTINCT oi.product_id FROM Order_Items AS oi WHERE (SELECT COUNT(*) FROM Order_Items AS oi2 WHERE oi2.order_item_id = oi.order_item_id) > 3 OR (SELECT SUM(order_id) FROM Supplier_Products WHERE sp.product_id = oi.product_id) > 80000
SELECT product_id FROM Order_Items GROUP BY product_id HAVING COUNT(order_item_id) > 3 OR SUM(order_item_id) > 80000
SELECT product_id, product_name FROM Products WHERE product_price < 600 OR product_price > 900
SELECT p.product_id, p.product_name FROM Products AS p WHERE p.product_price < 600 OR p.product_price > 900
SELECT ps.supplier_id FROM Product_Suppliers AS ps WHERE CAST(ps.total_value_purchased AS FLOAT) > 50000 OR CAST(ps.total_value_purchased AS FLOAT) < 30000
SELECT supplier_id FROM Product_Suppliers GROUP BY supplier_id HAVING AVG(total_value_purchased) > 50000 OR AVG(total_value_purchased) < 30000
SELECT AVG(total_amount_purchased) AS average_amount_purchased, AVG(total_value_purchased) AS average_value_purchased FROM Product_Suppliers WHERE NOT total_amount_purchased IS NULL AND NOT total_value_purchased IS NULL
SELECT AVG(total_amount_purchased) AS average_total_amount_purchased, AVG(total_value_purchased) AS average_total_value_purchased FROM Product_Suppliers GROUP BY supplier_id HAVING COUNT(product_id) = (SELECT MAX(COUNT(product_id)) FROM Product_Suppliers)
SELECT MAX(customer_code), MIN(customer_code) FROM Customers
SELECT MAX(customer_code) AS max_customer_code, MIN(customer_code) AS min_customer_code FROM Customers
SELECT product_type_code, MIN(product_price) AS min_price, MAX(product_price) AS max_price FROM Products GROUP BY product_type_code ORDER BY product_type_code ASC NULLS FIRST
SELECT product_type_code, MIN(product_price) AS min_product_price, MAX(product_price) AS max_product_price FROM Products GROUP BY product_type_code ORDER BY product_type_code
SELECT o.order_id, o.customer_id FROM Customer_Orders AS o WHERE o.order_status_code = 'Cancelled' ORDER BY o.order_date NULLS FIRST
SELECT o.order_id, c.customer_id FROM orders JOIN Customer_Orders AS c ON o.customer_id = c.customer_id WHERE order_status_code = 'Cancelled' ORDER BY order_date
SELECT customer_id, customer_name FROM Customers WHERE customer_address ILIKE '%WY%' AND payment_method_code <> 'credit card'
SELECT c.customer_id, c.customer_name FROM Customers AS c WHERE c.payment_method_code <> 'credit card' AND c.customer_address ILIKE '%WY%'
SELECT AVG(product_price) AS average_price FROM Products WHERE product_type_code = 'clothes'
SELECT AVG(product_price) AS average_price FROM Products WHERE product_type_code = 'clothes'
SELECT p.product_name FROM Products AS p WHERE p.product_type_code = 'hardware' ORDER BY p.product_price DESC NULLS LAST LIMIT 1
SELECT Products.product_name FROM Products WHERE Products.product_type_code = 'hardware' ORDER BY Products.product_price DESC NULLS LAST LIMIT 1
SELECT COUNT(*) AS total_aircraft FROM aircraft
SELECT COUNT(*) AS total_aircraft FROM aircraft
SELECT aircraft.description FROM aircraft
SELECT a.aircraft_id, a.description FROM aircraft AS a
SELECT AVG(International_passengers) AS average_international_passengers FROM airport
-1
SELECT CAST(International_passengers AS FLOAT) / NULLIF(total_passengers, 0) AS fraction_international, CAST(domestic_passengers AS FLOAT) / NULLIF(total_passengers, 0) AS fraction_domestic FROM airport WHERE airport_name ILIKE '%London%Heathrow%'
SELECT Airport_Name, Total_Passengers AS total_passengers, CAST(International_Passengers AS FLOAT) / NULLIF(Total_Passengers, 0) AS fraction_international_passengers, CAST(Domestic_Passengers AS FLOAT) / NULLIF(Total_Passengers, 0) AS fraction_domestic_passengers FROM airport WHERE Airport_Name ILIKE '%London%Heathrow%'
SELECT SUM(airport.domestic_passengers) AS total_domestic_passengers FROM airport WHERE airport.airport_name ILIKE '%London%'
SELECT SUM(domestic_passengers) AS total_domestic_passengers FROM airport WHERE airport_name ILIKE '%London%'
SELECT MAX(Transit_Passengers) AS max_transit_passengers, MIN(Transit_Passengers) AS min_transit_passengers FROM airport
SELECT MAX(Transit_Passengers) AS max_transit_passengers, MIN(Transit_Passengers) AS min_transit_passengers FROM airport
SELECT pilot.name FROM pilot WHERE pilot.age >= 25 AND pilot.age <= 30
SELECT p.name FROM pilot AS p WHERE p.age >= 25
SELECT pilot.name FROM pilot ORDER BY pilot.name ASC NULLS FIRST
SELECT pilot.name FROM pilot ORDER BY pilot.name ASC NULLS FIRST
SELECT pilot.name FROM pilot WHERE pilot.age >= 30 ORDER BY pilot.name DESC NULLS LAST
SELECT pilot.name FROM pilot WHERE pilot.age >= 30 ORDER BY pilot.name DESC NULLS LAST
SELECT p.name FROM pilot AS p ORDER BY p.age DESC NULLS LAST
SELECT pilot.name FROM pilot ORDER BY pilot.age DESC NULLS LAST
SELECT a.aircraft_id, a.aircraft FROM aircraft AS a WHERE NOT a.aircraft_id IN (SELECT m.aircraft_id FROM matches)
SELECT aircraft.aircraft FROM aircraft WHERE NOT aircraft.aircraft_id IN (SELECT match.aircraft_id FROM match)
SELECT a.airport_name, TO_CHAR(a.total_passengers, '999999999') AS total_passengers FROM airport AS a WHERE a.international_passengers = (SELECT MAX(b.international_passengers) FROM airport AS b)
SELECT a.airport_name, CAST(a.international_passengers AS FLOAT) / NULLIF(b.total_passengers, 0) AS ratio FROM airport AS a JOIN (SELECT airport_id, COUNT(*) AS total_passengers FROM passenger GROUP BY airport_id) AS b ON a.airport_id = b.airport_id ORDER BY ratio DESC NULLS LAST LIMIT 1
SELECT p.name FROM pilot AS p JOIN race_pilot ON p.pilot_id = rp.pilot_id WHERE rp.age <> 'AUS' AND NOT EXISTS(SELECT 1 FROM win WHERE w.pilot_id = p.pilot_id)
SELECT p.name FROM pilot p WHERE p.pilot_id NOT IN (SELECT w.pilot_id FROM win w JOIN race r ON w.race_id = r.race_id WHERE r.country_code = 'AUS')
SELECT COUNT(DISTINCT Status_of_Thing_Code) AS number_of_status_codes FROM Timed_Status_of_Things
SELECT organizations.organization_id FROM Organizations WHERE organizations.parent_organization_id IS NULL
SELECT MAX(date_moved_in) AS last_move_in_date FROM Residents
SELECT Residents.resident_id, Residents.property_id, Residents.date_moved_in, Residents.date_moved_out, Residents.other_details FROM Residents WHERE Residents.other_details ILIKE '%Miss%'
SELECT customer_events.customer_event_id, customer_events.date_moved_in, customer_events.property_id FROM Customer_Events
SELECT COUNT(DISTINCT customers.customer_id) AS number_of_customers FROM Customers LEFT JOIN event_customers ON customers.customer_id = event_customers.customer_id WHERE event_customers.customer_id IS NULL
SELECT date_moved_in AS move_in_date FROM Residents GROUP BY date_moved_in
SELECT COUNT(*) AS total_schools FROM school
SELECT COUNT(*) FROM school
SELECT school.location FROM school ORDER BY school.enrollment ASC NULLS FIRST
SELECT school.location FROM school ORDER BY school.enrollment ASC NULLS FIRST
SELECT school.location FROM school ORDER BY school.founded DESC NULLS LAST
SELECT school.location FROM school ORDER BY school.founded DESC NULLS LAST
SELECT school.enrollment FROM school WHERE school.denomination <> 'Catholic'
SELECT school.school_id, school.enrollment FROM school WHERE school.denomination <> 'Catholic'
SELECT AVG(Enrollment) AS average_enrollment FROM school
-1
SELECT DISTINCT player.team FROM player ORDER BY player.team ASC NULLS FIRST
SELECT p.player_id, p.team FROM player AS p ORDER BY p.team ASC NULLS FIRST
SELECT COUNT(DISTINCT player.position) AS number_of_positions FROM player
SELECT COUNT(DISTINCT Player.position) AS total_positions FROM player
SELECT MAX(player_id) AS max_age, MIN(school_id) AS min_team_id FROM player
SELECT MAX(player.age) AS max_age, player.team FROM player GROUP BY player.team ORDER BY max_age DESC NULLS LAST
SELECT p.team, MAX(p.age) AS max_age FROM player AS p GROUP BY p.team ORDER BY max_age DESC NULLS LAST LIMIT 5
SELECT p.team FROM player AS p WHERE p.age IN (SELECT MAX(age) FROM player GROUP BY team) GROUP BY p.team HAVING COUNT(p.player_id) >= 5
SELECT school.denomination, COUNT(school.school_id) AS number_of_schools FROM school GROUP BY school.denomination ORDER BY number_of_schools DESC NULLS LAST
SELECT school.denomination, COUNT(*) AS number_of_schools FROM school GROUP BY school.denomination
SELECT school.denomination, COUNT(school.school_id) AS total_schools FROM school GROUP BY school.denomination ORDER BY total_schools DESC NULLS LAST
SELECT school.denomination, COUNT(school.school_id) AS school_count FROM school GROUP BY school.denomination ORDER BY school_count DESC NULLS LAST
SELECT school_colors FROM school WHERE enrollment = (SELECT MAX(enrollment) FROM school)
SELECT school_colors FROM school WHERE enrollment = (SELECT MAX(enrollment) FROM school)
SELECT school.location FROM school WHERE NOT school.school_id IN (SELECT team.school_id FROM team)
SELECT s.location FROM school LEFT JOIN school AS ps ON s.school_id = ps.school_id WHERE ps.school_id IS NULL
SELECT school.denomination FROM school WHERE (school.founded < 1890 OR school.founded > 1900) GROUP BY school.denomination
SELECT school_id FROM school WHERE (founded < '1890' OR founded > '1900') GROUP BY denomination
SELECT school_details.nickname FROM school_details WHERE school_details.division <> '1'
SELECT school_details.nickname FROM school_details WHERE school_details.division <> '1'
SELECT s.denomination FROM school AS s WHERE s.school_id IN (SELECT school_id FROM school GROUP BY school_id HAVING COUNT(school_id) > 1)
SELECT school.denomination FROM school GROUP BY school.enrollment HAVING COUNT(school.school_id) > 1
SELECT district.district_name FROM district ORDER BY district.city_area DESC NULLS LAST
SELECT district.district_name FROM district ORDER BY district.city_area DESC NULLS LAST
SELECT DISTINCT product.max_page_size FROM product GROUP BY product.max_page_size HAVING COUNT(product.product_id) > 3
SELECT product.max_page_size FROM product WHERE product.product_id IN (SELECT product_id FROM product GROUP BY product_id HAVING COUNT(product_id) > 3)
SELECT d.district_name, TO_CHAR(TO_TIMESTAMP(d.city_population), 'FM99999') AS city_population FROM district AS d WHERE d.city_population BETWEEN 200000 AND 2000000
SELECT d.district_name, c.city_population FROM district JOIN district AS c ON d.headquartered_city = c.district_id WHERE d.city_area BETWEEN 200000 AND 2000000
SELECT district.district_name FROM district WHERE district.city_area > 10 OR district.city_population > 100000
SELECT district.district_name FROM district WHERE district.city_area > 10 OR district.city_population > 100000
SELECT d.district_name, COUNT(c.city_population) AS total_population FROM district JOIN district AS c ON d.district_id = c.district_id GROUP BY d.district_name ORDER BY total_population DESC NULLS LAST LIMIT 1
SELECT d.district_name, d.city_population FROM district AS d WHERE d.city_population = (SELECT MAX(city_population) FROM district)
SELECT district.district_name, district.city_population, district.city_area FROM district ORDER BY district.city_area ASC LIMIT 1
SELECT district.district_name FROM district ORDER BY district.city_area ASC NULLS FIRST LIMIT 1
SELECT district_name, city_population, city_area FROM district ORDER BY city_area DESC NULLS LAST LIMIT 3
SELECT district.district_name, SUM(city_area) AS total_population FROM district GROUP BY district.district_name ORDER BY total_population DESC NULLS LAST LIMIT 3
SELECT store.type, COUNT(*) AS total_stores FROM store GROUP BY store.type
SELECT store.type, COUNT(*) AS number_of_stores FROM store GROUP BY store.type
-1
SELECT AVG(pages_per_minute_color) AS average_pages_per_minute_color FROM product
SELECT product_id, product FROM product WHERE max_page_size = 'A4' AND pages_per_minute_color < 5
SELECT product_id, product FROM product WHERE max_page_size = 'A4' AND pages_per_minute_color < 5
SELECT product_id, product FROM product WHERE (max_page_size = 'A4' OR pages_per_minute_color < 5)
SELECT product_id, product FROM product WHERE (max_page_size = 'A4' OR pages_per_minute_color < 5)
SELECT product FROM product WHERE product ILIKE '%Scanner%'
SELECT product FROM product WHERE product ILIKE '%Scanner%'
SELECT product_id, MAX(max_page_size) AS max_page_size FROM product GROUP BY product_id ORDER BY max_page_size DESC NULLS LAST
SELECT product.max_page_size, COUNT(*) AS frequency FROM product GROUP BY product.max_page_size ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT product.product FROM product WHERE product.max_page_size <> (SELECT MAX(product.max_page_size) FROM product)
SELECT product.product FROM product WHERE product.max_page_size <> (SELECT MAX(product.max_page_size) FROM product)
SELECT SUM(district.city_population) AS total_population FROM district WHERE district.city_area > (SELECT AVG(city_area) FROM district)
SELECT SUM(district.city_population) AS total_population FROM district WHERE district.city_area > (SELECT AVG(city_area) FROM district)
SELECT SUM(college.enr) AS total_enrollment FROM College
SELECT CAST(SUM(college.enr) AS FLOAT) / 1000000 AS total_students FROM College
-1
SELECT AVG(college.enr) AS average_students FROM College
SELECT COUNT(*) AS total_colleges FROM College
SELECT COUNT(DISTINCT cName) AS number_of_colleges FROM College
SELECT COUNT(*) FROM Player WHERE HS > 1000
SELECT COUNT(DISTINCT p.pID) AS num_players FROM Player AS p JOIN Training ON p.pID = t.pID WHERE CAST(t.ycard AS FLOAT) > 1000
SELECT COUNT(*) FROM College WHERE enr > 15000
SELECT COUNT(*) FROM College WHERE state > 15000
SELECT AVG(pid) AS average_training_hours FROM Player
SELECT AVG(hours) AS average_hours FROM (SELECT p.pID, COUNT(t.pname) * 2 AS hours FROM Player AS p JOIN Training ON p.pID = t.pID GROUP BY p.pID) AS subquery
SELECT Player.pName, SUM(Player.HS) AS total_hours FROM Player WHERE Player.HS < 1500 GROUP BY Player.pName
SELECT p.pName, SUM(t.ycard) AS total_hours FROM Player AS p JOIN Training ON p.pID = t.pID WHERE t.ycard < 1500 GROUP BY p.pName
SELECT COUNT(DISTINCT cName) AS number_of_colleges FROM Tryout
SELECT COUNT(DISTINCT cName) AS number_of_colleges FROM Tryout
SELECT Tryout.pPos FROM Tryout GROUP BY Tryout.pPos
SELECT pPos FROM Tryout GROUP BY pPos
SELECT COUNT(*) AS number_of_students_accepted FROM Tryout WHERE decision = 'Accepted'
SELECT COUNT(*) AS total_students FROM Tryout WHERE decision = 'yes'
SELECT COUNT(*) FROM Tryout WHERE pPos = 'goalie'
SELECT COUNT(*) AS total_students FROM Tryout WHERE pPos ILIKE '%goalie%'
SELECT MAX(pid) AS max_training_hours, AVG(pid) AS average_training_hours, MIN(pid) AS min_training_hours FROM Player
SELECT AVG(pid) AS average_hours_spent, MAX(pid) AS max_hours_spent, MIN(pid) AS min_hours_spent FROM Player
SELECT AVG(enr) AS average_enrollment FROM College WHERE state = 'FL'
SELECT AVG(college.enr) AS average_students FROM College WHERE state = 'Florida'
SELECT Player.pName FROM Player WHERE Player.HS BETWEEN 500 AND 1500
SELECT Player.pName FROM Player WHERE (Player.HS / 60) BETWEEN 500 AND 1500
SELECT pID, pName FROM Player WHERE pName ILIKE '%a%'
SELECT pID, pName FROM Player WHERE pName ILIKE '%a%'
SELECT college.cName, college.enr FROM College WHERE college.state = 'LA' AND college.enr > 10000
SELECT college.cName, college.enr FROM College WHERE college.state = 'Louisiana' AND college.enr > 10000
SELECT cName, state, enr FROM College ORDER BY enr ASC NULLS FIRST
SELECT college.cName, college.state, college.enr FROM College ORDER BY college.enr ASC NULLS FIRST
SELECT cName FROM College WHERE enr > '18000' ORDER BY cName
SELECT cName FROM College WHERE enr > 18000 ORDER BY cName ASC NULLS FIRST
SELECT p.pName FROM Player AS p WHERE p.yCard = 'yes' ORDER BY p.HS DESC NULLS LAST
SELECT p.pName FROM Player AS p WHERE NOT p.yCard IS NULL ORDER BY p.HS DESC NULLS LAST
SELECT DISTINCT cName FROM Tryout ORDER BY cName ASC NULLS FIRST
SELECT DISTINCT cName FROM Tryout ORDER BY cName ASC NULLS FIRST
SELECT pPos, COUNT(*) AS total_players FROM Tryout GROUP BY pPos ORDER BY total_players DESC NULLS LAST LIMIT 1
SELECT pPos FROM Tryout GROUP BY pPos ORDER BY COUNT(pID) DESC NULLS LAST LIMIT 1
SELECT cName, COUNT(pID) AS total_students FROM Tryout GROUP BY cName ORDER BY total_students DESC NULLS LAST
SELECT cName, COUNT(pID) AS total_students FROM Tryout GROUP BY cName ORDER BY total_students DESC NULLS LAST
SELECT college.cname FROM College ORDER BY enr DESC NULLS LAST LIMIT 3
SELECT college.cname FROM College WHERE enr IN (SELECT MAX(enr) FROM College GROUP BY cname LIMIT 3)
SELECT cName, state FROM College ORDER BY state NULLS FIRST, enr ASC NULLS FIRST
SELECT cName, state FROM College ORDER BY enr ASC NULLS FIRST
SELECT t.cName FROM Tryout t JOIN College c ON t.pID = c.college_id WHERE t.decision = 'yes' AND c.goal = 'yes'
SELECT t.pID, t.cName, t.pPos FROM Tryout AS t WHERE decision ILIKE '%yesuccessfully%' AND pPos ILIKE '%goalie%'
SELECT college.cName FROM College WHERE (college.state = 'AZ' AND college.enr < 13000) OR (college.state <> 'AZ' AND college.enr > 15000)
SELECT college.cName FROM College WHERE (college.state = 'CA' AND college.enr > 15000) OR (college.state = 'AZ' AND college.enr < 13000)
SELECT DISTINCT t.cName FROM Tryout AS t WHERE t.pPos IN ('goalie', 'mid')
SELECT t.cName AS school_name FROM Tryout AS t WHERE pPos = 'goal' AND decision = 'mid-field'
-1
-1
SELECT DISTINCT t.cName FROM Tryout AS t WHERE t.pPos = 'Midfielder' AND t.pPos <> 'Goalkeeper'
SELECT t.cName FROM Tryout WHERE t.pPos = 'Midfield' AND NOT EXISTS(SELECT 1 FROM Tryout AS g WHERE g.pID = t.pID)
-1
-1
SELECT college.state FROM College WHERE college.enr < (SELECT MAX(college.enr) FROM College) GROUP BY college.state
SELECT c.state FROM College AS c WHERE c.enr < (SELECT MIN(c2.enr) FROM College AS c2)
SELECT cName FROM College WHERE state = 'FL' AND enr > (SELECT MIN(enr) FROM College WHERE state = 'FL')
SELECT cName FROM College WHERE state <> 'Florida' AND enr > (SELECT MIN(enr) FROM College WHERE state = 'Florida')
SELECT college.cName FROM College WHERE college.state <> 'FL' AND college.enr > (SELECT MAX(college.enr) FROM College WHERE college.state = 'FL')
SELECT cName FROM College WHERE state <> 'Florida' AND enr > (SELECT MAX(enr) FROM College WHERE state = 'Florida')
SELECT SUM(college.enr) AS total_enrollments FROM College WHERE NOT college.cName ILIKE '%goalie%'
SELECT SUM(college.enr) AS total_students FROM College WHERE college.state IS NULL
SELECT state FROM College GROUP BY state HAVING AVG(enr) < (SELECT AVG(enr) FROM College)
SELECT state FROM College GROUP BY state HAVING COUNT(*) > (SELECT COUNT(*) / COUNT(DISTINCT state) FROM College)
SELECT college.state FROM College GROUP BY college.state HAVING AVG(college.enr) > college.enr
SELECT state FROM College GROUP BY state HAVING AVG(enr) > enr
SELECT COUNT(Device_ID) AS total_devices FROM device
SELECT COUNT(Device_ID) AS total_devices FROM device
SELECT device.carrier FROM device ORDER BY device.carrier ASC NULLS FIRST
SELECT DISTINCT device.carrier FROM device ORDER BY device.carrier ASC NULLS FIRST
SELECT device.carrier FROM device WHERE device.software_platform <> 'Android'
SELECT DISTINCT device.carrier FROM device WHERE device.software_platform <> 'Android'
SELECT shop.shop_name FROM shop ORDER BY shop.open_year ASC NULLS FIRST
SELECT shop.shop_name FROM shop ORDER BY shop.open_year ASC NULLS FIRST
SELECT AVG(quantity) AS average_quantity FROM stock
SELECT AVG(quantity) AS average_stock_quantity FROM stock
SELECT shop.shop_name, shop.location FROM shop ORDER BY shop.shop_name ASC NULLS FIRST
SELECT shop.shop_name, shop.location FROM shop ORDER BY shop.shop_name ASC NULLS FIRST
SELECT COUNT(DISTINCT Software_Platform) AS number_of_software_platforms FROM device
SELECT COUNT(DISTINCT Software_Platform) FROM device
SELECT shop.open_date FROM shop WHERE shop.shop_name ILIKE '%apple%' AND shop.open_year = DATE_PART(YEAR, CURRENT_DATE)
SELECT shop.open_date, TO_CHAR(TO_TIMESTAMP(shop.open_year, 'YYYY'), 'YYYY') AS open_year FROM shop WHERE shop.shop_name ILIKE '%Apple%'
SELECT s.shop_name FROM shop AS s WHERE s.open_year = (SELECT MAX(open_year) FROM shop)
SELECT shop.shop_name FROM shop WHERE shop.open_year = (SELECT MAX(open_year) FROM shop)
SELECT device.software_platform, COUNT(device.device_id) AS number_of_devices FROM device GROUP BY device.software_platform
SELECT device.software_platform, COUNT(device.device_id) AS number_of_devices FROM device GROUP BY device.software_platform
SELECT device.software_platform, COUNT(device.device_id) AS COUNT FROM device GROUP BY device.software_platform ORDER BY COUNT DESC NULLS LAST
SELECT device.software_platform, COUNT(*) AS frequency FROM device GROUP BY device.software_platform ORDER BY frequency DESC NULLS LAST
SELECT device.software_platform FROM device GROUP BY device.software_platform ORDER BY COUNT(device.software_platform) DESC NULLS LAST LIMIT 1
SELECT device.software_platform, COUNT(*) AS frequency FROM device GROUP BY device.software_platform ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT s.shop_name FROM shop LEFT JOIN shop ON s.shop_id = device.shop_id WHERE device.shop_id IS NULL
SELECT s.shop_name FROM shop LEFT JOIN shop AS ds ON s.shop_id = ds.shop_id WHERE ds.shop_id IS NULL
SELECT DISTINCT shop.location FROM shop WHERE (shop.open_year > 2012 AND shop.open_year < 2008) ORDER BY shop.location
SELECT DISTINCT shop.location FROM shop WHERE (shop.open_year > 2012 AND shop.open_year < 2008) OR (shop.open_year < 2008 AND shop.open_year > 2012)
SELECT device.carrier FROM device WHERE NOT device.device_id IN (SELECT device_id FROM stock)
SELECT device.carrier FROM device WHERE NOT device.device_id IN (SELECT stock.device_id FROM stock)
SELECT COUNT(*) AS total_bookings FROM Bookings
SELECT COUNT(*) AS total_bookings FROM Bookings
SELECT Booking_ID, Order_Date FROM Bookings
SELECT Bookings.Booking_ID, CAST(Bookings.Order_Date AS DATE) AS Order_Date FROM Bookings
SELECT Booking_ID, customer_id, workshop_group_id, status_code, store_id, order_date, planned_delivery_date, actual_delivery_date FROM Bookings
SELECT Booking_ID, Planned_Delivery_Date, Actual_Delivery_Date FROM Bookings
SELECT COUNT(*) AS total_customers FROM Customers
SELECT COUNT(*) AS total_customers FROM Customers
SELECT Customers.customer_phone, Customers.customer_email_address FROM Customers WHERE Customers.customer_name ILIKE '%Harold%'
SELECT Customers.customer_phone, Customers.customer_email_address FROM Customers WHERE Customers.customer_name ILIKE '%Harold%'
SELECT Drama_Workshop_Groups.Store_Name FROM Drama_Workshop_Groups
SELECT Drama_Workshop_Groups.Store_Name FROM Drama_Workshop_Groups
SELECT MIN(order_quantity), AVG(order_quantity), MAX(order_quantity) FROM Invoices
SELECT MIN(order_quantity) AS min_ordered, AVG(CAST(order_quantity AS FLOAT)) AS avg_quantity, MAX(order_quantity) AS max_quantity FROM Invoices
SELECT DISTINCT Invoices.payment_method_code FROM Invoices
SELECT DISTINCT Invoices.payment_method_code FROM Invoices
SELECT Marketing_Region_Descriptrion FROM Marketing_Regions WHERE Marketing_Region_Code = 'China'
SELECT Marketing_Regions.Marketing_Region_Description FROM Marketing_Regions WHERE Marketing_regions.Marketing_Region_Code = 'CHN'
SELECT Products.Product_Name FROM Products WHERE Products.Product_Price > (SELECT AVG(Products.Product_Cost) FROM Products)
SELECT DISTINCT Products.Product_Name FROM Products WHERE Products.Product_Cost > (SELECT AVG(Product_Cost) FROM Products)
SELECT Products.Product_Name FROM Products WHERE Products.Product_Price = (SELECT MAX(Products.Product_Cost) FROM Products)
SELECT Products.Product_Name FROM Products ORDER BY Products.Product_Price DESC NULLS LAST LIMIT 1
SELECT Products.Product_Name FROM Products ORDER BY Products.Product_Price ASC NULLS FIRST
SELECT Products.Product_Name FROM Products ORDER BY Products.Product_Price ASC NULLS FIRST
SELECT Performers.Performer_Phone FROM Performers WHERE Performers.Civilian_Name ILIKE '%Ashley%'
SELECT Performers.customer_phone FROM Performers WHERE Performers.performer_id ILIKE '%Ashley%'
SELECT invoices.payment_method_code, COUNT(invoices.order_id) AS order_count FROM Invoices GROUP BY invoices.payment_method_code
SELECT invoices.payment_method_code, COUNT(invoices.order_id) AS order_count FROM Invoices GROUP BY invoices.payment_method_code
SELECT invoices.payment_method_code, COUNT(*) AS order_count FROM Invoices GROUP BY invoices.payment_method_code ORDER BY order_count DESC NULLS LAST LIMIT 1
SELECT Invoices.payment_method_code, COUNT(*) AS frequency FROM Invoices GROUP BY Invoices.payment_method_code ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT Products.Product_Name, AVG(Products.Product_Price) AS average_price FROM Products GROUP BY Products.Product_Name
SELECT Products.Product_Name, AVG(Products.Product_Price) AS average_product_price FROM Products GROUP BY Products.Product_Name
SELECT Products.Product_Name FROM Products WHERE Products.Product_Price < 1000000
SELECT Products.Product_Name FROM Products WHERE Products.Product_Price < '1000000'
SELECT COUNT(DISTINCT Currency_Code) AS number_of_currency_codes FROM Drama_Workshop_Groups
SELECT COUNT(DISTINCT Currency_Code) AS number_of_currency_codes FROM Drama_Workshop_Groups
SELECT Drama_Workshop_Groups.Marketing_Region_Code, COUNT(Drama_Workshop_Groups.Workshop_Group_ID) AS number_of_workshops FROM Drama_Workshop_Groups GROUP BY Drama_Workshop_Groups.Marketing_Region_Code ORDER BY number_of_workshops DESC NULLS LAST LIMIT 1
SELECT Drama_Workshop_Groups.Marketing_Region_Code FROM Drama_Workshop_Groups GROUP BY Drama_Workshop_Groups.Marketing_Region_Code ORDER BY COUNT(Drama_Workshop_Groups.Workshop_Group_ID) DESC NULLS LAST LIMIT 1
SELECT Status_Code, COUNT(*) AS frequency FROM Bookings GROUP BY Status_Code ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT Bookings.Status_Code, COUNT(*) AS frequency FROM Bookings GROUP BY Bookings.Status_Code ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT Clients.customer_name FROM Clients WHERE NOT Client_ID IN (SELECT Booking.client_id FROM Clients)
SELECT c.customer_name FROM clients LEFT JOIN Clients AS b ON c.client_id = b.client_id WHERE b.client_id IS NULL
SELECT AVG(CAST(order_quantity AS FLOAT)) AS average_order_quantity FROM Invoices WHERE payment_method_code = 'MasterCard'
SELECT AVG(CAST(order_quantity AS FLOAT)) AS average_order_quantity FROM Invoices WHERE payment_method_code ILIKE '%MasterCard%'
SELECT Invoices.Product_ID FROM Invoices GROUP BY Invoices.Product_ID ORDER BY COUNT(Invoices.Order_ID) DESC NULLS LAST LIMIT 1
SELECT Invoices.Product_ID FROM Invoices GROUP BY Invoices.Product_ID ORDER BY COUNT(Invoices.Order_ID) DESC NULLS LAST LIMIT 1
SELECT COUNT(*) AS number_of_bands FROM Band
SELECT COUNT(*) AS total_bands FROM Band
SELECT DISTINCT Albums.label FROM Albums
SELECT DISTINCT Albums.label FROM Albums
SELECT Albums.Aid, Albums.Title FROM Albums WHERE Albums.Year = 2012
SELECT a.aid, a.title, a.year, a.label, a.type FROM Albums AS a WHERE a.year = 2012
SELECT COUNT(SongId) AS number_of_songs FROM Songs
SELECT COUNT(SongId) AS total_songs FROM Songs
SELECT COUNT(DISTINCT label) AS number_of_labels FROM Albums
SELECT DISTINCT Albums.label FROM Albums
SELECT a.label, COUNT(a.aid) AS number_of_albums FROM Albums AS a GROUP BY a.label ORDER BY number_of_albums DESC NULLS LAST LIMIT 1
SELECT a.label, COUNT(a.aid) AS num_albums FROM Albums AS a GROUP BY a.label ORDER BY num_albums DESC NULLS LAST LIMIT 1
SELECT Songs.SongId, Songs.Title FROM Songs WHERE Songs.Title ILIKE '%the%'
SELECT Songs.Title FROM Songs WHERE Songs.Title ILIKE '%the%'
SELECT DISTINCT Instruments.Instrument FROM Instruments
SELECT DISTINCT Instruments.Instrument FROM Instruments
SELECT instruments.instrument FROM Instruments GROUP BY instruments.instrument ORDER BY COUNT(instruments.songid) DESC NULLS LAST LIMIT 1
SELECT instruments.instrument FROM Instruments GROUP BY instruments.instrument ORDER BY COUNT(instruments.songid) DESC NULLS LAST LIMIT 1
SELECT COUNT(*) AS number_of_songs FROM Instruments WHERE Instrument ILIKE '%drums%'
SELECT COUNT(*) AS number_of_songs FROM Instruments WHERE Instrument ILIKE '%drums%'
SELECT Vocals.type, COUNT(Vocals.songid) AS frequency FROM Vocals GROUP BY Vocals.type ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT v.type, COUNT(*) AS frequency FROM Vocals AS v GROUP BY v.type ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT DISTINCT Vocals.type FROM Vocals
SELECT Vocals.type FROM Vocals GROUP BY Vocals.type
SELECT Albums.Title FROM Albums WHERE Albums.Year = 2010
SELECT COUNT(*) AS total_albums FROM Albums WHERE Year = 2010
SELECT Manufacturers.Founder FROM Manufacturers WHERE "Name" ILIKE '%Sony%'
SELECT Manufacturers.Founder FROM Manufacturers WHERE "Name" ILIKE '%Sony%'
SELECT Manufacturers.Headquarter FROM Manufacturers WHERE "Founder" ILIKE '%james%'
SELECT Manufacturers.Headquarter FROM Manufacturers WHERE "Founder" ILIKE '%james%'
SELECT Manufacturers.name, Manufacturers.headquarter FROM Manufacturers ORDER BY Manufacturers.revenue DESC NULLS LAST
SELECT m.name, m.headquarter FROM Manufacturers AS m ORDER BY m.revenue DESC NULLS LAST
SELECT AVG(Revenue), MAX(Revenue), SUM(Revenue) FROM Manufacturers
SELECT AVG(Revenue), MAX(Revenue), SUM(Revenue) FROM Manufacturers
SELECT COUNT(*) AS total_companies FROM Manufacturers WHERE Founder ILIKE '%Andy%'
SELECT COUNT(*) FROM Manufacturers WHERE Founder ILIKE '%Andy%'
SELECT SUM(Manufacturers.revenue) AS total_revenue FROM Manufacturers WHERE Manufacturers.headquarter ILIKE '%Austin%'
SELECT SUM(Manufacturers.revenue) AS total_revenue FROM Manufacturers WHERE Manufacturers.headquarter ILIKE '%Austin%'
SELECT Manufacturers.Headquarter FROM Manufacturers GROUP BY Manufacturers.Headquarter
SELECT DISTINCT Manufacturers.Headquarter FROM Manufacturers
SELECT COUNT(*) FROM Manufacturers WHERE Headquarter IN ('Tokyo', 'Beijing')
SELECT COUNT(*) FROM Manufacturers WHERE Headquarter IN ('Tokyo', 'Beijing')
SELECT Manufacturers.Founder FROM Manufacturers WHERE Manufacturers.Name ILIKE 'S%'
SELECT Manufacturers.Founder FROM Manufacturers WHERE Manufacturers.Name ILIKE 'S%' ORDER BY Manufacturers.Founder
SELECT Manufacturers.Name FROM Manufacturers WHERE Manufacturers.Revenuee BETWEEN 100 AND 150
SELECT Manufacturers.Name FROM Manufacturers WHERE Manufacturers.Revenue BETWEEN 100 AND 150
SELECT SUM(Manufacturers.revenue) AS total_revenue FROM Manufacturers WHERE Manufacturers.headquarter ILIKE '%Tokyo%' OR Manufacturers.headquarter ILIKE '%Taiwan%'
SELECT SUM(Revenue) AS total_revenue FROM Manufacturers WHERE Headquarter IN ('Tokyo', 'Taiwan')
SELECT Manufacturers.name, Manufacturers.headquarter, Manufacturers.founder FROM Manufacturers ORDER BY Manufacturers.revenue DESC NULLS LAST LIMIT 1
SELECT m.name, m.headquarter, m.founder FROM Manufacturers AS m WHERE m.revenue = (SELECT MAX(revenue) FROM Manufacturers)
SELECT Manufacturers.name, Manufacturers.headquarter, Manufacturers.revenue FROM Manufacturers ORDER BY Manufacturers.revenue DESC NULLS LAST
SELECT m.name, m.headquarter, TO_CHAR(TO_TIMESTAMP(m.revenue), 'FM999999D00') AS revenue FROM Manufacturers AS m ORDER BY TO_NUMBER(TO_CHAR(TO_TIMESTAMP(m.revenue), 'FM999999D00'), 'FM999999D00') DESC NULLS LAST
SELECT Manufacturers.Name FROM Manufacturers WHERE Manufacturers.Revenue > (SELECT AVG(Manufacturers.Revenue) FROM Manufacturers)
SELECT Manufacturers.Name FROM Manufacturers WHERE Manufacturers.Revenue > (SELECT AVG(Manufacturers.Revenue) FROM Manufacturers)
SELECT m.name FROM Manufacturers AS m WHERE m.revenue < (SELECT AVG(revenue) FROM Manufacturers WHERE headquarter = 'Austin')
SELECT Companies.name FROM Manufacturers WHERE Companies.revenue < (SELECT MIN(Manufacturers.revenue) FROM Manufacturers WHERE Manufacturers.headquarter = 'Austin')
SELECT SUM(Manufacturers.revenue) AS total_revenue FROM Manufacturers WHERE Manufacturers.headquarter ILIKE '%Austin%' AND Manufacturers.revenue < (SELECT MAX(revenue) FROM Manufacturers)
SELECT SUM(Companies.revenue) AS total_revenue FROM Manufacturers WHERE revenue > (SELECT MIN(manufacturers.revenue) FROM manufacturers WHERE headquarter = 'Austin')
SELECT m.founder, SUM(m.revenue) AS total_revenue FROM Manufacturers AS m GROUP BY m.founder
SELECT SUM(Manufacturers.revenue) AS total_revenue FROM Manufacturers WHERE NOT Manufacturers.founder IS NULL
SELECT m.name, m.revenue, c.founder FROM manufacturers JOIN Manufacturers AS c ON m.headquarter = c.code
SELECT Manufacturers.Headquarter, MAX(Manufacturers.Revenue) AS max_revenue, ARRAY_AGG(Manufacturers.Name) AS company_names FROM Manufacturers GROUP BY Manufacturers.Headquarter ORDER BY Manufacturers.Headerquarter
SELECT Manufacturers.Code, SUM(Manufacturers.Revenue) AS Total_Revenue FROM Manufacturers GROUP BY Manufacturers.Code
SELECT m.name, SUM(m.revenue) AS total_revenue FROM Manufacturers AS m GROUP BY m.name
SELECT COUNT(*) AS product_count FROM Products WHERE Manufacturer <> 757001
SELECT COUNT(*) AS product_count FROM Products WHERE Manufacturer <> 1
SELECT Manufacturers.Name FROM Manufacturers WHERE NOT Manufacturers.Code IN (SELECT Drive_Manufacturer.Code FROM Manufacturers)
SELECT Manufacturers.Name FROM Manufacturers WHERE NOT Manufacturers.Code IN (SELECT DriveManufacturer.Code FROM Manufacturers)
SELECT Products.Name FROM Products
SELECT Products.Name FROM Products
SELECT p.name, p.price FROM Products AS p
SELECT p.name, p.price FROM Products AS p
SELECT Products.Name FROM Products WHERE Products.Price <= 200
SELECT Products.Name FROM Products WHERE Products.Price <= 200
SELECT Products.Code, Products.Name, Products.Price FROM Products WHERE Products.Price BETWEEN 60 AND 120
SELECT Products.Code, Products.Name, Products.Price FROM Products WHERE (Products.Price >= 60 AND Products.Price <= 120) ORDER BY Products.Code
SELECT AVG(Price) AS average_price FROM Products
-1
SELECT AVG(Price) AS average_price FROM Products WHERE Manufacturer = 2
SELECT AVG(Price) AS average_price FROM Products WHERE Manufacturer = 2
SELECT COUNT(*) FROM Products WHERE Price >= 180
SELECT COUNT(*) FROM Products WHERE Price >= 180
SELECT Products.Name, Products.Price FROM Products WHERE Products.Price >= 180 ORDER BY Products.Price DESC NULLS LAST, Products.Name ASC NULLS FIRST
SELECT Products.Name, Products.Price FROM Products WHERE Products.Price >= 180 ORDER BY Products.Price DESC NULLS LAST, Products.Name ASC NULLS FIRST
SELECT Manufacturer, AVG(Price) AS average_price FROM Products GROUP BY Manufacturer
SELECT Products.Manufacturer, AVG(Products.Price) AS average_price FROM Products GROUP BY Products.Manufacturer
SELECT Products.name, Products.price FROM Products ORDER BY Products.price ASC NULLS FIRST LIMIT 1
SELECT Products.Name, Products.Price FROM Products ORDER BY Products.Price ASC NULLS FIRST LIMIT 1
SELECT p.code, m.name AS manufacturer_name FROM Products p JOIN Manufacturers m ON p.manufacturer = m.id ORDER BY p.price NULLS LAST
SELECT Products.Code, Products.Name, MIN(Products.Price) AS min_price FROM Products GROUP BY Products.Category
SELECT MAX(problem_log_id) AS latest_problem_log_id FROM Problem_Log
SELECT MAX(problem_log.problem_log_id) AS latest_problem_log_id FROM Problem_Log
SELECT Problem_Log.problem_log_id, Problem_Log.problem_id FROM Problem_Log ORDER BY Problem_Log.problem_log_id ASC NULLS FIRST LIMIT 1
SELECT Problem_Log.problem_log_id, Problem_Log.problem_id FROM Problem_Log ORDER BY Problem_Log.problem_log_id ASC NULLS FIRST LIMIT 1
SELECT Problem_Log.problem_log_id, Problem_Log.log_entry_date FROM Problem_Log WHERE Problem_Log.problem_id = 10
SELECT p.problem_id, TO_CHAR(p.log_entry_date, 'YYYY-MM-DD') AS log_entry_date FROM Problem_Log AS p WHERE p.problem_id = 10
SELECT problem_log_id, log_entry_description FROM Problem_Log
SELECT p.problem_id, TO_CHAR(p.log_entry_date, 'YYYY-MM-DD') AS log_entry_date, pl.log_entry_description FROM Problem_Log AS pl
SELECT problem_id FROM Problems WHERE date_problem_reported > '1978-06-26'
SELECT problem_id FROM Problems WHERE date_problem_reported > '1978-06-26'
SELECT problem_id FROM Problems WHERE date_problem_reported < '1978-06-26'
SELECT problem_id FROM Problems WHERE date_problem_reported < '1978-06-26'
SELECT product_name FROM Product ORDER BY product_name ASC NULLS FIRST
SELECT Product.product_name FROM Product ORDER BY Product.product_name ASC NULLS FIRST
SELECT Product.product_id, Product.product_name FROM Product ORDER BY Product.product_id NULLS FIRST
SELECT Product.product_id, Product.product_name FROM Product ORDER BY Product.product_id
SELECT COUNT(*) FROM branch WHERE CAST(membership_amount AS FLOAT) > (SELECT AVG(CAST(membership_amount AS FLOAT)) FROM branch)
SELECT COUNT(*) FROM branch WHERE CAST(membership_amount AS FLOAT) > (SELECT AVG(CAST(membership_amount AS FLOAT)) FROM branch)
SELECT branch.name, branch.address_road, branch.city FROM branch ORDER BY branch.open_year NULLS FIRST
SELECT branch.name, branch.address_road, branch.city FROM branch ORDER BY branch.open_year NULLS FIRST
SELECT branch.name, COUNT(member.address_road) AS member_count FROM branch JOIN member ON branch.branch_id = member.branch_id GROUP BY branch.name ORDER BY member_count DESC NULLS LAST LIMIT 3
SELECT branch.name FROM branch ORDER BY CAST(branch.membership_amount AS FLOAT) DESC NULLS LAST LIMIT 3
SELECT DISTINCT branch.city FROM branch WHERE CAST(branch.membership_amount AS FLOAT) >= 100
SELECT DISTINCT branch.city FROM branch WHERE CAST(branch.membership_amount AS FLOAT) > 100
SELECT DISTINCT branch.open_year FROM branch WHERE branch.branch_id IN (SELECT branch_id FROM branch GROUP BY branch_id HAVING COUNT(branch_id) >= 2)
SELECT DISTINCT branch.open_year FROM branch GROUP BY branch.open_year HAVING COUNT(branch.branch_id) >= 2
SELECT MIN(branch.membership_amount) AS min_membership_amount, MAX(branch.membership_amount) AS max_membership_amount FROM branch WHERE branch.open_year = '2011' OR branch.address_road ILIKE '%London%'
SELECT MIN(CAST(membership_amount AS FLOAT)), MAX(CAST(membership_amount AS FLOAT)) FROM branch WHERE open_year = '2011' OR city ILIKE '%London%'
SELECT branch.city, COUNT(*) AS total_branches FROM branch WHERE CAST(branch.open_year AS INT) < 2010 GROUP BY branch.city
SELECT branch.city, COUNT(*) AS number_of_branches FROM branch WHERE CAST(branch.open_year AS DATE) < '2010-01-01' GROUP BY branch.city
SELECT COUNT(DISTINCT level) AS number_of_levels FROM member
SELECT level FROM member GROUP BY level
SELECT member.card_number, member.name, member.hometown FROM member ORDER BY member.level DESC NULLS LAST
SELECT member.card_number, member.name, member.hometown FROM member ORDER BY member.level DESC NULLS LAST
SELECT member.level FROM member GROUP BY member.level ORDER BY COUNT(member.member_id) DESC NULLS LAST LIMIT 1
SELECT member.level, COUNT(member.member_id) AS total_members FROM member GROUP BY member.level ORDER BY total_members DESC NULLS LAST LIMIT 1
SELECT member.name FROM member WHERE NOT member.member_id IN (SELECT branch.member_id FROM member)
SELECT member.name FROM member WHERE NOT member.member_id IN (SELECT branch.member_id FROM member)
SELECT b.name, b.city FROM branch AS b WHERE NOT b.branch_id IN (SELECT membership_amount FROM member)
SELECT branch.name, branch.city FROM branch WHERE branch.membership_amount IS NULL
SELECT DISTINCT branch.city FROM branch WHERE branch.open_year = '2001' AND CAST(branch.membership_amount AS FLOAT) > 100
SELECT DISTINCT branch.city FROM branch WHERE CAST(branch.open_year AS INT) = 2001 AND CAST(branch.membership_amount AS FLOAT) > 100
SELECT DISTINCT branch.city FROM branch WHERE CAST(branch.membership_amount AS FLOAT) > 100
SELECT DISTINCT branch.city FROM branch WHERE CAST(branch.membership_amount AS FLOAT) > 100
SELECT member.card_number FROM member WHERE member.hometown ILIKE '%Kentucky%'
SELECT member.card_number FROM member WHERE member.hometown = 'Kentucky'
SELECT COUNT(*) AS total_students FROM Student
SELECT COUNT(*) AS total_students FROM Student
SELECT COUNT(*) AS total_voting_records FROM Voting_record
SELECT COUNT(*) AS total_voting_records FROM Voting_record
SELECT COUNT(DISTINCT President_Vote) AS total_president_votes FROM Voting_record
SELECT COUNT(DISTINCT President_Vote) AS total_president_votes FROM Voting_record
SELECT MAX(Student.Age) AS max_age FROM Student
SELECT MAX(Student.Age) AS oldest_age FROM Student
SELECT Student.LName FROM Student WHERE Student.Major = 50
SELECT Student.LName FROM Student WHERE Student.Major = 50
SELECT s.fname FROM Student AS s WHERE s.age > 22
SELECT s.fname FROM Student AS s WHERE age > 22
SELECT Student.Major FROM Student WHERE Student.Sex = 'M'
SELECT s.lname, s.fname, m.major FROM student JOIN Student AS m ON s.major = m.major WHERE sex = 'M'
SELECT AVG(Age) FROM Student WHERE Sex = 'F'
SELECT AVG(Student.Age) FROM Student WHERE Student.Sex = 'Female'
SELECT MAX(Age) AS max_age, MIN(Age) AS min_age FROM Student WHERE "Major" = 600
SELECT MIN(Student.Age) AS min_age, MAX(Student.Age) AS max_age FROM Student WHERE Student.Major = 600
SELECT s.lname, s.fname FROM student JOIN Student AS a ON s.advisor = a.age WHERE s.city_code = 'BAL'
SELECT Student.Advisor FROM Student WHERE Student.city_code = 'BAL'
SELECT COUNT(DISTINCT Secretary_Vote) AS total_secretary_votes FROM Voting_record WHERE Election_Cycle = 'Fall'
SELECT COUNT(DISTINCT Secretary_Vote) AS total_votes FROM Voting_record WHERE Election_Cycle = 'Fall'
SELECT COUNT(DISTINCT President_Vote) AS total_votes FROM Voting_record WHERE "Registration_Date" ILIKE '%08/30/2015%'
SELECT COUNT(President_Vote) AS total_votes FROM Voting_record WHERE Registration_Date = '08/30/2015'
SELECT DISTINCT Registration_Date, Election_Cycle FROM Voting_record
SELECT Registration_Date, Election_Cycle FROM Voting_record GROUP BY Registration_Date, Election_Cycle
SELECT President_Vote, Vice_President_Vote FROM Voting_record GROUP BY President_Vote, Vice_President_Vote
SELECT President_Vote AS "President Votes", Vice_President_Vote AS "Vice President Votes" FROM Voting_record GROUP BY President_Vote, Vice_President_Vote
SELECT a.age, COUNT(s.stuid) AS total_students FROM Student AS a JOIN student ON a.fname = s.advisor JOIN department ON a.lname = d.city_code GROUP BY a.age
SELECT s.advisor, COUNT(*) AS num_students FROM Student AS s GROUP BY s.advisor
SELECT Student.Advisor FROM Student GROUP BY Student.Advisor HAVING COUNT(Student.Advisor) > 2
SELECT Student.Advisor FROM Student GROUP BY Student.Advisor HAVING COUNT(Student.StuID) > 2
SELECT Student.Major FROM Student GROUP BY Student.Major HAVING COUNT(Student.StuID) < 3
SELECT Student.Major FROM Student GROUP BY Student.Major HAVING COUNT(Student.StuID) < 3
SELECT v.election_cycle, COUNT(*) AS total_voting_records FROM Voting_record AS v GROUP BY v.election_cycle
SELECT Voting_record.Election_Cycle, COUNT(*) AS total_votes FROM Voting_record GROUP BY Voting_record.Election_Cycle
SELECT s.major, COUNT(*) AS total_students FROM Student AS s GROUP BY s.major ORDER BY total_students DESC NULLS LAST LIMIT 1
SELECT Student.Major FROM Student GROUP BY Student.Major ORDER BY COUNT(Student.Major) DESC NULLS LAST LIMIT 1
SELECT Student.Major FROM Student WHERE Student.Sex = 'F' GROUP BY Student.Major ORDER BY COUNT(Student.Major) DESC NULLS LAST LIMIT 1
SELECT s.major, COUNT(*) AS total_female_students FROM Student AS s WHERE sex = 'F' GROUP BY s.major ORDER BY total_female_students DESC NULLS LAST LIMIT 1
SELECT Student.city_code, COUNT(Student.StuID) AS student_count FROM Student GROUP BY Student.city_code ORDER BY student_count DESC NULLS LAST LIMIT 1
SELECT Student.city_code FROM Student GROUP BY Student.city_code ORDER BY COUNT(Student.StuID) DESC NULLS LAST LIMIT 1
SELECT DISTINCT Student.Advisor FROM Student GROUP BY Student.Advisor HAVING COUNT(Student.StuID) > 2
SELECT s.advisor FROM Student AS s GROUP BY s.advisor HAVING COUNT(s.city_code) > 2
SELECT COUNT(*) AS total_products FROM Products
SELECT COUNT(*) AS total_products FROM Products
SELECT COUNT(DISTINCT color_code) AS number_of_colors FROM Ref_Colors
SELECT COUNT(DISTINCT color_code) AS number_of_colors FROM Ref_Colors
SELECT COUNT(*) AS total_characteristics FROM Characteristics
SELECT COUNT(*) AS total_characteristics FROM Characteristics
SELECT p.product_name, CAST(p.typical_buying_price AS FLOAT) AS typical_buying_price FROM Products AS p
SELECT p.product_name, CAST(p.typical_buying_price AS FLOAT) AS typical_buying_price FROM Products AS p
SELECT Ref_Colors.color_description FROM Ref_Colors
SELECT ref_colors.color_code, ref_colors.color_description FROM Ref_Colors
SELECT Characteristics.characteristic_name FROM Characteristics
SELECT Characteristics.characteristic_name FROM Characteristics GROUP BY Characteristics.characteristic_name
SELECT product_name FROM Products WHERE product_category_code = 'Spices'
SELECT product_name FROM Products WHERE product_category_code = 'Spices'
SELECT COUNT(*) AS product_count FROM Products WHERE product_category_code ILIKE '%Seeds%'
SELECT COUNT(*) AS product_count FROM Products WHERE product_category_code ILIKE '%Seeds%'
SELECT COUNT(*) FROM Products WHERE product_category_code = 'Spices' AND CAST(typical_selling_price AS FLOAT) > 1000
SELECT COUNT(*) FROM Products WHERE product_category_code = 'Spices' AND CAST(typical_buying_price AS FLOAT) > 1000
SELECT Products.product_category_code, CAST(Products.typical_buying_price AS FLOAT) AS typical_buying_price FROM Products WHERE Products.product_name ILIKE '%cumin%'
SELECT product_category_code, CAST(typical_buying_price AS FLOAT) AS typical_buying_price FROM products WHERE product_name ilike '%cumin%'
SELECT Products.product_category_code FROM Products WHERE Products.product_name ILIKE '%flax%'
SELECT Products.product_category_code FROM Products WHERE Products.product_name ILIKE '%flax%'
SELECT Ref_Product_Categories.unit_of_measure FROM Ref_Product_Categories WHERE Ref_Product_Categories.product_category_code ILIKE '%Hersers%'
SELECT Ref_Product_Categories.unit_of_measure FROM Ref_Product_Categories WHERE Ref_Product_Categories.product_category_description ILIKE '%herb%'
SELECT Ref_Product_Categories.product_category_description FROM Ref_Product_Categories WHERE Ref_Product_Categories.product_category_code ILIKE '%Spices%'
SELECT Ref_Product_Categories.product_category_description FROM Ref_Product_Categories WHERE Ref_Product_Categories.product_category_code = 'Spices'
SELECT Ref_Product_Categories.product_category_description, Ref_Product_Categories.unit_of_measure FROM Ref_Product_Categories WHERE Ref_Product_Categories.product_category_code ILIKE '%Hers%'
SELECT Ref_Product_Categories.product_category_description, Ref_Product_Categories.unit_of_measure FROM Ref_Product_Categories WHERE product_category_code ILIKE '%Hers%'
SELECT Characteristics.characteristic_name, Characteristics.other_characteristic_details, Characteristics.characteristic_data_type FROM Characteristics WHERE NOT Characteristics.characteristic_id IN (SELECT ProductCharacteristics.characteristic_id FROM ProductCharacteristics)
SELECT Characteristics.characteristic_name, Characteristics.other_characteristic_details, Characteristics.characteristic_data_type FROM Characteristics WHERE NOT Characteristics.characteristic_id IN (SELECT ProductCharacteristics.characteristic_type_code FROM ProductCharacteristics)
-1
SELECT COUNT(DISTINCT ref_colors.color_code) AS total_colors FROM ref_colors LEFT JOIN Ref_Colors ON ref_colors.color_code = product_colors.color_code WHERE product_colors.color_code IS NULL
SELECT COUNT(*) AS event_count FROM event
SELECT event.name, event.year FROM event ORDER BY event.year DESC NULLS LAST
SELECT event.name FROM event WHERE event.year = (SELECT MAX(event.year) FROM event)
SELECT COUNT(*) AS total_stadium FROM stadium
SELECT MAX(capacity) AS max_capacity, name FROM stadium GROUP BY name
SELECT stadium.name FROM stadium WHERE stadium.capacity < (SELECT AVG(stadium.capacity) FROM stadium)
SELECT c.name AS Country_name, COUNT(*) AS total_stadium FROM stadium JOIN stadium AS c ON s.city = c.name GROUP BY c.name ORDER BY total_stadium DESC NULLS LAST LIMIT 1
SELECT c.name AS Country_name, COUNT(*) AS total_stadium FROM stadium JOIN stadium AS c ON s.city = c.name GROUP BY c.name HAVING COUNT(*) >= 3
SELECT DISTINCT COUNTRY FROM GROUP BY COUNTRY HAVING MAX(CAPACITY) > 60000 AND MIN(CAPACITY) < 50000
SELECT COUNT(DISTINCT City) AS number_of_cities FROM stadium WHERE Opening_Year < 2006
SELECT c.country, COUNT(*) AS total_stadium FROM stadium JOIN stadium AS c ON s.city = c.name GROUP BY c.country
SELECT c.name AS country_name FROM stadium AS c JOIN stadium ON c.id = f.country WHERE f.opening_year <= 2006
SELECT COUNT(*) FROM stadium WHERE country <> 'Russia'
SELECT swimmer.name FROM swimmer ORDER BY swimmer.meter_100 ASC NULLS FIRST
SELECT COUNT(DISTINCT swimmer.nationality) AS number_of_countries FROM swimmer
SELECT COUNT(DISTINCT nationality) AS number_of_countries FROM swimmer GROUP BY nationality HAVING COUNT(ID) > 1
SELECT swimmer.meter_200, swimmer.meter_300 FROM swimmer WHERE swimmer.nationality ILIKE '%Australia%' AND (NOT swimmer.meter_200 IS NULL OR NOT swimmer.meter_300 IS NULL)
SELECT s.name FROM stadium LEFT JOIN stadium AS e ON s.id = e.city WHERE e.city IS NULL
SELECT swimmer.name FROM swimmer WHERE swimmer.id IS NULL
SELECT s.name, s.nationality, CAST(s.meter_100 AS FLOAT) / NULLIF(MAX(s.meter_100), 0) AS ratio_meter_100 FROM swimmer AS s GROUP BY s.name, s.nationality
SELECT AVG(capacity) AS average_capacity FROM stadium WHERE opening_year = 2005
SELECT COUNT(Railway_ID) AS number_of_railways FROM railway
SELECT railway.builder FROM railway ORDER BY railway.builder ASC NULLS FIRST
SELECT railway.railway_id, railway.wheels, railway.location FROM railway
SELECT MAX(manager.level) AS highest_level FROM manager WHERE manager.country <> 'Australia'
SELECT AVG(manager.age) AS average_age FROM manager
SELECT manager.name FROM manager ORDER BY manager.level ASC NULLS FIRST
SELECT t.train_num, TO_CHAR(t.arrival_time, 'HH24:MI') AS arrival_time FROM train AS t
SELECT m.name FROM manager AS m WHERE CAST(m.working_year_starts AS DATE) = (SELECT MIN(CAST(working_year_starts AS DATE)) FROM manager)
SELECT railway.builder, COUNT(railway.railway_id) AS COUNT FROM railway GROUP BY railway.builder ORDER BY COUNT DESC NULLS LAST
SELECT railway.builder FROM railway GROUP BY railway.builder ORDER BY COUNT(railway.builder) DESC NULLS LAST LIMIT 1
SELECT railway.location, COUNT(railway.railway_id) AS number_of_railways FROM railway GROUP BY railway.location ORDER BY number_of_railways DESC NULLS LAST
SELECT railway.location FROM railway GROUP BY railway.location HAVING COUNT(railway.railway_id) > 1
SELECT COUNT(railway_id) AS object_number FROM railway WHERE NOT railway_id IN (SELECT railway_id FROM train)
SELECT DISTINCT manager.country FROM manager WHERE manager.age > 50 AND manager.age < 46
SELECT DISTINCT manager.country FROM manager
SELECT manager.manager_id, manager.name, COUNT(manager.working_year_starts) AS working_years FROM manager GROUP BY manager.manager_id, manager.name ORDER BY manager.level DESC NULLS LAST
SELECT manager.country FROM manager WHERE manager.age > 50 OR manager.age < 46
SELECT COUNT(*) FROM Addresses WHERE country = 'USA'
SELECT DISTINCT Addresses.city FROM Addresses
SELECT state_province_county, COUNT(address_id) AS address_count FROM Addresses GROUP BY state_province_county
SELECT customer_name, customer_phone FROM Customers WHERE customer_address IS NULL
SELECT DISTINCT Products.product_type_code FROM Products GROUP BY Products.product_type_code HAVING COUNT(Products.product_id) >= 2
SELECT Customers.customer_name, Customers.customer_phone, Customers.payment_method_code FROM Customers ORDER BY Customers.customer_id DESC NULLS LAST
SELECT MIN(product_price) AS min_price, MAX(product_price) AS max_price, AVG(product_price) AS avg_price FROM Products
SELECT COUNT(*) AS number_of_products FROM Products WHERE product_price > (SELECT AVG(product_price) FROM Products)
SELECT p.product_type_code, p.product_name FROM Products AS p WHERE p.product_price > 1000 OR p.product_price < 500
SELECT dorm_name FROM Dorm WHERE gender = 'F'
SELECT Dorm.dorm_name FROM Dorm WHERE Dorm.gender = 'F'
SELECT dorm_name FROM Dorm WHERE student_capacity > 300
SELECT Dorm.dorm_name FROM Dorm WHERE Dorm.student_capacity > 300
SELECT COUNT(*) FROM Student WHERE Sex = 'F' AND Age < 25
SELECT COUNT(*) FROM Student WHERE Sex = 'F' AND Age < 25
SELECT Student.Fname FROM Student WHERE Student.Age < 20
SELECT Student.Fname FROM Student WHERE Student.Age < 20
SELECT Student.Fname FROM Student WHERE "city_code" ILIKE '%PHL%' AND Age BETWEEN 20 AND 25
SELECT Student.Fname FROM Student WHERE (Student.Age >= 20 AND Student.Age <= 25) AND (Student.city_code = 'PHL')
SELECT COUNT(dormid) AS number_of_dorms FROM Dorm
SELECT COUNT(dormid) AS number_of_dorms FROM Dorm
SELECT COUNT(DISTINCT dorm_amenity.amenity_name) AS number_of_amenities FROM Dorm_amenity
SELECT COUNT(DISTINCT Dorm_amenity.amenity_name) AS number_of_dorm_amenities FROM Dorm_amenity
SELECT SUM(dorm.student_capacity) AS total_capacity FROM Dorm
SELECT SUM(dorm.student_capacity) AS total_student_capacity FROM Dorm
SELECT COUNT(*) AS total_students FROM Student
-1
SELECT Student.city_code, AVG(Student.Age) AS average_age FROM Student GROUP BY Student.city_code
SELECT Student.city_code, AVG(Student.Age) AS average_age FROM Student GROUP BY Student.city_code ORDER BY average_age
SELECT AVG(student_capacity) AS average_capacity, SUM(student_capacity) AS total_capacity FROM Dorm WHERE gender = 'X'
SELECT AVG(student_capacity) AS average_capacity, SUM(student_capacity) AS total_capacity FROM Dorm WHERE gender = 'X'
SELECT COUNT(DISTINCT dormid) AS num_dorms FROM Has_amenity
SELECT COUNT(DISTINCT dormid) AS number_of_dorms FROM Has_amenity
SELECT Dorm.dorm_name FROM Dorm WHERE NOT Dorm.dormid IN (SELECT Amenity.dormid FROM Dorm)
SELECT Dorm.dorm_name FROM Dorm WHERE NOT Dorm.dormid IN (SELECT Dorm_Amenity.dormid FROM Dorm_Amenity)
SELECT DISTINCT dorm.gender FROM Dorm
SELECT COUNT(DISTINCT gender) AS number_of_genders FROM Dorm
SELECT Dorm.student_capacity, Dorm.gender FROM Dorm WHERE Dorm.dorm_name ILIKE '%Donor%'
SELECT Dorm.student_capacity, Dorm.gender FROM Dorm WHERE Dorm.dorm_name ilike '%Donor%in%it%'
SELECT dorm.dorm_name, dorm.gender FROM Dorm WHERE dorm.student_capacity > 300 OR dorm.student_capacity < 100
SELECT dorm.dorm_name, CASE WHEN dorm.student_capacity > 300 THEN 'Large' ELSE 'Small' END AS dorm_type FROM Dorm WHERE dorm.student_capacity > 300 OR dorm.student_capacity < 100
SELECT Student.major AS major_number, Student.city_code AS city_name FROM Student GROUP BY Student.major, Student.city_code
SELECT Student.StuID, COUNT(DISTINCT Student.Major) AS major_count, COUNT(DISTINCT Student.city_code) AS city_code_count FROM Student GROUP BY Student.StuID
SELECT Student.LName FROM Student WHERE (Student.Sex = 'F' AND Student.city_code = 'BAL') OR (Student.Sex = 'M' AND Student.Age < 20)
SELECT Student.LName FROM Student WHERE (Student.Sex = 'Female' OR Student.city_code = 'BAL') AND Student.Age < 20
SELECT dorm_name FROM Dorm ORDER BY student_capacity DESC NULLS LAST LIMIT 1
SELECT dorm_name FROM Dorm ORDER BY student_capacity DESC NULLS LAST LIMIT 1
SELECT Dorm_amenity.amenity_name FROM Dorm_amenity GROUP BY Dorm_amenity.amenity_name ORDER BY Dorm_amenity.amenity_name ASC NULLS FIRST
SELECT Dorm_amenity.amenity_name FROM Dorm_amenity ORDER BY Dorm_amenity.amenity_name ASC NULLS FIRST
SELECT Student.city_code, COUNT(Student.StuID) AS student_count FROM Student GROUP BY Student.city_code ORDER BY student_count DESC NULLS LAST LIMIT 1
SELECT Student.city_code, COUNT(Student.StuID) AS total_students FROM Student GROUP BY Student.city_code ORDER BY total_students DESC NULLS LAST LIMIT 1
SELECT s.lname, s.fname FROM Student AS s WHERE s.age < (SELECT AVG(age) FROM Student)
SELECT Student.Fname, Student.LName FROM Student WHERE Student.Age < (SELECT AVG(Student.Age) FROM Student)
SELECT Student.LName, Student.Fname, Student.Age FROM Student WHERE Student.city_code <> 'HKG' ORDER BY Student.Age
SELECT Student.LName, Student.Fname, Student.Age FROM Student WHERE Student.city_code <> 'HKG' ORDER BY Student.Age
SELECT gender, COUNT(dormid) AS number_of_dorms, SUM(student_capacity) AS total_capacity FROM Dorm GROUP BY gender
SELECT Dorm.gender, COUNT(Dorm.dormid) AS number_of_dorms, SUM(Dorm.student_capacity) AS total_capacity FROM Dorm GROUP BY Dorm.gender
SELECT Sex, AVG(Age) AS average_age, MIN(Age) AS min_age FROM Student GROUP BY Sex
SELECT Sex, AVG(Age) AS average_age, MIN(Age) AS min_age FROM Student GROUP BY Sex
SELECT Student.Major AS Major, COUNT(*) AS total_students FROM Student GROUP BY Student.Major
SELECT Student.Major, COUNT(Student.StuID) AS total_students FROM Student GROUP BY Student.Major
SELECT Student.city_code, COUNT(Student.StuID) AS total_students, AVG(Student.Age) AS average_age FROM Student GROUP BY Student.city_code
SELECT s.city_code, COUNT(*) AS total_students, AVG(s.age) AS average_age FROM Student AS s GROUP BY s.city_code
SELECT Student.city_code, AVG(Student.age) AS average_age, COUNT(IFF(Student.sex = 'M', *, NULL)) AS male_students_count FROM Student GROUP BY Student.city_code
SELECT Student.city_code, AVG(Student.Age) AS average_age, SUM(CASE WHEN Student.Sex = 'M' THEN 1 ELSE 0 END) AS male_students_count FROM Student GROUP BY Student.city_code
SELECT city_code, COUNT(StuID) AS total_students FROM Student GROUP BY city_code HAVING COUNT(StuID) > 1
SELECT Student.city_code, COUNT(Student.StuID) AS total_students FROM Student GROUP BY Student.city_code HAVING COUNT(Student.StuID) > 1
SELECT Student.Fname, Student.LName FROM Student WHERE Student.Major <> (SELECT MAX(Student.Major) FROM Student)
SELECT Student.Fname, Student.LName FROM Student WHERE Student.Major <> (SELECT MAX(Student.Major) FROM Student)
SELECT Student.Sex, COUNT(*) AS num_students FROM Student GROUP BY Student.Sex HAVING AVG(Student.Age) > Student.Age
SELECT Student.Sex, AVG(Student.Age) AS average_age, COUNT(IFF(Student.Age > AVG(Student.Age), *, NULL)) AS above_average_count FROM Student GROUP BY Student.Sex
SELECT Dorm.dorm_name FROM Dorm WHERE NOT Dorm.dormid IN (SELECT DormTVLounge.dormid FROM DormTVLounge)
SELECT dorm.dorm_name FROM Dorm WHERE NOT dorm.dormid IN (SELECT tvlounge.student_capacity FROM tvlounge)
SELECT COUNT(customer_id) AS total_customers FROM Customers
SELECT COUNT(*) AS total_customers FROM Customers
SELECT Customers.email_address, Customers.phone_number FROM Customers ORDER BY Customers.email_address ASC NULLS FIRST, Customers.phone_number ASC NULLS FIRST
SELECT Customers.email_address, Customers.phone_number FROM Customers ORDER BY Customers.email_address ASC NULLS FIRST, Customers.phone_number ASC NULLS FIRST
SELECT c.town_city, COUNT(*) AS customer_count FROM Customers AS c WHERE c.customer_type_code = 'good credit rating' GROUP BY c.town_city ORDER BY customer_count ASC LIMIT 1
SELECT Customers.town_city FROM Customers WHERE Customers.customer_type_code ILIKE '%good%credit%rating%' ORDER BY COUNT(Customers.customer_id) ASC LIMIT 1
SELECT Customers.email_address, Customers.phone_number FROM Customers WHERE NOT Customers.customer_id IN (SELECT customer_id FROM Customers)
SELECT customers.email_address, customers.phone_number FROM customers WHERE NOT customers.customer_id IN (SELECT customer_id FROM Customers)
SELECT customers.phone_number FROM Customers UNION SELECT staff.phone_number FROM staff
SELECT Customers.phone_number FROM Customers UNION ALL SELECT Staff.phone_number FROM Staff
SELECT Products.product_description FROM Products WHERE Products.product_name ILIKE '%chocolate%'
SELECT Products.product_description FROM Products WHERE Products.product_name ILIKE '%Chocolate%'
SELECT p.product_name, pc.product_category_code FROM Products AS p JOIN (SELECT product_id, product_category_code FROM Products WHERE product_price = (SELECT MAX(product_price) FROM Products)) AS pc ON p.product_id = pc.product_id
SELECT p.product_name, pc.product_category_code FROM Products JOIN Products AS pc ON p.product_category_code = pc.product_category_code ORDER BY p.product_price DESC NULLS LAST LIMIT 1
SELECT Products.product_id, Products.product_price FROM Products WHERE NOT Products.product_id IN (SELECT Complaints.product_id FROM Products)
SELECT Products.product_id, Products.product_price FROM Products WHERE NOT Products.product_id IN (SELECT Complaints.product_id FROM Products) ORDER BY Products.product_price
SELECT Products.product_category_code, AVG(Products.product_price) AS average_price FROM Products GROUP BY Products.product_category_code
SELECT Products.product_category_code, AVG(Products.product_price) AS average_price FROM Products GROUP BY Products.product_category_code
SELECT complaints.complaint_status_code FROM Complaints WHERE NOT complaints.product_id IS NULL GROUP BY complaints.complaint_status_code HAVING COUNT(complaints.product_id) > 3
SELECT complaints.complaint_status_code FROM Complaints GROUP BY complaints.complaint_status_code HAVING COUNT(complaints.complaint_id) > 3
SELECT Staff.last_name FROM Staff WHERE Staff.email_address ILIKE '%wrau%'
SELECT Staff.last_name FROM Staff WHERE Staff.email_address ILIKE '%wrau%'
SELECT customers.customer_type_code, COUNT(customers.customer_id) AS total_customers FROM Customers GROUP BY customers.customer_type_code ORDER BY total_customers DESC NULLS LAST LIMIT 1
SELECT COUNT(*) AS total_customers FROM Customers
SELECT COUNT(DISTINCT complaints.complaint_type_code) AS number_of_distinct_complaint_type_codes FROM Complaints
SELECT COUNT(DISTINCT complaints.complaint_type_code) AS number_of_complaint_type_codes FROM Complaints
SELECT customers.address_line_1, customers.address_line_2 FROM Customers WHERE customers.email_address = 'vbogisich@example.org'
SELECT Customers.address_line_1, Customes.address_line_2 FROM Customers WHERE Customers.email_address = 'vbogisich@example.com'
SELECT complaints.complaint_status_code, COUNT(*) AS total_complaints FROM Complaints WHERE complaints.complaint_type_code = 'Product Failure' GROUP BY complaints.complaint_status_code
SELECT complaint_status_code, COUNT(*) AS number_of_complaints FROM Complaints WHERE complaint_type_code = 'Product Failure' GROUP BY complaint_status_code
SELECT state, COUNT(customer_id) AS customer_count FROM Customers GROUP BY state ORDER BY customer_count DESC NULLS LAST LIMIT 1
SELECT c.state, COUNT(*) AS customer_count FROM Customers AS c GROUP BY c.state ORDER BY customer_count DESC NULLS LAST LIMIT 1
SELECT COUNT(*) AS total_submissions FROM submission
SELECT COUNT(*) AS total_submissions FROM submission
SELECT submission.author FROM submission ORDER BY submission.scores ASC NULLS FIRST
SELECT submission.author, submission.scores FROM submission ORDER BY submission.scores ASC NULLS FIRST
SELECT submission.author, college FROM submission
SELECT sub.author, sub.college FROM submission AS sub
SELECT submission.author FROM submission WHERE submission.college IN ('Florida', 'Temple')
SELECT submission.author FROM submission WHERE submission.college IN ('Florida', 'Temple') GROUP BY submission.author
SELECT AVG(Scores) AS average_score FROM submission
SELECT AVG(Scores) AS average_score FROM submission
SELECT submission.author FROM submission WHERE submission.scores = (SELECT MAX(submission.scores) FROM submission)
SELECT submission.author FROM submission WHERE submission.scores = (SELECT MAX(submission.scores) FROM submission)
SELECT college, COUNT(author) AS author_count FROM submission GROUP BY college ORDER BY author_count DESC NULLS LAST
SELECT c.submission_id, COUNT(s.author) AS author_count FROM submission AS c JOIN submission ON c.scores = s.college GROUP BY c.submission_id
SELECT submission.college FROM submission GROUP BY submission.college ORDER BY COUNT(submission.college) DESC NULLS LAST
SELECT c.scores AS college_name, COUNT(s.author) AS number_of_authors FROM submission JOIN submission AS c ON s.college = c.scores GROUP BY c.scores ORDER BY number_of_authors DESC NULLS LAST LIMIT 1
SELECT DISTINCT college FROM submission WHERE submission_id IN (SELECT submission_id FROM submission WHERE scores > 90) AND college IN (SELECT college FROM submission WHERE scores < 80)
SELECT college FROM submission WHERE Submission_ID > 90 AND Submission_ID < 80
SELECT workshop.date, workshop.venue FROM workshop ORDER BY workshop.venue ASC NULLS FIRST
SELECT workshop.date, workshop.venue FROM workshop ORDER BY workshop.venue ASC NULLS FIRST
SELECT a.author FROM submission AS a LEFT JOIN submission ON a.author = s.author WHERE s.author IS NULL
SELECT author FROM submission GROUP BY author HAVING COUNT(submission_id) = 0
SELECT COUNT(*) AS total_investors FROM Investors
SELECT Investors.investor_id, Investors.investor_details FROM Investors
SELECT lots.lot_id, lots.investor_id, lots.lot_details FROM Lots
SELECT MAX(amount_of_transaction) AS max_transaction_amount FROM Transactions
SELECT date_of_transaction, share_count FROM Transactions
SELECT CAST(SUM(amount_of_transaction) AS FLOAT) / NULLIF((SELECT SUM(amount_of_transaction) FROM Transactions), 0) AS fraction_of_transactions_with_nonzero_amount
SELECT Transactions.transaction_id FROM Transactions WHERE Transactions.transaction_type_code ILIKE '%PUR%'
SELECT date_of_transaction FROM Transactions WHERE transaction_type_code = 'Sale'
SELECT AVG(amount_of_transaction) AS average_transaction_amount FROM Transactions WHERE transaction_type_code = 'Sale'
SELECT Ref_Transaction_Types.transaction_type_description FROM Ref_Transaction_Types WHERE Ref_Transaction_Types.transaction_type_code ILIKE '%PUR%'
SELECT MIN(Transactions.amount_of_transaction) AS min_amount FROM Transactions WHERE Transactions.transaction_type_code = 'PUR' AND CAST(Transactions.share_count AS FLOAT) > 50
SELECT MAX(transaction.share_count) AS max_share_count FROM Transactions WHERE transactions.amount_of_transaction < 10000
SELECT Transactions.date_of_transaction FROM Transactions WHERE (CAST(Transactions.share_count AS FLOAT) > 100 OR Transactions.amount_of_transaction > 1000)
SELECT COUNT(DISTINCT transaction_type_code) AS number_of_transaction_types FROM Transactions
SELECT lots.lot_id, lots.investor_id, lots.lot_details FROM Lots
SELECT transaction_type_code, AVG(amount_of_transaction) AS average_transaction_amount FROM Transactions GROUP BY transaction_type_code
SELECT transaction_type_code, MIN(share_count) AS min_share_count, MAX(share_count) AS max_share_count FROM Transactions GROUP BY transaction_type_code
SELECT investor_id, AVG(share_count) AS average_share_count FROM Transactions GROUP BY investor_id
SELECT investor_id, AVG(share_count) AS average_share_count FROM Transactions GROUP BY investor_id ORDER BY average_share_count DESC NULLS LAST
SELECT investor_id, AVG(amount_of_transaction) AS average_transaction_amount FROM Transactions GROUP BY investor_id
SELECT investor_id, COUNT(transaction_id) AS number_of_transactions FROM Transactions WHERE transaction_type_code = 'Sale' AND amount_of_transaction > 0 GROUP BY investor_id
SELECT investor_id, COUNT(transaction_id) AS transaction_count FROM Transactions GROUP BY investor_id
SELECT transactions.transaction_type_code FROM Transactions GROUP BY transactions.transaction_type_code ORDER BY COUNT(transactions.transaction_id) ASC LIMIT 1
SELECT transactions.transaction_type_code, COUNT(*) AS frequency FROM Transactions GROUP BY transactions.transaction_type_code ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT date_of_transaction FROM Transactions WHERE (share_count::integer > 100 OR amount_of_transaction > 100)
SELECT CAST(sales.sales_transaction_id AS FLOAT) / CAST(purchases.sales_details AS FLOAT) AS ratio FROM sales, Sales
SELECT lots.lot_id, lots.investor_id, lots.lot_details FROM Lots WHERE NOT lots.lot_id IN (SELECT transaction.lot_id FROM transaction)
SELECT COUNT(*) AS total_hotels FROM Hotels
SELECT COUNT(*) AS total_hotels FROM Hotels
SELECT price_range FROM Hotels
SELECT MIN(price_range) AS min_price_range, MAX(price_range) AS max_price_range FROM Hotels
SELECT DISTINCT Locations.Location_Name FROM Locations
SELECT Locations.Location_Name FROM Locations
SELECT s.name, s.other_details FROM Staff AS s
SELECT s.staff_id, s.name, s.other_details FROM Staff AS s
SELECT v.tourist_id, v.tourist_details FROM Visitors AS v
SELECT v.tourist_id, v.tourist_details FROM Visitors AS v
SELECT MIN(price_range) AS lowest_price_range, MAX(price_range) AS highest_price_range FROM Hotels WHERE star_rating_code = '5'
SELECT Hotels.price_range FROM Hotels WHERE Hotels.star_rating_code = '5'
SELECT AVG(price_range) AS average_price FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = 'Y'
SELECT AVG(price_range) AS average_price_range FROM Hotels WHERE star_rating_code = '5' AND pets_allowed_yn = 'Y'
SELECT Locations.Address FROM Locations WHERE Locations.location_name ILIKE '%Science%Gallery%' ORDER BY Locations.address
SELECT Locations.Address FROM Locations WHERE Locations.location_name ilike '%Science%Gallery%'
SELECT Locations.Location_Name, Locations.Address_Details FROM Locations WHERE Locations.Location_Name ILIKE '%UK%gallery%' AND Locations.Location_Name ILIKE '%uk%'
SELECT Locations.Location_Name, Locations.Address FROM Locations WHERE Locations.Location_Name ILIKE '%Japanese%' ORDER BY Locations.Location_Name
SELECT Locations.Location_Name FROM Locations WHERE Locations.Location_Name ILIKE '%film%'
SELECT Locations.Location_Name FROM Locations WHERE Locations.Location_Name ILIKE '%film%'
SELECT COUNT(DISTINCT Photos.Name) AS total_names FROM Photos
SELECT COUNT(DISTINCT Name) AS num_names FROM Photos
SELECT DATE_TRUNC('DAY', Visit_Date) AS Visit_Day FROM Visits GROUP BY Visit_Day
SELECT DISTINCT Visit_Date FROM Visits
SELECT ta.name FROM Tourist_Attractions AS ta JOIN transportation_modes ON ta.location_id = tm.tourist_attraction_id WHERE tm.attraction_type_code = 'BUS'
SELECT ta.name FROM Tourist_Attractions AS ta JOIN transport_modes ON ta.tourist_attraction_id = tm.tourist_attraction_id WHERE tm.attraction_type_code = 'BUS'
SELECT ta.name, ta.opening_hours FROM Tourist_Attractions AS ta WHERE ta.how_to_get_there IN ('bus', 'walk')
SELECT ta.name, ta.opening_hours FROM Tourist_Attractions AS ta WHERE ta.how_to_get_there IN ('bus', 'walk')
SELECT star_rating_code, AVG(price_range) AS average_price FROM Hotels GROUP BY star_rating_code
SELECT star_rating_code, AVG(price_range) AS average_price_range FROM Hotels GROUP BY star_rating_code
SELECT pets_allowed_yn, AVG(price_range) AS average_price FROM Hotels GROUP BY pets_allowed_yn
SELECT pets_allowed_yn, AVG(price_range) AS average_price FROM Hotels GROUP BY pets_allowed_yn
SELECT hotels.hotel_id, CAST(hotels.star_rating_code AS FLOAT) AS star_rating FROM Hotels ORDER BY hotels.price_range ASC NULLS FIRST
SELECT hotels.hotel_id, CAST(hotels.star_rating_code AS FLOAT) AS star_rating FROM Hotels ORDER BY hotels.price_range ASC NULLS FIRST
SELECT Hotels.hotel_id, Hotels.star_rating_code, Hotels.pets_allowed_yn, Hotels.price_range FROM Hotels ORDER BY Hotels.price_range DESC NULLS LAST LIMIT 3
SELECT Hotels.hotel_id, Hotels.star_rating_code, Hotels.pets_allowed_yn, Hotels.price_range, RANK() OVER (ORDER BY Hotels.price_range DESC NULLS LAST) AS rank FROM Hotels WHERE Hotels.price_range > 100 ORDER BY rank ASC NULLS FIRST LIMIT 3
SELECT Hotels.hotel_id, Hotels.star_rating_code, Hotels.pets_allowed_yn, Hotels.price_range, RANK() OVER (ORDER BY Hotels.price_range ASC NULLS FIRST) AS rank FROM Hotels WHERE NOT price_range IS NULL ORDER BY rank ASC NULLS FIRST LIMIT 3
SELECT h.hotel_id, h.star_rating_code, h.pets_allowed_yn, h.other_hotel_details FROM Hotels AS h WHERE h.price_range IN (SELECT MIN(price_range) FROM Hotels) GROUP BY h.hotel_id, h.star_rating_code, h.pets_allowed_yn, h.other_hotel_details
SELECT Tourist_Attraction.How_to_Get_There, COUNT(*) AS number_of_people FROM Tourist_Attractions GROUP BY Tourist_Attraction.How_to_Get_There ORDER BY number_of_people DESC NULLS LAST LIMIT 1
SELECT ta.attraction_type_code, CAST(COUNT(*) AS FLOAT) / tourist_attraction_id AS fraction FROM Tourist_Attractions AS ta GROUP BY ta.attraction_type_code ORDER BY fraction DESC NULLS LAST LIMIT 1
SELECT attraction_type_code, COUNT(*) AS attraction_count FROM Tourist_Attractions GROUP BY attraction_type_code
SELECT ta.attraction_type_code, COUNT(*) AS attraction_count FROM Tourist_Attractions AS ta GROUP BY ta.attraction_type_code
SELECT COUNT(DISTINCT Visitors.tourist_id) AS number_of_visitors FROM Visitors
SELECT COUNT(DISTINCT Visitors.tourist_id) AS total_visitors FROM Visitors
SELECT COUNT(*) AS total_games FROM Video_Games
SELECT COUNT(*) AS game_count FROM Video_Games
SELECT COUNT(DISTINCT GType) AS number_of_game_types FROM Video_Games
SELECT COUNT(DISTINCT Video_Games.GType) AS number_of_game_types FROM Video_Games
SELECT DISTINCT Video_Games.GType FROM Video_Games
SELECT DISTINCT Video_Games.GType FROM Video_Games
SELECT vg.gname, vg.gtype FROM Video_Games AS vg ORDER BY vg.gname NULLS FIRST
SELECT vg.gname, vg.gtype FROM Video_Games AS vg ORDER BY vg.gname ASC, vg.gtype ASC
SELECT Video_Games.GameID, Video_Games.GName FROM Video_Games WHERE Video_Games.GType ILIKE '%Collectible%card%game%'
SELECT vg.gname FROM video_games JOIN Video_Games AS cc ON vg.gameid = cc.gtype
SELECT Video_Games.GType FROM Video_Games WHERE Video_Games.GName ILIKE '%Destiny%'
SELECT vg.gtype FROM Video_Games AS vg WHERE vg.gname ILIKE '%call%of%destiny%'
SELECT COUNT(*) FROM Video_Games WHERE GType ILIKE '%Massive%multiplayer%online%game%'
SELECT COUNT(*) FROM Video_Games WHERE GType ILIKE '%Massively%multiplayer%online%'
SELECT vg.gtype, COUNT(*) AS game_count FROM Video_Games AS vg GROUP BY vg.gtype
SELECT vg.gtype, COUNT(*) AS game_count FROM Video_Games AS vg GROUP BY vg.gtype
SELECT vg.gtype, COUNT(*) AS game_count FROM Video_Games AS vg GROUP BY vg.gtype ORDER BY game_count DESC NULLS LAST LIMIT 1
SELECT vg.gtype, COUNT(*) AS game_count FROM Video_Games AS vg GROUP BY vg.gtype ORDER BY game_count DESC NULLS LAST LIMIT 1
SELECT vg.gtype, COUNT(*) AS game_count FROM Video_Games AS vg GROUP BY vg.gtype ORDER BY game_count ASC LIMIT 1
SELECT Video_Games.GType, COUNT(Video_Games.GameID) AS game_count FROM Video_Games GROUP BY Video_Games.GType ORDER BY game_count ASC NULLS FIRST LIMIT 1
SELECT Student.StuID FROM Student WHERE city_code = 'CHI'
SELECT Student.StuID FROM Student WHERE Student.city_code = 'CHI'
SELECT Student.StuID FROM Student WHERE Student.Advisor = 1121
SELECT Student.StuID FROM Student WHERE Student.Advisor = 1121
SELECT Student.Fname FROM Student WHERE Student.Major = 600
SELECT Student.Fname FROM Student WHERE Student.Major = 600
SELECT Student.Major, AVG(Student.Age) AS average_age, MIN(Student.Age) AS min_age, MAX(Student.Age) AS max_age FROM Student GROUP BY Student.Major
SELECT Student.Major, AVG(Student.Age) AS average_age, MIN(Student.Age) AS min_age, MAX(Student.Age) AS max_age FROM Student GROUP BY Student.Major
SELECT a.lname AS advisor_name, COUNT(s.stuID) AS num_students FROM Student AS a JOIN student ON a.age = s.advisor JOIN course ON (a.age = c.fname OR s.advisor = c.fname) GROUP BY a.lname HAVING COUNT(s.stuID) >= 2
SELECT Student.LName, Student.Fname FROM Student WHERE NOT Student.Advisor IS NULL
SELECT COUNT(SportName) AS number_of_sports FROM SportsInfo
SELECT COUNT(DISTINCT SportName) AS number_of_sports FROM SportsInfo
SELECT CAST(COUNT(SportsInfo.StuID) AS FLOAT) / CAST(COUNT(Students.StudentNumber) AS FLOAT) AS proportion FROM SportsInfo JOIN students ON SportsInfo.StuID = students.StudentNumber
SELECT COUNT(DISTINCT SportsInfo.StuID) AS number_of_students FROM SportsInfo
SELECT SportsInfo.StuID FROM SportsInfo WHERE SportsInfo.OnScholarship = 'Yes'
SELECT SportsInfo.StuID FROM SportsInfo WHERE SportsInfo.OnScholarship = 'Yes'
SELECT COUNT(SportsInfo.GamesPlayed) AS total_games_played FROM SportsInfo
SELECT SUM(GamesPlayed) AS total_games_play FROM SportsInfo
SELECT COUNT(GamesPlayed) AS total_games_played FROM SportsInfo WHERE OnScholarship = 'Yes' AND SportName ILIKE '%Football%'
SELECT SUM(GamesPlayed) AS total_games_played FROM SportsInfo WHERE "OnScholarship" ILIKE '%yes%'
SELECT SportsInfo.SportName, COUNT(Students.StudentID) AS total_students FROM SportsInfo JOIN students ON SportsInfo.StuID = students.StuID GROUP BY SportsInfo.SportName
SELECT SportsInfo.SportName, COUNT(*) AS number_of_students FROM SportsInfo GROUP BY SportsInfo.SportName
SELECT s.StuID, COUNT(DISTINCT si.SportName) AS num_sports, SUM(si.GamesPlayed) AS total_games_play FROM SportsInfo AS si JOIN Students ON si.StuID = s.StudentID GROUP BY s.StuID
SELECT s.StuID, COUNT(DISTINCT si.SportName) AS num_sports, SUM(si.GamesPlayed) AS total_games_play FROM Students JOIN SportsInfo AS si ON s.StuID = si.StuID GROUP BY s.StuID
SELECT SportsInfo.StuID FROM SportsInfo WHERE SportsInfo.HoursPerWeek > 10
SELECT SportsInfo.StuID FROM SportsInfo WHERE SportsInfo.HoursPerWeek > 10
SELECT SportsInfo.SportName, COUNT(*) AS total_students_on_scholarship FROM SportsInfo WHERE OnScholarship = 'Yes' GROUP BY SportsInfo.SportName ORDER BY total_students_on_scholarship DESC NULLS LAST LIMIT 1
SELECT SportsInfo.SportName, COUNT(SportsInfo.StuID) AS total_students FROM SportsInfo WHERE SportsInfo.OnScholarship = 'Yes' GROUP BY SportsInfo.SportName ORDER BY total_students DESC NULLS LAST LIMIT 1
SELECT Student.StuID FROM Student WHERE NOT Student.StuID IN (SELECT Sports_Student.StuID FROM Student)
SELECT Student.StuID FROM Student WHERE NOT Student.StuID IN (SELECT Sports_Participant.Student_id FROM Student)
SELECT Student.StuID FROM Student WHERE Student.Major = 600 AND Student.StuID IN (SELECT Scholarship.Student_id FROM Student)
SELECT Student.StuID FROM Student WHERE Student.Major = 600 AND Student.StuID IN (SELECT Scholarship.Student_id FROM Student)
SELECT Student.StuID FROM Student WHERE Student.Sex = 'Female' AND Student.Major = 1
SELECT Student.StuID FROM Student WHERE Student.Sex = 'Female' AND EXISTS(SELECT 1 FROM TeamMember WHERE TeamMember.Student_id = Student.StuID)
SELECT Student.StuID FROM Student WHERE Student.Sex = 'Male' AND NOT Student.StuID IN (SELECT Student_Playing_Sportball.StuID FROM Student AS Student_Playing_Sportball)
SELECT Student.StuID FROM Student WHERE Student.Sex = 'M' AND NOT Student.StuID IN (SELECT Student_Athlete.StuID FROM Student JOIN Student AS Athlete_in_sport ON Student_Athlete.StuID = Athlete_in_sport.StuID WHERE Athlete_in_sport.Sport_Code = 'Basketball')
SELECT COUNT(DISTINCT Plays_Games.StuID) AS number_of_students FROM Plays_Games
SELECT COUNT(DISTINCT Plays_Games.StuID) AS number_of_students FROM Plays_Games
SELECT Student.StuID FROM Student WHERE NOT Student.StuID IN (SELECT VideoGamePlayer.Student_id FROM VideoGamePlayer)
SELECT Student.StuID FROM Student WHERE NOT Student.StuID IN (SELECT VideoGamePlayer.StuID FROM VideoGamePlayer)
SELECT s.StuID FROM SportsInfo AS s JOIN VideoGameInfo ON s.StuID = vg.StuID
SELECT s.StuID FROM SportsInfo AS s JOIN VideoGameInfo ON s.StuID = vg.StuID
SELECT p.gameid, CAST(p.hours_played AS FLOAT) AS hours_played FROM Plays_Games AS p
SELECT p.stuid, p.hours_played FROM Plays_Games AS p
SELECT p.StuID, SUM(p.Hours_played) AS total_hours_played FROM Plays_Games AS p GROUP BY p.StuID
SELECT p.gameid, SUM(p.hours_played) AS total_hours_play FROM Plays_Games AS p GROUP BY p.gameid
SELECT s.fname, s.age FROM student WHERE s.major IN (SELECT major FROM Student WHERE city_code IN ('FOOTBALL', 'LACROSSE'))
SELECT s.fname, CAST(s.age AS FLOAT) FROM student WHERE EXISTS(SELECT 1 FROM sports_participation JOIN Student AS spt ON sp.city_code = spt.city_code AND sp.advisor = s.stuid WHERE spt.lname IN ('Football', 'Lacrosse') AND sp.advisor = s.stuid) GROUP BY fname, age
SELECT s.lname, s.sex FROM student JOIN game_student ON s.stuid = gs.stuid WHERE gs.city_code IN (SELECT city_code FROM Student WHERE fname ILIKE '%Call%of%Destiny%') AND gs.city_code IN (SELECT city_code FROM Student WHERE fname ILIKE '%Works%of%Widenius%')
SELECT Student.LName, Student.Sex FROM Student WHERE (Major = 1 OR Major = 2) AND (Advisor = 757071 OR Advisor = 757072)
SELECT customers.customer_name FROM Customers
SELECT Customers.customer_name FROM Customers
SELECT COUNT(*) AS total_customers FROM Customers
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM Customers
SELECT AVG(CAST(order_quantity AS INT)) AS average_quantity FROM Order_Items
SELECT AVG(CAST(order_quantity AS FLOAT)) AS average_order_quantity FROM Order_Items
SELECT Customers.customer_name FROM Customers WHERE Customers.payment_method ILIKE '%cash%'
SELECT Customers.customer_name FROM Customers WHERE Customers.payment_method ILIKE '%cash%'
SELECT Customers.customer_id, Customers.date_became_customer FROM Customers WHERE Customers.customer_id BETWEEN 10 AND 20
SELECT Customers.date_became_customer FROM Customers WHERE Customers.customer_id BETWEEN 10 AND 20
SELECT Customers.payment_method, COUNT(Customers.customer_id) AS customer_count FROM Customers GROUP BY Customers.payment_method ORDER BY customer_count DESC NULLS LAST LIMIT 1
SELECT customers.payment_method, COUNT(*) AS frequency FROM Customers GROUP BY customers.payment_method ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT c.customer_name FROM Customers AS c GROUP BY c.payment_method, c.customer_name HAVING COUNT(c.customer_id) = (SELECT MAX(COUNT(customer_id)) FROM Customers)
SELECT customers.customer_name FROM Customers GROUP BY customers.payment_method HAVING COUNT(customers.customer_id) OVER (PARTITION BY customers.payment_method) = MAX(COUNT(customers.customer_id)) OVER (PARTITION BY customers.payment_method)
SELECT DISTINCT Customers.payment_method FROM Customers
SELECT DISTINCT Customers.payment_method FROM Customers
SELECT p.product_id, p.product_details FROM Products AS p
SELECT Products.product_id, Products.product_details FROM Products
SELECT customers.customer_name FROM Customers WHERE customers.customer_name ILIKE '%Alex%'
SELECT customers.customer_name FROM Customers WHERE customers.customer_name ILIKE '%Alex%'
SELECT Products.product_id, Products.product_details FROM Products WHERE Products.product_details ILIKE '%Leisure%' OR Products.product_details ILIKE '%Americano%'
SELECT Products.product_details FROM Products WHERE Products.product_details ILIKE '%Leute%' OR Products.product_details ILIKE '%Americano%'
SELECT DISTINCT Addresses.city FROM Addresses
SELECT DISTINCT a.city FROM Addresses AS a WHERE NOT a.address_id IN (SELECT b.address_id FROM Customers)
SELECT DISTINCT Addresses.city FROM Addresses
SELECT DISTINCT Addresses.city FROM Addresses
SELECT Addresses.city FROM Addresses WHERE Addresses.zip_postcode = '255'
SELECT Addresses.city FROM Addresses WHERE Addresses.zip_postcode = '255'
SELECT Addresses.city, Addresses.state_province_county, Addresses.country FROM Addresses WHERE Addres.zip_postcode LIKE '4%'
SELECT Addresses.city, Addresses.state_province_county, Addresses.country FROM Addresses WHERE Addres.zip_postcode LIKE '4.%'
SELECT a.address_content FROM Addresses AS a GROUP BY a.country HAVING COUNT(a.address_id) > 4
SELECT a.country FROM Addresses AS a GROUP BY a.country HAVING COUNT(DISTINCT a.address_id) > 4
SELECT channel_code FROM Customer_Contact_Channels WHERE customer_id IN (SELECT customer_id FROM Customer_Contact_Channels GROUP BY customer_id HAVING COUNT(customer_id) < 5)
SELECT COUNT(*) AS number_of_occurrences FROM Customer_Contact_Channels WHERE active_to_date > CURRENT_TIMESTAMP()
-1
-1
SELECT pc_channels.customer_id, pc_channels.channel_code, pc_channels.contact_number FROM Customer_Contact_Channels WHERE (pc_channels.active_to_date IS NULL OR pc_channels.active_to_date > CURRENT_TIMESTAMP()) AND NOT EXISTS(SELECT 1 FROM Customer_Contact_Channels AS pcc2 WHERE pcc2.customer_id <> personal_contact_channels.customer_id AND pcc2.active_to_date > pc_channels.active_from_date) ORDER BY (pc_channels.active_to_date - pc_channels.active_from_date) DESC NULLS LAST LIMIT 1
SELECT cc.channel_code, cc.contact_number FROM (SELECT pc.customer_id, (pc.active_to_date - pc.active_from_date) AS active_duration FROM personal_contacts_channels pc) AS cc JOIN (SELECT MAX(active_duration) AS max_active_duration FROM personal_contacts_channels) AS d ON cc.active_duration = d.max_active_duration
SELECT COUNT(DISTINCT customer_id) AS number_of_customers FROM Customer_Orders WHERE order_status = 'Cancelled'
SELECT COUNT(DISTINCT customer_id) AS number_of_customers FROM Customer_Orders WHERE order_status = 'Cancelled'
SELECT COUNT(*) FROM Customer_Orders WHERE order_details ILIKE '%Second%time%'
SELECT COUNT(*) FROM customer_orders WHERE order_details ilike '%Second%time%'
SELECT Addresses.address_content FROM Addresses WHERE (Addresses.state_province_county = 'Texas' AND addresses.city ILIKE '%East%Julianaside%') OR (Addresses.state_province_county = 'Arizona' AND addresses.city ILIKE '%Gleasonmouth%')
SELECT Addresses.address_content FROM Addresses WHERE (Address = 'East Julianaside' AND state_province_county = 'Texas') OR (city = 'Gleasonmouth' AND state_province_county = 'Arizona')
SELECT customers.customer_name FROM Customers WHERE NOT customers.payment_method ILIKE '%Cash%'
SELECT Customers.customer_name FROM Customers WHERE Customers.payment_method <> 'Cash'
SELECT Customers.customer_name FROM Customers WHERE Customers.customer_id NOT IN (SELECT OrderItems.customer_id FROM OrderItems JOIN Products ON OrderItems.product_id = Products.product_id WHERE Products.product_name ILIKE '%Latte%') )
SELECT Customers.customer_name FROM Customers WHERE NOT Customers.customer_id IN (SELECT OrderItems.customer_id FROM OrderItems JOIN Products ON OrderItems.other_customer_details = Products.other_customer_details WHERE Products.payment_method ILIKE '%Latte%') GROUP BY Customers.customer_name
SELECT Customers.customer_name FROM Customers WHERE NOT customer_id IN (SELECT orders.customer_id FROM orders)
SELECT Customers.customer_name FROM Customers WHERE NOT customer_id IN (SELECT OrderItems.customer_id FROM OrderItems)
SELECT COUNT(*) AS total_artists FROM artist
SELECT COUNT(*) FROM artist
SELECT artist.age FROM artist
SELECT artist.age FROM artist
SELECT AVG(age) AS average_age FROM artist
SELECT AVG(age) FROM artist
SELECT a.artist_id, a.famous_title FROM artist AS a WHERE a.artist ILIKE '%triumfall%' ORDER BY a.famous_title
SELECT a.famous_title FROM artist a WHERE a.artist ilike '%Triumfall%'
SELECT DISTINCT artist.famous_release_date FROM artist
SELECT DISTINCT artist.famous_release_date FROM artist
SELECT date_of_ceremony, result FROM music_festival
SELECT mf.music_festival, TO_DATE(mf.date_of_ceremony, 'YYYY-MM-DD') AS date_of_ceremony, mf.category, mf.volume, mf.result FROM music_festival AS mf
SELECT category FROM music_festival WHERE result = 'Ascended'
SELECT category FROM music_festival WHERE result ilike '%Ascerted%'
SELECT MAX(Weeks_on_Top) AS max_weeks_on_top, MIN(Weeks_on_Top) AS min_weeks_on_top FROM volume
SELECT MAX(Weeks_on_Top) AS max_weeks_on_top, MIN(Weeks_on_Top) AS min_weeks_on_top FROM volume
SELECT volume.song FROM volume WHERE volume.weeks_on_top > 1
SELECT volume.song FROM volume WHERE weeks_on_top > 1
SELECT volume.song FROM volume ORDER BY volume.song ASC NULLS FIRST
SELECT volume.volume_id, volume.song FROM volume ORDER BY volume.volume_id ASC NULLS FIRST
SELECT COUNT(DISTINCT volume.artist_id) AS number_of_artists FROM volume
SELECT COUNT(DISTINCT volume.artist_id) AS num_artists FROM volume
SELECT artist.age, artist.famous_title FROM artist ORDER BY artist.age DESC NULLS LAST
SELECT a.artist_id, a.age, RANK() OVER (PARTITION BY a.artist_id ORDER BY a.famous_title DESC NULLS LAST) AS rank FROM artist AS a
SELECT a.age, TO_NUMBER(a.famous_release_date, 'YYYYMMDD') AS release_date FROM artist AS a WHERE a.age = (SELECT MIN(age) FROM artist)
SELECT MAX(artist.famous_release_date) AS earliest_famous_release_date FROM artist
SELECT category, COUNT(*) AS frequency FROM music_festival GROUP BY category ORDER BY frequency DESC NULLS LAST
SELECT category, COUNT(*) AS total_festivals FROM music_festival GROUP BY category
SELECT music_festival.result FROM music_festival GROUP BY music_festival.result ORDER BY COUNT(music_festival.result) DESC NULLS LAST LIMIT 1
SELECT mf.result, COUNT(*) AS frequency FROM music_festival AS mf GROUP BY mf.result ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT category FROM music_festival GROUP BY category HAVING COUNT(ID) > 1
SELECT DISTINCT category FROM music_festival GROUP BY category HAVING COUNT(id) > 1
SELECT volume.song, MAX(volume.weeks_on_top) AS max_weeks_on_top FROM volume GROUP BY volume.song ORDER BY max_weeks_on_top DESC NULLS LAST
SELECT volume.song, MAX(volume.weeks_on_top) AS max_weeks_on_top FROM volume GROUP BY volume.song ORDER BY max_weeks_on_top DESC NULLS LAST
SELECT a.artist_id, a.artist, f.famous_title FROM artist LEFT JOIN artist AS f ON a.artist_id = f.artist_id WHERE f.famous_release_date IS NULL
SELECT a.artist_id, a.famous_title FROM artist AS a LEFT JOIN volume ON a.artist_id = v.artist_id WHERE v.artist_id IS NULL
SELECT Date_of_ceremony FROM music_festival WHERE Category = 'Best Song' AND Result = 'Ascended'
SELECT date_of_ceremony FROM music_festival WHERE category = 'Best Song' AND result = 'Ascended'
SELECT MIN(volume_id) AS volume_with_minimum FROM volume WHERE issue_date = (SELECT MAX(weeks_on_top) FROM volume)
SELECT volume.issue_date FROM volume ORDER BY volume.weeks_on_top ASC NULLS FIRST LIMIT 1
SELECT COUNT(DISTINCT volume.artist_id) AS number_of_artists FROM volume
SELECT COUNT(DISTINCT volume.artist_id) AS num_artists FROM volume
SELECT mf.result, COUNT(*) OVER (PARTITION BY mf.result) AS total_festivals FROM music_festival AS mf
SELECT music_festival.category, COUNT(music_festival) AS total_results FROM music_festival GROUP BY music_festival.category ORDER BY total_results DESC NULLS LAST
SELECT COUNT(*) AS total_roller_coasters FROM roller_coaster
SELECT roller_coaster.name FROM roller_coaster ORDER BY roller_coaster.length ASC NULLS FIRST
SELECT rollers_coaster.length AS length, rollers_coaster.height AS height FROM roller_coaster WHERE status = 'open' AND NOT speed IS NULL
SELECT country.name FROM country WHERE NOT country.languages ILIKE '%German%' ORDER BY country.name
SELECT roller_coaster.status FROM roller_coaster WHERE (roller_coaster.length > 3300 OR roller_coaster.speed > 100)
SELECT roller_coaster.speed FROM roller_coaster ORDER BY roller_coaster.length DESC NULLS LAST LIMIT 1
SELECT AVG(CAST(Speed AS FLOAT)) AS average_speed FROM roller_coaster
SELECT status, COUNT(Roller_Coaster_ID) AS number_of_coasters FROM roller_coaster GROUP BY status
SELECT status, COUNT(*) AS frequency FROM roller_coaster GROUP BY status ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT roller_coaster.status FROM roller_coaster GROUP BY roller_coaster.status HAVING COUNT(roller_coaster.roller_coaster_id) > 2
SELECT roller_coaster.park FROM roller_coaster WHERE roller_coaster.speed = (SELECT MAX(roller_coaster.speed) FROM roller_coaster)
SELECT COUNT(DISTINCT country.name) AS number_of_countries FROM country WHERE country.population > 3000
SELECT COUNT(DISTINCT rank) AS number_of_ranks FROM captain
SELECT COUNT(DISTINCT rank) FROM captain
SELECT captain.rank, COUNT(*) AS number_of_captains FROM captain GROUP BY captain.rank
SELECT captain.rank, COUNT(*) AS total_captains FROM captain GROUP BY captain.rank
SELECT captain.rank, COUNT(*) AS number_of_captains FROM captain WHERE age < '50' GROUP BY captain.rank
SELECT captain.rank, COUNT(*) AS total_captains FROM captain WHERE age < '50' GROUP BY captain.rank
SELECT c.name, CAST(c.age AS FLOAT) AS age_cast FROM captain AS c ORDER BY age_cast ASC NULLS FIRST
SELECT captain.name FROM captain ORDER BY captain.age DESC NULLS LAST
SELECT captain.name, captain.class, captain.rank FROM captain
SELECT captain.name, captain.class, captain.rank FROM captain
SELECT rank FROM captain GROUP BY rank) SELECT MAX(rank) AS MOST_COMMON_RANK FROM captain_ranks
SELECT c.captain_id, COUNT(*) AS num_captains FROM captain AS c GROUP BY c.captain_id) SELECT cr.captain_id, cr.num_captains, RANK() OVER (ORDER BY cr.num_captains NULLS FIRST) AS rank FROM captain_rank ORDER BY rank
SELECT captain.class FROM captain GROUP BY captain.class HAVING COUNT(captain.captain_id) > 2
SELECT captain.class FROM captain GROUP BY captain.class HAVING COUNT(captain.captain_id) > 2
SELECT captain.name FROM captain WHERE captain.rank IN ('Midshipman', 'Lieutenant')
SELECT captain.name FROM captain WHERE captain.rank IN ('Midshipman', 'Lieutenant')
SELECT captain.class, AVG(CAST(captain.age AS FLOAT)), MIN(CAST(captain.age AS FLOAT)) FROM captain GROUP BY captain.class
SELECT captain.class, AVG(CAST(captain.age AS FLOAT)), MIN(CAST(captain.age AS FLOAT)) FROM captain GROUP BY captain.class
SELECT c.rank FROM captain AS c WHERE c.class IN ('Cutter', 'Armed schooner') GROUP BY c.rank HAVING COUNT(DISTINCT c.class) = 2
SELECT captain.rank FROM captain WHERE captain.class IN ('Cutter', 'Armed schooner') ORDER BY captain.rank
SELECT c.rank FROM captain AS c WHERE NOT EXISTS(SELECT 1 FROM captain AS ca WHERE ca.ship_id = c.ship_id AND ca.class = 'Third' AND ca.rank = 'Third') AND c.class = 'Third'
SELECT c.captain_id, c.name, r.rank FROM captain c JOIN rank r ON c.rank = r.rank WHERE NOT EXISTS (SELECT 1 FROM captain cc WHERE cc.ship_id = c.ship_id AND cc.class = 'Third-rate' AND cc.captain_id != c.captain_id)
SELECT c.name FROM captain AS c WHERE c.age = (SELECT MIN(age) FROM captain)
SELECT c.name FROM captain AS c WHERE c.age = (SELECT MIN(c2.age) FROM captain AS c2)
SELECT COUNT(*) AS total_ships FROM Ship
SELECT COUNT(*) AS total_ships FROM Ship
SELECT s.name, s.type, s.flag FROM Ship AS s WHERE s.built_year = (SELECT MAX(built_year) FROM Ship)
SELECT s.name, s.type, s.flag FROM Ship AS s WHERE s.built_year = (SELECT MAX(built_year) FROM Ship)
SELECT s.name, COUNT(*) AS ship_count FROM Ship AS s GROUP BY s.name
SELECT Ship.Type, COUNT(*) AS number_of_ships FROM Ship GROUP BY Type
SELECT s.name, CAST(COUNT(*) AS FLOAT) / (SELECT COUNT(*) FROM Ship) AS fraction_of_ships_with_given_flag FROM Ship AS s GROUP BY s.name ORDER BY fraction_of_ships_with_given_flag DESC NULLS LAST LIMIT 1
SELECT COUNT(*) AS total_ships_with_given_flag, SUM(CASE WHEN Flag = 'GivenFlag' THEN 1 ELSE 0 END) AS number_of_ships_with_given_flag FROM Ship
SELECT Ship.Name FROM Ship ORDER BY Ship.Built_Year ASC NULLS FIRST, Ship.Class ASC NULLS FIRST
SELECT Ship.Name, Ship.Built_Year, Ship.Class FROM Ship ORDER BY Ship.Built_Year, Ship.Class NULLS FIRST
SELECT DISTINCT Ship.Type FROM Ship WHERE Ship.Flag IN ('Panama', 'Malta') ORDER BY Ship.Type
SELECT DISTINCT s.type FROM Ship AS s WHERE s.flag IN ('Panama', 'Malta') GROUP BY s.type HAVING COUNT(s.flag) = 2
SELECT MAX(Built_Year) AS max_built_year FROM Ship
SELECT MAX(Built_Year) AS max_built_year FROM Ship
SELECT s.name, c.class FROM ship LEFT JOIN Ship AS c ON s.ship_id = c.ship_id WHERE c.ship_id IS NULL
SELECT s.name, c.class FROM ship LEFT JOIN Ship AS c ON s.ship_id = c.ship_id WHERE c.ship_id IS NULL
SELECT s.name, s.flag FROM ship WHERE NOT EXISTS(SELECT 1 FROM Ship AS c WHERE c.class = 'Midshipman' AND c.ship_id = s.ship_id)
SELECT s.name, s.type FROM ship LEFT JOIN Ship AS c ON s.ship_id = c.ship_id WHERE c.class <> 'Midshipman' AND c.ship_id IS NULL
SELECT MAX(year) AS latest_year, host_city FROM hosting_city GROUP BY host_city ORDER BY latest_year DESC NULLS LAST LIMIT 1
SELECT MAX(year) AS latest_year, host_city FROM hosting_city GROUP BY host_city
SELECT match_id FROM match WHERE "competition" ILIKE '%"1994%FIFA%World%Cup%'
SELECT Match_ID FROM match WHERE "Competition" ILIKE '%"1994%FIFA%World%Cup%"'
SELECT city.city, SUM(city.regional_population) AS total_regional_population FROM city GROUP BY city.city ORDER BY total_regional_population DESC NULLS LAST LIMIT 3
SELECT city.city_id, city.hanzi, city.hanyu_pinyin, city.regional_population FROM city ORDER BY city.regional_population DESC NULLS LAST LIMIT 3
SELECT c.city, MIN(c.gdp) AS min_gpl FROM city AS c GROUP BY c.city
SELECT c.city, MIN(c.gdp) AS min_gpl FROM city AS c GROUP BY c.city
SELECT city.city_id, city.hanzi FROM city WHERE city.regional_population > 10000000
SELECT city.city FROM city WHERE city.regional_population > 10000000
SELECT city.city_id, city.hanzi FROM city WHERE city.regional_population > 8000000 OR city.regional_population < 5000000
SELECT city.city FROM city WHERE (city.regional_population > 8000000 OR city.regional_population < 5000000)
SELECT competition FROM match GROUP BY competition
SELECT match.competition, COUNT(*) AS total_matches FROM match GROUP BY match.competition
SELECT venue FROM match ORDER BY date DESC NULLS LAST
SELECT venue FROM match ORDER BY date DESC NULLS LAST
SELECT MAX(city.city) AS max_gpl FROM city
SELECT MAX(city.city) AS max_gpl FROM city ORDER BY city.regional_population DESC NULLS LAST LIMIT 1
SELECT individuals.individual_first_name, individuals.individual_middle_name, individuals.individual_last_name FROM Individuals ORDER BY individuals.individual_last_name ASC NULLS FIRST
SELECT Individuals.individual_first_name, Individuals.individual_middle_name, Individuals.individual_last_name FROM Individuals ORDER BY Individuals.individual_last_name
SELECT DISTINCT Forms.form_type_code FROM Forms
SELECT Forms.form_type_code FROM Forms GROUP BY Forms.form_type_code
SELECT Parties.payment_method_code, Parties.party_phone FROM Parties WHERE Parties.party_email = 'enrico09@example.com'
SELECT Parties.payment_method_code, Parties.party_phone FROM Parties WHERE Parties.party_email = 'enrico09@example.com'
SELECT Organizations.organization_name FROM Organizations ORDER BY Organizations.date_formed NULLS FIRST
SELECT Organizations.organization_name FROM Organizations ORDER BY Organizations.date_formed ASC NULLS FIRST
SELECT organizations.organization_name FROM Organizations ORDER BY organizations.date_formed ASC NULLS FIRST LIMIT 1
SELECT organizations.organization_name FROM Organizations ORDER BY organizations.date_formed DESC NULLS LAST LIMIT 1
SELECT COUNT(service_id) AS number_of_services FROM Services
SELECT COUNT(service_id) AS total_services FROM Services
SELECT Services.service_name FROM Services WHERE NOT Services.service_id IN (SELECT Service_Id FROM Usage)
SELECT Services.service_name FROM Services WHERE Services.service_id IS NULL
SELECT a.town_city, a.state_province_county FROM Addresses AS a
SELECT Addresses.town_city, Addresses.state_province_county FROM Addresses
SELECT COUNT(DISTINCT town_city) FROM Addresses WHERE state_province_county = 'Carolina'
SELECT COUNT(DISTINCT town_city) FROM Addresses WHERE "state_province_county" ILIKE '%Colorado%'
SELECT Parties.payment_method_code FROM Parties GROUP BY Parties.payment_method_code HAVING COUNT(Parties.party_id) > 3
SELECT DISTINCT Parties.payment_method_code FROM Parties GROUP BY Parties.payment_method_code HAVING COUNT(Parties.party_id) > 3
SELECT Organizations.organization_name FROM Organizations WHERE Organizations.organization_name ILIKE '%Party%'
SELECT Organizations.organization_name FROM Organizations WHERE Organizations.organization_name ILIKE '%Party%'
SELECT COUNT(DISTINCT Parties.payment_method_code) AS number_of_payment_methods FROM Parties
SELECT COUNT(DISTINCT Parties.payment_method_code) AS number_of_payment_method_codes FROM Parties
SELECT Addresses.state_province_county FROM Addresses WHERE Addresses.zip_postcode = '6862 Kaitlyn Knolls'
SELECT Addresses.state_province_county FROM Addresses WHERE Addresses.line_1_number_building ILIKE '%6862%Kaitlyn%Knolls%'
SELECT COUNT(*) AS total_drivers FROM driver
SELECT d.name, d.home_city, d.age FROM driver AS d
SELECT party, COUNT(driver_id) AS driver_count FROM driver GROUP BY party
SELECT d.name FROM driver AS d ORDER BY d.age DESC NULLS LAST
SELECT DISTINCT home_city FROM driver
SELECT d.home_city, COUNT(*) AS driver_count FROM driver AS d GROUP BY d.home_city ORDER BY driver_id DESC NULLS LAST LIMIT 1
SELECT party.name FROM party JOIN driver ON party.party = driver.driver_id WHERE home_city = 'Hartford' AND age > 40
SELECT DISTINCT drivers.home_city FROM driver WHERE age > 40 GROUP BY drivers.home_city HAVING COUNT(drivers.driver_id) >= 2
SELECT DISTINCT home_city FROM driver WHERE age >= 40
SELECT d.name FROM driver AS d WHERE NOT d.driver_id IN (SELECT s.driver_id FROM school_buses)
SELECT school.type FROM school WHERE school.school_id IN (SELECT school1.school_id FROM school AS school1 JOIN school AS school2 ON school1.school_id <> school2.school_id) GROUP BY school.type HAVING COUNT(DISTINCT school.school_id) >= 2
SELECT MAX(Years_Working) AS max_years, MIN(Years_Working) AS min_years, AVG(Years_Working) AS avg_years FROM school_bus
SELECT s.school, s.type FROM school LEFT JOIN school ON s.school_id = b.school_id WHERE b.school_id IS NULL
SELECT COUNT(*) FROM driver WHERE home_city = 'Hartford' AND age < 40
SELECT driver.name FROM driver WHERE drivers.home_city = 'Hartford' AND drivers.age < 40
SELECT COUNT(*) FROM flight WHERE velocity > 200
SELECT flight.vehicle_flight_number, flight.date, flight.pilot FROM flight ORDER BY flight.altitude NULLS FIRST
SELECT a.id, a.country, a.city, a.name FROM airport AS a ORDER BY a.name ASC NULLS FIRST
SELECT MAX(group_equity_shareholding) AS max_shareholding FROM operate_company
SELECT AVG(flight.velocity) AS average_velocity FROM flight WHERE pilot ILIKE '%Thompson%'
SELECT a.name FROM airport AS a WHERE a.country <> 'Iceland'
SELECT Type, COUNT(*) AS frequency FROM operate_company GROUP BY Type ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT COUNT(DISTINCT a.id) AS number_of_airports FROM airport AS a JOIN flight ON a.icao = f.icao WHERE NOT a.name ILIKE '%Thompson%'
SELECT name FROM airport WHERE name ILIKE '%international%'
SELECT a.country, COUNT(*) AS number_of_airports FROM airport AS a GROUP BY a.country
SELECT DISTINCT a.country FROM airport AS a GROUP BY a.country HAVING COUNT(a.id) > 2
SELECT p.date, COUNT(f.id) AS flight_count FROM pilot JOIN flight AS f ON p.id = f.pilot GROUP BY p.date ORDER BY flight_count DESC NULLS LAST LIMIT 1
SELECT COUNT(*) AS total_accounts FROM Accounts
SELECT COUNT(*) AS account_count FROM Accounts
SELECT a.account_id, a.account_details FROM Accounts AS a
SELECT a.account_id, a.statement_id, a.account_details FROM Accounts AS a
SELECT COUNT(Statement_ID) AS total_statements FROM Statements
SELECT COUNT(Statement_ID) AS total_statements FROM Statements
SELECT Statements.Statement_ID, Statements.Statement_Details FROM Statements
SELECT s.statement_id, s.statement_details FROM Statements AS s
SELECT a.statement_id, COUNT(a.account_id) AS account_count FROM Accounts AS a GROUP BY a.statement_id
SELECT Accounts.statement_id, COUNT(Accounts.account_id) AS account_count FROM Accounts GROUP BY Accounts.statement_id
SELECT COUNT(Document_ID) AS total_documents FROM Documents
SELECT COUNT(*) AS total_documents FROM Documents
SELECT Documents.Document_Type_Code, Documents.Document_Name, Documents.Document_Description FROM Documents WHERE Documents.Document_Name ILIKE '%Noel%CV%' OR Documents.Document_Name ILIKE '%King%Book%'
SELECT Documents.Document_Type_Code, Documents.Document_Name, Documents.Document_Description FROM Documents WHERE Documents.Document_Name ILIKE '%Noel%CV%' OR Documents.Document_Name ILIKE '%King%Book%'
SELECT Documents.Document_ID, Documents.Document_Name FROM Documents
SELECT d.document_id, d.document_name FROM Documents AS d
SELECT Documents.Document_ID, Documents.Document_Name FROM Documents WHERE Documents.Document_Type_Code ILIKE '%BK%'
SELECT Documents.Document_ID, Documents.Document_Name FROM Documents WHERE Documents.Document_Type_Code = 'BK'
SELECT Documents.project_id, COUNT(Documents.document_id) AS total_documents FROM Documents WHERE Documents.document_type_code = 'BK' GROUP BY Documents.project_id
SELECT Documents.Project_ID, COUNT(Documents.Document_Type_Code) AS document_count FROM Documents WHERE Documents.Document_Type_Code = 'BK' GROUP BY Documents.Project_ID
SELECT p.project_id, COUNT(d.document_id) AS document_count FROM projects JOIN Documents AS d ON p.project_id = d.project_id GROUP BY p.project_id
SELECT Documents.Project_ID, COUNT(Documents.Document_ID) AS document_count FROM Documents GROUP BY Documents.Project_ID
SELECT MIN(Project_ID) AS min_project_id FROM Documents
SELECT MIN(Project_ID) AS min_project_id FROM Documents
SELECT Project_ID FROM Documents GROUP BY Project_ID HAVING COUNT(Document_ID) >= 2
SELECT Project_ID FROM Documents GROUP BY Project_ID HAVING COUNT(Document_ID) >= 2
SELECT Documents.Document_Type_Code, COUNT(*) AS total_documents FROM Documents GROUP BY Documents.Document_Type_Code
SELECT Documents.Document_Type_Code, COUNT(*) AS total_documents FROM Documents GROUP BY Documents.Document_Type_Code
SELECT Documents.Document_Type_Code, COUNT(Documents.Document_ID) AS total_documents FROM Documents GROUP BY Documents.Document_Type_Code ORDER BY total_documents DESC NULLS LAST LIMIT 1
SELECT Documents.Document_Type_Code, COUNT(*) AS frequency FROM Documents GROUP BY Documents.Document_Type_Code ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT Documents.Document_Type_Code FROM Documents GROUP BY Documents.Document_Type_Code HAVING COUNT(Documents.Document_ID) < 3
SELECT Documents.Document_Type_Code FROM Documents GROUP BY Documents.Document_Type_Code HAVING COUNT(Documents.Document_ID) < 3
SELECT Ref_Document_Types.Document_Type_Code, Ref_Document_Types.Document_Type_Name, Ref_Document_Types.Document_Type_Description FROM Ref_Document_Types
SELECT ref_document_types.document_type_code, ref_document_types.document_type_name, ref_document_types.document_type_description FROM Ref_Document_Types
SELECT Ref_Document_Types.Document_Type_Description FROM Ref_Document_Types WHERE Ref_Document_Types.Document_Type_Name ILIKE '%Film%'
SELECT Ref_Document_Types.Document_Type_Description FROM Ref_Document_Types WHERE Ref_Document_Types.Document_Type_Name ILIKE '%Film%'
SELECT COUNT(Projects.Project_ID) AS total_projects FROM Projects
SELECT COUNT(Projects.Project_ID) AS number_of_projects FROM Projects
SELECT p.project_id, p.project_details FROM Projects AS p
SELECT p.project_id, p.project_details FROM Projects AS p
SELECT COUNT(DISTINCT Ref_Budget_Codes.Budget_Type_Code) AS number_of_budget_types FROM Ref_Budget_Codes
SELECT COUNT(Budget_Type_Code) AS total_budget_codes FROM Ref_Budget_Codes
SELECT Ref_Budget_Codes.Budget_Type_Code, Ref_Budget_Codes.Budget_Type_Description FROM Ref_Budget_Codes
SELECT Ref_Budget_Codes.Budget_Type_Code, Ref_Budget_Codes.Budget_Type_Description FROM Ref_Budget_Codes
SELECT Ref_Budget_Codes.Budget_Type_Description FROM Ref_Budget_Codes WHERE Ref_Budget_Codes.Budget_Type_Code = 'ORc'
SELECT Ref_Budget_Codes.Budget_Type_Description FROM Ref_Budget_Codes WHERE Ref_Budget_Codes.Budget_Type_Code = 'ORg'
SELECT COUNT(*) AS number_of_documents FROM Documents_with_Expenses
SELECT COUNT(*) FROM Documents_with_Expenses
SELECT Documents_with_Expenses.document_id FROM Documents_with_Expenses WHERE Documents_with_Expenses.budget_type_code = 'SF'
SELECT Documents_with_Expenses.Document_ID FROM Documents_with_Expenses WHERE Documents_with_Expenses.Budget_Type_Code = 'SF'
SELECT Budget_Type_Code, COUNT(Document_ID) AS document_count FROM Documents_with_Expenses GROUP BY Budget_Type_Code
SELECT Budget_Type_Code, COUNT(Document_ID) AS document_count FROM Documents_with_Expenses GROUP BY Budget_Type_Code
SELECT Budget_Type_Code, COUNT(Document_ID) AS document_count FROM Documents_with_Expenses GROUP BY Budget_Type_Code ORDER BY document_count DESC NULLS LAST LIMIT 1
SELECT Budget_Type_Code, COUNT(*) AS frequency FROM Documents_with_Expenses GROUP BY Budget_Type_Code ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT Documents.Document_ID FROM Documents WHERE NOT Documents.Document_Type_Code ILIKE '%Expense%'
SELECT Documents.Document_ID FROM Documents WHERE NOT Documents.Document_Type_Code ILIKE '%expenses%'
SELECT Documents.Document_ID FROM Documents WHERE Documents.Document_Type_Code = 'CV' AND Documents.Project_ID IS NULL
SELECT Documents.Document_ID FROM Documents WHERE Documents.Document_Type_Code = 'CV' AND Documents.Other_Details IS NULL
SELECT COUNT(*) AS total_documents FROM Documents WHERE NOT Document_ID IN (SELECT Document_ID FROM Expenses)
SELECT COUNT(*) FROM Documents WHERE Document_Type_Code <> 'Expense'
SELECT Account_Details FROM Accounts WHERE Account_Details LIKE '%5%' ORDER BY CAST(Account_Details AS FLOAT) DESC NULLS LAST LIMIT 1
SELECT Account_Details FROM Accounts WHERE Account_Details ILIKE '%5%' ORDER BY LENGTH(Account_Details) DESC NULLS LAST LIMIT 1
SELECT COUNT(*) AS total_scientists FROM Scientists
SELECT COUNT(*) AS number_of_scientists FROM Scientists
SELECT SUM(Hours) AS total_hours FROM Projects
SELECT SUM(Hours) AS total_hours FROM Projects
SELECT COUNT(DISTINCT Scientist) AS number_of_scientists FROM AssignedTo
SELECT COUNT(DISTINCT Scientist) AS num_scientists FROM AssignedTo
SELECT COUNT(DISTINCT Code) AS num_projects FROM Projects
SELECT COUNT(DISTINCT Code) AS number_of_projects FROM Projects
SELECT AVG(Hours) AS average_hours FROM Projects
SELECT AVG(Hours) AS average_hours FROM Projects
SELECT Projects.Name FROM Projects ORDER BY Projects.Hours DESC NULLS LAST LIMIT 1
SELECT Projects.Name FROM Projects ORDER BY Projects.Hours DESC NULLS LAST LIMIT 1
SELECT Projects.Name FROM Projects WHERE Projects.Hours > (SELECT AVG(Projects.Hours) FROM Projects)
SELECT Projects.Name FROM Projects WHERE Projects.Hours > (SELECT AVG(Projects.Hours) FROM Projects)
SELECT Projects.Name FROM Projects WHERE Projects.Hours BETWEEN 100 AND 300
SELECT Projects.Name FROM Projects WHERE Projects.Hours BETWEEN 100 AND 300
SELECT Scientists.Name FROM Scientists ORDER BY Scientists.Name ASC NULLS FIRST
SELECT Scientists.Name FROM Scientists ORDER BY Scientists.Name ASC NULLS FIRST
SELECT Projects.Name FROM Projects WHERE Projects.Code IS NULL
SELECT Projects.Name FROM Projects WHERE Projects.Code IS NULL
SELECT Scientists.Name FROM Scientists WHERE NOT Scientists.SSN IN (SELECT ProjectScientists.SSN FROM Scientists)
SELECT Scientists.Name FROM Scientists WHERE NOT Scientists.SSN IN (SELECT ProjectScientists.SSN FROM Scientists)
SELECT COUNT(*) FROM Scientists WHERE NOT SSN IN (SELECT DISTINCT Project_Scientist.SSN FROM Scientists)
SELECT COUNT(DISTINCT Scientists.SSN) AS number_of_scientists FROM Scientists LEFT JOIN Scientists ON Scientists.SSN = Projects.Scientist_SSN WHERE Projects.Scientist_SSN IS NULL
SELECT Scientists.Name FROM Scientists WHERE NOT Scientists.SSN IN (SELECT ProjectScientists.SSN FROM Scientists)
SELECT Scientists.Name FROM Scientists WHERE NOT Scientists.SSN IN (SELECT ProjectScientists.SSN FROM Scientists) ORDER BY COUNT(ProjectScientists.SSN) DESC NULLS LAST
SELECT wine.name FROM wine ORDER BY wine.score DESC NULLS LAST LIMIT 1
SELECT wine.name FROM wine ORDER BY wine.score DESC NULLS LAST LIMIT 1
SELECT w.winery FROM wine AS w WHERE w.score = (SELECT MAX(w2.score) FROM wine AS w2)
SELECT w.winery FROM wine AS w WHERE w.score = (SELECT MAX(score) FROM wine)
SELECT wine.name FROM wine WHERE wine.year = 2008
SELECT wine.name FROM wine WHERE wine.year = 2008
SELECT wine.grape, COUNT(*) AS number_of_wines FROM wine GROUP BY wine.grape ORDER BY number_of_wines DESC NULLS LAST
SELECT wine.grape, COUNT(*) AS number_of_wines FROM wine GROUP BY wine.grape
SELECT wine.name, wine.score FROM wine
SELECT wine.name, AVG(wine.score) AS average_score FROM wine GROUP BY wine.name
SELECT appellations.area, appellations.county FROM appellations
SELECT appellations.area, COUNT(*) AS COUNT FROM appellations GROUP BY appellations.area
SELECT wine.price FROM wine WHERE wine.year < 2010
SELECT wine.price FROM wine WHERE wine.year < 2010
SELECT wine.name FROM wine WHERE wine.score > 90
SELECT wine.name FROM wine WHERE wine.score > 90
SELECT COUNT(*) AS total_wines FROM wine WHERE name ILIKE '%Robert%Biale%winery%'
SELECT COUNT(*) AS total_wines FROM wine WHERE name ILIKE '%Robert%Biale%winery%'
SELECT COUNT(*) AS total_appellations FROM appellations WHERE area = 'napa' AND state = 'virginia'
SELECT COUNT(*) FROM appellations WHERE county = 'Napa'
SELECT wine.grape, COUNT(*) AS number_of_wines FROM wine GROUP BY wine.grape ORDER BY number_of_wines DESC NULLS LAST
SELECT wine.grape, COUNT(wine.no) AS total_wines FROM wine GROUP BY wine.grape
SELECT wine.year, AVG(wine.price) AS average_price FROM wine GROUP BY wine.year ORDER BY wine.year
SELECT region_1.name AS region, AVG(wine.price) AS average_price FROM wine JOIN wine ON wine.state = region.score GROUP BY region_1.name
SELECT DISTINCT wine.name FROM wine WHERE wine.price > (SELECT AVG(wine.price) FROM wine WHERE wine.winery = 'John Anthony Winery')
SELECT DISTINCT wine.name FROM wine WHERE wine.price > (SELECT MAX(wine.price) FROM wine WHERE wine.name ILIKE '%John%Anthony%Winery%')
SELECT DISTINCT wine.name FROM wine ORDER BY wine.name ASC NULLS FIRST
SELECT wine.name FROM wine ORDER BY wine.name ASC NULLS FIRST
SELECT wine.name FROM wine ORDER BY wine.price
SELECT wine.name FROM wine ORDER BY wine.price ASC NULLS FIRST
SELECT DISTINCT wine.name FROM wine WHERE (wine.year < 2000 OR wine.year > 2010)
SELECT DISTINCT wine.name FROM wine WHERE wine.year < 2000 OR wine.year > 2010
SELECT DISTINCT wine.winery FROM wine WHERE wine.price BETWEEN 50 AND 100
SELECT DISTINCT wine.winery FROM wine WHERE wine.price BETWEEN 50 AND 100
SELECT AVG(Price), SUM(Cases) FROM wine WHERE Grape = 'Zinfandel' AND Year = 2009
SELECT AVG(Price), SUM(Cases) FROM wine WHERE Grape = 'Zinfandel' AND Year = 2009
SELECT MAX(price), MAX(score) FROM wine WHERE "State" ILIKE '%st%helena%'
SELECT MAX(Price), MAX(Score) FROM wine WHERE State = 'St. Helena.'
SELECT wine.year, MAX(wine.price) AS max_price, MAX(wine.score) AS max_score FROM wine GROUP BY wine.year ORDER BY wine.year
SELECT wine.year, MAX(wine.price) AS max_price, MAX(wine.score) AS max_score FROM wine GROUP BY wine.year ORDER BY wine.year
SELECT wine.appelation, AVG(wine.price) AS average_price, AVG(wine.score) AS average_score FROM wine GROUP BY wine.appelation
SELECT wine.appelation, AVG(wine.price) AS average_price, AVG(wine.score) AS average_score FROM wine GROUP BY wine.appelation
SELECT wine.winery FROM wine GROUP BY wine.winery HAVING COUNT(wine.no) >= 4
SELECT wine.winery FROM wine GROUP BY wine.winery HAVING COUNT(wine.no) >= 4
SELECT wine.name FROM wine WHERE wine.year < (SELECT MIN(winey.year) FROM wine AS winery)
SELECT w.name FROM wine AS w WHERE w.year < (SELECT MIN(year) FROM wine WHERE winery ILIKE '%Branner%')
SELECT wine.name FROM wine WHERE wine.year > 2006 AND wine.price > (SELECT AVG(wine.price) FROM wine WHERE wine.year = 2006)
SELECT wine.name FROM wine WHERE wine.year > 2006 AND wine.price > (SELECT MIN(wine.price) FROM wine WHERE wine.year <= 2006)
SELECT wine.grape, wine.winery, wine.year FROM wine WHERE wine.price > 100 ORDER BY wine.year
SELECT wine.grape, wine.winery, wine.year FROM wine WHERE wine.price > 100 ORDER BY wine.year
SELECT wine.grape, wine.appelation, wine.name FROM wine WHERE wine.score > 93 ORDER BY wine.name
SELECT wine.grape, wine.appelation, wine.name FROM wine WHERE score > 93 ORDER BY wine.name
SELECT wine.name FROM wine WHERE wine.year > 2008 AND wine.state <> 'Central' ORDER BY wine.name
SELECT wine.name FROM wine WHERE wine.year > 2008 AND wine.state <> 'Central' ORDER BY wine.name
SELECT AVG(wine.price) AS average_price FROM wine WHERE state <> 'Sonoma'
SELECT AVG(wine.price) AS average_price FROM wine WHERE state <> 'Sonoma'
SELECT COUNT(Station_ID) AS total_stations FROM station
SELECT station.name, station.location, COUNT(number_of_platforms) AS number_of_platforms FROM station JOIN station ON platform.station_id = station.station_id GROUP BY station.name, station.location
SELECT station.location FROM station
SELECT station.name, SUM(station.total_passengers) AS total_passengers FROM station JOIN station ON station.station_id = station.station_id WHERE "Location" <> 'London' GROUP BY station.name
SELECT station.name, MAX(station_services.main_services) AS max_service FROM station JOIN station_services ON station.station_id = station_services.station_id GROUP BY station.name ORDER BY MAX(station_services.main_services) DESC NULLS LAST LIMIT 3
SELECT AVG(Total_Passengers) AS average_total_passengers, MAX(Total_Passengers) AS max_total_passengers FROM station WHERE "Location" ILIKE '%London%' OR "Location" ILIKE '%Glasgow%'
SELECT a.location, COUNT(a.station_id) AS total_stations, SUM(a.number_of_platforms) AS total_platforms, SUM(a.total_passengers) AS total_passengers FROM station AS a GROUP BY a.location
SELECT station.location FROM station WHERE (CAST(station.number_of_platforms AS FLOAT) >= 15 AND CAST(station.total_passengers AS FLOAT) > 25) GROUP BY station.location
SELECT DISTINCT LOCATION.location FROM station WHERE LOCATION.number_of_platforms < 15
SELECT a.location, COUNT(a.station_id) AS station_count FROM station AS a GROUP BY a.location ORDER BY a.station_count DESC NULLS LAST LIMIT 1
SELECT t.name, t.time, t.service FROM train AS t
SELECT COUNT(*) AS total_trains FROM train
SELECT train.name, train.service FROM train ORDER BY train.time NULLS FIRST
SELECT h.name AS "Hospital Name", COUNT(i.station_id) AS "Number of Stations" FROM station AS h JOIN installation ON h.location = i.location GROUP BY h.name HAVING COUNT(i.station_id) = 1
SELECT Station.Name FROM station WHERE NOT Station.Station_ID IN (SELECT Train.Station_ID FROM Train)
SELECT station.name, station.location, (station.annual_entry_exit - LAG(station.annual_entry_exit) OVER (PARTITION BY station.station_id ORDER BY number_of_platforms NULLS FIRST)) AS annual_entry_exit_difference, (station.total_passengers - LEAD(station.total_passengers) OVER (PARTITION BY station.station_id ORDER BY number_of_platforms NULLS FIRST)) AS total_passengers_difference FROM station ORDER BY annual_entry_exit_difference DESC NULLS LAST
SELECT Vehicles.vehicle_id FROM Vehicles
SELECT Vehicles.vehicle_id FROM Vehicles
SELECT COUNT(*) AS total_vehicles FROM Vehicles
SELECT COUNT(vehicle_id) AS total_vehicles FROM Vehicles
SELECT Vehicles.vehicle_details FROM Vehicles WHERE Vehicles.vehicle_id = 1
SELECT vehicles.vehicle_details FROM Vehicles WHERE vehicles.vehicle_id = 1
SELECT s.first_name, s.middle_name, s.last_name FROM Staff AS s
SELECT first_name, middle_name, last_name FROM Staff
SELECT Staff.date_of_birth FROM Staff WHERE Staff.first_name = 'Janesa' AND Staff.last_name = 'Sawan'
SELECT Staff.date_of_birth FROM Staff WHERE Staff.last_name = 'Sawan' AND Staff.first_name = 'Janesa'
SELECT Staff.date_joined_staff FROM Staff WHERE Staff.first_name = 'Janees' AND Staff.last_name = 'Sawon' ORDER BY Staff.date_joined_staff
SELECT Staff.date_joined_staff FROM Staff WHERE Staff.first_name = 'Janesa' AND Staff.last_name = 'Sawan'
SELECT Staff.date_left_staff FROM Staff WHERE Staff.first_name = 'Janesa' AND Staff.last_name = 'Sawon' ORDER BY Staff.date_left_staff
SELECT Staff.date_left_staff FROM Staff WHERE Staff.first_name = 'Janesa' AND Staff.last_name = 'Sawan'
SELECT COUNT(*) FROM Staff WHERE first_name ILIKE '%Ludie%'
SELECT COUNT(*) FROM Staff WHERE first_name ILIKE '%Ludie%'
SELECT Staff.nickname FROM Staff WHERE Staff.first_name ILIKE '%Janesa%' AND Staff.last_name ILIKE '%Sawayn%'
SELECT Staff.nickname FROM Staff WHERE Staff.first_name ILIKE '%Janesa%' AND Staff.last_name ILIKE '%Sawan%'
SELECT COUNT(*) AS total_staff FROM Staff
SELECT COUNT(*) AS total_staff FROM Staff
SELECT COUNT(*) AS total_staff FROM Addresses WHERE state_province_county = 'Georgia'
SELECT COUNT(*) AS total_employees FROM Addresses WHERE state_province_county = 'Georgia'
SELECT c.first_name, c.last_name FROM Customers AS c
SELECT c.first_name, c.last_name FROM Customers AS c
SELECT customers.email_address, customers.date_of_birth FROM Customers WHERE customers.first_name ILIKE '%Carole%'
SELECT Customers.email_address, Customers.date_of_birth FROM Customers WHERE Customers.first_name ILIKE '%Carole%' ORDER BY Customers.email_address
SELECT customers.phone_number, customers.email_address FROM Customers WHERE customers.amount_outstanding > 2000
SELECT customers.phone_number, customers.email_address FROM Customers WHERE customers.amount_outstanding > 2000
SELECT customers.customer_status_code, customers.phone_number, customers.email_address FROM Customers WHERE customers.last_name ILIKE '%Kohler%' OR customers.first_name ILIKE '%Marina%'
SELECT customers.customer_status_code, customers.phone_number, customers.email_address FROM Customers WHERE customers.last_name ILIKE '%Kohler%' OR customers.first_name ILIKE '%Marina%'
SELECT date_of_birth FROM customers WHERE customer_status_code = 'good customer'
SELECT customers.date_of_birth FROM Customers WHERE customers.customer_status_code = 'good customer'
SELECT Customers.date_became_customer FROM Customers WHERE customers.first_name ILIKE '%Carole%' AND customers.last_name ILIKE '%Bernhard%' ORDER BY customers.date_became_customer
SELECT MIN(Customers.date_became_customer) AS earliest_date FROM Customers WHERE Customers.first_name ILIKE '%Carole%' AND customers.last_name ILIKE '%Bernhard%'
SELECT COUNT(*) AS total_customers FROM Customers
SELECT COUNT(customer_id) AS total_customers FROM Customers
SELECT customers.customer_status_code, COUNT(customers.customer_id) AS customer_count FROM Customers GROUP BY customers.customer_status_code
SELECT customers.customer_status_code, COUNT(*) AS total_customers FROM Customers GROUP BY customers.customer_status_code
SELECT customers.customer_status_code, COUNT(customers.customer_id) AS customer_count FROM Customers GROUP BY customers.customer_status_code ORDER BY customer_count ASC LIMIT 1
SELECT customers.customer_status_code, COUNT(customers.customer_id) AS customer_count FROM Customers GROUP BY customers.customer_status_code ORDER BY customer_count ASC NULLS FIRST LIMIT 1
SELECT MAX(customers.amount_outstanding) AS max_outstanding, MIN(customers.date_became_customer) AS min_outstand, AVG(customers.date_became_customer) AS avg_outstand FROM Customers
SELECT MAX(amount_outstanding) AS max_amount_outstanding, MIN(date_became_customer) AS min_amount_outstand, AVG(date_became_customer) AS avg_amount_outstand FROM Customers
SELECT c.first_name, c.last_name FROM Customers AS c WHERE c.amount_outstanding BETWEEN 1000 AND 3000
SELECT c.first_name, c.last_name FROM Customers AS c WHERE 1000 <= c.amount_outstanding AND c.date_became_customer <= 3000
SELECT COUNT(*) AS total_customers FROM Customers WHERE NOT customer_id IN (SELECT customer_id FROM payments)
SELECT COUNT(DISTINCT customers.customer_id) AS number_of_customers FROM Customers WHERE NOT customers.customer_id IN (SELECT customer_id FROM payments)
SELECT p.payment_method_code, COUNT(*) AS total_payments FROM Customer_Payments AS p GROUP BY p.payment_method_code
SELECT payment_method_code, COUNT(*) AS number_of_payments FROM Customer_Payments GROUP BY payment_method_code
SELECT COUNT(*) AS total_cancelled_lessons FROM Lessons WHERE lesson_status_code = 'CANCELLED'
SELECT COUNT(*) AS total_cancelled_lessons FROM Lessons WHERE lesson_status_code = 'CANCELLED'
SELECT c.last_name FROM Customers AS c JOIN staff ON c.last_name = s.last_name
SELECT customers.last_name FROM Customers UNION SELECT employees.last_name FROM employees
SELECT s.first_name FROM Staff LEFT JOIN Staff AS l ON s.staff_id = l.staff_id WHERE l.staff_id IS NULL
SELECT s.first_name FROM staff WHERE NOT s.staff_id IN (SELECT l.staff_id FROM Staff AS l)
SELECT COUNT(*) AS total_faculty FROM Faculty
SELECT COUNT(*) AS total_faculty FROM Faculty
SELECT faculty.rank FROM Faculty ORDER BY faculty.rank
SELECT DISTINCT Rank FROM Faculty
SELECT DISTINCT building FROM Faculty
SELECT DISTINCT building FROM Faculty
SELECT faculty.rank, faculty.fname, faculty.lname FROM Faculty ORDER BY faculty.rank
SELECT faculty.rank, faculty.fname, faculty.lname FROM Faculty ORDER BY faculty.rank
SELECT f.rank, l.fname, p.phone FROM Faculty AS f JOIN phone ON f.lname = p.lname WHERE sex = 'female'
SELECT f.fname, l.lname, p.phone FROM Faculty AS f JOIN phone ON f.phone = p.room WHERE sex = 'female'
SELECT faculty.facID FROM Faculty WHERE faculty.sex = 'M'
SELECT f.facID FROM Faculty AS f WHERE f.sex = 'M'
SELECT COUNT(*) FROM Faculty WHERE sex = 'female'
SELECT COUNT(*) FROM Faculty WHERE sex = 'female'
SELECT faculty.phone, faculty.room, faculty.building FROM Faculty WHERE faculty.fname ILIKE '%Jerry%' AND faculty.lname ILIKE '%Prince%'
SELECT faculty.phone, faculty.room, faculty.building FROM Faculty WHERE faculty.lname ILIKE '%Jerry%' AND faculty.fname ILIKE '%Prince%'
SELECT COUNT(*) AS number_of_professors FROM faculty WHERE building ilike '%NEB%'
SELECT COUNT(*) FROM Faculty WHERE building = 'NEB'
SELECT faculty.fname, faculty.lname FROM Faculty
SELECT f.Fname, l.Lname FROM Faculty AS f
SELECT building, COUNT(*) AS total_faculty FROM Faculty GROUP BY building
SELECT building, COUNT(*) AS number_of_faculty FROM Faculty GROUP BY building ORDER BY number_of_faculty DESC NULLS LAST
SELECT building, COUNT(*) AS total_faculty FROM Faculty GROUP BY building ORDER BY total_faculty DESC NULLS LAST LIMIT 1
SELECT MAX(faculty.building) AS max_building FROM Faculty
SELECT DISTINCT building FROM Faculty GROUP BY building HAVING COUNT(fname) >= 10
SELECT DISTINCT faculty.building FROM Faculty GROUP BY faculty.building HAVING COUNT(faculty.facid) >= 10
SELECT faculty.rank, COUNT(*) AS total_faculty FROM Faculty GROUP BY faculty.rank
SELECT Rank, COUNT(*) AS number_of_faculty FROM Faculty GROUP BY Rank
SELECT faculty.rank, COUNT(*) AS total_faculty, SUM(CASE WHEN sex = 'Male' THEN 1 ELSE 0 END) AS male_faculty, SUM(CASE WHEN sex = 'Female' THEN 1 ELSE 0 END) AS female_faculty FROM Faculty GROUP BY rank
SELECT Rank, Sex, COUNT(*) AS total_faculty FROM Faculty GROUP BY Rank, Sex
SELECT f.rank FROM Faculty AS f GROUP BY f.rank ORDER BY COUNT(f.fname) ASC NULLS FIRST LIMIT 1
SELECT faculty.rank FROM Faculty GROUP BY faculty.rank ORDER BY COUNT(faculty.facid) ASC NULLS FIRST LIMIT 1
SELECT sex, COUNT(*) AS total_faculty FROM Faculty GROUP BY sex
SELECT COUNT(*) FROM Faculty WHERE rank = 'assistant professor' AND sex IN ('male', 'female')
SELECT f.facID FROM faculty LEFT JOIN Faculty AS a ON f.facID = a.facID WHERE a.facID IS NULL
SELECT f.facID FROM faculty LEFT JOIN Faculty AS a ON f.facID = a.facID WHERE a.facID IS NULL
SELECT Activity.activity_name FROM Activity
SELECT Activity.activity_name FROM Activity
SELECT COUNT(*) AS total_activities FROM Activity
SELECT COUNT(*) AS total_activities FROM Activity
SELECT COUNT(DISTINCT faculty_participates_in.facid) AS number_of_faculty FROM Faculty_Participates_in
SELECT COUNT(DISTINCT faculty_participates_in.facid) AS num_faculty_members FROM Faculty_Participates_in
SELECT f.facID FROM faculty LEFT JOIN Faculty AS af ON f.facID = af.facID WHERE af.facID IS NULL
SELECT f.facID FROM faculty LEFT JOIN Faculty AS af ON f.facID = af.facID WHERE af.facID IS NULL
SELECT f.actid FROM faculty_participates_in JOIN Faculty_Participates_in AS f ON fp.facID = f.actid
SELECT f.facID FROM faculty_participates_in JOIN Faculty_Participates_in AS f ON fp.facID = f.facID WHERE fp.facID IN (SELECT actid FROM student_advisors)
SELECT Student.StuID FROM Student WHERE NOT Student.StuID IN (SELECT Activity_Student.StuID FROM Student)
SELECT s.stuid FROM student LEFT JOIN Student AS ae ON s.stuid = ae.advisor WHERE ae.advisor IS NULL
SELECT p.stuid FROM Participates_in p JOIN Students s ON p.stuid = s.id WHERE age(s.dob) < 20
SELECT p.stuid FROM Participates_in p JOIN Students s ON p.stuid = s.id WHERE age(s.dob) < 20
SELECT faculty.fname FROM Faculty WHERE NOT faculty.rank IN ('Canoeing', 'Kayaking') ORDER BY faculty.fname
SELECT faculty.fname FROM Faculty WHERE NOT faculty.rank IN ('Canoeing', 'Kayaking') ORDER BY faculty.fname
SELECT airports.name FROM airports WHERE airports.city ILIKE '%Goroka%'
SELECT a.name FROM airports AS a WHERE a.city ILIKE '%Goroka%'
SELECT a.name, a.city, a.country, a.elevation FROM airports AS a WHERE a.city ILIKE '%New%York%'
SELECT a.name, a.city, a.country, a.elevation FROM airports AS a WHERE a.city ILIKE '%New%York%'
SELECT COUNT(*) AS number_of_airlines FROM airlines
SELECT COUNT(*) AS total_airlines FROM airlines
SELECT COUNT(*) AS number_of_airlines FROM airlines WHERE country = 'Russia'
SELECT COUNT(*) AS number_of_airlines FROM airlines WHERE country = 'Russia'
SELECT MAX(elevation) FROM airports WHERE country = 'Iceland'
SELECT MAX(airports.elevation) AS max_elevation FROM airports WHERE airports.country = 'Iceland'
SELECT a.name FROM airports AS a WHERE a.country IN ('Cuba', 'Argentina')
SELECT a.name FROM airports AS a WHERE a.country IN ('Cuba', 'Argentina')
SELECT airlines.country FROM airlines WHERE airlines.name ILIKE 'Orbit%'
SELECT CAST(COUNT(*) AS FLOAT) / NULLIF((SELECT COUNT(*) FROM airlines), 0) AS proportion FROM airlines WHERE name ILIKE 'Orbit%'
SELECT a.name FROM airports AS a WHERE a.y BETWEEN -50 AND 50
SELECT a.name FROM airports AS a WHERE a.elevation BETWEEN -50 AND 50
SELECT a.country FROM airports AS a WHERE a.elevation = (SELECT MAX(elevation) FROM airports)
SELECT airports.country FROM airports WHERE airports.elevation = (SELECT MAX(airports.elevation) FROM airports)
SELECT COUNT(*) FROM airports WHERE name ILIKE '%international%'
SELECT COUNT(*) FROM airports WHERE name ILIKE '%otheranation%'
SELECT DISTINCT airports.city FROM airports WHERE airports.country = 'Greenland'
SELECT DISTINCT (airports.city) FROM airports WHERE airports.country = 'Greenland'
SELECT a.name, a.city, a.country FROM airports AS a WHERE a.elevation = (SELECT MIN(elevation) FROM airports)
SELECT a.name, a.city, a.country FROM airports AS a WHERE a.elevation = (SELECT MIN(elevation) FROM airports)
SELECT a.name, a.city, a.country FROM airports AS a WHERE a.elevation = (SELECT MAX(elevation) FROM airports)
SELECT a.name, a.city, a.country FROM airports AS a WHERE a.elevation = (SELECT MAX(b.elevation) FROM airports AS b)
SELECT a.country, COUNT(*) AS num_airlines FROM airlines AS a GROUP BY a.country ORDER BY num_airlines DESC NULLS LAST LIMIT 1
SELECT a.country, COUNT(*) AS total_airlines FROM airlines AS a GROUP BY a.country ORDER BY total_airlines DESC NULLS LAST LIMIT 1
SELECT country, COUNT(*) AS total_active_airlines FROM airlines WHERE active = 'Y' GROUP BY country ORDER BY total_active_airlines DESC NULLS LAST LIMIT 1
SELECT COUNT(DISTINCT airlines.country) AS number_of_countries, airlines.country FROM airlines WHERE airlines.active = 'Y' GROUP BY airlines.country ORDER BY number_of_countries DESC NULLS LAST
SELECT country, COUNT(alid) AS num_airlines FROM airlines GROUP BY country ORDER BY num_airlines DESC NULLS LAST
SELECT airlines.country, COUNT(*) AS number_of_airlines FROM airlines GROUP BY airlines.country ORDER BY number_of_airlines DESC NULLS LAST
SELECT a.country, COUNT(*) AS num_airports FROM airports AS a GROUP BY a.country ORDER BY num_airports DESC NULLS LAST
SELECT airports.country, COUNT(airports.apid) AS num_airports FROM airports GROUP BY airports.country ORDER BY num_airports DESC NULLS LAST
SELECT a.city, COUNT(*) AS num_airports FROM airports AS a WHERE country = 'United States' GROUP BY a.city ORDER BY num_airports DESC NULLS LAST
SELECT a.city, COUNT(*) AS number_of_airports FROM airports AS a WHERE country = 'US' GROUP BY a.city ORDER BY number_of_airports DESC NULLS LAST
SELECT DISTINCT airports.city FROM airports WHERE airports.country = 'United States' GROUP BY airports.city HAVING COUNT(airports.apid) > 3
SELECT COUNT(DISTINCT a.city) AS num_cities FROM airports AS a WHERE a.country = 'United States' GROUP BY a.city HAVING COUNT(a.apid) > 3
-1
-1
SELECT DISTINCT a.city FROM airports AS a GROUP BY a.city HAVING COUNT(a.apid) > 1
SELECT a.city, COUNT(*) AS num_airports FROM airports AS a GROUP BY a.city HAVING COUNT(*) > 1
SELECT a.city, COUNT(*) AS num_airports FROM airports AS a GROUP BY a.city HAVING COUNT(*) > 2 ORDER BY num_airports DESC NULLS LAST
SELECT DISTINCT airports.city FROM airports GROUP BY airports.city HAVING COUNT(airports.apid) > 2 ORDER BY COUNT(airports.apid) DESC NULLS LAST
SELECT airports.country, AVG(airports.elevation) AS average_elevation FROM airports GROUP BY airports.country
SELECT a.country, AVG(a.elevation) AS average_elevation FROM airports AS a GROUP BY a.country
SELECT DISTINCT (airports.city) FROM airports GROUP BY airports.city HAVING COUNT(airports.apid) = 2
SELECT DISTINCT (airports.city) FROM airports GROUP BY airports.city HAVING COUNT(airports.apid) = 2
SELECT COUNT(*) AS route_count FROM routes WHERE src_ap = 'United States' AND dst_ap = 'Canada'
SELECT COUNT(*) AS number_of_routes FROM routes WHERE src_ap = 'United States' AND dst_ap = 'Canada'
SELECT rid FROM routes WHERE src_ap IN ('United States', 'USA') AND dst_ap IN ('United States', 'USA')
SELECT rid FROM routes WHERE src_ap IN ('US', 'United States') AND dst_ap IN ('US', 'United States')
SELECT MAX(order_id) AS latest_order_id FROM Orders
SELECT MAX(order_id) AS latest_order_id FROM Orders
SELECT orders.order_id, customers.customer_id FROM orders JOIN Orders ON orders.customer_id = customers.customer_id ORDER BY date_order_placed ASC NULLS FIRST LIMIT 1
SELECT orders.order_id, customers.customer_id FROM orders JOIN Orders ON orders.customer_id = customers.customer_id ORDER BY orders.date_order_placed ASC NULLS FIRST LIMIT 1
SELECT Shipments.order_id FROM Shipments WHERE Shipments.shipment_tracking_number = '3452'
SELECT Shipments.order_id FROM Shipments WHERE Shipments.shipment_tracking_number = '3452'
SELECT order_items.order_item_id FROM Order_Items WHERE order_items.product_id = 11
SELECT Order_Items.order_item_id FROM Order_Items WHERE Order_Items.product_id = 11
SELECT s.order_id FROM Shipments AS s WHERE s.shipment_date > '2000-01-01'
SELECT s.order_id FROM Shipments AS s WHERE s.shipment_date > '2000-01-01'
SELECT MAX(shipment_id) AS latest_shipment_id FROM Shipments
SELECT MAX(s.shipment_date) AS latest_shipment_date, o.order_id FROM Shipments JOIN Shipments AS o ON s.order_id = o.order_id GROUP BY o.order_id
SELECT product_name FROM Products ORDER BY product_name ASC NULLS FIRST
SELECT Products.product_name FROM Products ORDER BY Products.product_name ASC NULLS FIRST
SELECT orders.order_id FROM Orders ORDER BY orders.date_order_placed
SELECT orders.order_id FROM Orders ORDER BY orders.date_order_placed
SELECT Invoices.invoice_number FROM Invoices WHERE Invoices.invoice_date < '1989-09-03' OR Invoices.invoice_date > '2007-12-25'
SELECT Invoices.invoice_number FROM Invoices WHERE Invoices.invoice_date < '1989-09-03' OR Invoices.invoice_date > '2007-12-25'
SELECT DISTINCT Invoices.invoice_number, Invoices.invoice_date, Invoices.invoice_details FROM Invoices WHERE Invoices.invoice_date < '1989-09-03' OR Invoices.invoice_date > '2007-12-25'
SELECT DISTINCT Invoices.invoice_details FROM Invoices WHERE Invoices.invoice_date BETWEEN '1989-09-03' AND '2007-12-25'
SELECT COUNT(*) FROM architect WHERE gender = 'female'
SELECT a.name, a.nationality, a.id FROM architect AS a WHERE gender = 'male'
SELECT AVG(length_feet) AS average_length_in_feet FROM bridge
SELECT m.name, CAST(m.built_year AS TEXT) AS built_year FROM mill AS m WHERE m.type = 'Grondzoiler'
SELECT m.name FROM mill AS m WHERE m.location <> 'Donceel'
SELECT bridge.location FROM bridge WHERE bridge.name IN ('Kolob Arch', 'Rainbow Bridge')
SELECT mill.name FROM mill WHERE mill.name ILIKE '%Moulin%'
SELECT m.type, COUNT(*) AS total_count FROM mill AS m GROUP BY m.type ORDER BY total_count DESC NULLS LAST LIMIT 1
SELECT COUNT(*) FROM architect WHERE NOT id ILIKE '%mill%' AND CAST(nationality AS INT) < 1850
SELECT COUNT(*) AS total_book_club FROM book_club
SELECT COUNT(*) AS total_book_club FROM book_club
SELECT book_title, author_or_editor FROM book_club WHERE year > 1989
SELECT book_country.book_title, author_or_editor FROM book_club WHERE year > 1989
SELECT DISTINCT Publisher FROM book_club
SELECT DISTINCT Publisher FROM book_club
SELECT book_country.year, book_country.book_title, book_country.publisher FROM book_club ORDER BY book_country.year DESC NULLS LAST
SELECT book_country.year, book_country.author_or_editor, book_country.publisher FROM book_club ORDER BY book_country.year DESC NULLS LAST
SELECT book_country.publisher, COUNT(book_country.book_title) AS total_books FROM book_club GROUP BY book_country.publisher
SELECT book_publisher.publisher, COUNT(book_publisher.book_title) AS number_of_books FROM book_club GROUP BY book_publisher.publisher
SELECT book_country.book_club_id, COUNT(*) AS total_books FROM book_club GROUP BY book_country.book_club_id ORDER BY total_books DESC NULLS LAST LIMIT 1
SELECT book_country.publisher FROM book_club GROUP BY book_country.publisher ORDER BY COUNT(book_country.book_club_id) DESC NULLS LAST LIMIT 1
SELECT category, COUNT(*) AS total_books FROM book_club GROUP BY category
SELECT book_category.category, COUNT(book_country.book_title) AS number_of_books FROM book_country JOIN book_club ON book_country.category = book_category.category GROUP BY book_category.category
SELECT category FROM book_club WHERE category IN (SELECT category FROM book_club GROUP BY category HAVING COUNT(book_title) >= 2 AND year > 1989)
SELECT category FROM book_club WHERE category IN (SELECT category FROM book_club GROUP BY category HAVING COUNT(book_title) >= 2 AND year > 1989)
SELECT DISTINCT publisher FROM book_club WHERE year IN (1989, 1990) ORDER BY publisher
SELECT DISTINCT book_country.publisher FROM book_club WHERE year IN (1989, 1990)
SELECT DISTINCT publisher FROM book_club WHERE year <> 1989
SELECT DISTINCT publisher FROM book_club WHERE year <> 1989
SELECT movie.title, movie.year, movie.director FROM movie ORDER BY movie.budget_million DESC NULLS LAST
SELECT movie.title, movie.year, movie.director FROM movie ORDER BY movie.budget_million DESC NULLS LAST
SELECT COUNT(DISTINCT director) AS number_of_directors FROM movie
SELECT COUNT(DISTINCT director) AS num_directors FROM movie
SELECT movie.title, movie.director FROM movie WHERE movie.year <= 2000 ORDER BY movie.gross_worldwide DESC NULLS LAST LIMIT 1
SELECT movie.title, movie.director FROM movie WHERE movie.year <= 2000 ORDER BY movie.gross_worldwide DESC NULLS LAST LIMIT 1
SELECT DISTINCT movie.director FROM movie WHERE movie.year IN (1999, 2000) GROUP BY movie.director HAVING COUNT(DISTINCT CASE WHEN movie.year = 1999 THEN 1 END) = COUNT(DISTINCT CASE WHEN movie.year = 2000 THEN 1 END)
SELECT DISTINCT director FROM movie WHERE year IN (1999, 2000) ORDER BY director
SELECT DISTINCT movie.director FROM movie WHERE movie.year IN (1999, 2000)
SELECT DISTINCT director FROM movie WHERE year IN (1999, 2000) ORDER BY director
SELECT AVG(budget_million), MAX(budget_million), MIN(budget_million) FROM movie WHERE year < 2000
SELECT AVG(Budget_million), MAX(Budget_million), MIN(Budget_million) FROM movie WHERE Year < 2000
