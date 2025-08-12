SELECT DISTINCT EXTRACT(YEAR FROM CAST(department.creation AS TIME)) AS YEAR_CREATED FROM department JOIN management ON department.department_id = management.department_id JOIN head ON management.head_id = head.head_id WHERE head.born_state = 'alabama'
SELECT department.name, SUM(department.num_employees) AS total_employees FROM management JOIN head ON management.head_id = head.head_id JOIN department ON management.department_id = department.department_id WHERE temporary_acting ILIKE '%Yes%' GROUP BY department.name
SELECT CAST(head.age AS FLOAT) AS age FROM head JOIN management ON head.head_id = management.head_id WHERE management.temporary_acting ILIKE '%yes%' GROUP BY age
SELECT head.born_state FROM head JOIN management ON head.head_id = management.head_id WHERE management.department_id IN (SELECT department_id FROM department WHERE name ILIKE '%Treasury%') AND management.department_id IN (SELECT department_id FROM department WHERE name ILIKE '%Homeland%')
SELECT d.department_id, d.name, COUNT(h.head_id) AS num_heads FROM department d JOIN management m ON d.department_id = m.department_id JOIN head h ON m.head_id = h.head_id GROUP BY d.department_id, d.name HAVING COUNT(h.head_id) > 1
SELECT fc.year, c.official_name FROM farm_competition fc JOIN city c ON fc.host_city_id = c.city_id
SELECT f.year AS competition_year, c.official_name AS host_city, row_number() OVER (PARTITION BY f.year ORDER BY f.host_city_id) AS competition_rank FROM farm_competition f JOIN city c ON f.host_city_id = c.city_id
SELECT city.official_name FROM city JOIN farm_competition ON city.city_id = farm_competition.host_city_id GROUP BY city.official_name HAVING COUNT(farm_competition.competition_id) > 1
SELECT city.official_name FROM city JOIN farm_competition ON city.city_id = farm_competition.host_city_id GROUP BY city.official_name HAVING COUNT(farm_competition.competition_id) > 1
SELECT c.status FROM city c JOIN farm_competition fc ON c.city_id = fc.host_city_id GROUP BY c.status, c.city_id ORDER BY COUNT(fc.competition_id) DESC LIMIT 1
SELECT c.status FROM city c JOIN farm_competition fc ON c.city_id = fc.host_city_id GROUP BY c.status, c.city_id ORDER BY COUNT(fc.competition_id) DESC LIMIT 1
SELECT farm_competition.theme FROM farm_competition JOIN city ON farm_competition.host_city_id = city.city_id WHERE city.population > 1000
SELECT farm_competition.theme FROM farm_competition JOIN city ON farm_competition.host_city_id = city.city_id WHERE city.population > 1000
SELECT courses.course_name, COUNT(student_course_registrations.student_id) AS student_count FROM student_course_registrations JOIN courses ON student_course_registrations.course_id = courses.course_id GROUP BY courses.course_name ORDER BY student_count DESC NULLS LAST LIMIT 1
SELECT courses.course_name, COUNT(student_course_registrations.student_id) AS number_of_students FROM student_course_registrations JOIN courses ON student_course_registrations.course_id = courses.course_id GROUP BY courses.course_name ORDER BY number_of_students DESC LIMIT 1
SELECT p.first_name, p.last_name FROM people p JOIN people_addresses pa ON p.person_id = pa.person_id
SELECT p.first_name, p.last_name FROM people p JOIN students s ON p.person_id = s.student_id
SELECT s.student_id, c.course_name FROM student_course_registrations AS sr JOIN students AS s ON sr.student_id = s.student_id JOIN courses AS c ON sr.course_id = c.course_id
SELECT students.student_details, MAX(student_course_registrations.registration_date) AS recent_registration_date FROM students JOIN student_course_registrations ON students.student_id = student_course_registrations.student_id GROUP BY students.student_details ORDER BY recent_registration_date DESC LIMIT 1
SELECT p.first_name, p.last_name, s.student_details FROM people p JOIN student_course_registrations s ON p.person_id = s.student_id ORDER BY s.registration_date DESC NULLS LAST LIMIT 1
SELECT COUNT(DISTINCT student_course_registrations.student_id) AS number_of_students FROM student_course_registrations JOIN courses ON student_course_registrations.course_id = courses.course_id WHERE courses.course_name ilike '%English%'
SELECT COUNT(DISTINCT student_course_registrations.student_id) AS number_of_students FROM student_course_registrations JOIN courses ON student_course_registrations.course_id = courses.course_id WHERE courses.course_name ilike '%English%'
SELECT COUNT(DISTINCT course_id) AS number_of_courses FROM Student_Course_Registrations WHERE student_id = 171
SELECT COUNT(DISTINCT course_id) AS number_of_courses FROM Student_Course_registrations WHERE student_id = 171
SELECT candidates.candidate_id FROM people AS candidates WHERE people.email_address = 'stanley.monahan@example.org'
SELECT candidates.candidate_id FROM candidates WHERE people.email_address = 'stanley.monahan@example.org' 
SELECT students.student_details AS student_details, COUNT(student_course_registrations.course_id) AS course_count FROM students JOIN student_course_registrations ON students.student_id = student_course_registrations.student_id GROUP BY students.student_details ORDER BY course_count DESC LIMIT 1
SELECT students.student_details AS student_details, COUNT(student_course_registrations.course_id) AS course_count FROM students JOIN student_course_registrations ON students.student_id = student_course_registrations.student_id GROUP BY students.student_details ORDER BY course_count DESC LIMIT 1
SELECT student_course_registrations.student_id AS student_id, COUNT(student_course_registrations.course_id) AS course_count FROM student_course_registrations GROUP BY student_course_registrations.student_id
SELECT students.student_id AS student_id, COUNT(DISTINCT student_course_registrations.course_id) AS number_of_courses FROM students JOIN student_course_registrations ON students.student_id = student_course_registrations.student_id GROUP BY students.student_id
SELECT courses.course_name, COUNT(student_course_registrations.student_id) AS total_registered_students FROM student_course_registrations JOIN courses ON student_course_registrations.course_id = courses.course_id GROUP BY courses.course_name
SELECT courses.course_id, COUNT(student_course_registrations.student_id) AS number_of_students, courses.course_name FROM student_course_registrations JOIN courses ON student_course_registrations.course_id = courses.course_id GROUP BY courses.course_id, courses.course_name
SELECT People.cell_mobile_number FROM People JOIN Candidate_Assessments ON People.person_id = Candidate_Assessments.candidate_id WHERE Candidate_Assessments.assessment_outcome_code ilike '%Fail%' 
SELECT people.cell_mobile_number FROM people JOIN candidate_assessments ON people.person_id = candidate_assessments.candidate_id WHERE candidate_assessments.asessment_outcome_code ilike '%Fail%' 
SELECT DISTINCT Addresses.city FROM People JOIN People_Addresses ON People.person_id = People_addresses.person_id JOIN Addresses ON People_addresses.address_id = Addresses.address_id
SELECT DISTINCT addresses.city FROM People AS p JOIN People_Addresses AS ps ON p.person_id = ps.person_id JOIN Addresses AS a ON ps.address_id = a.address_id
SELECT DISTINCT addresses.city FROM addresses JOIN people_addresses ON addresses.address_id = people_addresses.address_id JOIN student_course_registrations ON people_addresses.person_id = student_course_registrations.student_id
SELECT DISTINCT addresses.city FROM Addresses AS addresses JOIN People_Addresses AS people_addresses ON addresses.address_id = people_addresses.address_id JOIN Students AS students ON people_addresses.person_id = students.person_id
SELECT student_course_registrations.student_id FROM student_course_registrations ORDER BY student_course_registrations.registration_date ASC
SELECT s.student_id FROM student_course_registrations AS sr JOIN courses AS c ON sr.course_id = c.course_id JOIN students AS s ON sr.student_id = s.student_id GROUP BY s.student_id, c.course_name HAVING COUNT(DISTINCT c.course_name) > 1 ORDER BY sr.registration_date ASC
SELECT s.student_id FROM student_course_registrations AS scr JOIN students AS s ON scr.student_id = s.student_id WHERE scr.course_id IN (SELECT course_id FROM courses WHERE course_name ilike '%statistics%') ORDER BY date_from ASC
SELECT s.student_id FROM student_course_registrations s JOIN courses c ON s.course_id = c.course_id WHERE c.course_name ilike '%statistics%' ORDER BY s.registration_date ASC
SELECT d.name FROM dock_status d JOIN status s ON d.id = s.station_id WHERE s.bikes_available >= 7 GROUP BY d.name
SELECT d.name AS dock_name, h.name AS station_name FROM dock d JOIN status s ON d.id = s.dock_id JOIN station h ON s.station_id = h.id WHERE s.bikes_available >= 7
SELECT h.latitude, h.longitude, h.city FROM station h JOIN (SELECT r.start_station_id, MIN(r.duration) AS min_duration FROM ride r GROUP BY r.start_station_id) AS min_durations ON h.id = min_durations.start_station_id
SELECT h.latitude, h.longitude, h.city FROM station h JOIN (SELECT r.start_station_id, MIN(r.duration) AS min_duration FROM ride r GROUP BY r.start_station_id) AS sd ON h.id = sd.start_station_id
SELECT h.name, CAST(AVG(s.bikes_available) AS FLOAT) AS avg_bikes_available, to_number(h.installation_date,'9999-MM') AS installation_month FROM station h JOIN status s ON h.id = s.station_id WHERE CAST(AVG(s.bikes_available) AS FLOAT) > 14 AND to_number(h.installation_date,'9999-MM') = 12 GROUP BY h.name, installation_month
SELECT h.name, h.id FROM station h JOIN status s ON h.id = s.station_id WHERE (s.bikes_available > 14 OR to_date(s.time,'YYYY-MM-DD') BETWEEN '2020-12-01' AND '2020-12-31')
SELECT r.id AS ride_id, h.name AS station_name, w.mean_temperature_f AS average_temperature FROM weather w JOIN station h ON w.zip_code = h.zip_code JOIN status s ON s.station_id = r.id JOIN (SELECT start_station_id, end_station_id FROM ride WHERE zip_code IS NOT NULL GROUP BY start_station_id, end_station_id) r ON r.start_station_id = r.start_station_id OR r.end_station_id = r.end_station_id
SELECT r.zip_code, CAST(AVG(w.mean_temperature_f) AS FLOAT) AS avg_temp, to_number(r.id,'999999999') AS id FROM weather w JOIN ride r ON w.zip_code = r.zip_code WHERE CAST(AVG(w.mean_temperature_f) AS FLOAT) > 60 GROUP BY r.zip_code, r.id
SELECT r.start_station_name, h.installation_date FROM ride r JOIN station h ON r.end_station_id = h.id
SELECT r.end_station_name, h.installation_date FROM ride r JOIN status s ON r.start_station_id = s.station_id JOIN station h ON s.station_id = h.id
SELECT r.start_station_id FROM ride r JOIN status s ON r.start_station_id = s.station_id ORDER BY s.docks_available DESC NULLS LAST LIMIT 1
SELECT r.start_station_id FROM ride r JOIN status s ON r.id = s.ride_id ORDER BY COUNT(s.docks_available) DESC LIMIT 1
SELECT COUNT(*) FROM trip r WHERE r.end_station_name not ilike '%San%Francisco%'
SELECT COUNT(*) FROM trip WHERE end_station_name != 'San Francisco'
SELECT station.name FROM station JOIN status ON station.id = status.station_id WHERE status.bikes_available > 10 AND city != 'San Jose' GROUP BY name
SELECT c.name FROM station c JOIN status s ON c.id = s.station_id WHERE c.city != 'San Jose' AND s.bikes_available > 10
SELECT h.name, h.long, AVG(r.duration) AS average_duration FROM station h JOIN status s ON h.id = s.station_id JOIN ride r ON s.start_station_id = r.start_station_id GROUP BY h.name, h.long
SELECT h.name AS "Start Station Name", h.long AS "Station Longitude", AVG(r.duration) AS "Average Trip Duration" FROM station h JOIN status s ON h.id = s.station_id JOIN ride r ON s.start_station_id = r.start_station_id GROUP BY h.name, h.long
SELECT h.lat, MIN(r.duration) AS min_duration FROM station h JOIN status s ON h.id = s.station_id JOIN ride r ON s.station_id = r.end_station_id GROUP BY h.lat
SELECT h.id AS "End Station ID", h.name AS "End Station Name", w.zip_code AS "Weather Zip Code", MIN(r.duration) AS "Minimum Duration" FROM station h JOIN weather w ON h.zip_code = w.zip_code JOIN ride r ON h.id = r.end_station_id GROUP BY h.id, h.name, w.zip_code
SELECT h.id, h.name FROM station h JOIN status s ON h.id = s.station_id WHERE s.bikes_available > 12
SELECT station.id AS station_id, station.name FROM station JOIN status ON station.id = status.station_id WHERE status.bikes_available > 12
SELECT COUNT(*) FROM trip r WHERE start_station_name = 'Mount View' AND end_station_name = 'Palo Alto'
SELECT COUNT(*) FROM ride r JOIN station h ON r.start_station_id = h.id JOIN status s ON h.id = s.station_id JOIN station p ON r.end_station_id = p.id WHERE h.city = 'Mountain View' AND p.city = 'Palo Alto'
SELECT AVG(lat) AS average_latitude, AVG(lon) AS average_longitude FROM trip
SELECT AVG(start_station.lat) AS average_lat, AVG(start_station.long) AS average_long FROM start_station
SELECT b.title, to_date(p.publication_date::text, 'YYYY-MM-DD') AS publication_date FROM book AS b JOIN publication AS p ON b.book_id = p.book_id
SELECT publication.publisher FROM publication JOIN book ON publication.book_id = book.book_id WHERE publication.price > 4000000
SELECT b.title FROM book AS b JOIN publication AS p ON b.book_id = p.book_id ORDER BY p.price DESC
SELECT a.name AS actor_name, m.name AS musical_name FROM actor a JOIN musical m ON a.musical_id = m.musical_id
SELECT a.name AS actor_name, m.name AS musical_name FROM actor a JOIN musical m ON a.musical_id = m.musical_id
SELECT a.name FROM actor AS a JOIN musical AS m ON a.musical_id = m.musical_id WHERE m.nominee ILIKE '%The%Phantom%of%the%Opera%' 
SELECT a.name FROM actor AS a JOIN musical AS m ON a.musical_id = m.musical_id WHERE m.nominee ILIKE '%The%Phantom%of%the%Opera%' 
SELECT a.name FROM actor AS a JOIN musical AS m ON a.musical_id = m.musical_id ORDER BY m.year DESC
SELECT a.name, to_char(m.year,'YYYY') AS year FROM actor a JOIN musical m ON a.musical_id = m.musical_id ORDER BY year DESC
SELECT m.name, COUNT(a.actor_id) AS actor_count FROM musical m JOIN actor a ON m.musical_id = a.musical_id GROUP BY m.name
SELECT COUNT(DISTINCT actor.actor_id) AS number_of_actors FROM actor JOIN musical ON actor.musical_id = musical.musical_id
SELECT m.name FROM musical AS m JOIN actor AS a ON m.musical_id = a.musical_id GROUP BY m.name HAVING COUNT(DISTINCT a.actor_id) >= 3
SELECT m.name FROM musical AS m JOIN actor AS a ON m.musical_id = a.musical_id GROUP BY m.name HAVING COUNT(a.actor_id) >= 3
SELECT u.name FROM user_profiles u WHERE u.followers > (SELECT f.f2 FROM follows f WHERE f.f1 = 75707174)
SELECT u.name, u.email FROM user_profiles u WHERE u.followers > 1
SELECT u.name FROM follows f JOIN user_profiles u ON f.f1 = u.uid GROUP BY u.name HAVING COUNT(f.f2) > 1
SELECT u.id FROM user_profiles u JOIN follows f ON u.uid = f.f1 WHERE u.name ILIKE '%Mary%' AND EXISTS (SELECT 1 FROM follows f2 WHERE f2.f1 = u.uid AND f2.f2 IN (SELECT f3.f1 FROM user_profiles f3 WHERE f3.name ILIKE '%Susan%'))
SELECT u.id FROM user_profiles u WHERE u.name IN ('Mary', 'Susan') AND EXISTS (SELECT 1 FROM follows f WHERE f.f2 = u.uid OR f.f1 = u.uid)
SELECT u.name, COUNT(t.id) AS total_tweets FROM user_profiles u JOIN follows f ON u.uid = f.f1 JOIN follows f2 ON u.uid = f2.f2 JOIN tweets t ON u.uid = t.uid GROUP BY u.name
SELECT u.name, p.partitionid FROM user_profiles AS u JOIN follows AS f ON u.uid = f.f1 JOIN (SELECT uid FROM tweets GROUP BY uid HAVING COUNT(id) < 2) AS t ON u.uid = t.uid LEFT JOIN partitions AS p ON u.partitionid = p.id
SELECT u.name, COUNT(t.id) AS num_tweets FROM user_profiles u JOIN follows f ON u.uid = f.f1 JOIN tweets t ON u.uid = t.uid GROUP BY u.name HAVING COUNT(t.id) > 1
SELECT Catalogs.catalog_name, Catalogs.date_of_publication FROM Catalogs JOIN Catalog_Structure ON Catalogs.catalog_id = Catalog_Structure.catalog_id WHERE Catalog_Structure.catalog_level_number > 5
SELECT Catalogs.catalog_name, Catalogs.date_of_publication FROM Catalogs JOIN Catalog_Structure ON Catalogs.catalog_id = Catalog_Structure.catalog_id WHERE Catalog_Structure.catalog_level_number > 5
SELECT c.catalog_name, COUNT(cc.catalog_entry_id) AS entry_count FROM catalog_contents cc JOIN catalog_additional_attributes ca ON cc.catalog_entry_id = ca.catalog_entry_id JOIN catalogs c ON ca.attribute_id = (SELECT attribute_id FROM attribute_definitions WHERE attribute_name = 'attribute_name') GROUP BY c.catalog_name ORDER BY entry_count DESC NULLS LAST LIMIT 1
SELECT cc.catalog_entry_name, COUNT(cca.attribute_id) AS number_of_attributes FROM catalog_contents cc JOIN catalog_contents_additional_attributes cca ON cc.catalog_entry_id = cca.catalog_entry_id GROUP BY cc.catalog_entry_name ORDER BY number_of_attributes DESC LIMIT 1
SELECT c.catalog_name, to_char(to_timestamp(c.date_of_publication), 'YYYY-MM-DD') AS publication_date FROM catalogs c JOIN catalog_structure cs ON c.catalog_id = cs.catalog_id JOIN catalog_contents cc ON cs.catalog_level_number = cc.catalog_level_number WHERE cs.catalog_level_number = 1 AND cc.price_in_dollars = (SELECT MIN(cc.price_in_dollars) FROM catalog_contents cc) ORDER BY c.catalog_name NULLS LAST
SELECT c.catalog_name, s.catalog_level_name FROM catalogs AS c JOIN catalog_structure AS s ON c.catalog_id = s.catalog_id JOIN catalog_contents AS p ON c.catalog_id = p.catalog_id WHERE price_in_dollars = (SELECT MIN(price_in_dollars) FROM catalog_contents)
SELECT Catalog_Contents.catalog_entry_name FROM Catalog_Contents JOIN Catalog_Structure ON Catalog_Contents.catalog_level_number = Catalog_Structure.catalog_level_number WHERE Catalog_Structure.catalog_level_number = 8
SELECT catalog_contents.catalog_entry_name FROM catalog_contents JOIN catalog_structure ON catalog_contents.catalog_level_number = catalog_structure.catalog_level_number WHERE catalog_structure.catalog_level_number = 8
SELECT Attribute_Definitions.attribute_name, Attribute_Definitions.attribute_id FROM Attribute_Definitions WHERE Attribute_Definitions.attribute_value = '0'
SELECT Attribute_Definitions.attribute_name, Attribute_Definitions.attribute_id FROM Attribute_Definitions WHERE Attribute_Definitions.attribute_value = '0'
SELECT a.name FROM flight f JOIN aircraft a ON f.aid = a.aid WHERE f.flno = 99
SELECT a.name FROM flight f JOIN aircraft a ON f.aid = a.aid WHERE f.flno = 99
SELECT flight.flno FROM flight JOIN aircraft ON flight.aid = aircraft.aid WHERE aircraft.name ilike '%Airbus%A340-300%' ORDER BY flight.flno NULLS LAST
SELECT flight.flno FROM flight JOIN aircraft ON flight.aid = aircraft.aid WHERE aircraft.name ilike '%Airbus%A340-300%' ORDER BY flight.flno NULLS LAST
SELECT a.name, COUNT(f.aid) AS flight_count FROM aircraft AS a JOIN flight AS f ON a.aid = f.aid GROUP BY a.name
SELECT a.name AS aircraft_name, COUNT(f.aid) AS flight_count FROM aircraft AS a JOIN flight AS f ON a.aid = f.aid GROUP BY a.name
SELECT a.name FROM flight f JOIN aircraft a ON f.aid = a.aid GROUP BY a.name HAVING COUNT(f.flno) >= 2
SELECT a.name FROM flight f JOIN aircraft a ON f.aid = a.aid GROUP BY a.name HAVING COUNT(f.aid) >= 2
SELECT a.name FROM aircraft AS a JOIN certificate AS c ON a.aid = c.aid JOIN employee AS e ON c.eid = e.eid WHERE e.name ILIKE '%John%Williams%'
SELECT a.name FROM aircraft AS a JOIN certificate AS c ON a.aid = c.aid JOIN employee AS e ON c.eid = e.eid WHERE e.name ILIKE '%John%Williams%'
SELECT e.name FROM employee e JOIN certificate c ON e.eid = c.eid JOIN aircraft a ON c.aid = a.aid WHERE a.name ILIKE '%Boeing%737-800%'
SELECT employee.name FROM employee JOIN certificate ON employee.eid = certificate.eid JOIN aircraft ON certificate.aid = aircraft.aid WHERE aircraft.name ILIKE '%Boeing%737-800%'
SELECT employee.name FROM employee JOIN certificate ON employee.eid = certificate.eid WHERE aircraft.name ILIKE '%Boeing%737-800%' AND aircraft.name ILIKE '%Airbus%A340-300%'
SELECT employee.name FROM employee JOIN certificate ON employee.eid = certificate.eid JOIN aircraft AS a1 ON certificate.aid = a1.aid JOIN aircraft AS a2 ON certificate.eid = a2.eid WHERE a1.name ILIKE '%Boeing%737-800%' AND a2.name ILIKE '%Airbus%A340-300%'
SELECT a.name FROM aircraft AS a JOIN (SELECT c.aid FROM certificate AS c GROUP BY c.aid HAVING COUNT(c.eid) = MIN_VALUE()) AS subquery ON a.aid = subquery.aid
SELECT a.name FROM aircraft AS a JOIN (SELECT c.aid FROM certificate AS c GROUP BY c.aid) AS subquery ON a.aid = subquery.aid
SELECT a.name, f.distance FROM aircraft AS a JOIN flight AS f ON a.aid = f.aid WHERE f.distance > 5000 AND (SELECT COUNT(*) FROM certificate AS c WHERE c.aid = a.aid) >= 5
SELECT a.name AS aircraft_name, f.distance AS flight_distance FROM aircraft a JOIN flight f ON a.aid = f.aid WHERE f.distance > 5000 AND EXISTS (SELECT e.eid FROM employee e JOIN certificate c ON e.eid = c.eid WHERE c.aid = a.aid GROUP BY e.eid HAVING COUNT(e.eid) >= 5)
SELECT e.salary, e.name FROM employee e JOIN certification c ON e.eid = c.eid GROUP BY e.salary, e.name ORDER BY COUNT(c.aid) DESC LIMIT 1
SELECT e.name, s.salary AS salary_sorted FROM employee e JOIN (SELECT c.eid, rank() OVER (PARTITION BY c.eid ORDER BY a.distance DESC) AS rank FROM certificate c JOIN aircraft a ON c.aid = a.aid) r ON e.eid = r.eid LEFT JOIN salary s ON e.salary < s.salary WHERE r.rank = 1
SELECT e.salary, e.name FROM employee e JOIN certification c ON e.eid = c.eid JOIN flight f ON c.aid = f.aid JOIN aircraft a ON f.aid = a.aid WHERE a.distance > 5000 GROUP BY e.salary, e.name ORDER BY COUNT(c.eid) DESC LIMIT 1
SELECT e.salary, e.name FROM employee e JOIN certification c ON e.eid = c.eid JOIN flight f ON c.aid = f.aid WHERE f.price > 5000 GROUP BY e.salary, e.name ORDER BY e.salary DESC LIMIT 1
SELECT COUNT(DISTINCT Student.StuID) AS total_students FROM Student JOIN Has_Allergy ON Student.StuID = Has_Allergy.StuID JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy WHERE Student.Sex = 'Female' AND (Allergy_type.Allergytype ILIKE '%Milk%' OR allergy_type.allergytype ILIKE '%Egg%')
SELECT COUNT(DISTINCT Student.StuID) AS total_students FROM Student JOIN Has_Allergy ON Student.StuID = Has_Allergy.StuID JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy WHERE Student.Sex = 'female' AND (Allergy_type.allergytype ilike '%milk%' OR allergy_type.allergytype ilike '%eggs%')
SELECT COUNT(DISTINCT Student.StuID) AS number_of_students FROM Has_Allergy JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy WHERE Allergy_Type.AllergyType ILIKE '%food%'
SELECT COUNT(DISTINCT Student.StuID) AS number_of_students FROM Student JOIN Has_Allergy ON Student.StuID = Has_Allergy.StuID JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy AND Has_Allergy.AllergyType = Allergy_Type.AllergyType WHERE Allergy_Type.AllergyType ILIKE '%food%'
SELECT a.allergy, CAST(COUNT(h.StuID) AS FLOAT) / NULLIF(COUNT(s.StuID), 0) AS ratio FROM Allergy_Type a JOIN Has_Allergy h ON a.Allergy = h.Allergy JOIN Student s ON h.StuID = s.StuID GROUP BY a.allergy
SELECT a.allergy_type, COUNT(DISTINCT s.stuID) AS num_students FROM has_allergy h JOIN allergy_type a ON h.allergy = a.allergy_type JOIN student s ON h.stuID = s.stuID GROUP BY a.allergy_type
SELECT a.allergy, t.allergy_type FROM allergy_type AS t CROSS JOIN has_allergy AS a WHERE a.stuid IN (SELECT stuid FROM student WHERE fname ILIKE '%Lisa%') ORDER BY a.allergy NULLS LAST
SELECT a.allergy, t.allergy_type FROM allergy_type AS t CROSS JOIN has_allergy AS a WHERE a.stuid IN (SELECT stuid FROM student WHERE lname ILIKE '%Lisa%') ORDER BY a.allergy NULLS LAST
SELECT Student.Fname, Student.city_code FROM Student WHERE (SELECT AllergyType.AllergyType FROM Allergy_Type JOIN Has_Allergy ON Allergy_Type.Allergy = Has_Allergy.Allergy AND Allergy_Type.AllergyType = 'Milk' ORAllergy_Type.alleryType = 'Cat') IS NOT NULL
SELECT Student.Fname, Student.city_code FROM Student WHERE (SELECT Allergy FROM Has_Allergy WHERE Has_Allergy.StuID = Student.StuID) IN (SELECT Allergy FROM Allergy_Type WHERE AllergyType ILIKE '%milk%' OR AllergyType ILIKE '%cat%') GROUP BY Student.Fname, Student.city_code
SELECT c.first_name, c.last_name FROM customers c JOIN invoices i ON c.id = i.customer_id ORDER BY i.id DESC NULLS LAST LIMIT 5
SELECT c.first_name, c.last_name FROM customers c JOIN invoices i ON c.id = i.customer_id ORDER BY i.id DESC NULLS LAST LIMIT 5
SELECT c.first_name, c.last_name, COUNT(i.id) AS total_orders FROM customers c JOIN invoices i ON c.id = i.customer_id GROUP BY c.first_name, c.last_name ORDER BY total_orders DESC NULLS LAST LIMIT 10
SELECT c.first_name, c.last_name, COUNT(i.invoice_id) AS num_orders FROM customers c JOIN invoices i ON c.id = i.customer_id GROUP BY c.first_name, c.last_name), total_orders AS (SELECT co.first_name, co.last_name, COUNT(*) AS total_num_orders, row_number() OVER (PARTITION BY co.first_name, co.last_name ORDER BY num_orders DESC) AS rn FROM customer_orders co GROUP BY co.first_name, co.last_name HAVING COUNT(*) > 10), top_ten_customers AS (SELECT first_name, last_name FROM total_orders WHERE rn = 1) SELECT tc.first_name, tc.last_name, to.total_num_orders, to.num_orders FROM top_ten_customers tc JOIN total_orders to ON tc.first_name = to.first_name AND tc.last_name = to.last_name
SELECT c.first_name, c.last_name, SUM(i.total) AS total_sales FROM customers c JOIN invoices i ON c.id = i.customer_id GROUP BY c.first_name, c.last_name ORDER BY total_sales DESC NULLS LAST LIMIT 10
SELECT c.first_name, c.last_name, SUM(i.total) AS total_sales FROM customers c JOIN invoices i ON c.id = i.customer_id GROUP BY c.first_name, c.last_name ORDER BY total_sales DESC NULLS LAST LIMIT 10
SELECT g.name AS genre_name, COUNT(t.id) AS track_count FROM tracks t JOIN albums a ON t.album_id = a.id JOIN genres g ON a.artist_id = g.id GROUP BY g.name ORDER BY track_count DESC NULLS LAST LIMIT 5
SELECT g.name AS genre_name, COUNT(t.id) AS track_count, rank() OVER (PARTITION BY g.name ORDER BY COUNT(t.id) DESC NULLS LAST) AS rank FROM tracks t JOIN genres g ON t.genre_id = g.id GROUP BY g.name HAVING COUNT(t.id) > 0 ORDER BY track_count DESC, genre_name ASC LIMIT 5
SELECT c.first_name, c.last_name FROM customers AS c JOIN invoices AS i ON c.id = i.customer_id ORDER BY i.total ASC NULLS LAST LIMIT 10
SELECT customers.first_name, customers.last_name FROM customers JOIN invoices ON customers.id = invoices.customer_id ORDER BY invoices.total ASC NULLS LAST LIMIT 10
SELECT a.title FROM artists AS a JOIN albums AS al ON a.id = al.artist_id WHERE a.name ILIKE '%Aerosmith%'
SELECT a.title FROM albums a JOIN artists ar ON a.artist_id = ar.id WHERE ar.name ILIKE '%Aerosmith%' ORDER BY a.title NULLS LAST
SELECT COUNT(*) AS number_of_albums FROM albums WHERE artist_id = (SELECT id FROM artists WHERE name ilike '%Billy%Cobham%')
SELECT COUNT(*) AS number_of_albums FROM artists AS a JOIN albums AS al ON a.id = al.artist_id WHERE a.name ILIKE '%Billy%Cobain%'
SELECT a.title FROM artists AS a JOIN albums AS al ON a.id = al.artist_id WHERE a.name ilike '%Led%'
SELECT albums.title FROM artists JOIN albums ON artists.id = albums.artist_id WHERE artists.name ilike '%Led%'
SELECT COUNT(DISTINCT customers.id) AS number_of_customers FROM customers WHERE customers.support_rep_id = 75707176747370
SELECT COUNT(DISTINCT customers.id) AS number_of_customers FROM customers JOIN employees ON customers.support_rep_id = employees.id WHERE employees.title ilike '%Steve%Johnson%'
SELECT e.first_name, e.last_name FROM employees e JOIN reports r ON e.id = r.reports_to WHERE r.reports_to = 107275716
SELECT employees.first_name, employees.last_name FROM employees WHERE employees.reports_to = 10752
SELECT c.support_rep_id, COUNT(c.id) AS num_customers FROM customers c GROUP BY c.support_rep_id), emp_full_name AS (SELECT e.first_name, e.last_name FROM employees e) SELECT a.first_name, a.last_name FROM customer_reps cr JOIN emp_full_name a ON cr.support_rep_id = a.id ORDER BY num_customers DESC LIMIT 1
SELECT c.last_name, c.first_name, e.title AS employee_title FROM customers c JOIN employees e ON c.support_rep_id = e.id), employee_customers AS (SELECT ce.last_name, ce.first_name, COUNT(ci.customer_id) AS customer_count FROM customer_employee ce JOIN invoices i ON i.billing_city = ce.last_name AND i.billing_address = ce.first_name GROUP BY ce.last_name, ce.first_name), max_customers AS (SELECT MAX(customer_count) AS max_customer_count FROM employee_customers) SELECT ec.last_name, ec.first_name FROM employee_customers ec JOIN max_customers mc ON ec.customer_count = mc.max_customer_count
SELECT e.first_name, e.last_name, COUNT(c.id) AS customer_count FROM employees e JOIN customers c ON e.reports_to = c.support_rep_id GROUP BY e.first_name, e.last_name ORDER BY customer_count DESC NULLS LAST LIMIT 1
SELECT e.first_name, e.last_name, COUNT(r.id) AS reports_to FROM employees e JOIN reports r ON e.id = r.employee_id GROUP BY e.first_name, e.last_name
SELECT COUNT(*) AS total_orders FROM invoices JOIN customers ON invoices.customer_id = customers.id WHERE customers.last_name ILIKE '%Mancini%' AND customers.first_name ILIKE '%Lucas%'
SELECT COUNT(*) AS total_orders FROM invoices WHERE customer_id = (SELECT id FROM customers WHERE first_name ilike '%Luca%' AND last_name ilike '%Mancini%')
SELECT SUM(invoices.total) AS total_amount_spent FROM invoices JOIN customers ON invoices.customer_id = customers.id WHERE customers.last_name ILIKE '%Lucas%Mancini%'
SELECT SUM(invoices.total) AS total_spent FROM invoices JOIN customers ON invoices.customer_id = customers.id WHERE customers.last_name ILIKE '%Lucas%Mancini%'
SELECT tracks.name FROM tracks JOIN genres ON tracks.genre_id = genres.id WHERE genres.name ilike '%Rock%' ORDER BY tracks.name NULLS LAST
SELECT tracks.name FROM tracks JOIN genres ON tracks.genre_id = genres.id WHERE genres.name ilike '%Rock%' ORDER BY tracks.name NULLS LAST
SELECT albums.title FROM tracks JOIN albums ON tracks.album_id = albums.id WHERE tracks.name ILIKE '%Balls%to%the%Wall%' 
SELECT albums.title FROM tracks JOIN albums ON tracks.album_id = albums.id WHERE tracks.name ILIKE '%Ball%to%the%Wall%' 
SELECT t.name FROM tracks t JOIN albums a ON t.album_id = a.id WHERE a.title ilike '%Balls%to%the%Wall%'
SELECT t.name FROM tracks t JOIN albums a ON t.album_id = a.id WHERE a.title ilike '%Balls%to%the%Wall%'
SELECT a.title FROM albums a JOIN (SELECT t.album_id FROM tracks t GROUP BY t.album_id HAVING COUNT(t.id) > 10) b ON a.id = b.album_id
SELECT a.title FROM albums a JOIN (SELECT track_id FROM tracks GROUP BY track_id HAVING COUNT(track_id) > 10) t ON a.id = t.track_id
SELECT t.name FROM tracks t JOIN genres g ON t.genre_id = g.id JOIN media_types mt ON t.media_type_id = mt.id WHERE g.name ILIKE '%Rock%' AND mt.name ILIKE '%MPEG%'
SELECT t.name FROM tracks t JOIN media_types mt ON t.media_type_id = mt.id WHERE mt.name = 'MPEG' AND t.genre_id IN (SELECT id FROM genres g WHERE g.name ILIKE '%Rock%')
SELECT t.name FROM tracks t JOIN genres g ON t.genre_id = g.id JOIN media_types mt ON t.media_type_id = mt.id WHERE g.name = 'Rock' OR mt.name = 'MPEG audio file'
SELECT tracks.name FROM tracks JOIN media_types ON tracks.media_type_id = media_types.id JOIN genres ON tracks.genre_id = genres.id WHERE media_types.name = 'MPEG' AND genres.name = 'Rock'
SELECT tracks.name FROM tracks JOIN genres ON tracks.genre_id = genres.id WHERE genres.name IN ('Rock', 'Jazz')
SELECT t.name FROM tracks t JOIN genres g ON t.genre_id = g.id WHERE g.name IN ('Rock', 'Jazz')
SELECT t.name FROM tracks t JOIN playlist_tracks pt ON t.id = pt.track_id JOIN playlists p ON pt.playlist_id = p.id WHERE p.name ILIKE '%Movies%'
SELECT t.name FROM tracks t JOIN playlist_tracks pt ON t.id = pt.track_id JOIN playlists p ON pt.playlist_id = p.id WHERE p.name ILIKE '%Movies%' 
SELECT p.name FROM playlists p JOIN (SELECT pt.playlist_id FROM playlist_tracks pt GROUP BY pt.playlist_id HAVING COUNT(pt.track_id) > 100) c ON p.id = c.playist_id
SELECT p.name FROM playlists p JOIN (SELECT pt.playlist_id FROM playlist_tracks pt GROUP BY pt.playlist_id HAVING COUNT(pt.track_id) > 100) s ON p.id = s.playlist_id
SELECT tracks.name FROM tracks JOIN invoice_lines ON tracks.id = invoice_lines.track_id JOIN customers ON invoice_lines.invoice_id = customers.id WHERE customers.first_name ILIKE '%Daan%' AND customers.last_name ILIKE '%Peeters%'
SELECT t.name FROM customers c JOIN invoices i ON c.id = i.customer_id JOIN invoice_lines il ON i.id = il.invoice_id JOIN tracks t ON il.track_id = t.id WHERE c.last_name ILIKE '%Peeters%' 
SELECT t.name FROM tracks t JOIN playlist_tracks pt ON t.id = pt.track_id JOIN playlists pl ON pt.playlist_id = pl.id WHERE t.media_type_id IN (SELECT id FROM media_types WHERE name ILIKE '%Movies%') AND t.id NOT IN (SELECT track_id FROM playlist_tracks WHERE playlist_id IN (SELECT id FROM playlists WHERE name ILIKE '%Music%'))
SELECT t.name FROM tracks t JOIN playlist_tracks pt ON t.id = pt.track_id JOIN playlists pl ON pt.playlist_id = pro.id WHERE pro.name = 'Movies' AND NOT EXISTS (SELECT 1 FROM playlist_tracks mt JOIN playlists ml ON mt.playlist_id = ml.id WHERE mt.track_id = t.id AND ml.name = 'Music')
SELECT t.name FROM tracks t JOIN album_genre ag ON t.album_id = ag.id AND t.genre_id = ag.genre_id JOIN media_types mt ON t.media_type_id = mt.id JOIN playlist_tracks pt ON t.id = pt.track_id WHERE mt.name = 'musical' AND ag.name = 'Movies'
SELECT t.name FROM tracks t JOIN album_genre ag ON t.genre_id = ag.id JOIN albums a ON ag.album_id = a.id JOIN playlist_tracks pt ON t.id = pt.track_id WHERE a.title ilike '%Movies%' AND pt.playlist_id IN (SELECT id FROM playlists WHERE name ilike '%musical%')
SELECT g.name AS genre_name, COUNT(*) AS track_count FROM tracks t JOIN genres g ON t.genre_id = g.id GROUP BY g.name
SELECT g.name AS genre_name, COUNT(*) AS total_tracks FROM tracks t JOIN genres g ON t.genre_id = g.id GROUP BY g.name
SELECT e.name, j.theme FROM editor e JOIN journal_committee jc ON e.editor_id = jc.editor_id JOIN journal j ON jc.journal_id = j.journal_id
SELECT jc.editor_id, e.name, j.theme FROM journal_committee AS jc JOIN editor AS e ON jc.editor_id = e.editor_id JOIN journal AS j ON jc.journal_id = j.journal_id
SELECT e.name, CAST(e.age AS FLOAT) AS age, j.theme FROM editor e JOIN journal_committee jc ON e.editor_id = jc.editor_id JOIN journal j ON jc.journal_id = j.journal_id ORDER BY j.theme ASC
SELECT e.name FROM editor e JOIN journal_committee jc ON e.editor_id = jc.editor_id JOIN journal j ON jc.journal_id = j.journal_id WHERE j.sales > 3000
SELECT e.editor_id, e.name, COUNT(jc.journal_id) AS num_committees FROM editor e JOIN journal_committee jc ON e.editor_id = jc.editor_id GROUP BY e.editor_id, e.name
SELECT e.name FROM editor e JOIN journal_committee jc ON e.editor_id = jc.editor_id GROUP BY e.name HAVING COUNT(DISTINCT jc.journal_id) >= 2
SELECT AVG(journal.sales) AS average_sales FROM journal JOIN journal_committee ON journal.journal_id = journal_committee.journal_id JOIN editor ON journal_committee.editor_id = editor.editor_id WHERE journal_committee.work_type ilike '%Photo%'
SELECT customers.customer_first_name, customers.customer_last_name, customers.customer_phone FROM accounts JOIN customers ON accounts.customer_id = customers.customer_id WHERE accounts.account_name = '162' 
SELECT customers.customer_first_name, customers.customer_last_name, customers.customer_phone FROM accounts JOIN customers ON accounts.customer_id = customers.customer_id WHERE accounts.account_name = '162'
SELECT COUNT(DISTINCT Accounts.account_id) AS account_count FROM Customers JOIN Accounts ON Customers.customer_id = Accounts.customer_id WHERE Customers.customer_first_name ilike '%Art%' AND Customers.customer_last_name ilike '%Turcotte%'
SELECT COUNT(DISTINCT Accounts.account_id) AS account_count FROM Customers JOIN Accounts ON Customers.customer_id = Accounts.customer_id WHERE Customers.customer_first_name ilike '%Art%' AND Customers.customer_last_name ilike '%Turcotte%'
SELECT c.customer_first_name, c.customer_last_name, MIN(a.account_id) AS account_id FROM customers c JOIN accounts a ON c.customer_id = a.customer_id GROUP BY c.customer_first_name, c.customer_last_name
SELECT c.customer_first_name, c.customer_last_name, CAST(COUNT(a.account_id) AS FLOAT) / NULLIF((SELECT COUNT(account_id) FROM accounts), 0) AS account_to_account_ratio FROM customers c JOIN accounts a ON c.customer_id = a.customer_id GROUP BY c.customer_first_name, c.customer_last_name ORDER BY account_to_account_ratio ASC LIMIT 1
SELECT customers.customer_first_name, customers.customer_last_name FROM customers WHERE customers.customer_id IN (SELECT accounts.customer_id FROM accounts)
SELECT c.customer_first_name, c.customer_last_name FROM customers AS c JOIN accounts AS a ON c.customer_id = a.customer_id
SELECT customers.customer_first_name, customers.customer_last_name, customers.customer_phone FROM customers_cards JOIN customers ON customers_cards.customer_id = customers.customer_id WHERE customers_cards.card_number = '4560596484842'
SELECT customers.customer_first_name, customers.customer_last_name, customers.customer_phone FROM customers_cards JOIN customers ON customers_cards.customer_id = customers.customer_id WHERE customers_cards.card_number = '4560596484842'
SELECT COUNT(*) AS card_count FROM customers_cards WHERE customer_id = 757071
SELECT COUNT(*) AS card_count FROM customers_cards WHERE customer_id IN (SELECT customer_id FROM customers WHERE customer_first_name ilike '%Art%' AND customer_last_name ilike '%Turcotte%')
SELECT COUNT(DISTINCT customers_cards.card_id) AS number_of_credit_cards FROM customers_cards WHERE customers_cards.customer_id = 75707174
SELECT COUNT(*) AS total_credit_cards FROM customers_cards WHERE customer_id IN (SELECT customer_id FROM customers WHERE customer_first_name ilike '%Blanche%' AND customer_last_name ilike '%Huang%')
SELECT c.customer_first_name, c.customer_last_name, a.account_id FROM customers AS c CROSS JOIN accounts AS a
SELECT c.customer_first_name, c.customer_last_name FROM Customers AS c JOIN (SELECT customer_id FROM Customers_Cards GROUP BY customer_id HAVING COUNT(card_id) >= 2) AS cc ON c.customer_id = cc.customer_id
SELECT c.customer_first_name, c.customer_last_name, COUNT(a.account_id) AS account_count FROM customers c JOIN accounts a ON c.customer_id = a.customer_id GROUP BY c.customer_first_name, c.customer_last_name ORDER BY account_count ASC NULLS LAST LIMIT 1
SELECT c.customer_first_name, c.customer_last_name FROM customers AS c JOIN (SELECT a.account_id, COUNT(*) AS account_count FROM accounts AS a GROUP BY a.account_id) AS ac ON c.customer_id = ac.account_id ORDER BY ac.account_count ASC LIMIT 1
SELECT cc.card_type_code, COUNT(ft.transaction_id) AS transaction_count FROM customers_cards cc JOIN financial_transactions ft ON cc.card_id = ft.card_id GROUP BY cc.card_type_code
SELECT cc.card_type_code, COUNT(ft.transaction_id) AS number_of_transactions FROM customers_cards cc JOIN financial_transactions ft ON cc.card_id = ft.card_id GROUP BY cc.card_type_code
SELECT t.name, COUNT(r.race_id) AS race_count FROM track t JOIN race r ON t.track_id = r.track_id GROUP BY t.name
SELECT t.name, COUNT(r.race_id) AS race_count FROM track t JOIN race r ON t.track_id = r.track_id GROUP BY t.name
SELECT t.name AS track_name, COUNT(r.race_id) AS race_count FROM track t JOIN race r ON t.track_id = r.track_id GROUP BY t.name ORDER BY race_count DESC NULLS LAST LIMIT 1
SELECT t.name AS track_name, COUNT(r.race_id) AS race_count FROM track t JOIN race r ON t.track_id = r.track_id GROUP BY t.name ORDER BY race_count DESC LIMIT 1
SELECT r.name, t.year_opened, to_date(r.date,'YYYY-MM-DD') AS race_date FROM race r JOIN track t ON r.track_id = t.track_id
SELECT r.name AS race_name, t.name AS track_name, to_date(r.date::text,'YYYY-MM-DD') AS race_date FROM race r JOIN track t ON r.track_id = t.track_id
SELECT r.name, t.location FROM race r JOIN track t ON r.track_id = t.track_id WHERE r.race_id = 1
SELECT DISTINCT track.name, track.location FROM track JOIN race ON track.track_id = race.track_id GROUP BY track.name,track.location HAVING COUNT(race.race_id) = 1
SELECT shop.shop_id, shop.address FROM shop JOIN happy_hour ON shop.shop_id = happy_hour.shop_id WHERE happy_hour.month ILIKE '%May%' 
SELECT a.title FROM album a JOIN artist ar ON a.artistid = ar.artistid WHERE ar.name ilike '%ac/dc%' ORDER BY a.title NULLS LAST
SELECT COUNT(DISTINCT album.title) AS number_of_albums FROM album JOIN artist ON album.artistid = artist.artistid WHERE artist.name ilike '%AC/DC%'
SELECT COUNT(*) AS number_of_albums FROM album JOIN artist ON album.artistid = artist.artistid WHERE artist.name ilike '%Metallica%'
SELECT COUNT(*) AS total_albums FROM album JOIN artist ON album.artistid = artist.artistid WHERE artist.name ilike '%Metallica%'
SELECT a."Name" FROM album a JOIN track t ON a.albumid = t.trackid WHERE t.name ilike '%balls%to%the%wall%' 
SELECT a."Name" FROM album a JOIN track t ON a.albumid = t.albumid WHERE t.name ilike '%Balls%to%the%Wall%'
SELECT a."Name" AS artist_name, COUNT(*) AS number_of_albums FROM album a GROUP BY a."Name" ORDER BY number_of_albums DESC NULLS LAST LIMIT 1
SELECT a."Name" AS artist_name, COUNT(t.TrackId) AS total_tracks FROM album a JOIN track t ON a.ArtistId = t.AlbumId GROUP BY a."Name" ORDER BY total_tracks DESC LIMIT 1
SELECT a.title AS album_title, a.artistid AS artist_id, COUNT(t.trackid) AS track_count FROM album a JOIN track t ON a.albumid = t.albumid GROUP BY a.title, a.artistid
SELECT a.title AS album_title, COUNT(t.track_id) AS track_count FROM album a JOIN track t ON a.album_id = t.album_id GROUP BY a.title
SELECT g.name AS genre_name, COUNT(*) AS track_count FROM track t JOIN genre g ON t.genre_id = g.genre_id GROUP BY g.name ORDER BY track_count DESC LIMIT 1
SELECT g.name AS genre_name, COUNT(t.trackid) AS track_count FROM track t JOIN genre g ON t.genreid = g.genreid GROUP BY g.name ORDER BY track_count DESC LIMIT 1
-1
SELECT m.name AS media_type, COUNT(t.trackid) AS track_count FROM track t JOIN media_type m ON t.mediatypeid = m.mediatypeid GROUP BY m.name ORDER BY track_count ASC LIMIT 1
SELECT a.title AS album_title, a.albumid AS album_id FROM track t JOIN album a ON t.albumid = a.albumid WHERE t.unit_price > 1
SELECT a."Title" AS album_title, t.name AS track_name, i.invoicedate, i.total/i.quantity AS cost_per_unit, to_number(to_char(i.invoicedate,'YYYY'),'9999') AS invoice_year FROM album a JOIN track t ON a.albumid = t.trackid JOIN invoice i ON t.trackid = i.trackid AND i.unitprice > 1
SELECT COUNT(*) AS total_tracks FROM track WHERE genre.name ilike '%rock%' 
SELECT COUNT(*) FROM track WHERE genre.name ilike '%rock%' 
SELECT AVG(track.unit_priced) AS average_unit_price FROM track JOIN genre ON track.genre_id = genre.genre_id WHERE genre.name ilike '%jazz%'
SELECT AVG(track.unit_price) AS average_unit_price FROM track JOIN media_type ON track.media_type_id = media_type.media_type_id WHERE media_type.name ilike '%jazz%'
SELECT employee.first_name, employee.last_name FROM customer JOIN employee ON customer.support_rep_id = employee.employee_id WHERE customer.first_name ilike '%Leonie%'
SELECT e.first_name || ' ' || e.last_name AS full_name FROM employee e JOIN customer c ON e.employeeid = c.supportrepid WHERE c.first_name ilike '%Leonardo%'
SELECT employee.city FROM customer JOIN employee ON customer.supportrepid = employee.employeeid WHERE customer.postalcode = '70174'
SELECT DISTINCT employee.city FROM customer JOIN employee ON customer.supportrepid = employee.employeeid WHERE customer.postalcode = '70174'
SELECT invoice.invoicedate FROM customer JOIN invoice ON customer.customerid = invoice.customerid WHERE customer.firstname ilike '%Astrid%' AND customer.lastname ilike '%Gruber%'
SELECT invoice.invoicedate FROM customer JOIN invoice ON customer.customerid = invoice.customerid WHERE customer.firstname ilike '%Astrid%' AND customer.lastname ilike '%Gruber%'
SELECT customer.first_name FROM customer JOIN invoice ON customer.customer_id = invoice.customer_id WHERE customer.country = 'Brazil' 
SELECT DISTINCT customer.first_name FROM customer JOIN invoice ON customer.customer_id = invoice.customer_id WHERE customer.country = 'Brazil' 
SELECT customer.address FROM customer JOIN invoice ON customer.customerid = invoice.customerid WHERE customer.country = 'Germany'
SELECT customer.address FROM customer JOIN invoice ON customer.customerid = invoice.customerid WHERE customer.country = 'Germany' 
SELECT COUNT(*) AS total_tracks FROM track WHERE media_type_id = (SELECT media_type_id FROM media_type WHERE name ilike '%AAC%')
SELECT COUNT(*) FROM track WHERE media_type_id = (SELECT media_type_id FROM media_type WHERE name ilike '%AAC%audio%file%')
SELECT AVG(track.millisecond) AS average_duration FROM track JOIN genre ON track.genreid = genre.genreid WHERE genre.name IN ('Latin', 'Pop')
SELECT AVG(milliseconds) AS average_milliseconds FROM track WHERE media_type_id = 1 AND genre_id IN (SELECT genre_id FROM genre WHERE name IN ('Latin', 'Pop'))
SELECT e.first_name, e.employeeid FROM employee e JOIN customer c ON e.reports_to = c.supportrepid GROUP BY e.first_name, e.employeeid HAVING COUNT(c.customerid) >= 10
SELECT e.first_name, s.support_rep_id FROM employee e JOIN (SELECT c.customer_id, COUNT(*) AS num_customers FROM customer c GROUP BY c.customer_id) s ON e.employee_id = s.customer_id WHERE s.num_customers >= 10
SELECT e.last_name FROM employee e JOIN customer c ON e.employeeid = c.supportrepid GROUP BY e.last_name HAVING COUNT(c.customerid) <= 20
SELECT employee.last_name FROM employee WHERE employee.employeeid IN (SELECT customer.supportrepid FROM customer GROUP BY customer.supportrepid HAVING COUNT(customer.customerid) > 20)
SELECT a.name, a.artistid FROM album AS a GROUP BY a.name, a.artistid HAVING COUNT(a.albumid) >= 3 ORDER BY a.name ASC
SELECT a.name AS artist_name, a.artistid, COUNT(t.trackid) AS number_of_tracks FROM album a JOIN track t ON a.artistid = t.artistid GROUP BY a.name, a.artistid HAVING COUNT(t.trackid) >= 3 ORDER BY artist_name ASC
SELECT AVG(track.unit_price) AS average_unit_price FROM track WHERE media_type.name = 'rock'
SELECT AVG(track.unit_price) AS average_unit_price FROM track JOIN genre ON track.genre_id = genre.genre_id WHERE genre.name ilike '%Rock%'
SELECT MIN(milliseconds) AS shortest_duration_in_milliseconds, MAX(millisecond) AS longest_duration_in_milliseconds FROM track WHERE genre.name ILIKE '%pop%'
SELECT MIN(milliseconds) AS min_milliseconds, MAX(milliseconds) AS max_milliseconds FROM track WHERE media_type_id = 1 AND genre_id IN (SELECT genre_id FROM genre WHERE name ILIKE '%pop%')
SELECT DISTINCT a.title FROM album a JOIN track t ON a.albumid = t.albumid JOIN genre g ON t.genreid = g.genreid WHERE a.artistid IN (SELECT artistid FROM artist WHERE name ilike '%regga%') AND a.artistid IN (SELECT artistid FROM artist WHERE name ilike '%rock%')
SELECT COUNT(DISTINCT a.title) AS number_of_albums FROM album a JOIN track t ON a.albumid = t.albumid JOIN genre g ON t.genreid = g.genreid WHERE g.name IN ('Rock', 'Regae')
SELECT s.service_name FROM services AS s JOIN first_notification_of_loss AS fnl ON s.service_id = fnl.service_id GROUP BY s.service_name HAVING COUNT(fnl.service_id) > 2
SELECT s.service_name FROM services s JOIN first_notification_of_loss fl ON s.service_id = fl.service_id GROUP BY s.service_name HAVING COUNT(fl.service_id) > 2
SELECT c.effective_date, s.settlement_amount, row_number() OVER (PARTITION BY s.claim_id ORDER BY s.settlement_amount DESC) AS row_num FROM claims c JOIN settlements s ON c.claim_id = s.claim_id
SELECT c.effective_date, s.settlement_amount FROM claims AS c JOIN settlements AS s ON c.claim_id = s.claim_id ORDER BY s.settlement_amount DESC LIMIT 1
SELECT COUNT(DISTINCT customers_policies.policy_id) AS number_of_policies FROM customers_policies JOIN customers ON customers_policies.customer_id = customers.customer_id WHERE customers.customer_name ilike '%Dayana%Robel%'
SELECT COUNT(DISTINCT customers_policies.policy_id) AS total_policies FROM customers_policies JOIN customers ON customers_policies.customer_id = customers.customer_id WHERE customers.customer_name ilike '%Dayana%Robel%'
SELECT customers.customer_name, COUNT(customers_policies.policy_id) AS policy_count FROM customers JOIN customers_policies ON customers.customer_id = customers_policies.customer_id GROUP BY customers.customer_name ORDER BY policy_count DESC LIMIT 1
SELECT customers.customer_name, COUNT(customers_policies.policy_id) AS policy_count FROM customers JOIN customers_policies ON customers.customer_id = customers_policies.customer_id GROUP BY customers.customer_name ORDER BY policy_count DESC NULLS LAST LIMIT 1
SELECT DISTINCT a.policy_type_code FROM customers_policies a JOIN customers b ON a.customer_id = b.customer_id WHERE b.customer_name ILIKE '%Dayana%Robel%' 
SELECT AVG(policies.policy_type_code) AS average_policy_type FROM customers JOIN customers_policies ON customers.customer_id = customers_policies.customer_id JOIN available_policies ON customers_policies.policy_id = available_policies.policy_id WHERE customers.customer_name ilike '%Dayana%Robel%'
SELECT a.policy_type_code, COUNT(c.customer_id) AS number_of_policies FROM available_policies a JOIN customers_policies c ON a.policy_id = c.policy_id GROUP BY a.policy_type_code ORDER BY number_of_policies DESC NULLS LAST LIMIT 1
SELECT a.policy_type_code, COUNT(*) AS number_of_policies FROM available_policies a JOIN customers_policies b ON a.policy_id = b.policy_id GROUP BY a.policy_type_code ORDER BY number_of_policies DESC NULLS LAST LIMIT 1
SELECT customers.customer_name FROM customers JOIN first_notification_of_loss ON customers.customer_id = first_notification_of_loss.customer_id WHERE first_notification_of_loss.service_id IN (SELECT service_id FROM services WHERE service_name IN ('Close a policy', 'Upgrade a policy'))
SELECT customers.customer_name FROM customers JOIN customers_policies ON customers.customer_id = customers_policies.customer_id JOIN services ON customers_policies.service_id = services.service_id WHERE services.service_name ilike '%Close a policy%' OR services.service_name ilike '%Upgrade a policy%'
SELECT Customers.customer_name FROM Customers JOIN First_Notification_of_Loss ON Customers.customer_id = First_Notification_of_Loss.customer_id WHERE First_Notification_of_Loss.service_id IN (SELECT service_id FROM Services WHERE service_name ILIKE '%Close%a%policy%') AND First_Notification_of_Loss.service_id IN (SELECT service_id FROM Services WHERE service_name ILIKE '%New%policy%application%')
SELECT customers.customer_name FROM customers JOIN customers_policies ON customers.customer_id = customers_policies.customer_id WHERE customers_policies.policy_id IN (SELECT first_notification_of_loss.policy_id FROM first_notification_of_loss JOIN services ON first_notification_of_loss.service_id = services.service_id WHERE services.service_name ILIKE '%Close%a%policy%') AND customers_policies.policy_id IN (SELECT first_notification_of_loss.policy_id FROM first_notification_of_loss JOIN services ON first_notification_of_loss.service_id = services.service_id WHERE services.service_name ILIKE '%Upgrade%a%policy%')
SELECT customers_policies.date_opened, customers_policies.date_closed FROM customers_policies JOIN customers ON customers_policies.customer_id = customers.customer_id WHERE customers.customer_name ilike '%Diana%' ORDER BY customers_policies.date_opened NULLS LAST
SELECT customers_policies.date_opened, customers_policies.date_closed FROM customers_policies JOIN first_notification_of_loss ON customers_policies.policy_id = first_notification_of_loss.policy_id AND customers_policies.customer_id = first_notification_of_loss.customer_id WHERE first_notification_of_loss.service_id IN (SELECT service_id FROM services WHERE service_name ilike '%Diana%') ORDER BY customers_policies.date_opened NULLS LAST
SELECT e.name FROM medicine m JOIN medicine_enzyme_action mea ON m.id = mea.medicine_id JOIN enzyme e ON mea.enzyme_id = e.id WHERE m.name ILIKE '%Amisulpride%' AND mea.interaction_type ILIKE '%inhibitor%'
SELECT e.name FROM medicine_enzyme_interaction mei JOIN enzyme e ON mei.enzyme_id = e.id JOIN medicine m ON mei.medicine_id = m.id WHERE m.trade_name ILIKE '%Amisulpride%' AND interaction_type ILIKE '%inhibitor%'
SELECT m.name, COUNT(mei.medicine_id) AS interaction_count FROM medicine_enzyme_interaction mei JOIN medicine m ON mei.medicine_id = m.id GROUP BY m.name HAVING COUNT(mei.medicine_id) >= 2
SELECT m.name AS medicine_name, COUNT(mei.medicine_id) OVER (PARTITION BY mei.medicine_id) AS interaction_count FROM medicine_enzyme_interaction mei JOIN medicine m ON mei.medicine_id = m.id
SELECT m.id AS medicine_id, m.name AS medicine_name, fda_approved, COUNT(mei.medicine_id) AS interaction_count FROM medicine m JOIN medicine_enzyme_interaction mei ON m.id = mei.medicine_id GROUP BY m.id, m.name, fda_approved ORDER BY interaction_count DESC
SELECT m.id AS medicine_id, m.name AS medicine_name, e.name AS enzyme_name, row_number() OVER(PARTITION BY me.id ORDER BY COUNT(mei.interaction_type) DESC) AS interaction_rank FROM medicine_enzyme_interaction mei JOIN medicine m ON mei.medicine_id = m.id JOIN enzyme e ON mei.enzyme_id = e.id GROUP BY m.id, m.name, e.name
SELECT e.name AS enzyme_name, COUNT(mei.medicine_id) AS medicine_count FROM medicine_enzyme_interaction mei JOIN medicine m ON mei.medicine_id = m.id JOIN enzyme e ON mei.enzyme_id = e.id WHERE interaction_type ILIKE '%activator%' GROUP BY e.name ORDER BY medicine_count DESC NULLS LAST LIMIT 1
SELECT medicine_id, enzyme_id, COUNT(*) AS interaction_count FROM medicine_enzyme_interaction GROUP BY medicine_id, enzyme_id) SELECT e.name, m.name, COUNT(mei.medicine_id) AS interaction_count FROM enzyme e JOIN medicine_enzyme_interaction mei ON e.id = mei.enzyme_id JOIN medicine_enzyme_interaction_count mc ON mei.medicine_id = mc.medicine_id AND mei.enzyme_id = mc.enzyme_id JOIN medicine m ON m.id = mc.medicine_id GROUP BY e.name, m.name ORDER BY interaction_count DESC NULLS LAST LIMIT 1
SELECT medicine_enzyme_interaction.interaction_type FROM medicine_enzyme_interaction JOIN enzyme ON medicine_enzyme_interaction.enzyme_id = enzyme.id JOIN medicine ON medicine_enzyme_interaction.medicine_id = medicine.id WHERE enzyme.name ILIKE '%ALA%synthase%' AND medicine.name ILIKE '%Aripiprazole%'
SELECT medicine_enzyme_interaction.interaction_type FROM medicine_enzyme_interaction JOIN medicine ON medicine_enzyme_interaction.medicine_id = medicine.id JOIN enzyme ON medicine_enzyme_interaction.enzyme_id = enzyme.id WHERE medicine.name ILIKE '%Aripiprazole%' AND enzyme.name ILIKE '%ALA synthase%'
SELECT m.trade_name, to_char(m.id) AS id FROM medicine m JOIN medicine_enzyme_interaction mef ON m.id = mef.medicine_id JOIN enzyme e ON mef.enzyme_id = e.id GROUP BY m.trade_name, m.id HAVING COUNT(DISTINCT e.name) >= 3
SELECT m.trade_name, me.medicine_id FROM medicine_enzyme_interaction AS mef JOIN medicine AS m ON mef.medicine_id = m.id GROUP BY m.trade_name HAVING COUNT(mef.enzyme_id) >= 3
SELECT DISTINCT e.name, e.location, m.product FROM medicine_enzyme_interaction mei JOIN enzyme e ON mei.enzyme_id = e.id JOIN medicine m ON mei.medicine_id = m.id WHERE interaction_type ILIKE '%inhibitor%'
SELECT e.name AS enzyme_name, l.location_details, m.trade_name, row_number() OVER (PARTITION BY e.id ORDER BY m.id) AS interaction_group FROM enzyme e JOIN medicine_enzyme_interaction mea ON e.id = mea.enzyme_id JOIN medicine m ON mea.medicine_id = m.id JOIN location l ON e.location_id = l.id
SELECT m.name AS medicine_name, m.trade_name, e.product AS enzyme_product FROM medicine_enzyme_interaction mef INNER JOIN medicine m ON mef.medicine_id = m.id INNER JOIN enzyme e ON mef.enzyme_id = e.id WHERE interaction_type ILIKE '%inhibitor%' AND interaction_type ILIKE '%activator%'
SELECT m.name AS medicine_name, e.name AS enzyme_name, CASE WHEN mei.interaction_type = 'inhibitor' THEN 'Yes' ELSE 'No' END AS interaction_type FROM medicine_enzyme_interaction mei JOIN medicine m ON mei.medicine_id = m.id JOIN enzyme e ON mei.enzyme_id = e.id
SELECT u.primary_conference FROM basketball_match bm JOIN university u ON bm.school_id = u.school_id GROUP BY u.primary_conference ORDER BY CAST(bm.acc_percent AS FLOAT) ASC LIMIT 1
SELECT u.primary_conference FROM basketball_match bm JOIN university u ON bm.school_id = u.school_id ORDER BY CAST(bm.acc_percent AS FLOAT) ASC LIMIT 1
SELECT u.nickname, bm.team_name, AVG(cast(bm.acc_regular_season AS FLOAT)) AS average_acc_regular_season FROM basketball_match bm JOIN university u ON bm.school_id = u.school_id GROUP BY u.nickname, bm.team_name ORDER BY u.founded DESC LIMIT 1
SELECT u.nickname, bm.team_name, CAST(bm.acc_regular_season AS FLOAT) FROM university u JOIN basketball_match bm ON u.school_id = bm.school_id ORDER BY u.founded ASC LIMIT 1
SELECT university.location, basketball_match.all_games FROM basketball_match JOIN university ON basketball_match.school_id = university.school_id WHERE university.nickname ilike '%Clemson%' ORDER BY university.location NULLS LAST
SELECT b.all_games, u.location FROM basketball_match AS b JOIN university AS u ON b.school_id = u.school_id WHERE u.nickname ilike '%Clemson%' ORDER BY b.all_games NULLS LAST
SELECT u.nickname FROM university AS u JOIN basketball_match AS bm ON u.school_id = bm.school_id WHERE u.enrollment < (SELECT AVG(enrollment) FROM university)
SELECT u.nickname, b.team_name FROM university AS u JOIN basketball_match AS b ON u.school_id = b.school_id WHERE u.enrollment < (SELECT AVG(enrollment) FROM university)
SELECT MAX(chip_model.RAM_MiB) AS max_ram, MIN(chip_model.RAM_MiB) AS min_ram FROM phone JOIN chip_model ON phone.chip_model = chip_model.Model_name WHERE phone.Company_name ILIKE '%Nokia%Corporation%' 
SELECT AVG(chip_model.ROM_MiB) AS average_rom_size FROM phone JOIN chip_model ON phone.chip_model = chip_model.Model_name WHERE phone.company_name ilike '%Nokia%Corporation%'
SELECT phone.hardware_model_name, phone.company_name FROM phone WHERE (phone.launch_year = 2002 OR phone.ram_mib > 32) AND phone.chip_model IS NOT NULL AND phone.screen_mode IS NOT NULL
SELECT screen_mode.char_cells, screen_mode.pixels, chip_model.hardware_colours FROM phone JOIN chip_model ON phone.chip_model = chip_model.model_name JOIN screen_mode ON phone.screen_mode = screen_mode.graphics_mode WHERE phone.hardware_model_name ILIKE '%LG-P760%' 
SELECT phone.hardware_model_name, phone.company_name FROM phone WHERE phone.screen_mode = 'Graphics'
SELECT phone.hardware_model_name FROM phone JOIN chip_model ON phone.chip_model = chip_model.model_name WHERE chip_model.launch_year = 2002 ORDER BY chip_model.ram_mib DESC LIMIT 1
SELECT chip_model.wifi, screen_mode.type FROM phone JOIN chip_model ON phone.chip_model = chip_model.model_name JOIN screen_mode ON phone.screen_mode = screen_mode.type WHERE phone.hardware_model_name ILIKE '%LG-P760%' 
SELECT phone.hardware_model FROM phone WHERE (phone.screen_mode ilike '%Text%' OR CAST(chip_model.ram_mib AS FLOAT) > 32) AND phone.chip_model IS NOT NULL AND phone.screen_mode IS NOT NULL
SELECT phone.hardware_model_name FROM phone WHERE phone.company_name ilike '%Nokia%Corporation%' OR phone.screen_mode ilike '%Graphics%'
SELECT phone.hardware_model_name FROM phone JOIN chip_model ON phone.chip_model = chip_model.model_name JOIN screen_mode ON phone.screen_mode = screen_mode.type WHERE company_name ILIKE '%Nokia%Corporation%' AND type not ilike '%Text%'
SELECT phone.hardware_model, phone.company_name FROM phone WHERE (cast(phone.screen_mode AS FLOAT) BETWEEN 10 AND 15)
SELECT sm.pixels FROM phone p JOIN chip_model cm ON p.chip_model = cm.model_name JOIN screen_mode sm ON p.screen_mode = sm.graphics_mode WHERE p.accreditation_type ILIKE '%full%' AND p.accreditation_level ILIKE '%provisional%' GROUP BY sm.pixels
SELECT m.season, p.player, c.country_name FROM match_season m JOIN player p ON m.team = p.team JOIN country c ON m.country = c.country_id
SELECT p.player, m.season, c.country_name FROM player p JOIN match_season m ON p.team = m.team JOIN country c ON m.country = c.country_id
SELECT player.player FROM player JOIN match_season ON player.team = match_season.team AND player.player = match_season.player JOIN country ON match_season.country = country.country_id WHERE country.official_native_language ilike '%Indonesia%' 
SELECT player.player FROM player JOIN match_season ON player.player_id = match_season.player WHERE match_season.country = (SELECT country_id FROM country WHERE country_name ilike '%Indonesia%') 
SELECT DISTINCT match_season.position FROM match_season JOIN team ON match_season.team = team.team_id JOIN country ON team.country = country.country_id WHERE country.capital = 'Dublin'
SELECT player.player, match_season.position FROM player JOIN match_season ON player.player_id = match_season.player WHERE country.capital ilike '%Dublin%' ORDER BY match_season.position NULLS LAST
SELECT country.official_native_language FROM player JOIN team ON player.team = team.team_id JOIN match_season ON team.team_id = match_season.team AND match_season.country = team.country_id JOIN country ON country.country_id = match_season.country WHERE player.player ILIKE '%Maryland%' OR player.player ILIKE '%Duke%' GROUP BY country.official_native_language
SELECT country.official_native_language FROM country JOIN match_season ON country.country_id = match_season.country JOIN player ON match_season.team = player.team WHERE player.player IN ('Maryland', 'Duke') GROUP BY country.official_native_language
SELECT COUNT(DISTINCT country.official_native_language) AS number_of_languages FROM match_season JOIN player ON match_season.player = player.player JOIN team ON match_season.team = team.team_id JOIN country ON match_season.country = country.country_id WHERE position ILIKE '%defender%'
SELECT country.official_native_language FROM match_season JOIN player ON match_season.player = player.player JOIN team ON match_season.team = team.team_id JOIN country ON match_season.country = country.country_id WHERE position = 'Defender' GROUP BY country.official_native_language
SELECT m.season, p.player, t.name FROM match_season m JOIN player p ON m.team = p.team JOIN team t ON m.team = t.team_id
SELECT p.player, m.season, t.name FROM player AS p CROSS JOIN match_season AS m INNER JOIN team AS t ON p.team = t.team_id
SELECT player.player AS Player_Name, match_season.position AS Position FROM player JOIN match_season ON player.player_id = match_season.player WHERE player.team = (SELECT team_id FROM team WHERE name ILIKE '%Ryley%Goldner%') ORDER BY position NULLS LAST
SELECT player.position FROMplayerJOINmatch_seasonONteamWHEREteam.team_id=757071
SELECT DISTINCT college.college_name FROM match_season JOIN player ON match_season.player = player.player JOIN team ON match_season.team = team.team_id JOIN college ON team.college = college.college_id WHERE team.name ILIKE '%Columbus%Crew%'
SELECT COUNT(DISTINCT player.player_id) AS num_play FROM player JOIN match_season ON player.team = match_season.team AND player.player_id = match_season.player WHERE match_season.college IS NOT NULL AND match_season.country = 756071
SELECT player.player, CAST(player.years_played AS FLOAT) AS years_played FROM player JOIN match_season ON player.team = match_season.team WHERE player.team IN (SELECT team_id FROM team WHERE name ILIKE '%Columbus%Crew%') 
SELECT player.player, CAST(player.years_played AS FLOAT) AS years_played FROM player JOIN team ON player.team = team.team_id WHERE team.name ILIKE '%Columbus%Crew%' ORDER BY years_played DESC NULLS LAST
SELECT c.country_name, COUNT(p.player) AS player_count FROM country c JOIN match_season ms ON c.country_id = ms.country JOIN player p ON ms.team = p.team GROUP BY c.country_name
SELECT country.country_name, COUNT(player) AS player_count FROM match_season JOIN player ON match_season.team = player.team JOIN team ON match_season.team = team.team_id JOIN country ON match_season.country = country.country_id GROUP BY country.country_name
SELECT DISTINCT country.country_name FROM match_season JOIN player ON match_season.player = player.player_id JOIN team ON match_season.team = team.team_id JOIN country ON match_season.country = country.country_id GROUP BY country.country_name HAVING COUNT(DISTINCT CASE WHEN position IN ('Forward', 'Def') THEN 1 END) >= 2
SELECT country.country_name FROM match_season JOIN player ON match_season.player = player.player JOIN team ON match_season.team = team.team_id JOIN country ON match_season.country = country.country_id WHERE position IN ('Forward', 'Defender') GROUP BY country.country_name
SELECT c.name AS climber_name, m.name AS mountain_name FROM climber c JOIN mountain m ON c.mountain_id = m.mountain_id
SELECT c.name AS climber_name, m.name AS mountain_name FROM climber c JOIN mountain m ON c.mountain_id = m.mountain_id
SELECT c.name AS climber_name, m.name AS mountain_name, to_char(to_timestamp(c.time), 'YYYY-MM-DD') AS climb_date FROM climber c JOIN mountain m ON c.mountain_id = m.mountain_id
SELECT c.name AS climber_name, m.name AS mountain_name, CAST(c.points AS FLOAT) / NULLIF(m.heigth, 0) AS points_per_height_ratio FROM climber c JOIN mountain m ON c.mountain_id = m.mountain_id
SELECT mountain.heigh FROM climber JOIN mountain ON climber.mountain_id = mountain.mountain_id ORDER BY climber.points DESC LIMIT 1
SELECT mountain.height FROM climber JOIN mountain ON climber.mountain_id = mountain.mountain_id ORDER BY climber.points DESC LIMIT 1
SELECT DISTINCT mountain.name FROM mountain JOIN climber ON mountain.mountain_id = climber.mountain_id WHERE climber.country ilike '%West%Germany%'
SELECT mountain.name FROM mountain JOIN climber ON mountain.mountain_id = climber.mountain_id WHERE climber.country = 'West Germany' GROUP BY mountain.name
SELECT climber.time FROM climber JOIN mountain ON climber.mountain_id = mountain.mountain_id WHERE mountain.country = 'congoa'
SELECT climber.time FROM climber JOIN mountain ON climber.mountain_id = mountain.mountain_id WHERE mountain.country = 'uganda'
SELECT p.name AS person_name, b.body_builder_id AS body_builder_id FROM people p JOIN body_builder b ON p.people_id = b.people_id
SELECT p.name FROM people AS p JOIN body_builder AS b ON p.people_id = b.people_id WHERE b.total > 300
SELECT p.name, MAX(b.total) AS total_weight FROM body_builder b JOIN people p ON b.people_id = p.people_id GROUP BY p.name ORDER BY total_weight DESC NULLS LAST LIMIT 1
SELECT p.birth_date, p.birth_place FROM people AS p JOIN body_builder AS b ON p.people_id = b.people_id WHERE b.total = (SELECT MAX(total) FROM body_builder)
SELECT body_builder.total AS total_score, people.name AS name FROM body_builder JOIN people ON body_builder.people_id = people.people_id WHERE body_builder.total < 315
SELECT AVG(body_builder.total) AS average_total_score FROM body_builder JOIN people ON body_builder.people_id = people.people_id WHERE people.height > 200
SELECT p.name, b.total FROM people AS p JOIN body_builder AS b ON p.people_id = b.people_id ORDER BY b.total DESC
SELECT people.weight FROM body_builder JOIN people ON body_builder.people_id = people.people_id WHERE (body_builder.snatch > 140 OR people.height > 200) 
SELECT SUM(body_builder.total) AS total_score FROM body_builder JOIN people ON body_builder.people_id = people.people_id WHERE people.birth_place ilike '%January%'
SELECT r.name, e.date FROM representative r JOIN election e ON r.representative_id = e.representative_id
SELECT representative.name FROM election JOIN representative ON election.representative_id = representative.representative_id WHERE election.votes > 10000
SELECT representative.name FROM election JOIN representative ON election.representative_id = representative.representative_id ORDER BY election.votes DESC
SELECT r.name, e.votes_percent * 100 AS vote_percentage FROM election e JOIN representative r ON e.representative_id = r.representative_id ORDER BY e.votes ASC LIMIT 1
SELECT representative.name, representative.lifespan FROM election JOIN representative ON election.representative_id = representative.representative_id ORDER BY election.vote_percent DESC
SELECT AVG(election.votes) AS average_votes FROM election JOIN representative ON election.representative_id = representative.representative_id WHERE representative.party ilike '%Republican%'
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
-1
SELECT game.season FROM game JOIN injury_accident ON game.id = injury_accident.game_id WHERE injury_accident.player ilike '%Walter%Samuel%' ORDER BY game.season NULLS LAST
SELECT g.id AS game_id, to_number(g.score, '9999') AS score, to_date(g.date, 'YYYY-MM-DD') AS game_date FROM game g JOIN injury_accident ia ON g.id = ia.game_id GROUP BY g.id, g.score, g.date HAVING COUNT(ia.id) >= 2
SELECT s.name, COUNT(ia.id) AS number_of_injury_accidents FROM stadium s JOIN game g ON s.id = g.stadium_id JOIN injury_accident ia ON g.id = ia.game_id GROUP BY s.name ORDER BY number_of_injury_accidents DESC LIMIT 1
SELECT s.id, s.name FROM stadium AS s JOIN game AS g ON s.id = g.stadium_id JOIN injury_accident AS ia ON g.id = ia.game_id GROUP BY s.id, s.name ORDER BY COUNT(ia.id) DESC LIMIT 1
SELECT game.season, stadium.name FROM game JOIN injury_accident ON game.id = injury_accident.game_id JOIN stadium ON game.stadium_id = stadium.id WHERE injury_accident.injury IN ('Foot injury', 'Knee problem')
SELECT COUNT(DISTINCT injury_accident.injury) AS number_of_injuries FROM game JOIN stadium ON game.stadium_id = stadium.id JOIN injury_accident ON game.id = injury_accident.game_id WHERE game.season > 2010
SELECT DISTINCT s.name FROM stadium s JOIN game g ON s.id = g.stadium_id JOIN injury_accident ia ON g.id = ia.game_id WHERE 'Walter Samuel' ILIKE ANY (SELECT player FROM injury_accident) AND 'Thiago Motta' ILIKE ANY (SELECTplayer FROM injury_accident)
SELECT s.name AS stadium_name, COUNT(g.id) AS total_games FROM stadium s JOIN game g ON s.id = g.stadium_id GROUP BY s.name
SELECT g.date, i.player, row_number() OVER (PARTITION BY g.season ORDER BY g.season DESC) AS row_num FROM injury_accident ia JOIN game g ON ia.game_id = g.id
SELECT c.name AS country_name, l.name AS league_name FROM country c JOIN league l ON c.id = l.country_id
SELECT COUNT(*) FROM league WHERE country_id = (SELECT id FROM country WHERE name ilike '%England%')
SELECT p.player_name FROM PlayerAttributes pa JOIN Player p ON pa.player_api_id = p.player_api_id WHERE pa.overall_rating > (SELECT AVG(overall_rating) FROM PlayerAttributes)
SELECT p.player_name FROM player_attributes pa JOIN player p ON pa.player_api_id = p.player_api_id ORDER BY dribbling DESC NULLS LAST
SELECT p.player_name FROM player p JOIN player_attributes w ON p.player_api_id = w.player_api_id WHERE w.preferred_foot = 'right' AND w.crossing > 90
SELECT p.player_name FROM player p JOIN player_attributes w ON p.player_api_id = w.player_api_id WHERE preferred_foot = 'Left' AND overall_rating BETWEEN 85 AND 90
SELECT player_attributes.player_name, player_attributes.overall_rating FROM player_attributes ORDER BY player_attributes.overall_rating DESC NULLS LAST LIMIT 3
SELECT p.player_name, to_date(p.birthday, 'YYYY-MM-DD') AS birthday FROM player_attributes pa JOIN player p ON pa.player_api_id = p.player_api_id ORDER BY potential DESC NULLS LAST LIMIT 5
SELECT m.name, p.location FROM member_attendance ma JOIN member m ON ma.member_id = m.member_id JOIN performance p ON ma.performance_id = p.performance_id
SELECT m.name, p.location FROM member_attendance ma JOIN member m ON ma.member_id = m.member_id JOIN performance p ON ma.performance_id = p.performance_id
SELECT performance.date FROM member_attendance JOIN member ON member_attendance.member_id = member.member_id JOIN performance ON member_attendance.performance_id = performance.performance_id WHERE member.role ilike '%Violin%' 
SELECT m.name, p.date FROM member_attendance ma JOIN member m ON ma.member_id = m.member_id JOIN performance p ON ma.performance_id = p.performance_id ORDER BY p.attendance DESC
SELECT DISTINCT c.title FROM course c JOIN prereq p ON c.course_id = p.prereq_id JOIN prereq pr ON p.prereq_id = pr.course_id
SELECT c.title AS course_title, COUNT(DISTINCT t.ID) AS num_instructors FROM course c JOIN teaches t ON c.course_id = t.course_id AND c.dept_name = t.i_id JOIN prerequisite p ON c.course_id = p.prereq_id GROUP BY c.title HAVING COUNT(DISTINCT t.ID) > 1
SELECT c.title, i.name AS instructor_name, d.dept_name AS department_name, COUNT(pr.course_id) AS num_prerequisites FROM course c JOIN teaches t ON c.course_id = t.course_id JOIN instructor i ON t.i_id = i.id JOIN department d ON i.dept_name = d.dept_name JOIN prereq p ON c.course_id = p.prereq_id GROUP BY c.title, i.name, d.dept_name HAVING COUNT(pr.course_id) > 1
SELECT course.title, instructor.salary, department.dept_name FROM course JOIN teaches ON course.course_id = teaches.course_id JOIN instructor ON teaches.ID = instructor.ID JOIN department ON instructor.i_id = department.i_id WHERE course.course_id IN (SELECT prereq.prereq_id FROM prerequisite) GROUP BY course.title, instructor.salary, department.dept_name HAVING COUNT(prereq.prereq_id) > 1
SELECT DISTINCT s.name FROM student AS s JOIN takes AS t ON s.id = t.id WHERE t.year IN (2009, 2010)
SELECT student.name FROM student JOIN takes ON student.id = takes.id WHERE takes.year IN (2009, 2010)
SELECT c.title AS course_name, i.name AS instructor_name FROM course c JOIN teaches t ON c.course_id = t.course_id AND c.year = t.year JOIN instructor i ON t.i_id = i.id WHERE c.year = 2008 ORDER BY c.title, i.name
SELECT c.title, i.name FROM course c JOIN teaches t ON c.course_id = t.course_id AND c.year = t.year JOIN instructor i ON t.i_id = i.id WHERE c.year = 2008 ORDER BY c.title ASC
SELECT instructor.name FROM instructor WHERE instructor.ID IN (SELECT advisor.i_id FROM advisor GROUP BY advisor.i_id HAVING COUNT(advisor.s_id) > 1)
SELECT instructor.name FROM instructor WHERE instructor.id IN (SELECT advisor.i_id FROM advisor GROUP BY advisor.i_id HAVING COUNT(advisor.s_id) > 1)
SELECT s.name FROM student AS s JOIN advisor AS a ON s.id = a.s_id GROUP BY s.name HAVING COUNT(a.i_id) > 1
SELECT student.name FROM student JOIN advisor ON student.id = advisor.s_id GROUP BY student.name HAVING COUNT(advisor.i_id) > 1
SELECT i.ID AS instructor_id FROM instructor i JOIN advisor a ON i.ID = a.i_id JOIN student s ON a.s_id = s.ID WHERE s.dept_name = 'History'
SELECT instructor.ID FROM instructor JOIN advisor ON instructor.ID = advisor.i_id JOIN student ON advisor.s_id = student.ID WHERE department.dept_name ilike '%History%'
SELECT instructor.name, instructor.salary FROM instructor JOIN advisor ON instructor.id = advisor.i_id JOIN student ON advisor.s_id = student.id WHERE department.dept_name ilike '%History%' ORDER BY instructor.name NULLS LAST
SELECT instructor.name, instructor.salary FROM instructor JOIN advisor ON instructor.id = advisor.i_id JOIN student ON advisor.s_id = student.id JOIN department ON student.dept_name = department.dept_name WHERE department.dept_name ILIKE '%History%' ORDER BY instructor.salary NULLS LAST
SELECT course.title FROM course JOIN teaches ON course.course_id = teaches.course_id JOIN section ON teaches.sec_id = section.sec_id WHERE section.building = 'Chandler' AND section.semester = 'Fall' AND to_number(section.year::text, '9999') = 2010
SELECT course.title FROM course JOIN teaches ON course.course_id = teaches.course_id JOIN instructor ON teaches.ID = instructor.ID JOIN section ON teaches.sec_id = section.sec_id WHERE instructor.name ILIKE '%Chandler%' AND section.semester ILIKE '%Fall%2010%'
SELECT instructor.name FROM instructor JOIN teaches ON instructor.id = teaches.id JOIN course ON teaches.course_id = course.course_id WHERE course.title ilike '%C%Programming%' AND teaches.year < 2015
SELECT instructor.name FROM instructor JOIN teaches ON instructor.id = teaches.id JOIN course ON teaches.course_id = course.course_id WHERE course.dept_name ilike '%C%Programming%'
SELECT instructor.name, instructor.salary FROM instructor JOIN advisor ON instructor.id = advisor.i_id JOIN student ON advisor.s_id = student.id WHERE student.dept_name = 'Math'
SELECT instructor.name, instructor.salary FROM instructor JOIN advisor ON instructor.id = advisor.i_id JOIN student ON advisor.s_id = student.id JOIN department ON student.dept_name = department.dept_name WHERE department.dept_name ILIKE '%Math%' ORDER BY instructor.salary NULLS LAST
SELECT i.name AS instructor_name, s.tot_cred AS student_total_cred FROM instructor i JOIN advisor a ON i.id = a.i_id JOIN student s ON a.s_id = s.id WHERE department.dept_name ILIKE '%Math%' ORDER BY i.name NULLS LAST, s.tot_cred DESC NULLS LAST
SELECT instructor.name AS instructor_name, SUM(student.tot_cred) AS total_credits FROM advisor JOIN instructor ON advisor.i_id = instructor.ID JOIN student ON advisor.s_id = student.ID WHERE department.dept_name ILIKE '%Math%' GROUP BY instructor.name ORDER BY total_credits DESC NULLS LAST
SELECT a.name AS advisor_name, s.name AS student_name, i.name AS instructor_name FROM advisor a JOIN student s ON a.s_id = s.id JOIN teaches t ON t.ID = a.i_id AND t.course_id IN (SELECT course_id FROM section WHERE building IN (SELECT building FROM classroom)) JOIN instructor i ON i.id = t.id ORDER BY s.tot_cred DESC LIMIT 1
SELECT i.name AS instructor_name, s.tot_cred AS student_total_credits, rank() OVER (PARTITION BY a.i_id ORDER BY s.tot_cred DESC) AS rank FROM advisor a JOIN instructor i ON a.i_id = i.ID JOIN student s ON a.s_id = s.ID
SELECT instructor.dept_name, COUNT(instructor.ID) AS total_count, AVG(instructor.salary) AS average_salary FROM instructor JOIN teaches ON instructor.id = teaches.i_id JOIN section ON teaches.sec_id = section.sec_id AND teaches.course_id = section.course_id AND teaches.semester = section.semester AND teaches.year = section.year JOIN department ON instructor.dept_name = department.dept_name WHERE department.budget = (SELECT MAX(budget) FROM department) GROUP BY instructor.dept_name
SELECT COUNT(instructor.name) AS number_of_instructors, AVG(instructor.salary) AS average_salary FROM instructor JOIN teaches ON instructor.id = teaches.i_id JOIN department ON instructor.dept_name = department.dept_name WHERE department.budget = (SELECT MAX(budget) FROM department)
SELECT c.title AS course_title, i.name AS instructor_name, to_char(to_timestamp(t.year::text,'YYYY'),'Month DD, YYYY') AS semester_and_year FROM teaches t JOIN course c ON t.course_id = c.course_id JOIN instructor i ON t.ID = i.ID JOIN section s ON t.sec_id = s.sec_id AND t.semester = s.semester AND t.year = s.year JOIN classroom cl ON s.building = cl.building WHERE to_number(cl.capacity::text,'999999999') = (SELECT MAX(to_number(capacity::text,'999999999')) FROM classroom)
SELECT course.title, course.credits FROM course JOIN teaches ON course.course_id = teaches.course_id JOIN section ON teaches.sec_id = section.sec_id AND teaches.semester = section.semester AND teaches.year = section.year JOIN classroom ON section.building = classroom.building AND section.room_number = classroom.room_number ORDER BY classroom.capacity DESC NULLS LAST LIMIT 1
SELECT d.dept_name, COUNT(s.ID) AS student_count, COUNT(i.ID) AS instructor_count FROM department d JOIN course c ON d.dept_name = c.dept_name JOIN teaches t ON c.course_id = t.course_id AND c.dept_name = t.dept_name JOIN instructor i ON t.i_id = i.ID JOIN student s ON s.s_id = i.s_id GROUP BY d.dept_name
SELECT d.dept_name, COUNT(DISTINCT s.ID) AS student_count, COUNT(DISTINCT i.ID) AS instructor_count FROM department d JOIN course c ON d.dept_name = c.dept_name JOIN teaches t ON c.course_id = t.course_id AND c.dept_name = t.dept_name JOIN instructor i ON t.i_id = i.ID JOIN student s ON s.s_id = d.dept_name GROUP BY d.dept_name
SELECT s.name FROM student AS s JOIN takes AS t ON s.id = t.id AND s.dept_name = t.course_id JOIN prerequisite p ON t.prereq_id = p.prereq_id WHERE p.course_id IN (SELECT course_id FROM course WHERE title ILIKE '%International%Finance%')
SELECT student.name FROM takes JOIN section ON takes.sec_id = section.sec_id JOIN course ON section.course_id = course.course_id JOIN prerequisite ON course.course_id = prerequisite.prereq_id WHERE course.title ilike '%International%Finance%' ORDER BY student.name NULLS LAST
SELECT student.name FROM student JOIN takes ON student.ID = takes.ID JOIN section ON takes.sec_id = section.sec_id AND takes.course_id = section.course_id AND takes.semester = section.semester AND takes.year = section.year JOIN course ON section.course_id = course.course_id WHERE course.dept_name ILIKE '%Statistics%'
SELECT student.name FROM student JOIN takes ON student.ID = takes.id WHERE course.dept_name ilike '%Statistics%' 
SELECT c.building, s.room_number, t.semester, t.year FROM section s JOIN teaches t ON s.course_id = t.course_id AND s.sec_id = t.sec_id JOIN course c ON c.course_id = t.course_id WHERE c.dept_name ILIKE '%Psychology%' ORDER BY c.title NULLS LAST
SELECT classroom.building, section.room_number, section.semester, section.year FROM course JOIN department ON course.dept_name = department.dept_name JOIN section ON course.course_id = section.course_id JOIN classroom ON section.building = classroom.building AND section.room_number = classroom.room_number WHERE department.dept_name ILIKE '%Psychology%' ORDER BY course.title NULLS LAST
SELECT instructor.name, course.course_id FROM instructor JOIN teaches ON instructor.ID = teaches.ID JOIN course ON teaches.course_id = course.course_id
SELECT instructor.name, course.course_id FROM instructor JOIN teaches ON instructor.ID = teaches.ID JOIN course ON teaches.course_id = course.course_id
SELECT instructor.name FROM instructor JOIN teaches ON instructor.ID = teaches.ID JOIN department ON instructor.dept_name = department.dept_name WHERE department.dept_name ilike '%Art%' GROUP BY instructor.name, teaches.course_id HAVING COUNT(teaches.course_id) > 0
SELECT instructor.name AS instructor_name, course.course_id AS course_id FROM instructor JOIN teaches ON instructor.ID = teaches.ID JOIN course ON teaches.course_id = course.course_id WHERE instructor.dept_name ILIKE '%Art%' ORDER BY instructor_name NULLS LAST
-1
-1
-1
-1
-1
SELECT Policies.Policy_Type_Code FROM Policies JOIN Customers ON Policies.customer_id = Customers.customer_id WHERE Customers.customer_details ilike '%Dayana%Robel%' ORDER BY Policies.Policy_Type_Code NULLS LAST
SELECT p.policy_type_code FROM customers c JOIN policies p ON c.customer_id = p.customer_id WHERE c.customer_details ilike '%Dayana%Robel%'
SELECT SUM(claims_headers.amount_claimed) AS total_amount_claimed FROM claims_headers ORDER BY claims_headers.created_date DESC LIMIT 1
SELECT SUM(claims_headers.amount_claimed) AS total_amount_claimed FROM claims_headers JOIN claims_documents ON claims_headers.claim_id = claims_documents.claim_id ORDER BY claims_documents.created_date DESC LIMIT 1
SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id JOIN claim_headers ON customers.customer_id = claim_headers.policy_id WHERE customers.customer_details IN (SELECT MAX(claim_headers.amount_claimed) AS max_amount_claimed FROM claim_headers GROUP BY customers.customer_id)
SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.policy_id JOIN claim_headers ON customers.customer_id = claim_headers.policy_id ORDER BY claim_headers.amount_claimed DESC LIMIT 1
SELECT customers.customer_details FROM customers JOIN claims_headers ON customers.customer_id = claims_headers.policy_id WHERE claims_headers.amount_claimed = (SELECT MIN(claims_headers.amount_claimed) FROM claims_headers)
SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id WHERE customers.customer_id IN (SELECT MIN(claims_headers.amount_claimed) AS min_amount_claimed, claims_headers.policy_id FROM claims_headers GROUP BY claims_headers.policy_id)
SELECT cp.claim_processing_stage_name, COUNT(*)::FLOAT / (SELECT COUNT(*) FROM claims_processing) AS proportion FROM claims_processing cp JOIN claims_headers ch ON cp.claim_id = ch.claim_header_id GROUP BY cp.claim_processing_stage_name ORDER BY proportion DESC NULLS LAST LIMIT 1
SELECT c.claim_status_name, COUNT(*) AS number_of_claims FROM claims c GROUP BY c.claim_status_name ORDER BY number_of_claims DESC NULLS LAST LIMIT 1
SELECT c.customer_details FROM customers c JOIN policies f ON c.customer_id = f.policy_id JOIN claims_processing cp ON f.policy_id = cp.claim_id JOIN staff s ON cp.staff_id = s.staff_id WHERE c.customer_details ilike '%deputy%' AND s.staff_details ilike '%deputy%'
SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id WHERE policies.policy_type_code ilike '%deputy%' 
SELECT c.customer_details FROM customers c JOIN policies p ON c.customer_id = p.customer_id WHERE p.policy_type_code IN ('deputy', 'uniformed')
SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id WHERE policies.policy_type_code IN ('Deputy', 'Uniform')
SELECT customers.customer_details FROM customers WHERE customers.customer_id IN (SELECT policies.customer_id FROM policies) GROUP BY customers.customer_details ORDER BY COUNT(customers.customer_id) DESC LIMIT 1
SELECT customers.customer_details FROM customers WHERE customers.customer_id IN (SELECT policies.customer_id FROM policies) GROUP BY customers.customer_id ORDER BY COUNT(policies.policy_id) DESC NULLS LAST
SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.policy_id ORDER BY customers.customer_details DESC LIMIT 1
SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id ORDER BY policies.start_date DESC LIMIT 1
SELECT a.account_id, a.account_name, to_number(a.other_account_details,'9999999999') AS other_account_details FROM accounts a JOIN customers c ON a.customer_id = c.customer_id WHERE c.customer_first_name ILIKE '%Meaghan%'
SELECT a.account_id, c.customer_first_name, a.date_account_opened, f.transaction_date, o.order_details FROM accounts AS a JOIN customers AS c ON a.customer_id = c.customer_id JOIN financial_transactions AS f ON a.account_id = f.account_id JOIN orders AS o ON a.customer_id = o.customer_id WHERE c.customer_first_name ILIKE '%Meaghan%' ORDER BY a.account_id NULLS LAST
SELECT a.account_name, to_number(f.transaction_amount,'999999999D99') AS transaction_amount FROM accounts a JOIN financial_transactions f ON a.account_id = f.account_id WHERE other_account_details ilike '%Meaghan%Keeling%'
SELECT a.account_name, c.customer_first_name, c.customer_last_name, f.transaction_date, f.transaction_amount FROM accounts AS a JOIN customers AS c ON a.customer_id = c.customer_id JOIN financial_transactions AS f ON a.account_id = f.account_id WHERE c.customer_first_name ILIKE '%Meaghan%' AND c.customer_last_name ILIKE '%Keeling%'
SELECT customers.customer_first_name, customers.customer_last_name FROM customers JOIN accounts ON customers.customer_id = accounts.customer_id WHERE accounts.account_name = '900'
SELECT customers.customer_first_name, customers.customer_last_name FROM customers JOIN accounts ON customers.customer_id = accounts.customer_id WHERE accounts.account_name = '900'
SELECT customers.customer_first_name, customers.customer_last_name, customers.phone_number FROM customers WHERE customers.customer_id IN (SELECT accounts.customer_id FROM accounts)
SELECT customers.customer_first_name, customers.customer_last_name, customers.phone_number FROM customers WHERE customers.customer_id IN (SELECT accounts.customer_id FROM accounts)
SELECT customers.customer_first_name, customers.customer_last_name, COUNT(accounts.account_id) AS account_count FROM customers JOIN orders ON customers.customer_id = orders.customer_id JOIN accounts ON customers.customer_id = accounts.customer_id GROUP BY customers.customer_first_name, customers.customer_last_name ORDER BY account_count DESC NULLS LAST LIMIT 1
SELECT customers.customer_id, customers.customer_first_name, customers.customer_last_name FROM customers WHERE customers.customer_id IN (SELECT accounts.customer_id FROM accounts GROUP BY accounts.customer_id HAVING COUNT(accounts.account_id) > ALLerow.customer_id)
SELECT c.customer_id, c.customer_first_name, c.customer_last_name, COUNT(a.account_id) AS account_count FROM customers c JOIN orders o ON c.customer_id = o.customer_id JOIN accounts a ON c.customer_id = a.customer_id GROUP BY c.customer_id, c.customer_first_name, c.customer_last_name
SELECT c.customer_first_name, c.customer_last_name, a.account_id, COUNT(DISTINCT f.transaction_id) AS number_of_transactions FROM customers c JOIN accounts a ON c.customer_id = a.customer_id JOIN financial_transactions f ON a.account_id = f.account_id GROUP BY c.customer_first_name, c.customer_last_name, a.account_id
SELECT c.customer_first_name, c.customer_last_name, a.account_id FROM customers AS c JOIN accounts AS a ON c.customer_id = a.customer_id GROUP BY c.customer_first_name, c.customer_last_name, a.account_id HAVING COUNT(a.account_id) >= 2
SELECT c.customer_first_name, CAST(COUNT(a.account_id) AS FLOAT) / NULLIF((SELECT COUNT(DISTINCT account_id) FROM accounts), 0) AS ratio_of_accounts_to_customers FROM customers c JOIN accounts a ON c.customer_id = a.customer_id GROUP BY c.customer_first_name HAVING COUNT(a.account_id) >= 2
