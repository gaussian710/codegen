SELECT DISTINCT EXTRACT(YEAR FROM Creation) AS YEAR_OF_CREATION FROM department JOIN head ON management.head_id = head.head_id WHERE head.born_state = 'alabama'
SELECT d.name, m.num_employees FROM department d JOIN management m ON d.department_id = m.department_id WHERE m.temporary_acting = 'Yes'
SELECT CAST(head.age AS FLOAT) AS age FROM head JOIN management ON head.head_id = management.head_id WHERE management.temporary_acting ILIKE '%yes%' GROUP BY age
SELECT head.born_state FROM head JOIN management ON head.head_id = management.head_id WHERE management.department_id IN (SELECT department_id FROM department WHERE name ILIKE '%Treasury%') AND management.department_id IN (SELECT department_id FROM department WHERE name ILIKE '%Homeland security%')
SELECT d.department_id, d.name, COUNT(h.head_id) AS num_heads FROM department d JOIN management m ON d.department_id = m.department_id JOIN head h ON m.head_id = h.head_id GROUP BY d.department_id, d.name HAVING COUNT(h.head_id) > 1
SELECT farm_competition.year AS competition_year, city.official_name AS host_city FROM farm_competition JOIN city ON farm_competition.host_city_id = city.city_id
SELECT farm_competition.year AS competition_year, city.official_name AS host_city FROM farm_competition JOIN farm ON farm_competition.competition_id = farm.farm_id JOIN city ON farm_competition.host_city_id = city.city_id
SELECT c.official_name FROM city c JOIN farm_competition fc ON c.city_id = fc.host_city_id GROUP BY c.official_name HAVING COUNT(fc.competition_id) > 1
SELECT c.official_name FROM city c JOIN farm_competition fc ON c.city_id = fc.host_city_id GROUP BY c.official_name HAVING COUNT(fc.competition_id) > 1
SELECT c.status FROM city c JOIN farm_competition fc ON c.city_id = fc.host_city_id GROUP BY c.status HAVING COUNT(fc.competition_id) > ALLERATE(SELECT MAX(COUNT(competition_id)) FROM farm_competition)
SELECT c.status FROM city c JOIN farm_competition fc ON c.city_id = fc.host_city_id GROUP BY c.status, c.city_id HAVING COUNT(fc.competition_id) > ALLERATE.city.city_id
SELECT farm_competition.theme FROM farm_competition JOIN city ON farm_competition.host_city_id = city.city_id WHERE city.population > 1000
SELECT competition_record.competition_id, farm_competition.theme FROM competition_record JOIN farm_competition ON competition_record.competition_id = farm_competition.competition_id JOIN city ON farm_competition.host_city_id = city.city_id WHERE city.population > 1000
SELECT COUNT(student_id) AS total_students, course_name FROM student_course_registrations JOIN courses ON registrations.course_id = courses.course_id GROUP BY courses.course_name ORDER BY total_students DESC NULLS LAST LIMIT 1
SELECT c.course_name, COUNT(sc.student_id) AS number_of_students FROM student_course_registrations scr JOIN courses c ON scr.course_id = c.course_id GROUP BY c.course_name ORDER BY number_of_students DESC NULLS LAST LIMIT 1
SELECT p.first_name, p.last_name FROM people p JOIN people_addresses pa ON p.person_id = pa.person_id
SELECT p.first_name, p.last_name FROM people p JOIN people_addresses pa ON p.person_id = pa.person_id
SELECT s.student_id, c.course_name FROM student_course_registrations s JOIN courses c ON s.course_id = c.course_id
SELECT s.student_id, s.student_details, c.course_name, p.first_name, p.last_name FROM Student_Course_Registrations sr JOIN Students s ON sr.student_id = s.student_id JOIN Courses c ON sr.course_id = c.course_id JOIN People p ON s.person_id = p.person_id ORDER BY sr.registration_date DESC LIMIT 1
SELECT s.student_id, p.first_name, p.last_name, c.course_name, a.address_1, a.address_2, a.city, a.state_province_county, a.country FROM student_course_registrations s JOIN people p ON s.person_id = p.person_id JOIN courses c ON s.course_id = c.course_id JOIN addresses a ON s.address_id = a.address_id ORDER BY registration_date DESC
SELECT COUNT(DISTINCT student_id) AS number_of_students FROM student_course_registrations WHERE course_id IN (SELECT course_id FROM courses WHERE course_name ILIKE '%Englishish%')
SELECT COUNT(DISTINCT student_id) AS number_of_students FROM student_course_registrations scr JOIN courses c ON sr.course_id = c.course_id WHERE c.course_name ilike '%English%'
SELECT COUNT(DISTINCT course_id) AS number_of_courses FROM Student_Course_registrations WHERE student_id = 171
SELECT COUNT(DISTINCT course_id) AS number_of_courses FROM Student_Course_registrations sc JOIN Student_Course_attendance sa ON sc.student_id = sa.student_id AND sc.course_id = sa.course_id WHERE sc.student_id = 171
SELECT Candidates.candidate_id FROM Candidates WHERE Candidates.email_address = 'stanley.monahan@example.org'
SELECT Candidates.candidate_id FROM Candidates WHERE Candidates.email_address = 'stanley.monahan@example.org'
SELECT s.student_id, COUNT(sc.course_id) AS course_count FROM Student_Course_registrations sc JOIN Students s ON s.student_id = sc.student_id GROUP BY s.student_id ORDER BY course_count DESC LIMIT 1
SELECT student_id, COUNT(course_id) AS num_courses FROM student_course_registrations GROUP BY student_id), max_registered_student AS (SELECT MAX(num_courses) AS max_num_courses, MIN(student_id) AS min_student_id FROM course_registrations) SELECT p.first_name, p.last_name, s.student_details FROM people p JOIN course_registrations cr ON p.person_id = cr.student_id JOIN max_registered_student mrs ON cr.num_courses = mrs.max_num_courses
SELECT s.student_id, COUNT(sc.course_id) AS course_count FROM student_course_registrations sr JOIN students s ON sr.student_id = s.student_id JOIN student_course_registrations sc ON sr.student_id = sc.student_id AND sr.course_id = sc.course_id GROUP BY s.student_id
SELECT s.student_id, COUNT(sc.course_id) AS number_of_courses FROM Student_Course_Registrations sc JOIN Students s ON s.student_id = sc.student_id GROUP BY s.student_id
SELECT c.course_name, COUNT(sc.student_id) AS total_students FROM student_course_registrations scr JOIN courses c ON scr.course_id = c.course_id GROUP BY c.course_name
SELECT c.course_id, COUNT(sc.student_id) AS number_of_students, c.course_name FROM student_course_registrations scr JOIN courses c ON scr.course_id = c.course_id GROUP BY c.course_id, c.course_name
SELECT People.cell_mobile_number FROM People JOIN Student_Course_registrations ON People.person_id = student_course_registrations.student_id JOIN Candidate_Assessments ON student_course_registrations.student_id = candidate_assessments.candidate_id WHERE candidate_assessments.asessment_outcome_code ilike '%Fail%' 
SELECT p.cell_mobile_number FROM people p JOIN student_course_registrations scr ON p.person_id = scr.student_id JOIN candidate_assessments ca ON scr.student_id = ca.candidate_id WHERE ca.asessment_outcome_code ilike '%Fail%' 
SELECT DISTINCT Addresses.city FROM People_Addresses JOIN Addresses ON People_addresses.address_id = Addresses.address_id
SELECT DISTINCT Addresses.city FROM People_Addresses JOIN Addresses ON People_addresses.address_id = Addresses.address_id
SELECT DISTINCT Addresses.city FROM People_Addresses JOIN Addresses ON People_addresses.address_id = Addresses.address_id WHERE People_addresses.person_id IN (SELECT Student_Course_registrations.student_id FROM Student_Course_registrations)
SELECT DISTINCT a.city FROM addresses a JOIN people_addresses pa ON a.address_id = pa.address_id JOIN student_course_registrations scr ON pa.person_id = scr.student_id
SELECT s.student_id FROM student_course_registrations s JOIN courses c ON s.course_id = c.course_id ORDER BY s.registration_date NULLS LAST
SELECT s.student_id FROM Student_Course_Registrations s JOIN People p ON s.person_id = p.person_id ORDER BY s.registration_date NULLS LAST
SELECT s.student_id, c.course_name, sa.date_of_attendance FROM Student_Course_registrations AS sr JOIN Students AS s ON sr.student_id = s.student_id JOIN Courses AS c ON sr.course_id = c.course_id JOIN Student_Course_attendance AS sa ON sr.student_id = sa.student_id AND sr.course_id = sa.course_id WHERE c.course_name ilike '%statistics%' ORDER BY sa.date_of_attendance NULLS LAST
SELECT s.student_id FROM student_course_registrations s JOIN course_departments cd ON s.course_id = cd.course_id WHERE cd.department_name ilike '%statistics%' ORDER BY s.registration_date NULLS LAST
SELECT DISTINCT station.name FROM station JOIN status ON station.id = status.station_id WHERE status.bikes_available >= 7
SELECT d.name AS dock_station_name, h.name AS station_name FROM dock_stations d JOIN status s ON d.id = s.dock_id JOIN stations h ON s.station_id = h.id WHERE s.bikes_available >= 7
SELECT a.name AS station_name, b.latitude, b.longitude, c.city FROM station a JOIN (SELECT start_station_id, lat, long, city FROM station) b ON a.id = b.start_station_id JOIN (SELECT MIN(duration) AS min_duration, start_station_id FROM ride GROUP BY start_station_id) c ON b.id = c.start_station_id
SELECT a.latitude, a.longitude, a.city FROM station AS a JOIN (SELECT r.start_station_id, MIN(r.duration) AS min_duration FROM ride AS r GROUP BY r.start_station_id) AS b ON a.id = b.start_station_id
SELECT h.name, h.id FROM station h JOIN status s ON h.id = s.station_id WHERE to_number(s.bikes_available::text,'9999') > 14 AND to_date(h.installation_date::text,'YYYYMMDD') = '2020-12-31'
SELECT a.name AS station_name, to_number(b.bikes_available,'9999') AS bikes_available, c.dock_count FROM station a JOIN status b ON a.id = b.station_id JOIN weather c ON to_date(c.zip_code::text,'YYYYMMDD') BETWEEN to_date('20171201','YYYYMMDD') AND to_date('20171231','YYYYMMDD') WHERE b.bikes_available > 14 OR c.installation_date IS NOT NULL
SELECT r.id AS ride_id, h.name AS station_name, s.start_date, s.end_date, w.mean_temperature_f
SELECT r.id FROM ride r JOIN weather w ON r.zip_code = w.zip_code WHERE w.mean_temperature_f > 60 GROUP BY r.zip_code
SELECT r.id AS ride_id, s.name AS start_station_name, e.name AS end_station_name, to_date(r.start_date, 'YYYY-MM-DD') AS start_date, to_date(r.end_date, 'YYYY-MM-DD') AS end_date, to_date(s.installation_date, 'YYYY-MM-DD') AS start_station_installation_date, to_date(e.installation_date, 'YYYY-MM-DD') AS end_station_installation_date FROM ride r JOIN station s ON r.start_station_id = s.id JOIN station e ON r.end_station_id = e.id
SELECT r.id AS ride_id, s.name AS station_name, to_date(s.installation_date::text, 'YYYY-MM-DD') AS installation_date FROM status s JOIN ride r ON s.station_id = r.start_station_id
SELECT r.id, s.name AS start_station_name FROM ride r JOIN station h ON h.id = r.start_station_id
SELECT r.id AS ride_id, h.name AS station_name, h.dock_count AS highest_dock_count FROM ride r JOIN station h ON r.start_station_id = h.id ORDER BY highest_dock_count DESC NULLS LAST LIMIT 1
SELECT COUNT(*) FROM trip r WHERE r.end_station_name not ilike '%San%Francisco%' 
SELECT COUNT(*) AS total_trips FROM trip WHERE end_station_name not ilike '%San%Francisco%' 
SELECT h.name FROM station h JOIN status s ON h.id = s.station_id WHERE h.city != 'San Jose' AND AVG(s.bikes_available) > 10
SELECT station.name FROM station JOIN status ON station.id = status.station_id WHERE status.bikes_available > 10 AND city not ilike '%San%Jose%' 
SELECT h.name, h.longitude, AVG(r.duration) AS average_duration FROM station h JOIN status s ON h.id = s.station_id JOIN ride r ON s.id = r.start_station_id GROUP BY h.name, h.longitude
SELECT h.id, h.name, h.lat, h.lon, AVG(r.duration) AS average_duration FROM station h JOIN status s ON h.id = s.station_id JOIN ride r ON s.id = r.start_station_id GROUP BY h.id, h.name, h.lat, h.lon
SELECT a.name AS start_station_name, b.name AS end_station_name, c.latitude, d.duration AS MIN(duration) FROM ride a JOIN status b ON a.station_id = b.station_id JOIN station c ON b.end_station_id = c.id JOIN (SELECT start_station_id, MIN(duration) AS duration FROM ride GROUP BY start_station_id) d ON a.station_id = d.start_station_id GROUP BY start_station_name, end_station_name, latitude
SELECT r.start_station_id, h.name, h.latitude, MIN(r.duration) AS min_duration FROM ride r JOIN station h ON r.end_station_id = h.id GROUP BY r.start_station_id, h.name, h.latitude
SELECT station.id, station.name FROM station JOIN status ON station.id = status.station_id WHERE status.bikes_available > 12
SELECT station.id, station.name FROM station JOIN status ON station.id = status.station_id WHERE status.bikes_available > 12
SELECT COUNT(*) FROM ride WHERE start_station_name ilike '%Mountain%view%' AND end_station_name ilike '%palma%alto%'
SELECT COUNT(*) FROM ride r JOIN station s1 ON r.start_station_id = s1.id JOIN status st ON s1.id = st.station_id JOIN weather w ON w.zip_code = s1.zip_code JOIN station s2 ON r.end_station_id = s2.id WHERE s1.name ilike '%Mountain View%' AND s2.name ilike '%Palo Alto%' AND st.time ilike '%started%' AND w.precipitation_inches > 0
SELECT AVG(lat), AVG(lon) FROM trip
SELECT AVG(r.start_lat), AVG(r.start_long) FROM ride r
SELECT book.title, publication.publication_date FROM book JOIN publication ON book.book_id = publication.book_id
SELECT publication.publisher FROM publication JOIN book ON publication.book_id = book.book_id WHERE publication.price > 4000000
SELECT book.title FROM publication JOIN book ON publication.book_id = book.book_id ORDER BY publication.price DESC
SELECT a.name AS actor_name, m.name AS musical_name FROM actor a JOIN musical m ON a.musical_id = m.musical_id
SELECT a.name AS actor_name, m.name AS musical_name FROM actor a JOIN musical m ON a.musical_id = m.musical_id
SELECT a.name FROM actor a JOIN musical m ON a.musical_id = m.musical_id WHERE m.name ilike '%The%Phantom%of%the%Opera%' 
SELECT a.name FROM actor a JOIN musical m ON a.musical_id = m.musical_id WHERE m.name ILIKE '%The%Phantom%of%the%Opera%' 
SELECT a.name, to_number(m.year,'9999') AS year FROM actor a JOIN musical m ON a.musical_id = m.musical_id ORDER BY year DESC
SELECT a.name, to_number(m.year,'9999') AS year FROM actor a JOIN musical m ON a.musical_id = m.musical_id ORDER BY year DESC
SELECT m.name, COUNT(a.actor_id) AS actor_count FROM musical m JOIN actor a ON m.musical_id = a.musical_id GROUP BY m.name
SELECT a.name AS actor_name, m.name AS musical_name, COUNT(*) AS number_of_appearances FROM actor a JOIN musical_actor ma ON a.actor_id = ma.actor_id JOIN musical m ON ma.musical_id = m.musical_id GROUP BY a.name, m.name
SELECT m.name FROM musical AS m JOIN actor AS a ON m.musical_id = a.actor_id GROUP BY m.name HAVING COUNT(a.actor_id) >= 3
SELECT m.name FROM musical AS m JOIN actor AS a ON m.musical_id = a.musical_id GROUP BY m.name HAVING COUNT(a.actor_id) >= 3
SELECT u.name FROM user_profiles u WHERE u.followers > (SELECT follows.f1 FROM follows WHERE follows.f2 = 757071)
SELECT user_profiles.name, user_profiles.email FROM follows JOIN user_profiles ON follows.f1 = user_profiles.uid AND follows.f2 = user_profiles.uid GROUP BY user_profiles.name, user_profiles.email HAVING COUNT(follows.f1) > 1
SELECT user_profiles.name FROM follows JOIN user_profiles ON follows.f1 = user_profiles.uid AND follows.f2 = user_profiles.uid GROUP BY user_profiles.name HAVING COUNT(follows.f1) > 1
SELECT u.uid FROM user_profiles u JOIN follows f ON u.uid = f.f1 OR u.uid = f.f2 WHERE name ilike '%Mary%' AND name ilike '%Susan%'
SELECT u.uid FROM user_profiles u JOIN follows f ON u.uid = f.f1 OR u.uid = f.f2 WHERE (u.name ilike '%Mary%' OR u.name ilike '%Susan%') AND exists(SELECT 1 FROM follows WHERE uid = u.uid)
SELECT u.name, COUNT(t.id) AS total_tweets FROM user_profiles u JOIN tweets t ON u.uid = t.uid GROUP BY u.name
SELECT u.name, p.partitionid FROM user_profiles u JOIN tweets t ON u.uid = t.uid GROUP BY u.name, p.partitionid HAVING COUNT(t.id) < 2
SELECT u.name, COUNT(t.id) AS total_tweets FROM user_profiles u JOIN tweets t ON u.uid = t.uid GROUP BY u.name HAVING COUNT(t.id) > 1
SELECT Catalogs.catalog_name, Catalogs.date_of_publication FROM Catalogs JOIN Catalog_Structure ON Catalogs.catalog_id = Catalog_Structure.catalog_id WHERE Catalog_Structure.catalog_level_number > 5
SELECT Catalogs.catalog_name, Catalogs.date_of_publication FROM Catalogs JOIN Catalog_Structure ON Catalogs.catalog_id = Catalog_Structure.catalog_id WHERE Catalog_Structure.catalog_level_number > 5
SELECT Catalog_Contents.catalog_entry_name FROM Catalog_Contents GROUP BY Catalog_Contents.catalog_entry_name HAVING COUNT(Catalog_Contents.catalog_entry_id) > (SELECT COUNT(catalog_entry_id) FROM Catalog_Contents WHERE catalog_entry_id NOT IN (SELECT catalog_entry_id FROM Catalog_Contents_Additional_Attributes)) ORDER BY COUNT(Catalog_Contents.catalog_entry_id) DESC NULLS LAST LIMIT 1
SELECT cc.catalog_entry_name, COUNT(cca.attribute_id) AS number_of_attributes FROM catalog_contents cc JOIN catalog_contents_additional_attributes cca ON cc.catalog_entry_id = cca.catalog_entry_id GROUP BY cc.catalog_entry_name ORDER BY number_of_attributes DESC NULLS LAST LIMIT 1
SELECT Catalogs.catalog_level_name FROM Catalogs JOIN Catalog_Structure ON Catalogs.catalog_id = Catalog_Structure.catalog_id JOIN Catalog_Contents ON Catalog_Structure.catalog_id = Catalog_Contents.catalog_level_number WHERE Catalog_Contents.price_in_dollars = (SELECT MIN(Catalog_Contents.price_in_dollars) FROM Catalog_Contents)
SELECT Catalog_Structure.catalog_level_name FROM Catalog_Structure JOIN Catalog_Contents ON Catalog_Structure.catalog_id = Catalog_Contents.catalog_level_number WHERE Catalog_Contents.price_in_dollars = (SELECT MIN(Catalog_Contents.price_in_dollars) FROM Catalog_Contents)
SELECT Catalog_Contents.catalog_entry_name FROM Catalog_Contents JOIN Catalog_Structure ON Catalog_Contents.catalog_level_number = Catalog_Structure.catalog_level_number WHERE Catalog_Structure.catalog_level_number = 8
SELECT Catalog_Contents.catalog_entry_name FROM Catalog_Contents JOIN Catalog_Structure ON Catalog_Contents.catalog_level_number = Catalog_Structure.catalog_level_number WHERE Catalog_Structure.catalog_level_number = 8
SELECT Attribute_Definitions.attribute_id, Attribute_Definitions.attribute_name FROM Attribute_Definitions WHERE "Attribute Value" = '0'
SELECT Attribute_Definitions.attribute_name, Attribute_Definitions.attribute_id FROM Attribute_Definitions WHERE Attribute_Definitions.attribute_value = '0'
SELECT a.name FROM flight f JOIN aircraft a ON f.aid = a.aid WHERE f.flno = 99
SELECT a.name FROM flight f JOIN aircraft a ON f.aid = a.aid WHERE f.flno = 99
SELECT flight.flno FROM flight JOIN aircraft ON flight.aid = aircraft.aid WHERE aircraft.name ilike '%Airbus%A340-300%'
SELECT flight.flno FROM flight JOIN aircraft ON flight.aid = aircraft.aid WHERE aircraft.name ilike '%Airbus%A340-300%'
SELECT a.name, COUNT(f.flno) AS flight_count FROM aircraft a JOIN flight f ON a.aid = f.aid GROUP BY a.name
SELECT a.name AS aircraft_name, COUNT(f.flno) AS total_flights FROM aircraft AS a JOIN flight AS f ON a.aid = f.aid GROUP BY a.name
SELECT a.name FROM flight f JOIN aircraft a ON f.aid = a.aid GROUP BY a.name HAVING COUNT(f.flno) >= 2
SELECT a.name FROM flight f JOIN aircraft a ON f.aid = a.aid GROUP BY a.name HAVING COUNT(f.flno) >= 2
SELECT a.name FROM aircraft a JOIN employee e ON a.aid = e.aid JOIN certificate c ON e.eid = c.eid WHERE e.name ILIKE '%John%William%'
SELECT a.name FROM aircraft a JOIN employee e ON a.aid = e.aid JOIN certificate c ON e.eid = c.eid WHERE e.name ILIKE '%John%William%' 
SELECT e.name FROM employee e JOIN certificate c ON e.eid = c.eid JOIN aircraft a ON c.aid = a.aid WHERE a.name ilike '%Boeing%737-800%'
SELECT e.name FROM employee e JOIN certificate c ON e.eid = c.eid JOIN aircraft a ON c.aid = a.aid WHERE a.name ilike '%Boeing%737-800%'
SELECT e.name FROM employee e JOIN certificate c ON e.eid = c.eid JOIN aircraft a ON c.aid = a.aid WHERE a.name ILIKE '%Boeing%737-800%' AND a.name ILIKE '%Airbus%A340-300%'
SELECT e.name FROM employee e JOIN certificate c ON e.eid = c.eid JOIN aircraft a ON c.aid = a.aid WHERE a.name ILIKE '%Boeing%737-800%' AND a.name ILIKE '%Airbus%A340-300%'
SELECT a.name FROM aircraft AS a JOIN (SELECT c.aid FROM certificate AS c GROUP BY c.aid) AS b ON a.aid = b.aid
SELECT a.name FROM aircraft AS a JOIN (SELECT c.aid FROM certificate AS c GROUP BY c.aid HAVING COUNT(c.eid) = MIN(COUNT(eid))) AS subquery ON a.aid = subquery.aid
SELECT a.name, to_char(a.distance, '99999D9') AS distance FROM aircraft a JOIN (SELECT c.aid FROM certificate c GROUP BY c.aid HAVING COUNT(c.eid) >= 5) b ON a.aid = b.aid WHERE a.distance > 5000
SELECT a.name, to_char(a.distance::FLOAT, '99999D9') AS distance FROM aircraft a JOIN certificate c ON a.aid = c.aid GROUP BY a.name, a.distance HAVING COUNT(c.eid) >= 5 AND distance > 5000
SELECT e.eid, e.name, s.salary FROM employee e JOIN certificate c ON e.eid = c.eid), aircraft_count AS (SELECT ec.eid, COUNT(ca.aid) AS acount FROM employee_certificate ec JOIN aircraft a ON ec.aid = a.aid GROUP BY ec.eid) SELECT ec.name, ec.salary, ac.acount FROM employee_certificate ec JOIN aircraft_count ac ON ec.eid = ac.eid ORDER BY ac.acount DESC NULLS LAST LIMIT 1
SELECT e.eid, COUNT(f.flno) AS total_flights FROM flight f JOIN aircraft a ON f.aid = a.aid JOIN certificate c ON c.aid = a.aid JOIN employee e ON e.eid = c.eid GROUP BY e.eid), max_total_flights AS (SELECT MAX(total_flights) AS max_total_flights FROM total_flights) SELECT t.eid, t.name, m.max_total_flights/t.total_flights AS ratio_of_max_total_flights FROM total_flights t JOIN employee e ON e.eid = t.eid
SELECT e.salary, e.name FROM employee e JOIN certificate c ON e.eid = c.eid JOIN aircraft a ON c.aid = a.aid WHERE a.distance > 5000 ORDER BY COUNT(c.aid) DESC LIMIT 1
SELECT e.name, rank() OVER (PARTITION BY c.aid ORDER BY COUNT(c.eid) DESC NULLS LAST) AS rank FROM employee e JOIN certificate c ON e.eid = c.eid WHERE EXISTS (SELECT 1 FROM flight f WHERE f.aid = c.aid AND price > 5000) GROUP BY e.name, c.aid HAVING COUNT(c.eid) > 1
SELECT COUNT(DISTINCT Student.StuID) AS total_students FROM Student JOIN Has_Allergy ON Student.StuID = Has_Allergy.StuID JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy WHERE Student.Sex = 'Female' AND (Allergy_type.allergytype ilike '%milk%' OR allergy_type.allergytype ilike '%egg%')
SELECT COUNT(DISTINCT Student.StuID) AS total_students FROM Student JOIN Has_Allergy ON Student.StuID = Has_Allergy.StuID JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy WHERE Student.Sex = 'Female' AND (Allergy_type.allergytype ilike '%milk%' OR allergy_type.allergytype ilike '%eggs%')
SELECT COUNT(DISTINCT Student.StuID) AS number_of_students FROM Has_Allergy JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy JOIN Student ON Has_Allergy.StuID = Student.StuID WHERE Allergy_type.allergy_type ilike '%food%'
SELECT COUNT(DISTINCT Student.StuID) AS total_students FROM Has_Allergy JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy JOIN Student ON Has_Allergy.StuID = Student.StuID WHERE Allergy_Type.AllergyType ILIKE '%food%related%' 
SELECT allergy_type.allergy_type, COUNT(student.stuid) AS num_students FROM allergy_type JOIN has_allergy ON allergy_type.allergy = has_allergy.allergy JOIN student ON has_allergy.stuid = student.stuid GROUP BY allergy_type.allergy_type
SELECT allergy_type.allergy_type, COUNT(student.stuid) AS total_students FROM allergy_type JOIN has_allergy ON allergy_type.allergy = has_allergy.allergy JOIN student ON has_allergy.stuid = student.stuid GROUP BY allergy_type.allergy_type
SELECT allergy_type.allergy_type FROM allergy_type JOIN has_allergy ON allergy_type.allergy = has_allergy.allergy JOIN student ON has_allergy.stuid = student.stuid WHERE student."fname" ILIKE '%Lisa%' ORDER BY allergy_type.allergy NULLS LAST
SELECT allergy_type.allergy_type FROM allergy_type JOIN has_allergy ON allergy_type.allergy = has_allergy.allergy JOIN student ON has_allergy.stuid = student.stuid WHERE student.lname ilike '%Lisa%' ORDER BY allergy_type.allergy_type NULLS LAST
SELECT s.fname, s.city_code FROM student AS s JOIN has_allergy AS h ON s.stuid = h.stuID JOIN allergy_type AS a ON h.allergy = a.allergy WHERE a.allergytype IN ('milk', 'cat')
SELECT Student.Fname, Student.city_code FROM Has_Allergy JOIN Allergy_Type ON Has_Allergy.Allergy = Allergy_Type.Allergy JOIN Student ON Has_allery.StuID = Student.StuID WHERE (Allergy_type.allergytype ILIKE '%milk%' OR allergy_type.allergytype ilike '%cat%') GROUP BY Student.Fname, Student.city_code
SELECT c.first_name, c.last_name FROM customers c JOIN invoices i ON c.id = i.customer_id ORDER BY i.invoice_date DESC NULLS LAST LIMIT 5
SELECT c.first_name, c.last_name FROM customers c JOIN invoices i ON c.id = i.customer_id ORDER BY i.invoice_date DESC NULLS LAST LIMIT 5
SELECT c.first_name, c.last_name, COUNT(i.id) AS total_orders FROM customers c JOIN invoices i ON c.id = i.customer_id GROUP BY c.first_name, c.last_name ORDER BY total_orders DESC NULLS LAST LIMIT 10
SELECT c.first_name, c.last_name, COUNT(i.invoice_id) AS num_orders FROM customers c JOIN invoices i ON c.id = i.customer_id GROUP BY c.first_name, c.last_name), total_orders AS (SELECT co.first_name, co.last_name, COUNT(il.track_id) AS num_tracks FROM customer_orders co JOIN invoice_lines il ON co.first_name = il.customer_id GROUP BY co.first_name, co.last_name), top_customers AS (SELECT * FROM total_orders ORDER BY num_tracks DESC NULLS LAST LIMIT 10) SELECT tc.* FROM total_orders tc JOIN customer_orders co ON tc.first_name = co.first_name AND tc.last_name = co.last_name
SELECT c.first_name, c.last_name, SUM(i.total) AS total_sales FROM customers c JOIN invoices i ON c.id = i.customer_id GROUP BY c.first_name, c.last_name ORDER BY total_sales DESC NULLS LAST LIMIT 10
SELECT c.first_name, c.last_name, SUM(i.total) AS total_sales FROM customers c JOIN invoices i ON c.id = i.customer_id GROUP BY c.first_name, c.last_name ORDER BY total_sales DESC NULLS LAST LIMIT 10
SELECT g.name, COUNT(t.id) AS track_count FROM genres g JOIN tracks t ON g.id = t.genre_id GROUP BY g.name ORDER BY track_count DESC NULLS LAST LIMIT 5
SELECT g.name AS genre_name, COUNT(t.id) AS track_count, rank() OVER (PARTITION BY g.name ORDER BY COUNT(t.id) DESC NULLS LAST) AS rank FROM tracks t JOIN genres g ON t.genre_id = g.id GROUP BY g.name HAVING COUNT(t.id) > 0 ORDER BY track_count DESC, genre_name ASC LIMIT 5
SELECT c.first_name, c.last_name FROM customers c JOIN invoices i ON c.id = i.customer_id ORDER BY i.total ASC NULLS LAST LIMIT 10
SELECT c.first_name, c.last_name FROM customers c JOIN invoices i ON c.id = i.customer_id ORDER BY i.total ASC NULLS LAST LIMIT 10
SELECT a.title AS album_title, t.name AS track_name FROM artists a JOIN albums al ON a.id = al.artist_id JOIN tracks t ON al.id = t.album_id WHERE a.last_name ILIKE '%Aerosmith%'
SELECT a.name AS artist_name, COUNT(DISTINCT(al.title)) AS number_of_albums FROM artists a JOIN albums al ON a.id = al.artist_id WHERE a.name ilike '%Aerosmith%' GROUP BY a.name
SELECT COUNT(DISTINCT a.id) AS number_of_albums FROM artists a JOIN employees e ON a.id = e.artist_id WHERE e.first_name ilike '%Billy%' AND e.last_name ilike '%Cobham%'
SELECT COUNT(DISTINCT a.id) AS number_of_albums FROM artists a JOIN albums al ON a.id = al.artist_id WHERE a.name ILIKE '%Billy%Cobain%'
SELECT a.title FROM artists AS a JOIN albums AS al ON a.id = al.artist_id WHERE a.name ilike '%Led%'
SELECT albums.title FROM artists JOIN albums ON artists.id = albums.artist_id WHERE artists.name ilike '%Led%'
SELECT COUNT(DISTINCT customers.id) AS number_of_customers FROM customers JOIN invoices ON customers.id = invoices.customer_id WHERE customers.support_rep_id = 757071
SELECT COUNT(DISTINCT customers.id) AS total_customers FROM customers JOIN invoices ON customers.id = invoices.customer_id WHERE customers.support_rep_id = 757071
SELECT e.first_name, e.last_name FROM employees e JOIN customers c ON e.reports_to = c.id WHERE c.last_name ilike '%Nancyy%'
SELECT employees.first_name, employees.last_name FROM employees WHERE employees.reports_to = (SELECT employees.id FROM employees WHERE employees.last_name ilike '%Nancy%Edwards%') LIMIT 1
SELECT e.first_name, e.last_name, COUNT(c.id) AS customer_count FROM employees e JOIN customers c ON e.id = c.support_rep_id GROUP BY e.first_name, e.last_name ORDER BY customer_count DESC LIMIT 1
SELECT c.customer_id, a.artist_id FROM customers c JOIN albums a ON c.support_rep_id = a.id), employee_fullname AS (SELECT e.first_name || ' ' || e.last_name AS full_name, e.employee_id FROM employees e) SELECT ef.full_name, COUNT(ce.customer_id) AS customer_count FROM employee_fullname ef JOIN customer_employee ce ON ef.employee_id = ce.artist_id GROUP BY ef.full_name ORDER BY customer_count DESC LIMIT 1
SELECT a.first_name, a.last_name, COUNT(c.customer_id) AS total_customers FROM artists a JOIN albums b ON a.id = b.artist_id JOIN customers c ON b.id = c.support_rep_id GROUP BY a.first_name, a.last_name ORDER BY total_customers DESC NULLS LAST
SELECT e.first_name, e.last_name, COUNT(r.employee_id) AS reports_to FROM employees e JOIN reports r ON e.id = r.employee_id GROUP BY e.first_name, e.last_name
SELECT COUNT(*) AS total_orders FROM invoices WHERE customer_id = (SELECT id FROM customers WHERE first_name ilike '%Lucas%' AND last_name ilike '%Mancini%')
SELECT COUNT(DISTINCT invoices.id) AS number_of_orders FROM employees JOIN invoices ON employees.id = invoices.customer_id WHERE employees.last_name ilike '%Mancini%' AND employees.first_name ilike '%Luca%'
SELECT SUM(invoices.total) AS total_amount_spent FROM invoices JOIN customers ON invoices.customer_id = customers.id WHERE customers.last_name ilike '%Mancini%' AND customers.first_name ilike '%Lucas%'
SELECT SUM(invoices.total) AS total_spent FROM invoices JOIN customers ON invoices.customer_id = customers.id WHERE customers.last_name ILIKE '%Mancini%' AND customers.first_name ILIKE '%Lucas%'
SELECT t.name FROM tracks t JOIN genres g ON t.genre_id = g.id WHERE g.name ilike '%Rock%'
SELECT t.name FROM tracks t JOIN genres g ON t.genre_id = g.id WHERE g.name ilike '%Rock%'
SELECT albums.title FROM tracks JOIN albums ON tracks.album_id = albums.id WHERE tracks.name ilike '%Balls%to%the%Wall%' 
SELECT albums.title FROM tracks JOIN albums ON tracks.album_id = albums.id WHERE tracks.name ILIKE '%Ball%to%the%Wall%' 
SELECT t.name FROM tracks t JOIN albums a ON t.album_id = a.id WHERE a.title ilike '%Balls%to%the%Wall%'
SELECT t.name FROM tracks t JOIN albums a ON t.album_id = a.id WHERE a.title ilike '%Balls%to%the%Wall%'
SELECT a.title FROM albums a JOIN tracks t ON a.id = t.album_id GROUP BY a.title HAVING COUNT(t.id) > 10
SELECT a.title FROM albums a JOIN tracks t ON a.id = t.album_id GROUP BY a.title HAVING COUNT(t.id) > 10
SELECT t.name FROM tracks t JOIN media_types mt ON t.media_type_id = mt.id JOIN genres g ON t.genre_id = g.id WHERE g.name = 'Rock' AND mt.name = 'MPEG audio file'
SELECT t.name FROM tracks t JOIN media_types mt ON t.media_type_id = mt.id WHERE mt.name = 'MPEG' AND t.genre_id = 1
SELECT t.name FROM tracks t JOIN genres g ON t.genre_id = g.id WHERE g.name = 'Rock' OR t.media_type_id = (SELECT id FROM media_types WHERE name = 'MPEG')
SELECT t.name FROM tracks t JOIN media_types mt ON t.media_type_id = mt.id JOIN genres g ON t.genre_id = g.id WHERE g.name = 'Rock' AND mt.name = 'MPEG'
SELECT t.name FROM tracks t JOIN genres g ON t.genre_id = g.id WHERE g.name IN ('Rock', 'Jazz')
SELECT t.name FROM tracks t JOIN genres g ON t.genre_id = g.id WHERE g.name IN ('Rock', 'Jazz')
SELECT t.name FROM tracks t JOIN track_play_tracks pct ON t.id = pct.track_id JOIN playlists pl ON pct.playlist_id = pl.id WHERE genre_id = 1
SELECT t.name FROM tracks t JOIN playlist_tracks pt ON t.id = pt.track_id JOIN playlists p ON pt.playlist_id = p.id WHERE p.name ILIKE '%Movies%' 
SELECT p.name FROM playlists p JOIN (SELECT pt.playlist_id FROM playlist_tracks pt GROUP BY pt.playist_id HAVING COUNT(pt.track_id) > 100) c ON p.id = c.playist_id
SELECT p.name FROM playlists p JOIN (SELECT pt.playlist_id FROM playlist_tracks pt GROUP BY pt.playlist_id HAVING COUNT(pt.track_id) > 100) c ON p.id = c.playlist_id
SELECT t.name AS track_name, a.name AS artist_name, al.title AS album_title, i.invoice_date, to_char(i.invoice_date,'MM/DD/YYYY') AS invoice_month_day_year FROM tracks t JOIN album_tracks at ON t.id = at.track_id JOIN albums al ON at.album_id = al.id JOIN customers c ON c.id = t.customer_id JOIN invoices i ON i.id = c.invoice_id WHERE c.first_name ilike '%Daan%' AND c.last_name ilike '%Peeters%'
SELECT t.name FROM customers c JOIN invoices i ON c.id = i.customer_id JOIN invoice_lines il ON i.id = il.invoice_id JOIN tracks t ON il.track_id = t.id WHERE c.first_name ILIKE '%Dean%' 
SELECT t.name FROM tracks t JOIN playlist_tracks pt ON t.id = pt.track_id JOIN playlists pl ON pt.playlist_id = pro.id WHERE t.media_type_id = 1 AND NOT EXISTS (SELECT 1 FROM playlist_tracks mt JOIN playlists ml ON mt.playlist_id = ml.id WHERE mt.track_id = t.id AND ml.name ilike '%musical%')
SELECT t.name FROM tracks t JOIN playlist_tracks pt ON t.id = pt.track_id JOIN playlists pl ON pt.playlist_id = pro.id WHERE p.name = 'Movies' AND NOT EXISTS (SELECT 1 FROM playlist_tracks mt JOIN playlists ml ON mt.playlist_id = ml.id WHERE mt.track_id = t.id AND ml.name != 'Movies')
SELECT t.name FROM tracks t JOIN track_genre_play_genres gc ON t.genre_id = gc.id AND gc.media_type_id IN (SELECT id FROM media_types WHERE name ILIKE '%movie%') JOIN playlist_tracks pt ON t.id = pt.track_id JOIN playlists p ON pt.playist_id = p.id
SELECT t.name FROM tracks t JOIN track_genres_play_tracks gt ON t.id = gt.track_id JOIN genre_play_play_list gpl ON gt.genre_id = gpl.genre_id WHERE gpl.playlist_id IN (SELECT id FROM movies) AND gpl.genre_id IN (SELECT id FROM music)
SELECT g.name AS genre_name, COUNT(*) AS track_count FROM tracks t JOIN genres g ON t.genre_id = g.id GROUP BY g.name
SELECT g.name AS genre_name, COUNT(t.id) AS track_count FROM tracks t JOIN genres g ON t.genre_id = g.id GROUP BY g.name ORDER BY track_count DESC NULLS LAST
SELECT e.name, j.theme FROM editor e JOIN journal_committee jc ON e.editor_id = jc.editor_id JOIN journal j ON jc.journal_id = j.journal_id
SELECT j.journal_id, e.name AS editor_name, j.theme AS journal_theme FROM journal_committee jc JOIN journal j ON jc.journal_id = j.journal_id JOIN editor e ON jc.editor_id = e.editor_id
SELECT e.name, CAST(e.age AS FLOAT) AS age, j.theme FROM editor e JOIN journal_committee jc ON e.editor_id = jc.editor_id JOIN journal j ON jc.journal_id = j.journal_id ORDER BY j.theme ASC
SELECT e.name FROM editor e JOIN journal_committee jc ON e.editor_id = jc.editor_id JOIN journal j ON jc.journal_id = j.journal_id WHERE j.sales > 3000
SELECT e.editor_id, e.name, COUNT(jc.journal_id) AS num_committees FROM editor e JOIN journal_committee jc ON e.editor_id = jc.editor_id GROUP BY e.editor_id, e.name
SELECT e.name FROM editor e JOIN journal_committee jc ON e.editor_id = jc.editor_id GROUP BY e.name HAVING COUNT(DISTINCT jc.journal_id) >= 2
SELECT AVG(journal.sales) AS average_sales FROM journal JOIN journal_committee ON journal.journal_id = journal_committee.journal_id JOIN editor ON journal_committee.editor_id = editor.editor_id WHERE journal_committee.work_type ilike '%Photo%'
SELECT Customers.customer_first_name, Customers.customer_last_name, Customers.customer_phone FROM Accounts JOIN Customers ON Accounts.customer_id = Customers.customer_id WHERE Accounts.account_name = '162'
SELECT c.customer_first_name, c.customer_last_name, cc.customer_phone FROM accounts a JOIN customers c ON a.customer_id = c.customer_id JOIN customers_cards cc ON c.customer_id = cc.customer_id WHERE a.account_name = '162'
SELECT COUNT(DISTINCT Accounts.account_id) AS account_count FROM Customers JOIN Accounts ON Customers.customer_id = Accounts.customer_id WHERE Customers.customer_first_name ilike '%Art%' AND Customers.customer_last_name ilike '%Turcotte%'
SELECT COUNT(*) AS account_count FROM Accounts JOIN Customers ON Accounts.customer_id = Customers.customer_id WHERE Customers.customer_first_name ilike '%Art%' AND Customers.customer_last_name ilike '%Turcotte%'
SELECT c.customer_first_name, c.customer_last_name, MIN(a.account_id) AS account_id FROM customers c JOIN accounts a ON c.customer_id = a.customer_id GROUP BY c.customer_first_name, c.customer_last_name
SELECT c.customer_first_name, c.customer_last_name, cc.card_id FROM customers AS c JOIN customers_cards AS cc ON c.customer_id = cc.customer_id GROUP BY c.customer_first_name, c.customer_last_name, cc.card_id HAVING COUNT(cc.card_id) = (SELECT MIN(COUNT(card_id)) FROM customers_cards)
SELECT Customers.customer_first_name, Customers.customer_last_name FROM Customers JOIN Accounts ON Customers.customer_id = Accounts.customer_id
SELECT c.customer_first_name, c.customer_last_name FROM customers AS c JOIN accounts AS a ON c.customer_id = a.customer_id
SELECT Customers.customer_first_name, Customers.customer_last_name, Customers.customer_phone FROM Customers JOIN Customers_Cards ON Customers.customer_id = Customers_Cards.customer_id WHERE Customers_Cards.card_number = '4560596484842'
SELECT c.customer_first_name, c.customer_last_name, cc.customer_phone FROM Customers_Cards cc JOIN Customers c ON cc.customer_id = c.customer_id WHERE cc.card_number = '4560596484842'
SELECT COUNT(*) AS card_count FROM Customers_Cards WHERE customer_id = (SELECT customer_id FROM Customers WHERE customer_first_name ilike '%Art%' AND customer_last_name ilike '%Turcotte%')
SELECT COUNT(*) AS card_count FROM Customers_Cards cc JOIN Customers c ON cc.customer_id = c.customer_id WHERE c.customer_first_name ilike '%Art%' AND c.customer_last_name ilike '%Turcotte%'
SELECT COUNT(*) AS number_of_credit_cards FROM Customers_Cards WHERE customer_id = 12345
SELECT COUNT(*) AS total_credit_cards FROM Customers_Cards WHERE customer_id IN (SELECT customer_id FROM Customers WHERE customer_first_name ilike '%Blanche%' AND customer_last_name ilike '%Huang%') AND card_type_code ilike '%credit%'
SELECT c.customer_id, c.customer_first_name, c.customer_last_name FROM Customers AS c JOIN (SELECT customer_id FROM Customers_Cards GROUP BY customer_id HAVING COUNT(card_id) >= 2) AS cc ON c.customer_id = cc.customer_id
SELECT c.customer_id, c.customer_first_name, c.customer_last_name FROM Customers AS c JOIN (SELECT customer_id FROM Accounts GROUP BY customer_id HAVING COUNT(account_id) > 1) AS a ON c.customer_id = a.customer_id
SELECT c.customer_id, c.customer_first_name, c.customer_last_name, COUNT(a.account_id) AS account_count FROM customers c JOIN accounts a ON c.customer_id = a.customer_id GROUP BY c.customer_id, c.customer_first_name, c.customer_last_name ORDER BY account_count ASC NULLS LAST LIMIT 1
SELECT c.customer_id, c.customer_first_name, c.customer_last_name FROM customers AS c JOIN accounts AS a ON c.customer_id = a.customer_id GROUP BY c.customer_id, c.customer_first_name, c.customer_last_name HAVING COUNT(a.account_id) = (SELECT MIN(COUNT(account_id)) FROM accounts)
SELECT cc.card_type_code, COUNT(ft.transaction_id) AS transaction_count FROM Customers_Cards cc JOIN Financial_Transactions ft ON cc.card_id = ft.card_id GROUP BY cc.card_type_code
SELECT cc.card_type_code, COUNT(ft.transaction_id) AS number_of_transactions FROM Customers_Cards cc JOIN Financial_Transactions ft ON cc.card_id = ft.card_id GROUP BY cc.card_type_code
SELECT t.name, COUNT(r.race_id) AS race_count FROM track t JOIN race r ON t.track_id = r.track_id GROUP BY t.name
SELECT t.name, COUNT(r.race_id) AS race_count FROM track t JOIN race r ON t.track_id = r.track_id GROUP BY t.name
SELECT t.name, COUNT(r.race_id) AS race_count FROM track t JOIN race r ON t.track_id = r.track_id GROUP BY t.name ORDER BY race_count DESC NULLS LAST LIMIT 1
SELECT t.name, COUNT(r.race_id) AS race_count FROM track t JOIN race r ON t.track_id = r.track_id GROUP BY t.name ORDER BY race_count DESC NULLS LAST LIMIT 1
SELECT r.name, to_date(r.date,'YYYY-MM-DD') AS race_date, t.name AS track_name FROM race r JOIN track t ON r.track_id = t.track_id
SELECT r.name, to_date(r.date,'YYYY-MM-DD') AS race_date, t.name, t.location FROM race r JOIN track t ON r.track_id = t.track_id
SELECT t.name, l.location FROM track t JOIN race r ON t.track_id = r.track_id WHERE r.race_id = 1
SELECT t.name, l.location FROM track t JOIN race r ON t.track_id = r.track_id GROUP BY t.name, l.location HAVING COUNT(r.race_id) = 1
SELECT shop.shop_id, shop.address FROM shop JOIN happy_hour ON shop.shop_id = happy_hour.shop_id WHERE happy_hour.month = 'May'
SELECT a.title FROM album a JOIN artist acdc ON a.artistid = acdc.artistid WHERE acdc.name ilike '%ac/dc%' ORDER BY a.title NULLS LAST
SELECT a.title FROM album a JOIN artist ar ON a.artistid = ar.artistid WHERE ar.name ilike '%ac/dc%' ORDER BY a.title NULLS LAST
SELECT COUNT(Al.albumid) AS number_of_albums FROM album a JOIN artist ar ON a.artistid = ar.artistid WHERE ar.name ilike '%metallica%' 
SELECT COUNT(Al.albumid) AS number_of_albums FROM album al JOIN artist a ON al.artistid = a.artistid WHERE a.name ilike '%metallica%'
SELECT a.name AS album_name, t.composer AS composer_name FROM album a JOIN track t ON a.albumid = t.albumid WHERE a.title ilike '%balls%to%the%wall%'
SELECT a.name FROM album a JOIN track t ON a.albumid = t.albumid WHERE t.name ilike '%balls%to%the%wall%' 
SELECT a.name AS artist_name, COUNT(t.trackid) AS number_of_tracks FROM album a JOIN track t ON a.albumid = t.albumid GROUP BY a.name ORDER BY number_of_tracks DESC NULLS LAST LIMIT 1
SELECT a.name, COUNT(t.trackid) AS num_tracks FROM artist a JOIN album al ON a.artistid = al.artistid JOIN track t ON al.albumid = t.albumid GROUP BY a.name ORDER BY num_tracks DESC LIMIT 1
SELECT a.albumid, a.title, COUNT(t.trackid) AS track_count FROM album a JOIN track t ON a.albumid = t.albumid GROUP BY a.albumid, a.title
SELECT a.albumid, a.title, COUNT(t.trackid) AS track_count FROM album a JOIN track t ON a.albumid = t.albumid GROUP BY a.albumid, a.title
SELECT g.name, COUNT(*) AS frequency FROM track t JOIN genre g ON t.genreid = g.genreid GROUP BY g.name ORDER BY frequency DESC LIMIT 1
SELECT g.name, COUNT(*) AS frequency FROM track t JOIN genre g ON t.genreid = g.genreid GROUP BY g.name ORDER BY frequency DESC LIMIT 1
SELECT MediaType.name, COUNT(Track.media_type_id) AS COUNT FROM Track JOIN MediaType ON Track.media_type_id = MediaType.media_type_id GROUP BY MediaType.name ORDER BY COUNT ASC NULLS LAST LIMIT 1
SELECT m.name, COUNT(t.trackid) AS track_count FROM track t JOIN media_type m ON t.mediatypeid = m.mediatypeid GROUP BY m.name ORDER BY track_count ASC NULLS LAST LIMIT 1
SELECT a.albumid, a.title FROM album a JOIN track t ON a.albumid = t.albumid WHERE t.unitprice > 1
SELECT a.albumid, a.title, t.unit_price FROM album a JOIN track t ON a.albumid = t.albumid WHERE t.unit_price > 1
SELECT COUNT(*) FROM track WHERE genreid = 1
SELECT COUNT(*) FROM track WHERE genre_id = 1
SELECT AVG(Track.UnitPrice) AS average_unit_price FROM Track JOIN Genre ON Track.GenreId = Genre.GenreId WHERE Genre.Name ilike '%jazz%'
SELECT AVG(Track.UnitPrice) AS average_unit_price FROM Track JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId WHERE MediaType.Name ilike '%jazz%'
SELECT Employee.FirstName, Employee.LastName FROM Employee WHERE Employee.FirstName ilike '%Leonard%' AND Employee.LastName ilike '%Leonard%'
SELECT e.first_name || ' ' || e.last_name AS full_name FROM employee e JOIN customer c ON e.employeeid = c.supportrepid WHERE c.first_name ilike '%Leonardo%'
SELECT Employee.City FROM Customer JOIN Employee ON customer.SupportRepId = Employee.EmployeeId WHERE customer.PostalCode = '70174'
SELECT DISTINCT Employee.City FROM Employee WHERE Employee.PostalCode = '70174'
SELECT Invoice.InvoiceDate FROM Invoice JOIN Customer ON Invoice.customerId = customer.customerId WHERE customer.first_name ilike '%Astrid%' AND customer.last_name ilike '%Gruber%'
SELECT Invoice.InvoiceDate FROM Invoice JOIN Customer ON Invoice.customerId = customer.customerId WHERE customer.first_name ilike '%Astrid%' AND customer.last_name ilike '%Gruber%' ORDER BY Invoice.invoicedate NULLS LAST
SELECT p.first_name FROM customer p JOIN invoice i ON p.customerid = i.customerid WHERE p.country = 'Brazil'
SELECT DISTINCT customer.first_name FROM customer JOIN invoice ON customer.customer_id = invoice.customer_id WHERE customer.country = 'Brazil'
SELECT customer.address FROM customer JOIN invoice ON customer.customerid = invoice.customerid WHERE customer.country = 'Germany'
SELECT p.address, p.city, p.state, p.postalcode FROM customer p JOIN invoice i ON p.customerid = i.customerid WHERE p.country = 'Germany'
SELECT COUNT(*) FROM Track WHERE MediaTypeId = 1
SELECT COUNT(*) FROM track WHERE mediatypeid = (SELECTmediatypeidFROMmediaTypeWHEREname='AACaudiofile')
SELECT AVG(Track.Milliseconds) AS average_duration FROM Track JOIN Genre ON Track.GenreId = Genre.GenreId WHERE Genre.Name IN ('Latin', 'Pop')
SELECT AVG(Track.Milliseconds) AS average_milliseconds FROM Track JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId WHERE MediaType.Name IN ('Latin', 'Pop')
SELECT e.first_name, e.employeeid FROM employee e JOIN (SELECT i.customerid FROM invoice i GROUP BY i.customerid HAVING COUNT(i.invoiceid) >= 10) c ON e.employeeid = c.customerid
SELECT e.first_name, s.support_rep_id FROM employee e JOIN (SELECT customer_id, COUNT(customer_id) AS num_customers FROM invoice GROUP BY customer_id HAVING COUNT(customer_id) >= 10) s ON e.employee_id = s.customer_id
SELECT Employee.LastName FROM Employee WHERE Employee.EmployeeId IN (SELECT Invoice.ReportsTo FROM Invoice GROUP BY Invoice.ReportsTo HAVING COUNT(Invoice.customerId) <= 20)
SELECT employee.last_name FROM employee WHERE employee.employeeid IN (SELECT invoice.customerid FROM invoice GROUP BY invoice.customerid HAVING COUNT(invoice.customerid) > 20)
SELECT a.name, a.artistid FROM artist a JOIN album al ON a.artistid = al.artistid GROUP BY a.name, a.artistid HAVING COUNT(al.albumid) >= 3 ORDER BY a.name NULLS LAST
SELECT a.name, a.artistid FROM artist a JOIN album al ON a.artistid = al.artistid GROUP BY a.name, a.artistid HAVING COUNT(al.albumid) >= 3 ORDER BY a.name NULLS LAST
SELECT AVG(Track.UnitPrice) AS average_unit_price FROM Track WHERE Track.MediaTypeId = (SELECT MediaTypeId FROM MediaType WHERE Name = 'Rock')
SELECT AVG(Track.UnitPrice) AS average_unit_price FROM Track JOIN Genre ON Track.GenreId = Genre.GenreId WHERE Genre.Name ilike '%Rock%'
SELECT t.trackid, t.milliseconds FROM track t JOIN genre g ON t.genreid = g.genreid WHERE g.name = 'Pop'), longest_shortest_durations AS (SELECT MAX(millisecond) AS max_duration, MIN(millisecond) AS min_duration FROM pop_tracks), duration_ratio AS (SELECT (MAX_DURATION - MIN_DURATION) / NULLIF(MIN_DURATION, 0) AS duration_ratio FROM longest_shortest_durations) SELECT 'The ratio of the longest to shortest pop track durations is ' || CAST(duration_ratio AS text) FROM duration_ratio
SELECT MIN(Track.Milliseconds) AS Minimum, MAX(Track.Millisecond) AS MaxMillisecond FROM Track JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId WHERE MediaType.Name = 'Pop'
SELECT a.albumid, a.title FROM album a JOIN track t ON a.albumid = t.albumid JOIN genre g ON t.genreid = g.genreid WHERE g.name IN ('regga', 'rock') GROUP BY a.albumid, a.title HAVING COUNT(DISTINCT g.name) = 2
SELECT a.title AS album_title, COUNT(DISTINCT t.genreid) AS genre_count FROM album a JOIN track t ON a.albumid = t.albumid GROUP BY a.title HAVING COUNT(DISTINCT t.genreid) >= 2
SELECT s.service_name FROM first_notification_of_loss fnl JOIN services s ON fnl.service_id = s.service_id GROUP BY s.service_name HAVING COUNT(fnl.service_id) > 2
SELECT s.service_name FROM first_notification_of_loss fnl JOIN claims c ON fnl.claim_id = c.claim_id JOIN settlements s ON c.settlement_id = s.settlement_id GROUP BY s.service_name HAVING COUNT(fnl.service_id) > 2
SELECT c.claim_id, s.settlement_amount, row_number() OVER (PARTITION BY c.claim_id ORDER BY s.settlement_amount DESC) AS row_num FROM claims c JOIN settlements s ON c.claim_id = s.claim_id
SELECT c.effective_date, s.settlement_amount FROM claims c JOIN settlements s ON c.claim_id = s.claim_id ORDER BY s.settlement_amount DESC NULLS LAST LIMIT 1
SELECT COUNT(DISTINCT Services.Service_ID) AS number_of_services FROM Customers JOIN Customers_Policies ON Customes.customer_id = customers_policies.customer_id JOIN First_Notification_of_Loss ON customers_policies.policy_id = first_notification_of_loss.policy_id JOIN Services ON first_notification_of_loss.service_id = services.service_id WHERE customers.customer_name ilike '%Dayana%Robel%'
SELECT COUNT(DISTINCT Services.Service_ID) AS total_services FROM Customers JOIN Customers_Policies ON Customes.customer_id = Customers_policies.customer_id JOIN First_Notification_of_Loss ON Customers_policies.policy_id = first_notification_of_loss.policy_id JOIN Services ON first_notification_of_loss.service_id = services.service_id WHERE customers.customer_name ilike '%Dayana%Robel%'
SELECT customers.customer_name, COUNT(customers_policies.policy_id) AS policy_count FROM customers_policies JOIN customers ON customers_policies.customer_id = customers.customer_id GROUP BY customers.customer_name ORDER BY policy_count DESC NULLS LAST LIMIT 1
SELECT customers.customer_name, COUNT(first_notification_of_loss.fnal_id) AS number_of_claims FROM customers JOIN first_notification_of_loss ON customers.customer_id = first_notification_of_loss.customer_id GROUP BY customers.customer_name ORDER BY number_of_claims DESC NULLS LAST LIMIT 1
SELECT DISTINCT a.policy_type_code FROM customers c JOIN customers_policies cp ON c.customer_id = cp.customer_id JOIN available_policies a ON cp.policy_id = a.policy_id WHERE c.customer_name ILIKE '%Dayana%Robel%' 
SELECT a.policy_type_code FROM customers c JOIN customers_policies cp ON c.customer_id = cp.customer_id JOIN available_policies a ON cp.policy_id = a.policy_id WHERE c.customer_name ilike '%Dayana%Robel%' 
SELECT a.policy_type_code FROM available_policies a JOIN customers_policies b ON a.policy_id = b.policy_id GROUP BY a.policy_type_code HAVING COUNT(b.policy_id) > (SELECT COUNT(policy_id) FROM customers_policies c WHERE c.customer_id IN (SELECT customer_id FROM customers_policies d GROUP BY customer_id HAVING COUNT(policy_id) = MAX(COUNT(policy_id))))
SELECT a.policy_type_code FROM available_policies a JOIN customers_policies b ON a.policy_id = b.policy_id GROUP BY a.policy_type_code HAVING COUNT(b.policy_id) = (SELECT MAX(count_policies)) FROM customers_policies c GROUP BY customer_id)
SELECT Customers.customer_name FROM Customers JOIN First_Notification_of_Loss ON Customers.customer_id = First_Notification_of_Loss.customer_id JOIN Services ON First_Notification_of_Loss.service_id = Services.service_id WHERE Services.service_name IN ('Close a policy', 'Upgrade a policy')
SELECT Customers.customer_name FROM Customers JOIN First_Notification_of_Loss ON Customers.customer_id = First_Notification_of_Loss.customer_id JOIN Services ON First_Notification_of_Loss.service_id = Services.service_id WHERE Services.service_name ilike '%Close%a%policy%' OR Services.service_name ilike '%Upgrade%a%policy%'
SELECT c.customer_name FROM customers c JOIN first_notification_of_lost fnol ON c.customer_id = fnol.customer_id JOIN services s ON fnol.service_id = s.service_id WHERE s.service_name IN ('Close a policy', 'New policy application') GROUP BY c.customer_name HAVING COUNT(DISTINCT s.service_name) = 2
SELECT Customers.customer_name FROM Customers JOIN First_Notification_of_Loss ON Customers.customer_id = First_Notification_of_Loss.customer_id WHERE First_Notification_of_Loss.service_id IN (SELECT service_id FROM Services WHERE service_name ILIKE '%Close%a%policy%') AND First_Notification_of_Loss.service_id IN (SELECT service_id FROM Services WHERE service_name ILIKE '%Upgrade%a%policy%')
SELECT Customers_Policies.Date_Opened, Customers_Policies.Date_Closed FROM Customers_Policies JOIN Customers ON Customers_Policies.customer_id = customers.customer_id WHERE customers.customer_name ilike '%Diana%' ORDER BY Customers_Policies.Date_Opened NULLS LAST
SELECT Customers_Policies.Date_Opened, Customers_Policies.Date_Closed FROM Customers_Policies JOIN First_Notification_of_Loss ON Customers_Policies.Policy_ID = First_Notification_of_Loss.Policy_ID WHERE First_Notification_of_Loss.Service_ID IN (SELECT Service_ID FROM Services WHERE Service_name ilike '%Diana%') ORDER BY Customers_Policies.Date_Opened NULLS LAST
SELECT e.name FROM medicine m JOIN medicine_enzyme_interaction mef ON m.id = mef.medicine_id JOIN enzyme e ON mef.enzyme_id = e.id WHERE m.name ILIKE '%Amisulpride%' AND mef.interaction_type ILIKE '%inhibitor%'
SELECT e.name FROM medicine_enzyme_interaction mef INNER JOIN enzyme e ON mef.enzyme_id = e.id INNER JOIN medicine m ON mef.medicine_id = m.id WHERE m.trade_name ILIKE '%Amisulpride%' AND mef.interaction_type ILIKE '%inhibitor%'
SELECT m.id AS medicine_id, m.name AS medicine_name FROM medicine_enzyme_interaction mef INNER JOIN medicine m ON mef.medicine_id = m.id GROUP BY m.id, m.name HAVING COUNT(mef.enzyme_id) >= 2
SELECT m.id, m.name FROM medicine_enzyme_interaction mef INNER JOIN medicine m ON mef.medicine_id = m.id GROUP BY m.id HAVING COUNT(mef.enzyme_id) > 1
SELECT m.id AS medicine_id, m.name AS medicine_name, fda_approved, COUNT(mei.enzyme_id) OVER (PARTITION BY mei.medicine_id) AS enzyme_count FROM medicine AS m JOIN medicine_enzyme_interaction AS mei ON m.id = mei.medicine_id
SELECT m.id AS medicine_id, m.name AS medicine_name, e.name AS enzyme_name, row_number() OVER (PARTITION BY me.id ORDER BY COUNT(mei.interaction_type) DESC) AS rank FROM medicine_enzyme_interaction mei JOIN medicine m ON mei.medicine_id = m.id JOIN enzyme e ON mei.enzyme_id = e.id GROUP BY m.id, m.name, e.name
SELECT e.id, e.name FROM enzyme e JOIN medicine_enzyme_interaction mef ON e.id = mef.enzyme_id WHERE interaction_type ILIKE '%activator%' GROUP BY e.id, e.name ORDER BY COUNT(mef.medicine_id) DESC NULLS LAST LIMIT 1
SELECT me.id, me.name, COUNT(mei.interaction_type) AS interaction_count FROM medicine_enzyme_interaction me JOIN enzyme e ON me.enzyme_id = e.id GROUP BY me.id, me.name), max_interaction_count AS (SELECT MAX(interaction_count) AS max_interaction_count FROM medicine_enzyme_interaction_count) SELECT mef.id, mef.name FROM medicine_enzyme_interaction_count mef JOIN max_interaction_count mac ON mef.interaction_count = mac.max_interaction_count
SELECT medicine_enzyme_interaction.interaction_type FROM medicine_enzyme_interaction WHERE medicine_enzyme_interaction.medicine_id = (SELECT id FROM medicine WHERE name ILIKE '%Aripiprazole%') AND medicine_enzyme_interaction.enzyme_id = (SELECT id FROM enzyme WHERE name ILIKE '%ALA synthase%')
SELECT medicine_enzyme_interaction.interaction_type FROM medicine_enzyme_interaction WHERE medicine_enzyme_interaction.medicine_id = (SELECT id FROM medicine WHERE name ILIKE '%Aripiprazole%') AND medicine_enzyme_interaction.enzyme_id = (SELECT id FROM enzyme WHERE name ILIKE '%ALA synthase%')
SELECT m.id, m.trade_name FROM medicine m JOIN medicine_enzyme_interaction mef ON m.id = mef.medicine_id GROUP BY m.id, m.trade_name HAVING COUNT(mef.enzyme_id) >= 3
SELECT m.id, m.trade_name FROM medicine m JOIN medicine_enzyme_interaction mef ON m.id = mef.medicine_id GROUP BY m.id, m.trade_name HAVING COUNT(mef.enzyme_id) >= 3
SELECT e.name, l.location, m.product FROM enzyme e JOIN medicine_enzyme_interaction mea ON e.id = mea.enzyme_id JOIN medicine m ON mea.medicine_id = m.id JOIN location l ON e.location_id = l.id WHERE interaction_type ILIKE '%inhibitor%' GROUP BY e.name, l.location, m.product
SELECT e.name AS enzyme_name, l.location_description, m.trade_name AS medicine_trade_name FROM enzyme e JOIN medicine_enzyme_interaction mea ON e.id = mea.enzyme_id JOIN medicine m ON mea.medicine_id = m.id
SELECT m.name, m.trade_name FROM medicine m JOIN medicine_enzyme_interaction mef ON m.id = mef.medicine_id JOIN enzyme e ON mef.enzyme_id = e.id WHERE interaction_type ILIKE '%inhibitor%' AND interaction_type ILIKE '%activator%'
SELECT m.name AS medicine_name, e.name AS enzyme_name, mea.interaction_type FROM medicine_enzyme_action mea JOIN medicine m ON mea.medicine_id = m.id JOIN enzyme e ON mea.enzyme_id = e.id WHERE interaction_type IN ('inhibitor', 'activator')
SELECT u.primary_conference FROM basketball_match bm JOIN university u ON bm.school_id = u.school_id GROUP BY u.primary_conference ORDER BY CAST(bm.acc_percent AS FLOAT) ASC LIMIT 1
SELECT u.primary_conference FROM basketball_match bm JOIN university u ON bm.school_id = u.school_id GROUP BY u.primary_conference ORDER BY CAST(bm.acc_percent AS FLOAT) ASC LIMIT 1
SELECT u.nickname, b.team_name, CAST(b.acc_regular_season AS FLOAT) AS acc_regular_season FROM university u JOIN basketball_match b ON u.school_id = b.school_id ORDER BY u.founded DESC LIMIT 1
SELECT u.nickname, b.team_name, to_number(b.acc_regular_season,'99999999') AS acc FROM university u JOIN basketball_match b ON u.school_id = b.school_id WHERE u.founded = (SELECT MIN(founded) FROM university)
SELECT u.location, b.team_name, b.all_games FROM university AS u JOIN basketball_match AS b ON u.school_id = b.school_id WHERE u.nickname ILIKE '%clemson%'
SELECT b.team_name, u.location FROM basketball_match AS b JOIN university AS u ON b.school_id = u.school_id WHERE u.nickname ILIKE '%clemson%' 
SELECT u.school_id, b.team_name FROM university AS u JOIN basketball_match AS b ON u.school_id = b.school_id WHERE u.enrollment < (SELECT AVG(enrollment) FROM university)
SELECT u.nickname FROM university AS u JOIN basketball_match AS bm ON u.school_id = bm.school_id WHERE u.enrollment < (SELECT AVG(enrollment) FROM university)
SELECT MAX(chip_model.RAM_MiB) AS max_ram, MIN(chip_model.RAM_MiB) AS min_ram FROM chip_model JOIN phone ON chip_model.Model_name = phone.chip_model WHERE "Nokia Corporation" ILIKE '%company%named%'
SELECT AVG(chip_model.ROM_MiB) AS average_rom_size FROM phone JOIN chip_model ON phone.chip_model = chip_model.Model_name WHERE phone.Company_name ILIKE '%Nokia%Corporation%' 
SELECT phone.hardware_model_name, phone.company_name FROM phone WHERE (phone.launch_year = 2002 OR phone.ram_mib > 32) AND phone.chip_model IS NOT NULL
SELECT sm.char_cells, sm.pixels, cm.hardware_colours FROM phone p JOIN chip_model cm ON p.chip_model = cm.model_name JOIN screen_mode sm ON p.screen_mode = sm.type WHERE cm.model_name ILIKE '%LG-P760%' 
SELECT phone.hardware_model_name, phone.company_name FROM phone WHERE phone.screen_mode = 'Graphics'
SELECT chip_model.Model_name FROM chip_model WHERE launch_year = 2002 ORDER BY RAM_MiB DESC LIMIT 1
SELECT chip_model.wifi, screen_mode.type FROM phone JOIN chip_model ON phone.chip_model = chip_model.model_name JOIN screen_mode ON phone.screen_mode = screen_mode.map WHERE phone.hardware_model_name ilike '%LG-P760%' 
SELECT phone.hardware_model FROM phone WHERE (phone.screen_mode ilike '%text%' OR CAST(chip_model.ram_mib AS FLOAT) > 32) AND phone.company_name ILIKE '%apple%'
SELECT phone.hardware_model FROM phone WHERE (phone.company_name ilike '%Nokia%Corporation%' OR phone.screen_mode ilike '%Graphics%') AND phone.hardware_model IS NOT NULL
SELECT phone.hardware_model FROM phone WHERE "company_name" ILIKE '%nokia%corporation%' AND "screen_mode" NOT ILIKE '%text%'
SELECT phone.hardware_model, phone.company_name FROM phone WHERE (cast(screen_mode.used_kb AS FLOAT) BETWEEN 10 AND 15)
SELECT sm.pixels FROM phone p1 JOIN chip_model cm ON p1.chip_model = cm.model_name JOIN screen_mode sm ON p1.screen_mode = sm.map WHERE p1.accreditation_type ilike '%full%' AND p1.accreditation_level ilike '%provisional%'
SELECT m.season, p.player, c.country_name FROM match_season m JOIN player p ON m.player = p.player_id JOIN country c ON m.country = c.country_id
SELECT p.player_id, p.player, m.season, c.country_name FROM player AS p JOIN match_season AS m ON p.team = m.team AND p.player = m.player JOIN country AS c ON m.country = c.country_id
SELECT player.player FROM player JOIN match_season ON player.team = match_season.team WHERE match_season.country = 157
SELECT player.player FROM player JOIN match_season ON player.team = match_season.team WHERE match_season.country = 157
SELECT DISTINCT match_season.position FROM country JOIN team ON country.country_id = team.team JOIN player ON team.team_id = player.team AND country.capital = 'Dublin' JOIN match_season ON player.player_id = match_season.player AND player.team = match_season.team
SELECT player.player_id, player.player, match_season.position FROM player JOIN match_season ON player.player_id = match_season.player WHERE country.capital ilike '%Dublin%' ORDER BY match_season.position NULLS LAST
SELECT country.official_native_language FROM player JOIN match_season ON player.team = match_season.team AND player.player_id = match_season.player JOIN team ON player.team = team.team_id JOIN country ON match_season.country = country.country_id WHERE (team.name ilike '%Maryland%' OR team.name ilike '%Duke%') GROUP BY country.official_native_language
SELECT country.official_native_language FROM country JOIN match_season ON country.country_id = match_season.country JOIN player ON match_season.player = player.player_id WHERE (player like '%Maryland%' OR player.college like '%Duke%') GROUP BY country.official_native_language
SELECT COUNT(DISTINCT country.official_native_language) AS number_of_languages FROM match_season JOIN player ON match_season.player = player.player_id JOIN team ON match_season.team = team.team_id JOIN country ON match_season.country = country.country_id WHERE position ILIKE '%defender%'
SELECT COUNT(DISTINCT country.official_native_language) AS number_of_languages FROM player JOIN match_season ON player.team = match_season.team AND player.player_id = match_season.player JOIN team ON player.team = team.team_id JOIN country ON match_season.country = country.country_id WHERE position = 'Defender'
SELECT m.season, p.player, t.name FROM match_season m JOIN player p ON m.player = p.player_id JOIN team t ON p.team = t.team_id
SELECT p.player_id, t.team_name, m.season FROM player p JOIN match_season m ON p.player_id = m.player JOIN team t ON p.team = t.team_id
SELECT player.player_id, match_season.position FROM player JOIN match_season ON player.player_id = match_season.player WHERE player.team = (SELECT team_id FROM team WHERE name ILIKE '%Ryley%Goldner%') ORDER BY player.player_id NULLS LAST
SELECT player.player_id, player.player, match_season.position FROM player JOIN match_season ON player.player_id = match_season.player WHERE player.team = (SELECT team_id FROM team WHERE name ILIKE '%Ryley%Goldner%') ORDER BY player.player NULLS LAST
SELECT DISTINCT college FROM match_season WHERE "Team" = 'Columbus Crew'
SELECT COUNT(DISTINCT college) AS num_colleges FROM player WHERE team = 757071
SELECT p.player_id, p.years_played::FLOAT FROM player p JOIN match_season ms ON p.player_id = ms.player AND p.team = ms.team WHERE p.team = 757071 GROUP BY p.player_id
SELECT p.player_id, to_number(p.years_played,'9999') AS years_played FROM player p JOIN match_season m ON p.team = m.team AND p.player = m.player WHERE to_number(m.country,'9999') = 10
SELECT c.country_name, COUNT(p.player_id) AS player_count FROM country c JOIN match_season ms ON c.country_id = ms.country JOIN player p ON ms.team = p.team GROUP BY c.country_name
SELECT c.country_name, COUNT(p.player_id) AS player_count FROM player p JOIN match_season ms ON p.team = ms.team AND p.player_id = ms.player JOIN country c ON ms.country = c.country_id GROUP BY c.country_name
SELECT country.country_name FROM country JOIN match_season ON country.country_id = match_season.country JOIN player ON match_season.player = player.player_id GROUP BY country.country_name HAVING COUNT(DISTINCT CASE WHEN position ILIKE '%forward%' THEN 1 END) > 0 AND COUNT(DISTINCT CASE WHEN position ILIKE '%defender%' THEN 1 END) > 0
SELECT country.country_name FROM country JOIN match_season ON country.country_id = match_season.country JOIN player ON match_season.player = player.player_id WHERE position ILIKE '%Forward%' OR position ILIKE '%Defender%'
SELECT c.name AS climber_name, m.name AS mountain_name FROM climber c JOIN mountain m ON c.mountain_id = m.mountain_id
SELECT c.name AS "climber name", m.name AS "mountain name" FROM climber c JOIN mountain m ON c.mountain_id = m.mountain_id
SELECT c.name AS climber_name, m.name AS mountain_name, to_char(c.time::TIMESTAMP,'YYYY-MM-DD') AS climb_date FROM climber c JOIN mountain m ON c.mountain_id = m.mountain_id
SELECT c.name, m.name, CAST(c.points AS FLOAT) / NULLIF(m.heigth, 0) AS ratio FROM climber c JOIN mountain m ON c.mountain_id = m.mountain_id
SELECT m.height FROM mountain AS m JOIN climber AS c ON m.mountain_id = c.mountain_id GROUP BY m.name ORDER BY c.points DESC LIMIT 1
SELECT m.height FROM climber c JOIN mountain m ON c.mountain_id = m.mountain_id GROUP BY c.climber_id ORDER BY MAX(c.points) DESC LIMIT 1
SELECT m.name FROM mountain m JOIN climber c ON m.mountain_id = c.mountain_id WHERE c.country = 'West Germany'
SELECT m.name FROM mountain m JOIN climber c ON m.mountain_id = c.mountain_id WHERE c.country = 'West Germany' GROUP BY m.name
SELECT climber.time FROM climber JOIN mountain ON climber.mountain_id = mountain.mountain_id WHERE country = 'colombia' 
SELECT c.climber_id, to_number(c.time,'999999') AS time_in_seconds FROM climber c JOIN mountain m ON c.mountain_id = m.mountain_id WHERE m.country = 'uganda'
SELECT p.name FROM people AS p JOIN body_builder AS bb ON p.people_id = bb.people_id
SELECT p.name, CAST(b.total AS FLOAT) AS total FROM people p JOIN body_builder b ON p.people_id = b.people_id WHERE CAST(b.total AS FLOAT) > 300
SELECT people.name, MAX(people.weight) AS max_weight FROM body_builder JOIN people ON body_builder.people_id = people.people_id GROUP BY people.name ORDER BY max_weight DESC NULLS LAST LIMIT 1
SELECT people.birth_date, people.birth_place FROM body_builder JOIN people ON body_builder.people_id = people.people_id WHERE body_builder.total = (SELECT MAX(total) FROM body_builder)
SELECT people.name, body_builder.total FROM body_builder JOIN people ON body_builder.people_id = people.people_id WHERE body_builder.total < 315
SELECT AVG(body_builder.total) AS average_total_score FROM body_builder JOIN people ON body_builder.people_id = people.people_id WHERE people.height > 200
SELECT p.name, b.total AS total_score FROM people p JOIN body_builder b ON p.people_id = b.body_builder_id ORDER BY total_score DESC
SELECT people.weight FROM body_builder JOIN people ON body_builder.people_id = people.people_id WHERE (body_builder.snatch > 140 OR people.height > 200)
SELECT CAST(body_builder.total AS FLOAT) AS total_score FROM body_builder JOIN people ON body_builder.people_id = people.people_id WHERE people.birth_place ilike '%January%' 
SELECT r.name, e.date FROM representative r JOIN election e ON r.representative_id = e.representative_id
SELECT representative.name FROM election JOIN representative ON election.representative_id = representative.representative_id WHERE election.votes > 10000
SELECT representative.name FROM election JOIN representative ON election.representative_id = representative.representative_id ORDER BY election.votes DESC
SELECT r.name, CAST(e.votes AS FLOAT) / (SELECT MIN(votes) FROM election) AS proportion_of_minimum_votes FROM representative r JOIN election e ON r.representative_id = e.representative_id GROUP BY r.name ORDER BY proportion_of_minimum_votes DESC LIMIT 1
SELECT representative.name, representative.state, election.votes_percent, representative.lifespan FROM election JOIN representative ON election.representative_id = representative.representative_id ORDER BY election.votes_percent DESC
SELECT AVG(election.votes) AS average_votes FROM election JOIN representative ON election.representative_id = representative.representative_id WHERE representative.party ilike '%Republican%'
SELECT a.apt_id, g.guest_first_name, g.guest_last_name, to_char(ab.booking_start_date,'MM/DD/YYYY') AS start_date, to_char(ab.booking_end_date,'MM/DD/YYYY') AS end_date FROM Apartment_Bookings ab JOIN Guests g ON ab.guest_id = g.guest_id JOIN Apartments a ON a.apt_id = ab.apt_id
SELECT a.apt_id, g.guest_first_name, g.guest_last_name, to_char(ab.booking_start_date,'MM-DD-YYYY') AS start_date, to_char(ab.booking_end_date,'MM-DD-YYYY') AS end_date FROM Apartment_Bookings ab JOIN Guests g ON ab.guest_id = g.guest_id JOIN Apartments a ON a.apt_id = ab.apt_id
SELECT Apartment_Bookings.booking_start_date, Apartment_Bookings.booking_end_date FROM Apartment_Bookings JOIN Apartments ON Apartment_Bookings.apt_id = Apartments.apt_id WHERE Apartments.apt_type_code ilike '%Duplex%' ORDER BY Apartment_Bookings.booking_start_date NULLS LAST
SELECT Apartment_Bookings.booking_start_date, Apartment_Bookings.booking_end_date FROM Apartment_Bookings JOIN Apartments ON Apartment_Bookings.apt_id = Apartments.apt_id WHERE Apartments.apt_type_code ilike '%Duplex%' ORDER BY Apartment_Bookings.booking_start_date NULLS LAST
SELECT Apartment_Bookings.apt_id, Apartment_Bookings.booking_start_date, Apartment_Bookings.booking_end_date FROM Apartment_Bookings JOIN Apartments ON Apartment_Bookings.apt_id = Apartments.apt_id WHERE Apartments.bedroom_count > 2
SELECT Apartment_Bookings.apt_id, Apartment_Bookings.booking_start_date, Apartment_Bookings.booking_end_date FROM Apartment_Bookings JOIN Apartments ON Apartment_Bookings.apt_id = Apartments.apt_id WHERE Apartments.bedroom_count > 2
SELECT Apartment_Bookings.booking_status_code FROM Apartments JOIN Apartment_Bookings ON Apartments.apt_id = Apartment_Bookings.apt_id WHERE Apartments.apt_number = 'Suite 634'
SELECT Apartment_Bookings.booking_status_code FROM Apartments JOIN Apartment_Bookings ON Apartments.apt_id = Apartment_Bookings.apt_id WHERE Apartments.apt_number = 'Suite 634'
SELECT DISTINCT Apartments.apt_number FROM Apartment_Bookings JOIN Apartments ON Apartment_Bookings.apt_id = Apartments.apt_id WHERE Apartment_Bookings.booking_status_code ILIKE '%Confirmed%' 
SELECT Apartments.apt_number FROM Apartment_Bookings JOIN Apartments ON Apartment_Bookings.apt_id = Apartments.apt_id WHERE Apartment_Bookings.booking_status_code ILIKE '%Confirmed%' 
SELECT AVG(cast(Apartments.room_count AS FLOAT)) AS average_room_count FROM Apartments JOIN Apartment_Bookings ON Apartments.apt_id = Apartment_Bookings.apt_id WHERE Apartment_Bookings.booking_status_code ilike '%Provisional%' 
SELECT AVG(cast(Apartments.room_count AS FLOAT)) AS average_room_count FROM Apartments JOIN Apartment_Bookings ON Apartments.apt_id = Apartment_Bookings.apt_id WHERE Apartment_Bookings.booking_status_code ilike '%Provisional%' 
SELECT g.guest_first_name, ab.booking_start_date, ab.booking_end_date FROM guests g JOIN apartment_bookings ab ON g.guest_id = ab.guest_id
SELECT g.guest_first_name, ab.booking_start_date, ab.booking_end_date FROM Apartment_Bookings ab JOIN Guests g ON ab.guest_id = g.guest_id
SELECT Apartment_Bookings.booking_start_date, Apartment_Bookings.booking_end_date FROM Apartment_Bookings JOIN Guests ON Apartment_Bookings.guest_id = Guests.guest_id WHERE Guests.gender_code ilike '%Female%' ORDER BY Apartment_Bookings.booking_start_date NULLS LAST
SELECT Apartment_Bookings.booking_start_date, Apartment_Bookings.booking_end_date FROM Apartment_Bookings JOIN Guests ON Apartment_Bookings.guest_id = Guests.guest_id WHERE Guests.gender_code = 'Female'
SELECT g.guest_first_name, g.guest_last_name FROM guests g JOIN apartment_bookings ab ON g.guest_id = ab.guest_id WHERE ab.booking_status_code ILIKE '%Confirmed%' 
SELECT g.guest_first_name, g.guest_last_name FROM guests g JOIN apartment_bookings ab ON g.guest_id = ab.guest_id WHERE booking_status_code ILIKE '%Confirmed%' 
SELECT Apartment_Facilities.facility_code FROM Apartments JOIN Apartment_Buildings ON Apartments.building_id = Apartment_Buildings.building_id JOIN Apartment_Facilities ON Apartments.apt_id = Apartment_Facilities.apt_id WHERE Apartments.bedroom_count > 4
SELECT Apartment_Facilities.facility_code FROM Apartments JOIN Apartment_Buildings ON Apartments.building_id = Apartment_Buildings.building_id JOIN Apartment_Facilities ON Apartments.apt_id = Apartment_Facilities.apt_id WHERE Apartments.bedroom_count > 4
SELECT SUM(cast(apartments.room_count AS FLOAT)) AS total_rooms FROM apartment_facilities JOIN apartments ON apartment_facilities.apt_id = apartments.apt_id WHERE apartment_facilities.facility_code = 'Gym'
SELECT SUM(cast(Apartments.room_count AS FLOAT)) AS total_rooms FROM Apartment_Facilities JOIN Apartments ON Apartment_Facilities.apt_id = Apartments.apt_id WHERE Apartment_Facilities.facility_code ilike '%Gym%'
SELECT SUM(cast(apartments.room_count AS FLOAT)) AS total_rooms FROM apartment_buildings JOIN apartments ON apartment_buildings.building_id = apartments.building_id WHERE apartment_buildings.building_short_name ilike '%Columbus%square%'
SELECT SUM(cast(room_count AS FLOAT)) AS total_rooms FROM Apartments JOIN Apartment_Buildings ON Apartments.building_id = Apartment_Buildings.building_id WHERE Apartment_Buildings.building_short_name ilike '%Columbus%square%'
SELECT Apartment_Buildings.building_full_name, Apartment_Buildings.building_address FROM Apartment_Buildings JOIN Apartments ON Apartment_Buildings.building_id = Apartments.building_id WHERE Apartments.bathroom_count > 2
SELECT Apartment_Buildings.building_full_name FROM Apartment_Buildings JOIN Apartments ON Apartment_Buildings.building_id = Apartments.building_id WHERE Apartments.bathroom_count > 2
SELECT a.apt_type_code, a.apt_number FROM Apartments a JOIN Apartment_Buildings ab ON a.building_id = ab.building_id WHERE ab.building_manager ilike '%Kyle%' ORDER BY a.apt_type_code NULLS LAST
SELECT a.apt_type_code, a.apt_number FROM Apartments a JOIN Apartment_Buildings b ON a.building_id = b.building_id WHERE b.building_manager ilike '%Kyle%' ORDER BY a.apt_type_code NULLS LAST
SELECT Apartments.apt_number FROM Apartment_Bookings JOIN Apartments ON Apartment_Bookings.apt_id = Apartments.apt_id WHERE Apartment_Bookings.booking_status_code ilike '%Provisional%' AND Apartment_Bookings.booking_status_code ilike '%Confirmed%'
SELECT Apartments.apt_id FROM Apartment_Bookings JOIN Apartments ON Apartment_Bookings.apt_id = Apartments.apt_id WHERE Apartment_Bookings.booking_status_code ilike '%Provisional%' AND Apartment_Bookings.booking_status_code ilike '%Confirmed%'
SELECT Apartments.apt_number FROM Apartments WHERE Apartments.apt_id IN (SELECT View_Unit_Status.apt_id FROM View_Unit_Status WHERE View_Unit_Status.available_yn = 0 AND View_Unit_Status.available_yn = 1)
SELECT Apartments.apt_number FROM Apartment_Bookings JOIN View_Unit_Status ON Apartment_Bookings.apt_id = View_Unit_Status.apt_id WHERE Apartment_Bookings.booking_status_code = 'available' AND View_Unit_Status.available_yn = 0 OR View_Unit_Status.available_yn = 1
SELECT g.season FROM game g JOIN injury_accident ia ON g.id = ia.game_id WHERE "Player" ILIKE '%walter%samuel%'
SELECT g.id AS game_id, to_number(g.score, '9999') AS score, to_date(g.date, 'YYYY-MM-DD') AS game_date FROM game g JOIN injury_accident ia ON g.id = ia.game_id GROUP BY game_id, score, game_date HAVING COUNT(ia.id) >= 2
SELECT s.id, s.name FROM stadium AS s JOIN game AS g ON s.id = g.stadium_id JOIN injury_accident AS ia ON g.id = i.game_id GROUP BY s.id, s.name ORDER BY COUNT(ia.id) DESC LIMIT 1
SELECT s.id, s.name FROM stadium AS s JOIN game AS g ON s.id = g.stadium_id JOIN injury_accident AS ia ON g.id = i.game_id GROUP BY s.id, s.name ORDER BY COUNT(i.id) DESC LIMIT 1
SELECT game.season, stadium.name FROM game JOIN injury_accident ON game.id = injury_accident.game_id JOIN stadium ON game.stadium_id = stadium.id WHERE injury_accident.injury IN ('Foot injury', 'Knee problem')
SELECT COUNT(DISTINCT injury_accident.injury) AS number_of_injuries FROM game JOIN injury_accident ON game.id = injury_accident.game_id WHERE game.season > 2010
SELECT s.name FROM stadium AS s JOIN game AS g ON s.id = g.stadium_id JOIN injury_accident AS ia ON g.id = ia.game_id WHERE "Player" ILIKE '%Walter%Samuel%' AND "Player" ILIKE '%Thiago%Motta%' GROUP BY s.name
SELECT s.name AS stadium_name, COUNT(g.id) AS total_games FROM stadium s JOIN game g ON s.id = g.stadium_id GROUP BY s.name
SELECT g.date, i.player, row_number() OVER (PARTITION BY i.game_id ORDER BY g.season DESC) AS row_num FROM injury_accident i JOIN game g ON i.game_id = g.id
SELECT c.name AS country_name, l.name AS league_name FROM country c JOIN league l ON c.id = l.country_id
SELECT COUNT(*) FROM league WHERE country_id = (SELECT id FROM country WHERE name ilike '%England%')
SELECT p.player_name FROM Player p JOIN Player_Attributes pa ON p.id = pa.player_fifa_api_id WHERE pa.overall_rating > (SELECT AVG(pa.overall_rating) FROM Player_Attributes pa)
SELECT p.player_name, MAX(pa.overall_rating) AS max_overall_rating FROM player_attributes pa JOIN player p ON pa.player_api_id = p.player_api_id GROUP BY p.player_name
SELECT Player.player_name FROM Player_Attributes JOIN Player ON Player_Attributes.player_api_id = Player.player_api_id WHERE Player_Attributes.crossing > 90 AND Player.preferred_foot = 'Right' 
SELECT Player.player_name FROM Player JOIN Player_Attributes ON Player.id = Player_Attributes.player_api_id WHERE preferred_foot = 'Left' AND overall_rating BETWEEN 85 AND 90
SELECT Player.player_name, Player_Attributes.overall_rating FROM Player_Attributes JOIN Player ON Player_Attributes.player_fifa_api_id = Player.player_api_id ORDER BY Player_Attributes.overall_rating DESC NULLS LAST LIMIT 3
SELECT Player.player_name, Player.birthday FROM Player ORDER BY Player.potential DESC NULLS LAST LIMIT 5
SELECT m.name, p.location FROM member_attendance ma JOIN member m ON ma.member_id = m.member_id JOIN performance p ON ma.performance_id = p.performance_id
SELECT m.name, p.location FROM member_attendance ma JOIN member m ON ma.member_id = m.member_id JOIN performance p ON ma.performance_id = p.performance_id
SELECT performance.date FROM member_attendance JOIN member ON member_attendance.member_id = member.member_id JOIN performance ON member_attendance.performance_id = performance.performance_id WHERE member.role ilike '%Violin%' 
SELECT m.name, p.date FROM member_attendance ma JOIN member m ON ma.member_id = m.member_id JOIN performance p ON ma.performance_id = p.performance_id ORDER BY COUNT(p.performance_id) DESC
SELECT c.title FROM course c JOIN prereq p ON c.course_id = p.prereq_id GROUP BY c.title HAVING COUNT(p.prereq_id) >= 2
SELECT instructor.name, COUNT(prereq.course_id) AS num_prereqs FROM instructor JOIN teaches ON instructor.ID = teaches.i_id JOIN prereq ON teaches.course_id = prereq.course_id GROUP BY instructor.name HAVING COUNT(prereq.course_id) >= 2
SELECT c.title, i.name AS instructor_name, d.dept_name AS department_name, COUNT(pr.course_id) AS num_prereqs 
SELECT c.title, i.salary, d.dept_name FROM course c JOIN instructor i ON c.dept_name = i.dept_name JOIN department d ON c.dept_name = d.dept_name WHERE EXISTS (SELECT 1 FROM prereq p WHERE p.course_id = c.course_id GROUP BY p.course_id HAVING COUNT(p.prereq_id) > 1)
SELECT s.name FROM student AS s JOIN takes AS t ON s.id = t.id WHERE t.year IN (2009, 2010)
SELECT s.name FROM student s JOIN takes t ON s.id = t.id WHERE t.year IN (2009, 2010)
SELECT c.title, i.name FROM course c JOIN teaches t ON c.course_id = t.course_id JOIN instructor i ON t.i_id = i.ID WHERE year = 2008 ORDER BY c.title ASC
SELECT c.title, i.name FROM course c JOIN teaches t ON c.course_id = t.course_id JOIN instructor i ON t.i_id = i.ID WHERE year = 2008 ORDER BY c.title ASC
SELECT i.name FROM instructor AS i JOIN advisor AS a ON i.id = a.i_id GROUP BY i.name HAVING COUNT(a.s_id) > 1
SELECT instructor.name FROM instructor WHERE instructor.id IN (SELECT advisor.i_id FROM advisor GROUP BY advisor.i_id HAVING COUNT(advisor.s_id) > 1)
SELECT s.name FROM student AS s JOIN advisor AS a ON s.id = a.s_id GROUP BY s.name HAVING COUNT(a.i_id) > 1
SELECT s.name FROM student AS s JOIN advisor AS a ON s.id = a.s_id GROUP BY s.name HAVING COUNT(a.i_id) > 1
SELECT i.ID AS instructor_id FROM instructor i JOIN advisor a ON i.ID = a.i_id JOIN student s ON a.s_id = s.ID WHERE s.dept_name = 'History'
SELECT i.ID FROM instructor i JOIN advisor a ON i.id = a.i_id JOIN student s ON a.s_id = s.id JOIN takes t ON s.id = t.id WHERE i.dept_name ilike '%History%' 
SELECT instructor.name, instructor.salary FROM instructor JOIN advisor ON instructor.id = advisor.i_id JOIN student ON advisor.s_id = student.id WHERE student.dept_name ilike '%History%'
SELECT instructor.name, instructor.salary FROM instructor JOIN teaches ON instructor.id = teaches.i_id JOIN section ON teaches.sec_id = section.sec_id JOIN student ON section.s_id = student.id WHERE instructor.dept_name = 'History' 
SELECT c.title FROM course c JOIN teaches t ON c.course_id = t.course_id JOIN section s ON t.sec_id = s.sec_id WHERE s.building = 'Chandler' AND s.semester = 'Fall' AND EXTRACT(YEAR FROM to_timestamp(s.year, 'YYYY')) = 2010
SELECT c.title FROM classroom c JOIN department d ON c.building = d.building JOIN course f ON d.dept_name = f.dept_name JOIN section s ON f.course_id = s.course_id WHERE d.dept_name ilike '%Chandler%' AND to_number(s.year::text, '9999') = 2010
SELECT instructor.name FROM instructor JOIN teaches ON instructor.id = teaches.ID JOIN course ON teaches.course_id = course.course_id WHERE course.title ilike '%C%Programming%' AND instructor.dept_name IN (SELECT dept_name FROM department WHERE dept_name ilike '%Computer%Science%')
SELECT instructor.name FROM instructor JOIN teaches ON instructor.ID = teaches.id JOIN course ON teaches.course_id = course.course_id WHERE course.title ilike '%C%Programming%' ORDER BY instructor.name NULLS LAST
SELECT instructor.name, instructor.salary FROM instructor JOIN advisor ON instructor.id = advisor.i_id JOIN student ON advisor.s_id = student.id WHERE student.dept_name = 'Math'
SELECT instructor.name, instructor.salary FROM instructor JOIN advisor ON instructor.id = advisor.i_id JOIN student ON advisor.s_id = student.id WHERE student.dept_name = 'Math'
SELECT i.name, s.tot_cred FROM instructor AS i JOIN advisor AS a ON i.id = a.i_id JOIN student AS s ON a.s_id = s.id WHERE dept_name = 'Math'
SELECT instructor.name FROM instructor JOIN advisor ON instructor.id = advisor.i_id JOIN department ON instructor.dept_name = department.dept_name WHERE department.dept_name ilike '%Math%' ORDER BY student.tot_cred DESC NULLS LAST
SELECT i.name AS instructor_name FROM student s JOIN advisor a ON s.id = a.s_id JOIN instructor i ON a.i_id = i.id ORDER BY s.tot_cred DESC LIMIT 1
SELECT i.name AS instructor_name, s.tot_cred AS total_credits FROM instructor i JOIN advisor a ON i.id = a.i_id JOIN student s ON a.s_id = s.id
SELECT instructor.name, AVG(instructor.salary) AS average_salary FROM instructor JOIN teaches ON instructor.id = teaches.i_id JOIN section ON teaches.sec_id = section.sec_id JOIN classroom ON section.building = classroom.building AND section.room_number = classroom.room_number JOIN department ON instructor.dept_name = department.dept_name GROUP BY instructor.name HAVING MAX(department.budget) ORDER BY average_salary DESC NULLS LAST
SELECT instructor.name, COUNT(instructor.id) AS total_instructors, AVG(instructor.salary) AS average_salary FROM instructor JOIN teaches ON instructor.id = teaches.i_id JOIN section ON teaches.sec_id = section.sec_id JOIN course ON section.course_id = course.course_id JOIN department ON course.dept_name = department.dept_name WHERE department.budget = (SELECT MAX(budget) FROM department) GROUP BY instructor.name
SELECT c.title, to_char(to_number(c.credits,'9999'),'FM999990D99') AS credits FROM course c JOIN teaches t ON c.course_id = t.course_id JOIN section s ON t.sec_id = s.sec_id AND t.year = s.year AND t.semester = s.semester JOIN classroom cl ON s.building = cl.building AND s.room_number = cl.room_number WHERE c.dept_name IN (SELECT dept_name FROM department) ORDER BY capacity DESC NULLS LAST LIMIT 1
SELECT c.title, i.name AS instructor_name, to_char(AVG(s.tot_students), '999D99') AS avg_students FROM classroom cl JOIN section s ON cl.building = s.building AND cl.room_number = s.room_number JOIN teaches t ON t.sec_id = s.sec_id AND t.course_id = s.course_id JOIN instructor i ON i.ID = t.i_id GROUP BY c.title, i.name HAVING AVG(s.tot_students) > 100
SELECT d.dept_name, COUNT(DISTINCT s.ID) AS student_count, COUNT(DISTINCT i.ID) AS instructor_count FROM department d JOIN course c ON d.dept_name = c.dept_name JOIN teaches t ON c.course_id = t.course_id AND c.dept_name = t.i_id JOIN instructor i ON i.ID = t.i_id JOIN student s ON s.dept_name = d.dept_name GROUP BY d.dept_name
SELECT d.dept_name, COUNT(DISTINCT s.ID) AS student_count, COUNT(DISTINCT i.ID) AS instructor_count FROM department d JOIN classroom c ON d.building = c.building JOIN section sec ON c.building = sec.building AND c.room_number = sec.room_number JOIN takes t ON sec.course_id = t.course_id AND sec.sec_id = t.sec_id AND sec.year = t.year AND semester = t.semester JOIN student s ON s.ID = t.ID JOIN instructor i ON i.ID = t.ID GROUP BY d.dept_name
SELECT s.name FROM student AS s JOIN takes AS t ON s.id = t.s_id AND t.course_id IN (SELECT c.course_id FROM course AS c WHERE c.title ILIKE '%International%Finance%') AND t.course_id NOT IN (SELECT prereq_id FROM prereq) 
SELECT s.name FROM student AS s JOIN takes AS t ON s.id = t.s_id AND t.course_id IN (SELECT c.course_id FROM course AS c JOIN prereq AS p ON c.course_id = p.prereq_id WHERE c.title ILIKE '%International%Finance%')
SELECT s.name FROM student AS s JOIN takes AS t ON s.id = t.id JOIN course AS c ON t.course_id = c.course_id AND t.sec_id = c.sec_id JOIN department AS d ON c.dept_name = d.dept_name WHERE d.dept_name ILIKE '%Statistics%'
SELECT s.name FROM student AS s JOIN takes AS t ON s.id = t.s_id JOIN course AS c ON t.course_id = c.course_id WHERE c.dept_name ILIKE '%Statistics%'
SELECT c.course_id, s.building, s.room_number, to_char(to_timestamp(s.year,'YYYY'),'YYYY') AS YEAR, to_char(to_date(s.semester,'MONTH'),'Month') AS semester FROM section s JOIN teaches t ON (t.course_id = s.course_id AND t.sec_id = s.sec_id) JOIN course c ON (c.course_id = t.course_id) WHERE dept_name ILIKE '%Psychology%' ORDER BY c.title NULLS LAST
SELECT c.building, s.room_number, to_char(to_timestamp(s.year), 'YYYY') AS YEAR, to_char(to_date(s.semester,'MM'),'Month') AS semester, f.title FROM section s JOIN course f ON s.course_id = f.course_id JOIN department d ON d.dept_name = f.dept_name WHERE d.dept_name ilike '%Psychology%'
SELECT instructor.name, course.course_id FROM instructor JOIN teaches ON instructor.ID = teaches.ID JOIN course ON teaches.course_id = course.course_id
SELECT instructor.name, course.course_id FROM instructor JOIN teaches ON instructor.ID = teaches.ID JOIN course ON teaches.course_id = course.course_id
SELECT instructor.name FROM instructor JOIN teaches ON instructor.ID = teaches.ID JOIN department ON instructor.dept_name = department.dept_name WHERE department.dept_name ilike '%Art%' 
SELECT instructor.name, course.course_id FROM instructor JOIN teaches ON instructor.ID = teaches.ID JOIN course ON teaches.course_id = course.course_id WHERE instructor.dept_name ilike '%Art%' ORDER BY instructor.name NULLS LAST
SELECT p.name, d.date, v.venue FROM people p JOIN debate_people dp ON p.people_id = dp.debate_id JOIN debate d ON dp.debate_id = d.debate_id JOIN venue v ON d.venue = v.venue WHERE if_affirmative_win_others = 1
SELECT p.name, d.date, v.venue FROM people p JOIN debate_people dp ON p.people_id = dp.affirmative_win_others JOIN debate d ON dp.debate_id = d.debate_id JOIN venue v ON d.venue = v.venue WHERE if_cafirmative_win_others = 1
SELECT p.name FROM people p JOIN debate_people dp ON p.people_id = dp.debate_id JOIN debate d ON dp.debate_id = d.debate_id WHERE if_cafirmative_win_others = 1 AND num_of_audience > 200
SELECT p.name, COUNT(dp.affirmative) AS affirmative_count FROM people p JOIN debate_people dp ON p.people_id = dp.debate_id GROUP BY p.name
SELECT p.name FROM people p JOIN debate_people dp ON p.people_id = dp.debate_id JOIN debate d ON dp.debate_id = d.debate_id GROUP BY p.name HAVING COUNT(dp.negative) >= 2
SELECT Policies.Policy_Type_Code FROM Policies JOIN Customers ON Policies.customer_id = Customers.customer_id WHERE Customers.customer_details ilike '%Dayana%Robel%' ORDER BY Policies.policy_type_code NULLS LAST
SELECT Policies.Policy_Type_Code FROM Customers JOIN Policies ON Customers.customer_id = Policies.customer_id WHERE customers.customer_details ilike '%Dayana%Robel%' ORDER BY Policies.policy_type_code NULLS LAST
SELECT SUM(claims_documents.amount_claimed) AS total_amount_claimed FROM claims_documents ORDER BY claims_documents.created_date DESC LIMIT 1
SELECT SUM(Claims_Documents.amount_claimed) AS total_amount_claimed FROM Claims_Documents JOIN Claims_Documents.claim_id = Claim_Headers.claim_id WHERE Claims_Documents.created_date = (SELECT MAX(created_date) FROM Claims_Documents)
SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.policy_id JOIN claim_headers ON policies.policy_id = claim_headers.policy_id WHERE customers.customer_id IN (SELECT customer_id FROM (SELECT policy_id, row_number() OVER(PARTITION BY policy_id ORDER BY amount_claimed DESC) AS rn FROM claims_headers) AS subquery WHERE subquery.rn = 1)
SELECT customers.customer_details FROM claims_headers JOIN policies ON claims_headers.policy_id = policies.policy_id JOIN customers ON customers.customer_id = policies.customer_id ORDER BY claims_headers.amount_claimed DESC LIMIT 1
SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = claims.policy_id WHERE customers.customer_id IN (SELECT MIN(claims.amount_paid) AS min_payment_claim_id FROM claims GROUP BY claims.policy_id)
SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.policy_id JOIN claim_headers ON policies.policy_id = claim_headers.claim_header_id ORDER BY claim_headers.amount_claimed ASC LIMIT 1
SELECT c.claim_status_name, COUNT(*)::FLOAT / (SELECT COUNT(*) FROM claims_having_staff) AS proportion FROM claims_having_staff c JOIN claims_processing cp ON c.claim_id = cp.claim_id GROUP BY c.claim_status_name ORDER BY proportion DESC NULLS LAST LIMIT 1
SELECT c.claim_status_name, COUNT(*) AS number_of_claims FROM claims c JOIN claim_stages cs ON c.claim_id = cs.claim_id GROUP BY c.claim_status_name ORDER BY number_of_claims DESC NULLS LAST LIMIT 1
SELECT c.customer_details FROM customers c JOIN policies p ON c.customer_id = p.policy_id
SELECT Customers.customer_details FROM Customers JOIN Policies ON Customers.customer_id = Policies.customer_id WHERE Policies.policy_type_code ilike '%deputy%'
SELECT Customers.customer_details FROM Customers JOIN Policies ON Customers.customer_id = policies.customer_id WHERE Policy_Type_Code IN ('deputy', 'uniformed')
SELECT Customers.customer_details FROM Customers JOIN Policies ON Customers.customer_id = Policies.customer_id WHERE Policies.policy_type_code IN ('Deputy', 'Uniform')
SELECT customers.customer_details FROM customers WHERE customers.customer_id IN (SELECT policies.policy_id FROM policies) GROUP BY customers.customer_details HAVING COUNT(policies.policy_id) = (SELECT MAX(count_of_policies)) FROM customers, policies)
SELECT customers.customer_details FROM customers WHERE customers.customer_id IN (SELECT policies.policy_id FROM policies) GROUP BY customers.customer_details HAVING COUNT(policies.policy_id) > ALLERATE.COUNT(customers.customer_id)
SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id ORDER BY policies.policy_start_date DESC LIMIT 1
SELECT customers.customer_details FROM customers JOIN policies ON customers.customer_id = policies.customer_id ORDER BY policies.start_date DESC LIMIT 1
SELECT a.account_id, a.account_name, a.other_account_details FROM accounts a JOIN customers c ON a.customer_id = c.customer_id WHERE c.customer_first_name ilike '%Meaghan%' ORDER BY a.account_id NULLS LAST
SELECT a.account_id, c.customer_first_name, c.customer_last_name, to_char(a.date_account_opened, 'DD-MM-YYYY') AS account_opening_date, row_number() OVER (PARTITION BY c.customer_id ORDER BY a.date_account_opened DESC) AS recent_account_opening FROM accounts a JOIN customers c ON a.customer_id = c.customer_id WHERE customer_first_name ilike '%Meaghan%'
SELECT a.account_name, a.other_account_details FROM accounts a JOIN customers c ON a.customer_id = c.customer_id WHERE c.customer_first_name ilike '%Meaghan%' AND c.customer_last_name ilike '%Keeling%'
SELECT a.account_id, c.customer_first_name, c.customer_last_name, to_char(a.date_account_opened, 'DD-MM-YYYY') AS account_creation_date FROM accounts a JOIN customers c ON a.customer_id = c.customer_id WHERE c.customer_first_name ilike '%Meaghan%' AND c.customer_last_name ilike '%Keeling%'
SELECT Customers.customer_first_name, Customers.customer_last_name FROM Customers JOIN Accounts ON Customers.customer_id = Accounts.account_id WHERE Accounts.account_name = '900'
SELECT Customers.customer_first_name, Customers.customer_middle_initial, Customers.customer_last_name FROM Customers JOIN Accounts ON Customers.customer_id = Accounts.account_id WHERE Accounts.account_name = '900'
SELECT Customers.customer_first_name, Customers.customer_last_name, Customers.phone_number FROM Customers WHERE customer_id IN (SELECT Accounts.customer_id FROM Accounts)
SELECT Customers.customer_first_name, Customers.customer_last_name, Customers.phone_number FROM Customers JOIN Accounts ON Customers.customer_id = Accounts.account_id
SELECT customer_id, COUNT(account_id) AS account_count FROM accounts GROUP BY customer_id), max_account_customer AS (SELECT MAX(account_count) AS max_account_count, MIN(customer_id) AS min_customer_id FROM account_counts) SELECT c.customer_first_name, c.customer_last_name, a.account_count FROM customers c JOIN account_counts a ON c.customer_id = a.customer_id WHERE a.account_count = (SELECT max_account_count FROM max_account_customer)
SELECT customers.customer_id, customers.customer_first_name, customers.customer_last_name FROM customers WHERE customers.customer_id IN (SELECT accounts.customer_id FROM accounts) GROUP BY customers.customer_id, customers.customer_first_name, customers.customer_last_name ORDER BY COUNT(accounts.customer_id) DESC NULLS LAST LIMIT 1
SELECT c.customer_id, c.customer_first_name, c.customer_last_name, COUNT(a.account_id) AS account_count FROM Customers c JOIN Accounts a ON c.customer_id = a.customer_id GROUP BY c.customer_id, c.customer_first_name, c.customer_last_name
SELECT c.customer_id, c.customer_first_name, c.customer_middle_initial, c.customer_last_name, COUNT(a.account_id) AS account_count FROM Customers c JOIN Orders o ON c.customer_id = o.customer_id JOIN Accounts a ON c.customer_id = a.customer_id GROUP BY c.customer_id, c.customer_first_name, c.customer_middle_initial, c.customer_last_name
SELECT c.customer_first_name, c.customer_id FROM customers c JOIN accounts a ON c.customer_id = a.customer_id GROUP BY c.customer_first_name, c.customer_id HAVING COUNT(a.account_id) >= 2
SELECT c.customer_first_name, CAST(COUNT(a.account_id) AS FLOAT) / NULLIF((SELECT COUNT(*) FROM Accounts), 0) AS account_ratio FROM Customers c JOIN Accounts a ON c.customer_id = a.customer_id GROUP BY c.customer_first_name HAVING COUNT(a.account_id) >= 2
