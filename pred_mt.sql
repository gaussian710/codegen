SELECT DISTINCT EXTRACT(YEAR FROM CREATION) AS YEAR_OF_CREATION FROM department JOIN head ON management.head_id = head.head_id WHERE head.born_state = 'alabama'
SELECT d.name, CAST(d.num_employees AS FLOAT) / NULLIF(m.num_employees, 0) AS employee_ratio FROM department d JOIN management m ON d.department_id = m.department_id WHERE temporary_acting ILIKE '%Yes%'
SELECT CAST(head.age AS FLOAT) AS age FROM head JOIN management ON head.head_id = management.head_id WHERE management.temporary_acting ILIKE '%yes%' GROUP BY age
SELECT head.born_state FROM head JOIN management ON head.head_id = management.head_id WHERE management.department_id IN (SELECT department_id FROM department WHERE name ILIKE '%Treasury%') AND management.department_id IN (SELECT department_id FROM department WHERE name ILIKE '%Homeland security%')
SELECT d.department_id, d.name, COUNT(h.head_id) AS num_heads FROM department d JOIN management m ON d.department_id = m.department_id JOIN head h ON m.head_id = h.head_id GROUP BY d.department_id, d.name HAVING COUNT(h.head_id) > 1
SELECT m.year, d.official_name FROM management AS m JOIN department AS d ON m.host_city_id = d.city_id
SELECT m.competition_id, d.official_name, h.year FROM management AS m JOIN department AS d ON m.host_city_id = d.city_id JOIN head AS h ON m.year = h.year
SELECT department.official_name FROM department JOIN management ON department.city_id = management.host_city_id GROUP BY department.official_name HAVING COUNT(management.competition_id) > 1
SELECT department.official_name FROM department JOIN management ON department.city_id = management.host_city_id GROUP BY department.official_name HAVING COUNT(management.competition_id) > 1
SELECT department.status FROM department WHERE department.city_id IN (SELECT management.host_city_id FROM management GROUP BY management.host_city_id ORDER BY COUNT(management.competition_id) DESC LIMIT 1)
SELECT department.status FROM department JOIN management ON department.city_id = management.host_city_id GROUP BY department.status ORDER BY COUNT(management.competition_id) DESC LIMIT 1
SELECT m.theme FROM management AS m JOIN department AS d ON m.host_city_id = d.city_id WHERE CAST(d.population AS FLOAT) > 1000
SELECT management.theme FROM management JOIN department ON management.host_city_id = department.city_id WHERE CAST(department.population AS FLOAT) > 1000
SELECT c.course_name, COUNT(r.student_id) AS total_students FROM course c JOIN registration r ON c.course_code = r.course_code GROUP BY c.course_name ORDER BY total_students DESC NULLS LAST LIMIT 1
SELECT c.course_name, COUNT(r.student_id) AS total_students FROM course c JOIN registration r ON c.course_id = r.course_id GROUP BY c.course_name ORDER BY total_students DESC NULLS LAST LIMIT 1
SELECT head.first_name, head.last_name FROM head
SELECT head.first_name, head.last_name FROM head
SELECT s.student_id, c.course_name FROM student AS s CROSS JOIN course AS c
SELECT m.student_id, m.student_details FROM management AS m JOIN (SELECT s.student_id, MAX(s.registered_on) AS recent_registered_on FROM student_course AS s GROUP BY s.student_id) AS recent_courses ON m.student_id = recent_courses.student_id
SELECT m.student_id, m.student_details FROM management AS m JOIN (SELECT s.student_id, row_number() OVER(PARTITION BY s.student_id ORDER BY c.course_start_date DESC) AS rn FROM student_courses AS s JOIN courses AS c ON s.course_id = c.course_id) AS subquery ON m.student_id = subquery.student_id WHERE subquery.rn = 1
SELECT COUNT(*) AS total_students FROM student WHERE course_taken = 'English'
SELECT COUNT(*) AS total_students FROM student WHERE language_preference = 'English'
SELECT COUNT(*) AS total_courses FROM course_student WHERE student_id = 171
SELECT COUNT(*) AS total_courses FROM course_taken WHERE student_id = 171
SELECT head.person_id FROM head WHERE head.email_address = 'stanley.monahan@example.org'
SELECT head.person_id FROM head WHERE head.email_address = 'stanley.monahan@example.org'
SELECT m.student_id, COUNT(c.course_id) AS course_count FROM management m JOIN course c ON m.student_details ilike '%' + to_number(c.course_code::text, '9999') + '%' GROUP BY m.student_id ORDER BY course_count DESC LIMIT 1
SELECT m.student_details FROM management AS m JOIN (SELECT s.student_id, COUNT(c.course_id) AS total_courses FROM student AS s JOIN course_registration AS cr ON s.student_id = cr.student_id GROUP BY s.student_id) AS subquery ON m.student_id = subquery.student_id ORDER BY subquery.total_courses DESC NULLS LAST LIMIT 1
SELECT student_id, COUNT(course_id) AS course_count FROM management GROUP BY student_id
SELECT s.student_id, COUNT(r.course_id) AS total_courses FROM student s JOIN registration r ON s.student_id = r.student_id GROUP BY s.student_id
SELECT c.course_name, COUNT(r.student_id) AS total_registered_students FROM course c JOIN registration r ON c.course_id = r.course_id WHERE status = 'registered' GROUP BY c.course_name
SELECT c.course_id, COUNT(r.student_id) AS number_of_students, to_char(AVG(to_number(r.marks,'999999999')),'FM999990D00') AS average_marks FROM course c JOIN registration r ON c.course_id = r.course_id GROUP BY c.course_id
SELECT head.cell_mobile_number FROM head WHERE head.assessment_code = 'Fail'
SELECT head.cell_mobile_number FROM head WHERE head.first_name ilike '%Fail%' ORDER BY head.cell_mobile_number NULLS LAST
SELECT department.city FROM department
SELECT department.city FROM department
SELECT department.city FROM department WHERE department.address_id IN (SELECT management.student_details AS number FROM management)
SELECT department.city FROM department WHERE department.address_id IN (SELECT management.student_details AS number FROM management)
SELECT s.student_id FROM student_details AS sd JOIN student AS s ON sd.student_id = s.student_id WHERE sd.course_statistics IS NOT NULL ORDER BY s.registered_date
SELECT s.student_id FROM student_course_statistics s ORDER BY s.creation_date ASC
SELECT s.student_id, to_number(s.gpa, '99999999') AS gpa, to_date(s.class_start_time,'YYYYMMDDHH24MISS') AS class_start_date FROM student_course_details sc JOIN student s ON sc.student_id = s.student_id WHERE subject_code = 'STATISTICS' ORDER BY class_start_date NULLS LAST
SELECT s.student_id FROM student AS s JOIN course_enrollment AS ce ON s.student_id = ce.student_id JOIN course AS c ON ce.course_id = c.course_id JOIN department d ON c.department_id = d.department_id WHERE d.name ilike '%Statistics%' ORDER BY ce.date_enrolled ASC
SELECT distinct station_name FROM management WHERE bikes_available >= 7
SELECT d.name AS department_name, h.station_id AS station_id, m.start_station_name AS manager_name FROM head h JOIN management m ON h.bike_id = m.bike_id AND h.duration > 7 JOIN department d ON h.station_id = d.id
SELECT d.latitude, d.longitude, c.city FROM department d JOIN head h ON d.id = h.start_station_id JOIN management m ON h.bike_id = m.bike_id AND h.duration = m.duration JOIN city c ON d.city = c.name WHERE (m.duration/60)::FLOAT = (SELECT MIN(m2.duration/60) FROM management m2)
SELECT d.latitude, d.longitude, d.city FROM department d JOIN head h ON d.id = h.start_station_id JOIN management m ON h.bike_id = m.bike_id WHERE m.duration = (SELECT MIN(duration) FROM management)
SELECT d.name AS station_name, h.bikes_available AS average_bikes_available, m.start_station_id AS start_station_id FROM head h JOIN management m ON h.management_id = m.id JOIN department d ON m.start_station_id = d.id WHERE to_number(to_char(m.start_date,'MM'),'99')=12 AND bikes_available > 14
SELECT d.name AS station_name, h.bikes_available AS average_bikes_available, m.start_station_id AS start_station_id FROM head h JOIN management m ON h.management_id = m.id JOIN department d ON m.start_station_id = d.id WHERE to_number(to_char(m.start_date,'MM'),'99')=12 AND bikes_available > 14
SELECT m.id AS management_id, to_number(m.duration,'9999') AS duration FROM management m JOIN head h ON m.id = h.start_station_id WHERE m.zip_code IS NOT NULL AND to_number(h.bikes_available,'9999') > 0
SELECT m.zip_code, to_number(to_char(AVG(t.temp), 'FM999990D0'), 'FM999990D0') AS avg_temp FROM management m JOIN trip t ON m.id = t.management_id GROUP BY m.zip_code HAVING to_number(to_char(AVG(t.temp), 'FM999990D0'), 'FM999990D0') > 60
SELECT m.end_station_name, to_date(m.end_date,'YYYY-MM-DD') AS end_installation_date FROM management m
SELECT m.end_station_id, to_date(m.start_date,'YYYY-MM-DD') AS start_date FROM management m JOIN head h ON m.head_id = h.id
SELECT m.start_station_id FROM management AS m JOIN head h ON m.start_station_id = h.head_id JOIN department d ON h.docks_available = d.dock_count WHERE m.duration = (SELECT MAX(duration) FROM management)
SELECT m.start_station_id, MAX(d.dock_count) AS max_dock_count FROM management m JOIN head h ON m.start_station_id = h.station_id JOIN department d ON h.docks_available = d.id GROUP BY m.start_station_id
SELECT COUNT(*) FROM management WHERE end_station_name not ilike '%San%Francisco%'
SELECT COUNT(*) AS total_trips FROM management WHERE end_station_name not ilike '%San%Francisco%'
SELECT department.name FROM department WHERE department.city != 'San Jose' AND (SELECT AVG(head.bikes_available) AS avg_bikes_available FROM head WHERE head.station_id = department.id) > 10
SELECT d.name FROM department d JOIN head h ON d.id = h.station_id WHERE h.bikes_available > 10 AND d.city != 'San Jose' 
SELECT d.name AS dock_name, h.station_id, AVG(m.duration) OVER (PARTITION BY h.station_id) AS avg_trip_duration FROM head h JOIN department d ON h.station_id = d.id JOIN management m ON h.station_id = m.start_station_id
SELECT d.name AS dock_name, l.latitude, l.longitude, AVG(m.duration) AS average_duration FROM management m JOIN head h ON m.start_station_id = h.bikes_available AND m.end_station_id = h.docks_available JOIN department d ON h.dock_count = d.id GROUP BY d.name, l.latitude, l.longitude
SELECT d.latitude, MIN(m.duration) AS min_duration FROM department d JOIN head h ON d.id = h.station_id JOIN management m ON h.bikes_available > 0 AND to_number(m.start_date,'9999-MM-DD') BETWEEN to_number(d.installation_date,'9999-MM-DD') AND to_number(d.installation_date,'9999-MM-DD') + interval '1 year' GROUP BY d.latitude
SELECT d.name, l.latitude, MIN(m.duration) AS min_duration FROM department d JOIN head h ON d.id = h.station_id JOIN management m ON h.station_id = m.end_station_id GROUP BY d.name, l.latitude
SELECT d.id, d.name FROM department d JOIN head h ON d.id = h.station_id WHERE h.bikes_available > 12
SELECT d.id AS station_id, d.name AS dock_name FROM department d JOIN head h ON d.id = h.station_id WHERE h.bikes_available > 12
SELECT COUNT(*) AS total_trips FROM management WHERE start_station_name = 'Mountain View' AND end_station_name = 'Palo Alto'
SELECT COUNT(*) AS total_trips FROM management WHERE start_station_name ilike '%Mountain%Vista%' AND end_station_name ilike '%Palo%Alto%'
SELECT AVG(lat) AS average_latitude, AVG(lon) AS average_longitude FROM management
SELECT AVG(long) AS average_longitude, AVG(lat) AS average_latitude FROM management
SELECT h.title, to_date(d.publication_date,'YYYY-MM-DD') AS publication_date FROM head h JOIN department d ON h.book_id = d.book_id
SELECT head.writer FROM department JOIN head ON department.book_id = head.book_id WHERE department.price > 4000000
SELECT h.title FROM head h JOIN department d ON h.book_id = d.book_id ORDER BY d.price DESC
SELECT a.name AS actor_name, m.name AS musical_name FROM actor a JOIN appearance appearance p ON a.actor_id = p.actor_id JOIN musical m ON p.musical_id = m.musical_id
SELECT h.name AS actor_name, d.name AS musical_name FROM head h JOIN department d ON h.musical_id = d.musical_id
SELECT h.name FROM head h JOIN department d ON h.musical_id = d.musical_id WHERE d.name ILIKE '%The%Phantom%of%the%Opera%' 
SELECT h.name FROM head h JOIN department d ON h.musical_id = d.musical_id WHERE d.award = 'The Phantom of the Opera'
SELECT h.name FROM head h JOIN department d ON h.musical_id = d.musical_id ORDER BY d.year DESC
SELECT h.name, d.year FROM head AS h JOIN department AS d ON h.musical_id = d.musical_id ORDER BY d.year DESC
SELECT d.name, COUNT(h.actor_id) AS actor_count FROM department d JOIN head h ON d.musical_id = h.musical_id GROUP BY d.name
SELECT department.musical_id, COUNT(DISTINCT head.actor_id) AS actor_count FROM department JOIN head ON department.musical_id = head.musical_id GROUP BY department.musical_id
SELECT d.name FROM department d JOIN head h ON d.musical_id = h.musical_id GROUP BY d.name HAVING COUNT(h.actor_id) >= 3
SELECT d.name FROM department d JOIN head h ON d.musical_id = h.musical_id GROUP BY d.name HAVING COUNT(h.actor_id) >= 3
SELECT m.name FROM management AS m WHERE m.followers > (SELECT COUNT(*) FROM management WHERE name ILIKE '%Tyler%Swift%')
SELECT m.name, m.email FROM management AS m WHERE m.followers > 1
SELECT m.name FROM management AS m WHERE m.followers > 1
SELECT m.uid FROM management AS m JOIN head AS h ON m.id = h.uid WHERE h.text ILIKE '%Mary%' AND h.text ILIKE '%Susan%'
SELECT m.uid FROM management AS m WHERE m.name IN ('Mary', 'Susan')
SELECT m.name, COUNT(t.text) AS total_tweets FROM management m JOIN head h ON m.uid = h.uid JOIN tweet t ON h.id = t.head_id GROUP BY m.name
SELECT m.name, d.partitionid FROM management AS m JOIN head AS h ON m.uid = h.uid JOIN department AS d ON m.partitionid = d.f1 WHERE h.createdate < (SELECT MAX(createdate) FROM head)
SELECT m.name, COUNT(h.id) AS total_tweets FROM management m JOIN head h ON m.uid = h.uid GROUP BY m.name HAVING COUNT(h.id) > 1
SELECT h.catalog_name, to_char(h.date_of_publication, 'YYYY-MM-DD') AS date_of_publication FROM head h JOIN management m ON h.catalog_id = m.catalog_id WHERE m.catalog_level_number > 5
SELECT h.catalog_name, to_char(h.date_of_publication, 'YYYY-MM-DD') AS publication_date FROM head h JOIN management m ON h.catalog_id = m.catalog_id WHERE m.catalog_level_number > 5
SELECT h.catalog_name, COUNT(d.attribute_id) AS COUNT FROM head h JOIN department d ON TRUE GROUP BY h.catalog_name ORDER BY COUNT DESC NULLS LAST LIMIT 1
SELECT h.catalog_name FROM head h JOIN department d ON h.catalog_id = d.attribute_id GROUP BY h.catalog_name ORDER BY COUNT(d.attribute_id) DESC NULLS LAST LIMIT 1
SELECT m.catalog_level_name FROM management AS m JOIN head AS h ON m.catalog_id = h.catalog_id WHERE m.catalog_level_number = 1
SELECT m.catalog_level_name FROM management AS m JOIN head AS h ON m.catalog_id = h.catalog_id WHERE h.date_of_publication IN (SELECT MAX(date_of_publication) FROM head)
SELECT head.catalog_name FROM management JOIN head ON management.catalog_id = head.catalog_id WHERE management.catalog_level_number = 8
SELECT head.catalog_name FROM management JOIN head ON management.catalog_id = head.catalog_id WHERE management.catalog_level_number = 8
SELECT department.attribute_id, department.attribute_name FROM department WHERE department.attribute_value = 0
SELECT department.attribute_name, department.attribute_id FROM department WHERE department.attribute_data_type = '0'
SELECT department.flight_name FROM department WHERE department.flno = 99
SELECT department.name FROM department WHERE department.flno = 99
SELECT department.flno FROM department WHERE department.aircraft ilike '%Airbus%A340-300%' ORDER BY department.flno NULLS LAST
SELECT department.flno FROM department WHERE department.aid = 17770710
SELECT a.name AS aircraft_name, COUNT(d.aid) AS flight_count FROM aircraft a JOIN department d ON a.id = d.aid GROUP BY a.name
SELECT a.name AS aircraft_name, COUNT(d.aid) AS total_flights FROM aircraft a JOIN department d ON a.id = d.aid GROUP BY a.name
SELECT a.name FROM aircraft AS a JOIN flight AS f ON a.aid = f.aid GROUP BY a.name HAVING COUNT(f.aid) >= 2
SELECT a.name AS aircraft_name, COUNT(d.aid) AS flight_count FROM aircraft a JOIN department d ON a.id = d.aid GROUP BY a.name HAVING COUNT(d.aid) >= 2
SELECT a.name AS aircraft_name FROM aircraft a JOIN pilot p ON a.id = p.aid JOIN certificate c ON p.cid = c.id WHERE c.instructor = 'John Williams'
SELECT a.name AS aircraft_name FROM aircraft a JOIN pilots p ON a.id = p.aid JOIN head h ON p.eid = h.eid WHERE h.name ILIKE '%John%William%' ORDER BY a.name NULLS LAST
SELECT e.name FROM employee e JOIN certification c ON e.id = c.eid WHERE c.certificate_type_code = 'Boeing 737-800'
SELECT e.name FROM employee e JOIN certification c ON e.id = c.eid WHERE c.certificate_type_code = 'Boeing 737-800'
SELECT e.name FROM employee e JOIN certification c ON e.eid = c.eid WHERE c.certification_type IN ('Boeing 737-800', 'Airbus A340-300')
SELECT m.name FROM model m JOIN department d ON m.aid = d.aid WHERE d.origin ilike '%Boeing%737-800%' AND d.destination ilike '%Airbus%A340-300%'
SELECT a.name AS aircraft_name, COUNT(d.aid) AS number_of_departments FROM aircraft a JOIN department d ON a.id = d.aid GROUP BY a.name ORDER BY number_of_departments ASC NULLS LAST LIMIT 1
SELECT a.name AS aircraft_name, COUNT(DISTINCT p.pid) AS total_pilots FROM pilot p JOIN assignment a ON p.aid = a.aid GROUP BY a.name ORDER BY total_pilots ASC NULLS LAST
SELECT h.name, d.distance FROM head h JOIN department d ON h.aid = d.aid WHERE d.distance > 5000
SELECT d.origin, d.destination, d.distance FROM department d JOIN head h ON d.aid = h.aid WHERE d.distance > 5000
SELECT m.name, to_char(m.salary, '99999D99') AS salary_str FROM management m JOIN (SELECT eid FROM employee WHERE certification_count = (SELECT MAX(certification_count) FROM employee)) e ON m.eid = e.eid
SELECT m.name, to_char(AVG(d.distance), 'FM999990D0') AS average_distance FROM management m JOIN department d ON m.eid = d.aid GROUP BY m.name ORDER BY average_distance DESC NULLS LAST LIMIT 1
SELECT m.name, SUM(d.price) AS total_price, COUNT(c.certificate_id) AS num_certificates FROM management m JOIN department d ON m.eid = d.aid JOIN certificate c ON m.eid = c.eid WHERE d.distance > 5000 GROUP BY m.name ORDER BY total_price DESC, num_certificates DESC LIMIT 1
SELECT m.name, to_char(AVG(d.price), '99999D99') AS average_price FROM management AS m JOIN department AS d ON m.eid = d.aid WHERE d.price > 5000 GROUP BY m.name ORDER BY average_price DESC NULLS LAST LIMIT 1
SELECT COUNT(*) FROM management WHERE Sex = 'female' AND (Allergy = 'milk' OR Allergy = 'egg')
SELECT COUNT(*) FROM management WHERE sex = 'female' AND (allergy ilike '%milk%' OR allergy ilike '%eggs%')
SELECT COUNT(*) FROM student WHERE allergy IS NOT NULL
SELECT COUNT(*) FROM student WHERE allergy_type = 'food'
SELECT department.allergytype, COUNT(head.stuid) AS num_students FROM department JOIN head ON department.allergy = head.allergy GROUP BY department.allergytype
SELECT d.allergy, COUNT(*) AS total_students FROM department d JOIN head h ON d.allergy = h.allergy GROUP BY d.allergy
SELECT d.allergy, h.allergytype FROM management m JOIN head h ON m.stuid = h.stuid JOIN department d ON h.allergy = d.allergy WHERE m.fname ilike '%Lisa%' ORDER BY d.allergy NULLS LAST
SELECT d.allergy, h.allergytype FROM department d JOIN head h ON d.allergy = h.allergy WHERE h.fname ILIKE '%Lisa%'
SELECT m.fname, m.city_code FROM management AS m JOIN head AS h ON m.StuID = h.StuID WHERE h.Allergy ILIKE '%milk%' OR h.allery ILIKE '%cat%'
SELECT m.fname, m.city_code FROM management AS m JOIN head AS h ON m.StuID = h.StuID WHERE h.allergy ILIKE '%milk%' OR h.allergy ILIKE '%cat%'
SELECT c.first_name, c.last_name FROM customer c JOIN order o ON c.id = o.customer_id ORDER BY o.order_date DESC NULLS LAST LIMIT 5
SELECT c.first_name, c.last_name FROM customer c JOIN order o ON c.id = o.customer_id ORDER BY o.order_date DESC NULLS LAST LIMIT 5
SELECT c.first_name, c.last_name, COUNT(o.order_id) AS total_orders FROM customer c JOIN order o ON c.customer_id = o.customer_id GROUP BY c.first_name, c.last_name ORDER BY total_orders DESC NULLS LAST LIMIT 10
SELECT c.first_name, c.last_name, COUNT(o.order_id) AS total_orders FROM customer c JOIN order o ON c.customer_id = o.customer_id GROUP BY c.first_name, c.last_name ORDER BY total_orders DESC NULLS LAST LIMIT 10
SELECT c.first_name, c.last_name, SUM(o.gross_sales) AS total_gross_sales FROM customer c JOIN order o ON c.id = o.customer_id GROUP BY c.first_name, c.last_name ORDER BY total_gross_sales DESC NULLS LAST LIMIT 10
SELECT c.first_name, c.last_name, SUM(s.gross_sales) AS total_sales FROM customer c JOIN sales s ON c.customer_id = s.customer_id GROUP BY c.first_name, c.last_name ORDER BY total_sales DESC NULLS LAST LIMIT 10
SELECT genre.name, COUNT(track) AS total_tracks FROM genre JOIN track ON genre.id = track.genre_id GROUP BY genre.name ORDER BY total_tracks DESC NULLS LAST LIMIT 5
SELECT g.name AS genre_name, COUNT(t.id) AS total_tracks FROM track t JOIN genre g ON t.genre_id = g.id GROUP BY genre_name ORDER BY total_tracks DESC NULLS LAST LIMIT 5
SELECT c.first_name, c.last_name FROM customer c JOIN invoice i ON c.id = i.customer_id ORDER BY i.price ASC NULLS LAST LIMIT 10
SELECT c.first_name, c.last_name FROM customer c JOIN invoice i ON c.id = i.customer_id ORDER BY i.price ASC NULLS LAST LIMIT 10
SELECT a.title FROM album a JOIN artist ar ON a.artist_id = ar.id
SELECT a.title FROM album AS a JOIN artist AS ar ON a.artist_id = ar.id
SELECT COUNT(*) AS total_albums FROM artist WHERE name ilike '%Billy%Cobham%'
SELECT COUNT(*) AS total_albums FROM artist WHERE name ilike '%Billy%Cobain%'
SELECT a.title FROM album a JOIN artist ar ON a.artist_id = ar.id WHERE ar.name ilike '%led%'
SELECT management.title FROM management WHERE management.artist_id IN (SELECT head.seq FROM head WHERE head.name ilike '%led%')
SELECT COUNT(*) AS total_customers FROM artist a JOIN management m ON a.id = m.artist_id JOIN head h ON m.seq = h.name WHERE a."name" ILIKE '%Steve%Johnson%' AND h."name" ILIKE '%Steve%Johnson%'
SELECT COUNT(*) AS total_customers FROM customer WHERE artist_id = 757071
SELECT e.first_name, e.last_name FROM employee e JOIN management m ON e.id = m.artist_id JOIN head h ON m.seq = h.name WHERE h.name ILIKE '%nancy%edwards%'
SELECT e.first_name, e.last_name FROM employees e JOIN management m ON e.id = m.artist_id JOIN head h ON m.seq = h.name WHERE h.name ILIKE '%Nancyy%Edwards%'
SELECT m.name AS manager_name, COUNT(c.customer_id) AS total_customers FROM management m JOIN customer c ON m.id = c.manager_id GROUP BY m.name ORDER BY total_customers DESC NULLS LAST LIMIT 1
SELECT m.name AS manager_name, COUNT(c.customer_id) AS total_customers FROM management m JOIN customer c ON m.id = c.manager_id GROUP BY m.name ORDER BY total_customers DESC NULLS LAST LIMIT 1
SELECT m.first_name, m.last_name, COUNT(e.employee_id) AS num_employees FROM management m JOIN employee e ON m.id = e.manager_id GROUP BY m.first_name, m.last_name ORDER BY num_employees DESC NULLS LAST
SELECT e.first_name, e.last_name, COUNT(r.employee_id) AS reports FROM employee e JOIN report r ON e.id = r.employee_id GROUP BY e.first_name, e.last_name
SELECT COUNT(*) AS total_orders FROM artist a JOIN order o ON a.id = o.artist_id WHERE a.name ilike '%Lucas%Mancini%'
SELECT COUNT(*) AS total_orders FROM invoice WHERE artist_id = (SELECT id FROM artist WHERE name ilike '%Luca%Mancini%')
SELECT SUM(amount) AS total_spent FROM transactions WHERE artist_id = 757071747
SELECT SUM(transaction.amount) AS total_spent FROM transaction WHERE artist_id = 757071730
SELECT track.name FROM track WHERE genre_id = 1
SELECT track.name FROM track WHERE genre_id = 1
SELECT m.title FROM management AS m JOIN department AS d ON m.id = d.id WHERE d.name = 'Head'
SELECT a.title AS album_title, b.name AS artist_name FROM albums a JOIN tracks b ON a.id = b.album_id WHERE b.name ILIKE '%ball%to%the%wall%' 
SELECT t.name FROM track t JOIN album a ON t.album_id = a.id WHERE a.title ilike '%Balls%to%the%Wall%'
SELECT track.name FROM track WHERE track.album_id IN (SELECT management.artist_id FROM management WHERE management.title ILIKE '%Balls%to%the%Wall%') 
SELECT album.title FROM album WHERE album.num_tracks > 10
SELECT a.title FROM album a JOIN track t ON a.id = t.album_id GROUP BY a.title HAVING COUNT(t.track_id) > 10
SELECT t.title FROM track AS t JOIN genre AS g ON t.genre_id = g.id WHERE g.name = 'Rock' AND t.media_type_code = 'MPEG'
SELECT m.title AS track_title, a.name AS artist_name FROM music m JOIN audio_format af ON m.audio_format_id = af.id JOIN audio_file af2 ON af.id = af2.audio_format_id JOIN genre g ON g.id = m.genre_id JOIN label l ON l.id = m.label_id WHERE af.name = 'MPEG' AND g.name = 'Rock'
SELECT track.name FROM track WHERE genre_id IN (SELECT id FROM genre WHERE name ilike '%Rock%') OR media_type_id IN (SELECT id FROM media_type WHERE name ilike '%MPEG%')
SELECT track.name FROM track WHERE genre_id = 1 AND media_type_code = 'MPEG'
SELECT track.name FROM track WHERE genre_id IN (SELECT id FROM genre WHERE name IN ('Rock', 'Jazz'))
SELECT track.title FROM track WHERE genre_id IN (SELECT id FROM genre WHERE name IN ('Rock', 'Jazz'))
SELECT t.name FROM track t JOIN album a ON t.album_id = a.id JOIN genre g ON a.genre_id = g.id WHERE g.name ILIKE '%movie%'
SELECT track.name FROM track WHERE genre_id IN (SELECT genre.id FROM genre JOIN playlist ON genre.id = playlist.genre_id WHERE name ILIKE '%movies%')
SELECT p.name FROM playlist p JOIN track t ON p.id = t.play_id GROUP BY p.name HAVING COUNT(t.id) > 100
SELECT p.name FROM playlist p JOIN track t ON p.id = t.playlist_id GROUP BY p.name HAVING COUNT(t.id) > 100
SELECT track.title FROM track WHERE artist_id IN (SELECT management.artist_id FROM management) AND EXISTS (SELECT 1 FROM customer WHERE name ilike '%Daan%Peeters%') 
SELECT track.title FROM track WHERE artist_id IN (SELECT management.artist_id FROM management WHERE title = 'Dean Peeters')
SELECT m.title FROM movies AS m JOIN management AS ma ON m.id = ma.artist_id LEFT JOIN music AS mu ON mu.id = ma.artist_id WHERE mu.id IS NULL
SELECT m.title FROM movies AS m JOIN music AS n ON (m.id != n.id) 
SELECT m.title FROM movie_track m JOIN music_play c ON m.id = c.track_id
SELECT m.title AS movie_title, t.title AS track_title FROM movies m JOIN tracks t ON m.track_id = t.id
SELECT genre.name AS genre_name, COUNT(track) AS total_tracks FROM track JOIN genre ON track.genre_id = genre.id GROUP BY genre_name
SELECT g.genre_name, COUNT(t.track_id) AS total_tracks FROM track t JOIN genre g ON t.genre_id = g.genre_id GROUP BY g.genre_name
SELECT h.name, d.theme FROM head h JOIN management m ON h.editor_id = m.editor_id JOIN department d ON m.journal_id = d.journal_id
SELECT j.journal_id, h.name, d.theme FROM journal_committee jc JOIN journal j ON jc.journal_id = j.journal_id JOIN head h ON j.editor_id = h.editor_id JOIN department d ON j.department_id = d.department_id
SELECT h.name, CAST(h.age AS FLOAT) AS age, m.work_type, d.theme FROM head h JOIN management m ON h.editor_id = m.editor_id JOIN department d ON m.journal_id = d.journal_id ORDER BY d.theme ASC
SELECT h.name FROM head h JOIN management m ON h.editor_id = m.editor_id JOIN department d ON m.journal_id = d.journal_id WHERE d.sales > 3000
SELECT m.editor_id, m.name, COUNT(d.journal_id) AS num_journals FROM management m JOIN department d ON m.journal_id = d.journal_id GROUP BY m.editor_id, m.name
SELECT m.name FROM management AS m JOIN department AS d ON m.journal_id = d.journal_id GROUP BY m.name HAVING COUNT(DISTINCT d.journal_id) >= 2
SELECT AVG(department.sales) AS average_sales FROM department JOIN management ON department.journal_id = management.journal_id JOIN head ON management.editor_id = head.editor_id WHERE management.work_type ilike '%Photo%'
SELECT h.customer_first_name, h.customer_last_name, h.customer_phone FROM head h JOIN department d ON h.customer_id = d.customer_id WHERE d.account_name = '162'
SELECT h.customer_first_name, h.customer_last_name, h.customer_phone FROM head h JOIN department d ON h.customer_id = d.customer_id WHERE d.account_name = '162'
SELECT COUNT(*) AS account_count FROM department JOIN head ON department.customer_id = head.customer_id WHERE head.customer_first_name ilike '%Art%' AND head.customer_last_name ilike '%Turcotte%'
SELECT COUNT(*) AS account_count FROM department JOIN head ON department.customer_id = head.customer_id WHERE head.customer_first_name ilike '%Art%' AND head.customer_last_name ilike '%Turcotte%'
SELECT h.customer_first_name, h.customer_last_name, h.customer_id FROM head h JOIN department d ON h.customer_id = d.customer_id GROUP BY h.customer_first_name, h.customer_last_name, h.customer_id HAVING COUNT(d.account_id) = MIN(COUNT(d.account_id)) ORDER BY COUNT(d.account_id) ASC NULLS LAST
SELECT h.customer_first_name, h.customer_last_name, h.customer_id FROM head h JOIN department d ON h.customer_id = d.customer_id GROUP BY h.customer_first_name, h.customer_last_name, h.customer_id HAVING COUNT(d.account_id) = (SELECT MIN(COUNT(account_id)) FROM department)
SELECT head.customer_first_name, head.customer_last_name FROM head JOIN department ON head.customer_id = department.customer_id
SELECT h.customer_first_name, h.customer_last_name FROM head h JOIN department d ON h.customer_id = d.customer_id
SELECT head.customer_first_name, head.customer_last_name, head.customer_phone FROM management JOIN head ON management.customer_id = head.customer_id WHERE management.card_number = '4560596484842'
SELECT head.customer_first_name, head.customer_last_name, head.customer_phone FROM management JOIN head ON management.customer_id = head.customer_id WHERE card_number = '4560596484842'
SELECT COUNT(*) AS total_cards FROM management WHERE customer_id = (SELECT head.customer_id FROM head WHERE customer_first_name ilike '%Art%' AND customer_last_name ilike '%Turcotte%')
SELECT COUNT(*) AS card_count FROM management WHERE customer_id IN (SELECT head_id FROM head WHERE customer_first_name ilike '%Art%' AND customer_last_name ilike '%Turcotte%')
SELECT COUNT(*) AS number_of_cards FROM management WHERE customer_id = 1234567890
SELECT COUNT(*) AS total_credit_cards FROM management WHERE customer_id IN (SELECT account_id FROM head WHERE customer_first_name ilike '%Blanche%' AND customer_last_name ilike '%Huang%')
SELECT h.customer_id, h.customer_first_name, h.customer_last_name FROM head h JOIN management m ON h.customer_id = m.customer_id GROUP BY h.customer_id, h.customer_first_name, h.customer_last_name HAVING COUNT(m.card_id) >= 2
SELECT h.customer_id, h.customer_first_name, h.customer_last_name FROM head AS h JOIN management AS m ON h.customer_id = m.customer_id GROUP BY h.customer_id, h.customer_first_name, h.customer_last_name HAVING COUNT(m.card_id) >= 2
SELECT h.customer_id, h.customer_first_name, h.customer_last_name, COUNT(d.account_id) AS account_count FROM head h JOIN department d ON h.customer_id = d.customer_id GROUP BY h.customer_id, h.customer_first_name, h.customer_last_name ORDER BY account_count ASC NULLS LAST LIMIT 1
SELECT h.customer_id, h.customer_first_name, h.customer_last_name FROM head h JOIN department d ON h.customer_id = d.customer_id GROUP BY h.customer_id, h.customer_first_name, h.customer_last_name HAVING COUNT(d.account_id) = (SELECT MIN(COUNT(account_id)) FROM department)
SELECT management.card_type_code, COUNT(*) AS transaction_count FROM management GROUP BY management.card_type_code
SELECT management.card_type_code, COUNT(*) AS transaction_count FROM management GROUP BY management.card_type_code
SELECT d.name, COUNT(*) AS race_count FROM department d GROUP BY d.name
SELECT h.name AS track_name, COUNT(d.race_id) AS race_count FROM head h JOIN department d ON h.track_id = d.track_id GROUP BY h.name
SELECT d.name AS track_with_most_races FROM department d WHERE d.race_id IN (SELECT head.track_id FROM head GROUP BY head.track_id ORDER BY COUNT(head.track_id) DESC LIMIT 1)
SELECT h.name AS head_name, d.track_id AS track_id FROM head h JOIN department d ON h.track_id = d.track_id GROUP BY h.name, d.track_id ORDER BY COUNT(d.race_id) DESC LIMIT 1
SELECT d.name, h.location, to_number(d.date,'YYYYMMDD') AS date FROM department d JOIN head h ON d.track_id = h.track_id
SELECT d.name AS race_name, to_date(d.date,'YYYY-MM-DD') AS race_date, t.track_name FROM department d JOIN head t ON d.track_id = t.track_id
SELECT h.name, h.location FROM head h JOIN department d ON h.track_id = d.track_id WHERE d.race_id = 1
SELECT h.name, h.location FROM head h JOIN department d ON h.track_id = d.track_id GROUP BY h.name, h.location HAVING COUNT(d.race_id) = 1
SELECT d.shop_id, d.address FROM department d JOIN management m ON d.shop_id = m.shop_id WHERE m.month = 'May'
SELECT department.title FROM department JOIN head ON department.artistid = head.artistid WHERE head.name ilike '%ac/dc%' ORDER BY department.title NULLS LAST
SELECT department.title FROM department JOIN head ON department.artistid = head.artistid WHERE head.name ilike '%ac/dc%' ORDER BY department.title NULLS LAST
SELECT COUNT(*) AS total_albums FROM department d JOIN head h ON d.artistid = h.artistid WHERE h.name ilike '%Metallica%'
SELECT COUNT(*) AS total_albums FROM department d JOIN head h ON d.artistid = h.artistid WHERE h.name ilike '%Metallica%'
SELECT head.name FROM department JOIN head ON department.artistid = head.artistid WHERE department.title ilike '%balls%to%the%wall%'
SELECT head.name FROM department JOIN head ON department.artistid = head.artistid WHERE department.title ilike '%balls%to%the%wall%'
SELECT h.name, COUNT(d.albumid) AS num_albums FROM head h JOIN department d ON h.artistid = d.artistid GROUP BY h.name ORDER BY num_albums DESC NULLS LAST LIMIT 1
SELECT h.name, COUNT(d.albumid) AS num_albums FROM head h JOIN department d ON h.artistid = d.artistid GROUP BY h.name ORDER BY num_albums DESC NULLS LAST LIMIT 1
SELECT d.albumid, d.title, COUNT(t.trackid) AS track_count FROM department d JOIN track t ON d.albumid = t.albumid GROUP BY d.albumid, d.title
SELECT d.albumid, h.name AS artist_name, COUNT(t.trackid) AS track_count FROM department d JOIN head h ON d.artistid = h.artistid JOIN track t ON d.albumid = t.albumid GROUP BY d.albumid, h.name
SELECT g.name AS genre_name, COUNT(*) AS number_of_tracks FROM track t JOIN genre g ON t.genre_id = g.id GROUP BY g.name ORDER BY number_of_tracks DESC LIMIT 1
SELECT g.name, COUNT(*) AS frequency FROM track t JOIN genre g ON t.genre_id = g.id GROUP BY g.name ORDER BY frequency DESC NULLS LAST LIMIT 1
SELECT genre.name AS genre_name, COUNT(*) AS track_count FROM track JOIN genre ON track.genre_id = genre.id GROUP BY genre_name ORDER BY track_count ASC LIMIT 1
SELECT m.name, COUNT(*) AS frequency FROM track t JOIN media m ON t.media_type_id = m.id GROUP BY m.name ORDER BY frequency ASC NULLS LAST LIMIT 1
SELECT a.title AS album_title, a.album_id FROM album_track_price_ratio r JOIN album a ON r.album_id = a.album_id WHERE r.unit_price > 1
SELECT d.title, h.name, m.first_name, m.last_name FROM department d JOIN head h ON d.artistid = h.artistid JOIN management m ON h.artistid = m.customerid WHERE EXISTS (SELECT 1 FROM track t WHERE t.unit_price > 1 AND t.albumid = d.albumid)
SELECT COUNT(*) AS total_tracks FROM track WHERE genre = 'rock'
SELECT COUNT(*) AS total_tracks FROM track WHERE genre_id = 17
SELECT AVG(track.price) AS average_unit_price FROM track JOIN album ON track.albumid = album.albumid JOIN department ON album.departmentid = department.departmentid WHERE department.title ilike '%jazz%'
SELECT AVG(price) AS average_unit_price FROM track WHERE genre = 'jazz'
SELECT management.first_name, management.last_name FROM management WHERE management.first_name ilike '%Leonie%' AND management.last_name ilike '%Leonie%'
SELECT m.first_name || ' ' || m.last_name AS full_name FROM management m JOIN customer c ON m.customerid = c.customerid WHERE m.first_name ilike '%Leonardo%'
SELECT management.city FROM management WHERE management.postalcode = '70174'
SELECT management.city FROM management WHERE management.postalcode = '70174'
SELECT date_invoice FROM invoices WHERE customer_firstname = 'Astrid' AND customer_lastname = 'Gruber'
SELECT date_invoice FROM customer WHERE first_name = 'Astrid' AND last_name = 'Gruber'
SELECT management.first_name FROM management WHERE management.address ilike '%Brazil%' AND EXISTS (SELECT 1 FROM invoice WHERE invoice.customer_id = management.customer_id)
SELECT DISTINCT management.first_name FROM management JOIN customer ON management.customerid = customer.customerid WHERE customer.country = 'Brazil' AND EXISTS (SELECT 1 FROM invoice WHERE invoice.customerid = management.customerid)
SELECT customer.address FROM customer WHERE country = 'Germany' AND customer.invoice_number IS NOT NULL
SELECT customer.address FROM customer WHERE country = 'Germany' AND customer.id IN (SELECT invoice.customerId FROM invoice)
SELECT COUNT(*) AS total_tracks FROM track WHERE media_type = 'AAC'
SELECT COUNT(*) AS track_count FROM track WHERE media_type = 'AAC audio file'
SELECT AVG(duration_ms) AS average_duration_in_milliseconds FROM tracks WHERE genre_name IN ('Latin', 'Pop')
SELECT AVG(duration_ms) AS average_duration FROM track WHERE genre_id IN (SELECT genre_id FROM genre WHERE name IN ('Latin', 'Pop'))
SELECT m.first_name, m.id FROM management AS m JOIN customer_management AS cm ON m.id = cm.manager_id GROUP BY m.first_name, m.id HAVING COUNT(cm.customer_id) >= 10
SELECT m.first_name, sr.support_rep_id FROM management AS m JOIN support_rep AS sr ON m.support_rep_id = sr.id WHERE (SELECT COUNT(*) FROM customer AS c WHERE c.management_id = m.customer_id) >= 10
SELECT management.last_name FROM management WHERE management.customer_id IS NULL OR COUNT(management.customer_id) <= 20
SELECT management.last_name FROM management WHERE management.customer_id IN (SELECT customer.customer_id FROM customer GROUP BY customer.customer_id HAVING COUNT(customer.customer_id) > 20)
SELECT h.name, h.artistid FROM head h JOIN department d ON h.artistid = d.artistid GROUP BY h.name, h.artistid HAVING COUNT(d.albumid) >= 3 ORDER BY h.name NULLS LAST
SELECT h.name, d.albumid FROM head AS h JOIN department AS d ON h.artistid = d.artistid GROUP BY h.name, d.albumid HAVING COUNT(d.albumid) >= 3 ORDER BY h.name NULLS LAST
SELECT AVG(price) AS average_unit_price FROM track WHERE genre = 'rock'
SELECT AVG(price) AS average_unit_price FROM track WHERE genre = 'Rock'
SELECT MIN(duration_ms) AS shortest_duration_in_milliseconds, MAX(duration_room) AS longest_duration_in_milliseconds FROM track WHERE genre = 'pop'
SELECT MAX(duration_ms), MIN(duration_ms) FROM track WHERE genre_name = 'Pop'
SELECT department.title FROM department JOIN head ON department.artistid = head.artistid WHERE head.name ilike '%rega%' AND head.name ilike '%rock%'
SELECT COUNT(*) AS total_albums FROM department d JOIN head h ON d.artistid = h.artistid WHERE EXISTS (SELECT 1 FROM genre g1 WHERE g1.genre = 'Rock' AND g1.artistid = d.artistid) AND EXISTS (SELECT 1 FROM genre g2 WHERE g2.genre = 'Rega' AND g2.artistid = d.artistid)
SELECT h.service_name FROM head h JOIN management m ON h.service_id = m.policy_id GROUP BY h.service_name HAVING COUNT(m.policy_id) > 2
SELECT h.service_name FROM head h JOIN management m ON h.service_id = m.policy_id WHERE m.policy_type_code = 'loss' GROUP BY h.service_name HAVING COUNT(m.policy_id) > 2
SELECT c.claim_id, to_date(c.effective_date,'YYYY-MM-DD') AS effective_date FROM claim c JOIN settlement s ON c.claim_id = s.claim_id GROUP BY c.claim_id HAVING COUNT(s.settlement_id) = (SELECT COUNT(settlement_id) FROM settlement)
SELECT c.claim_id, to_date(c.effective_date,'YYYY-MM-DD') AS effective_date, SUM(s.settlement_amount) OVER (PARTITION BY c.policy_id ORDER BY s.settlement_date ROWS BETWEEN UNBOUNDED preceding AND CURRENT ROW) AS cumulative_settlement_amount FROM claim c JOIN settlement s ON c.claim_id = s.claim_id
SELECT COUNT(*) AS number_of_policies FROM management WHERE policy_type_code ilike '%dayana%robel%'
SELECT COUNT(*) AS total_policies FROM management WHERE policy_type_code ilike '%Dayana%Robel%' 
SELECT m.customer_name, COUNT(p.policy_id) AS policy_count FROM management m JOIN policy p ON m.policy_id = p.policy_id GROUP BY m.customer_name ORDER BY policy_count DESC NULLS LAST LIMIT 1
SELECT m.customer_name, COUNT(*) AS policy_count FROM management m GROUP BY m.customer_name ORDER BY policy_count DESC NULLS LAST LIMIT 1
SELECT m.policy_type_code FROM management m JOIN department d ON m.customer_id = d.customer_id WHERE d.customer_name ILIKE '%Dayana%Robel%' 
SELECT m.policy_type_code FROM management m JOIN department d ON m.customer_id = d.customer_id WHERE d.customer_name ILIKE '%Dayana%Robel%' 
SELECT m.policy_type_code FROM management m GROUP BY m.policy_type_code HAVING COUNT(m.policy_id) = (SELECT MAX(COUNT(p.policy_id)) FROM policy p)
SELECT m.policy_type_code FROM management m GROUP BY m.policy_type_code HAVING COUNT(m.policy_id) = (SELECT MAX(count_policies) FROM (SELECT policy_id, COUNT(policy_id) AS count_policies FROM management GROUP BY policy_id) AS subquery)
SELECT customer.customer_name FROM customer JOIN head ON customer.customer_id = head.service_id WHERE head.service_name IN ('Close a policy', 'Upgrade a policy')
SELECT department.customer_name FROM department JOIN head ON department.customer_id = head.service_id WHERE head.service_name IN ('Close a policy', 'Upgrade a policy')
SELECT customer.customer_name FROM customer JOIN head ON customer.customer_id = head.service_id WHERE head.service_name IN ('Close a policy', 'New policy application')
SELECT department.customer_name FROM department WHERE department.customer_id IN (SELECT head.customer_id FROM head JOIN management ON head.service_id = management.policy_type_code AND head.service_name ILIKE '%Close%a%Policy%') AND department.customer_id IN (SELECT head.customer_id FROM head JOIN management ON head.service_id = management.policy_type_code AND head.service_name ILIKE '%Upgrade%a%Policy%')
SELECT policy_start_date, policy_end_date FROM insurance_policy WHERE customer_name ilike '%Diana%' ORDER BY policy_start_date NULLS LAST
SELECT policy.policy_id, policy.open_date, policy.close_date FROM policy WHERE policy.customer_name ilike '%diana%' 
SELECT m.name AS medicine_name, e.name AS enzyme_name FROM management m JOIN enzyme e ON m.enzyme_id = e.id WHERE m.interaction_type ILIKE '%inhibitor%' AND m.medicine_id IN (SELECT id FROM medicine WHERE name ILIKE '%Amisulpride%')
SELECT e.name AS enzyme_name, m.medicine_name FROM enzyme e JOIN medicine_enzyme me ON e.id = me.enzyme_id JOIN medicine m ON me.medicine_id = m.id WHERE m.name ILIKE '%Amisulpride%' AND interaction_type ILIKE '%inhibitor%'
SELECT m.id AS medicine_id, d.name AS department_name FROM management m JOIN department d ON m.department_id = d.id GROUP BY m.medicine_id, d.name HAVING COUNT(m.enzyme_id) >= 2
SELECT m.medicine_id, m.name FROM medicine m JOIN management ma ON m.medicine_id = ma.medicine_id GROUP BY m.medicine_id HAVING COUNT(ma.enzyme_id) > 1
SELECT m.medicine_id, d.name AS department_name, h.name AS head_name, to_number(d.fda_approved,'YES') AS da_approval FROM medicine m JOIN management ma ON m.medicine_id = a.medicine_id JOIN department d ON a.enzyme_id = d.id JOIN head h ON d.location = h.location ORDER BY COUNT(a.medicine_id) DESC
SELECT d.id, d.name, m.interaction_type FROM department d JOIN head h ON d.id = h.department_id JOIN management m ON h.id = m.medicine_id ORDER BY m.enzyme_id DESC
SELECT e.id, e.name FROM enzyme e JOIN management m ON e.id = m.enzyme_id WHERE interaction_type ILIKE '%activator%' GROUP BY e.id, e.name ORDER BY COUNT(m.medicine_id) DESC NULLS LAST LIMIT 1
SELECT e.id, e.name FROM enzyme e JOIN management m ON e.id = m.enzyme_id GROUP BY e.id, e.name HAVING COUNT(m.medicine_id) > ALLERATE(SELECT COUNT(medicine_id) FROM management m2 WHERE m2.interaction_type = 'activator')
SELECT management.interaction_type FROM management WHERE management.enzyme_id = (SELECT head.id FROM head WHERE head.name ILIKE '%ALA%synthase%') AND management.medicine_id = (SELECT department.id FROM department WHERE department.name ILIKE '%Aripiprazole%')
SELECT management.interaction_type FROM management WHERE management.enzyme_id = (SELECT head.id FROM head WHERE head.name ILIKE '%ALA%synthase%') AND management.medicine_id = (SELECT department.id FROM department WHERE department.name ILIKE '%Aripiprazole%')
SELECT m.medicine_id, d.trade_name FROM management AS m JOIN department AS d ON m.enzyme_id = d.id GROUP BY m.medicine_id, d.trade_name HAVING COUNT(m.enzyme_id) >= 3
SELECT m.id, d.trade_name FROM management m JOIN department d ON m.enzyme_id = d.id GROUP BY m.id, d.trade_name HAVING COUNT(m.enzyme_id) >= 3
SELECT d.name, h.location, p.product FROM department d JOIN head h ON d.id = h.department_id JOIN management m ON h.id = m.enzyme_id AND 'inhibitor' = any(m.interaction_type) JOIN product p ON h.product = p.name
SELECT d.name AS department_name, h.location AS head_location, m.medicine_id AS medicine_interaction FROM management m JOIN head h ON m.head_id = h.id JOIN department d ON m.department_id = d.id
SELECT m.medicine_name, h.trade_name FROM management m JOIN head h ON m.head_id = h.id WHERE interaction_type ILIKE '%inhibitor%' AND interaction_type ILIKE '%activator%'
SELECT m.medicine_name, d.trade_name FROM management m JOIN department d ON m.enzyme_id = d.id
SELECT h.primary_conference FROM head h JOIN department d ON h.school_id = d.school_id WHERE d.acc_percent = (SELECT MIN(d.acc_percent) FROM department d)
SELECT h.primary_conference FROM head h JOIN department d ON h.school_id = d.school_id ORDER BY CAST(d.acc_percent AS FLOAT) ASC LIMIT 1
SELECT h.school_name, d.team_name, d.acc_regular_season_score FROM head h JOIN department d ON h.school_id = d.school_id ORDER BY h.founded DESC LIMIT 1
SELECT d.team_name, to_number(d.acc_regular_season,'99999999') AS acc FROM department d JOIN head h ON d.school_id = h.school_id WHERE h.founded = (SELECT MIN(founded) FROM head)
SELECT h.location, d.all_games FROM department d JOIN head h ON d.school_id = h.school_id WHERE d.team_name ilike '%Clemson%'
SELECT d.team_name, h.location FROM department d JOIN head h ON d.school_id = h.school_id WHERE h.nickname ILIKE '%clemson%' 
SELECT department.team_name FROM department JOIN head ON department.school_id = head.school_id WHERE head.enrollment < (SELECT AVG(head.enrollment) FROM head)
SELECT department.team_name FROM department JOIN head ON department.school_id = head.school_id WHERE head.enrollment < (SELECT AVG(head.enrollment) FROM head)
SELECT MAX(RAM_MiB) AS max_ram, MIN(RAM_MiB) AS min_ram FROM department WHERE model_name ilike '%Nokia%Corporation%'
SELECT AVG(department.ROM_MiB) AS average_rom_size FROM department JOIN management ON department.Model_name = management.Hardware_model WHERE management.Company_name ilike '%Nokia%Corporation%'
SELECT m.company_name, h.hardware_model FROM management AS m JOIN head AS h ON m.hardware_model = h.map WHERE (h.ram_miB > 32 OR h.launch_year = 2002)
SELECT head.char_cells, head.pixels, management.hardware_colours FROM management JOIN department ON management.hardware_model_name = department.model_name JOIN head ON management.map = head.map WHERE department.model_name ilike '%LG-P760%' 
SELECT management.hardware_model_name, management.company_name FROM management WHERE management.screen_mode = 'Graphics'
SELECT department.model_name FROM department WHERE department.launch_year = 2002 ORDER BY department.ram_mib DESC NULLS LAST LIMIT 1
SELECT department.wifi, head.screen_mode FROM department JOIN management ON department.model_name = management.hardware_model_name WHERE department.model_name ilike '%LG-P760%' AND management.hardware_model_name ILIKE '%LG-P760%'
SELECT management.hardware_model_name FROM management WHERE (management.screen_mode = 'Text' OR management.ram_miB > 32) AND management.type ILIKE '%phone%'
SELECT management.hardware_model_name FROM management WHERE management.company_name ilike '%Nokia%Corporation%' OR management.screen_mode ilike '%Graphics%'
SELECT management.hardware_model_name FROM management WHERE management.company_name ilike '%Nokia%Corporation%' AND management.screen_mode not ilike '%Text%'
SELECT m.model_name, c.company_name FROM head h JOIN management m ON h.hardware_model = m.hardware_model_name WHERE h.used_kb BETWEEN 10 AND 15
SELECT h.pixels FROM head h JOIN management m ON h.screen_mode = m.screen_mode WHERE m.accreditation_type ilike '%full%' AND m.accreditation_type ilike '%provisional%'
SELECT m.season, m.player, d.country_name FROM management AS m JOIN department AS d ON m.country = d.country_id
SELECT p.name, m.season, d.country_name FROM players p JOIN management m ON p.player_id = m.player JOIN department d ON m.country = d.country_id
SELECT player.name FROM management JOIN department ON management.country = department.country_id WHERE department.country_name ilike '%Indonesia%' ORDER BY player.name NULLS LAST
SELECT player.player FROM management AS player JOIN department AS country ON player.country = country.country_id WHERE country.official_native_language ilike '%Indonesia%' 
SELECT DISTINCT management.position FROM management JOIN department ON management.country = department.country_id WHERE department.capital = 'Dublin'
SELECT management.player, management.position FROM management WHERE management.country = (SELECT department.country_id FROM department WHERE department.capital = 'Dublin')
SELECT department.official_native_language FROM management JOIN head ON management.team = head.team AND management.player = head.name JOIN department ON management.country = department.country_id WHERE head.name ilike '%Maryland%' OR head.name ilike '%Duke%'
SELECT department.official_native_language FROM department JOIN management ON department.country_id = management.country WHERE 'Maryland' IN (SELECT college FROM management UNION SELECT college FROM management) OR 'Duke' IN (SELECT college FROM management)
SELECT COUNT(DISTINCT department.official_native_language) AS number_of_languages FROM management JOIN department ON management.country = department.country WHERE position ILIKE '%defender%'
SELECT COUNT(DISTINCT department.official_native_language) AS number_of_languages FROM management JOIN department ON management.country = department.country_id WHERE position ILIKE '%Defunder%' GROUP BY department.country_id
SELECT m.season, p.player, t.team_name FROM management AS m JOIN player AS p ON m.player = p.player_id JOIN team AS t ON m.team = t.team_id
SELECT m.player, m.season, h.name FROM management AS m JOIN head AS h ON m.team = h.team_id
SELECT management.position FROM management WHERE management.team = (SELECT head.team FROM head WHERE head.name ilike '%Ryley%Goldner%') ORDER BY management.position NULLS LAST
SELECT management.position FROM management WHERE management.team = 1577071
SELECT COUNT(DISTINCT college) AS number_of_colleges FROM management WHERE player ilike '%Columbus%crow%' AND country IN (SELECT country_id FROM department)
SELECT COUNT(DISTINCT management.college) AS number_of_colleges FROM management WHERE management.team = 1
SELECT m.player, to_char(m.season, 'YYYY') AS season FROM management m JOIN head h ON m.team = h.team WHERE h.name ilike '%Columbus%crew%' ORDER BY season NULLS LAST
SELECT management.player, COUNT(management.season) AS total_seasons FROM management WHERE management.country = 10 AND management.team = (SELECT head.team_id FROM head WHERE name ILIKE '%Columbus%Crew%') GROUP BY management.player
SELECT department.country_name, COUNT(management.player) AS player_count FROM management JOIN department ON management.country = department.country_id GROUP BY department.country_name
SELECT department.country_name, COUNT(management.player) AS player_count FROM management JOIN department ON management.country = department.country_id GROUP BY department.country_name
SELECT d.country_name FROM department d JOIN management m ON d.country_id = m.country JOIN (SELECT country, COUNT(*) AS num_players FROM management GROUP BY country) c ON d.country_id = c.country WHERE EXISTS (SELECT 1 FROM management WHERE position ILIKE '%forward%' AND country_id = d.country_id) AND EXISTS (SELECT 1 FROM management WHEREposition ILIKE '%defender%' AND country_id = d.country_id)
SELECT d.country_name, m.player FROM department d JOIN management m ON d.country_id = m.country WHERE m.position IN ('Forward', 'Defender')
SELECT c.name AS climber_name, m.name AS mountain_name FROM climber c JOIN climb_mountain cm ON c.climber_id = cm.climber_id JOIN mountain m ON cm.mountain_id = m.mountain_id
SELECT c.name AS climber_name, m.name AS mountain_name FROM climber c JOIN climb_mountain cm ON c.climber_id = cm.climber_id JOIN mountain m ON cm.mountain_id = m.mountain_id
SELECT c.name AS climber_name, m.mountain_id, m.prominence FROM climber c JOIN head h ON c.climber_id = h.climber_id JOIN mountain m ON h.mountain_id = m.mountain_id
SELECT c.name AS climber_name, m.mountain_id, m.prominence FROM climber c JOIN head h ON c.climber_id = h.climber_id JOIN mountain m ON h.mountain_id = m.mountain_id
SELECT department.heigth FROM head JOIN department ON head.mountain_id = department.mountain_id GROUP BY department.heigth ORDER BY department.heigth DESC NULLS LAST LIMIT 1
SELECT department.height FROM head JOIN department ON head.mountain_id = department.mountain_id GROUP BY head.name ORDER BY head.points DESC LIMIT 1
SELECT department.name FROM department JOIN head ON department.mountain_id = head.mountain_id WHERE head.country = 'West Germany' GROUP BY department.name
SELECT department.name FROM department JOIN head ON department.mountain_id = head.mountain_id WHERE head.country = 'West Germany' GROUP BY department.name
SELECT head.climber_id, COUNT(*) AS number_of_times FROM head JOIN department ON head.mountain_id = department.mountain_id WHERE department.country = 'colombia' GROUP BY head.climber_id
SELECT head.climber_id, head.time FROM head JOIN department ON head.mountain_id = department.mountain_id WHERE department.country = 'uganda' ORDER BY head.time NULLS LAST
SELECT h.name FROM head h JOIN department d ON h.people_id = d.body_builder_id
SELECT h.name FROM head h JOIN department d ON h.people_id = d.body_builder_id WHERE CAST(d.total AS FLOAT) > 300
SELECT h.name, MAX(h.weight) AS max_weight FROM head h JOIN department d ON h.people_id = d.body_builder_id GROUP BY h.name
SELECT head.birth_date, head.birth_place FROM department JOIN head ON department.people_id = head.people_id WHERE department.total = (SELECT MAX(total) FROM department)
SELECT head.name, department.total FROM head JOIN department ON head.people_id = department.body_builder_id WHERE department.total < 315
SELECT AVG(total) AS average_total_score FROM department JOIN head ON department.people_id = head.people_id WHERE head.weight > 200
SELECT h.name FROM head h JOIN department d ON h.people_id = d.body_builder_id ORDER BY d.total DESC
SELECT head.weight FROM department JOIN head ON department.people_id = head.people_id WHERE department.snatch > 140 OR head.height > 200
SELECT SUM(department.total) AS total_score FROM department JOIN head ON department.body_builder_id = head.people_id WHERE head.birth_date ilike '%January%'
SELECT h.name, d.date FROM head h JOIN department d ON h.representative_id = d.representative_id
SELECT h.name FROM head h JOIN department d ON h.representative_id = d.representative_id WHERE d.votes > 10000
SELECT h.name FROM department d JOIN head h ON d.representative_id = h.representative_id ORDER BY d.votes DESC
SELECT h.name, CAST(d.votes AS FLOAT) / MAX(CAST(d.votes AS FLOAT)) AS proportion FROM department d JOIN head h ON d.representative_id = h.representative_id GROUP BY h.name ORDER BY proportion ASC NULLS LAST LIMIT 1
SELECT h.name, d.votes_percent, lag(d.votes_percent) OVER (ORDER BY d.votes_percent DESC) AS previous_vote_percent FROM department d JOIN head h ON d.representative_id = h.representative_id
SELECT AVG(department.votes) AS average_votes FROM department JOIN head ON department.representative_id = head.representative_id WHERE head.party = 'Republican'
SELECT h.apt_id, h.apt_number, m.start_date, m.end_date FROM head h JOIN management m ON h.apt_id = m.apt_id
SELECT h.apt_id, d.building_full_name, m.facility_code, to_date(b.start_date::text,'YYYY-MM-DD') AS start_date, to_date(b.end_date::text,'YYYY-MM-DD') AS end_date FROM booking b JOIN head h ON b.apt_id = h.apt_id JOIN department d ON h.building_id = d.building_id JOIN management m ON h.apt_id = m.apt_id
SELECT head.apt_id, department.building_full_name, head.apt_start_date, head.apt_end_date FROM head JOIN department ON head.building_id = department.building_id WHERE apt_type_code ILIKE '%Duplex%' ORDER BY building_full_name NULLS LAST
SELECT head.apt_id, department.building_full_name, head.apt_start_date, head.apt_end_date FROM head JOIN department ON head.building_id = department.building_id WHERE apt_type_code ILIKE '%Duplex%'
SELECT h.apt_id, d.building_full_name, to_char(b.booking_start_date, 'YYYY-MM-DD') AS booking_start_date, to_char(b.booking_end_date, 'YYYY-MM-DD') AS booking_end_date FROM head h JOIN department d ON h.building_id = d.building_id JOIN booking b ON h.apt_id = b.apt_id WHERE bedroom_count > 2
SELECT a.apt_id, b.start_date, b.end_date FROM apartment_booking a JOIN booking b ON a.booking_id = b.booking_id WHERE (b.start_date - CURRENT_DATE) * (END_DATE - b.start_date) > 0 AND EXISTS (SELECT 1 FROM head h WHERE h.apt_id = a.apt_id AND h.bedroom_count > 2)
SELECT head.apt_status_code FROM head WHERE head.apt_number = 'Suite 634'
SELECT head.apt_status_code FROM head WHERE head.apt_number = 'Suite 634'
SELECT DISTINCT head.apt_number FROM head JOIN booking ON head.apt_id = booking.apt_id WHERE booking.status_code = 'Confirmed'
SELECT h.apt_number FROM head h JOIN management m ON h.apt_id = m.apt_id WHERE m.facility_code = 'Confirmed'
SELECT AVG(cast(room_count AS FLOAT)) FROM head WHERE apt_id IN (SELECT apt_id FROM management WHERE facility_code = 'Provisional')
SELECT AVG(cast(room_count AS FLOAT)) FROM head WHERE apt_type_code = 'Provisional'
SELECT g.first_name, b.start_date, b.end_date FROM guest g JOIN booking b ON g.guest_id = b.guest_id
SELECT g.first_name, b.start_date, b.end_date FROM bookings AS b JOIN guests AS g ON b.guest_id = g.guest_id
SELECT a.apt_id, g.gender_code, b.booking_start_date, b.booking_end_date FROM apartment a JOIN guest g ON a.guest_id = g.guest_id JOIN booking b ON (b.apt_id = a.apt_id AND b.guest_id = g.guest_id) WHERE gender_code = 'Female'
SELECT b.start_date, b.end_date FROM booking b JOIN guest g ON b.guest_id = g.guest_id WHERE g.gender_code = 'Female'
SELECT g.first_name, g.last_name FROM guest_booking gb JOIN guest g ON gb.guest_id = g.guest_id WHERE gb.status_code = 'Confirmed'
SELECT g.first_name, g.last_name FROM guest g JOIN booking b ON g.guest_id = b.guest_id WHERE b.booking_status_code ILIKE '%Confirmed%' 
SELECT management.facility_code FROM head JOIN management ON head.apt_id = management.apt_id WHERE head.bedroom_count > 4
SELECT management.facility_code FROM head JOIN management ON head.apt_id = management.apt_id WHERE head.bedroom_count > 4
SELECT SUM(cast(room_count AS FLOAT)) AS total_rooms FROM head h JOIN management m ON h.apt_id = m.apt_id WHERE facility_code ilike '%gym%'
SELECT SUM(cast(room_count AS FLOAT)) AS total_rooms FROM head h JOIN management m ON h.apt_id = m.apt_id WHERE facility_code ilike '%Gym%'
SELECT SUM(cast(room_count AS FLOAT)) AS total_rooms FROM head JOIN department ON head.building_id = department.building_id WHERE department.building_short_name ilike '%columbus%square%' 
SELECT SUM(cast(room_count AS FLOAT)) AS total_rooms FROM head WHERE building_id = (SELECT building_id FROM department WHERE building_short_name ILIKE '%columbus%square%')
SELECT department.building_address FROM department JOIN head ON department.building_id = head.building_id WHERE head.bathroom_count > 2
SELECT department.building_address FROM department JOIN head ON department.building_id = head.building_id GROUP BY department.building_address HAVING AVG(head.bathroom_count) > 2
SELECT h.apt_type_code, h.apt_number FROM head h JOIN management m ON h.apt_id = m.apt_id WHERE m.facility_code ILIKE '%Kyle%'
SELECT h.apt_type_code, h.apt_number FROM head h JOIN management m ON h.apt_id = m.apt_id WHERE building_manager ILIKE '%Kyle%' 
SELECT h.apt_number FROM head h JOIN management m ON h.apt_id = m.apt_id WHERE m.facility_code IN ('Provisional', 'Confirmed')
SELECT h.apt_id FROM head h JOIN management m ON h.apt_id = m.apt_id WHERE m.facility_code IN ('Provisional', 'Confirmed')
SELECT head.apt_number FROM head WHERE head.apt_id IN (SELECT apt_id FROM management WHERE facility_code = '0') AND head.apt_id IN (SELECT apt_id FROM management WHERE facility_code = '1')
SELECT h.apt_number FROM head h WHERE h.apt_id IN (SELECT apt_id FROM management WHERE facility_code = '0') AND h.apt_id IN (SELECT apt_id FROM management WHERE facility_code = '1')
SELECT head.season FROM management JOIN head ON management.game_id = head.id WHERE "Player" ILIKE '%walter%samuel%' AND "Injury" ILIKE '%injured%'
SELECT h.id AS game_id, to_number(h.score, '9999') AS score, to_date(h.date, 'YYYY-MM-DD') AS date FROM head h JOIN management m ON h.id = m.game_id GROUP BY game_id, score, date HAVING COUNT(injury) >= 2
SELECT d.id, d.name FROM department d JOIN head h ON d.home_games = h.stadium_id WHERE d.total_attendance = (SELECT MAX(total_attendance) FROM department)
SELECT d.id, d.name FROM department d JOIN head h ON d.home_games = h.stadium_id WHERE d.total_attendance = (SELECT MAX(total_attendance) FROM department)
SELECT head.season, department.name FROM management JOIN head ON management.game_id = head.stadium_id JOIN department ON head.stadium_id = department.home_games WHERE management.injury IN ('Foot injury', 'Knee problem')
SELECT COUNT(DISTINCT management.injury) AS number_of_injuries FROM management JOIN head ON management.game_id = head.id WHERE head.season > 2010
SELECT head.stadium_id FROM management WHERE "Player" ILIKE '%walter%samuel%' AND "Injury" ILIKE '%theiago%motta%' GROUP BY head.stadium_id
SELECT d.name AS department_name, COUNT(h.game_id) AS total_games FROM department d JOIN head h ON d.id = h.stadium_id GROUP BY d.name
SELECT m.game_id, h.date, p.player FROM management AS m JOIN head AS h ON m.game_id = h.stadium_id JOIN players AS p ON m.player = p.name ORDER BY h.season DESC
SELECT c.name AS country_name, l.name AS league_name FROM country c JOIN league l ON c.id = l.id
SELECT COUNT(*) AS league_count FROM department WHERE player_fifa_api_id = 209
SELECT management.player_name FROM management WHERE management.overall_rating > (SELECT AVG(department.overall_rating) FROM department)
SELECT management.player_name FROM department JOIN management ON department.player_fifa_api_id = management.player_fifa_api_id ORDER BY department.dribling DESC NULLS LAST
SELECT management.player_name FROM department JOIN management ON department.player_fifa_api_id = management.player_fifa_api_id WHERE department.crossing > 90 AND department.preferred_foot = 'right'
SELECT department.player_name FROM department WHERE department.preferred_foot = 'Left' AND department.overall_rating BETWEEN 85 AND 90
SELECT player_fifa_api_id, name, seq, overall_rating FROM department ORDER BY overall_rating DESC NULLS LAST LIMIT 3
SELECT management.player_name, management.birthday FROM management WHERE management.potential > 5 ORDER BY management.potential DESC NULLS LAST LIMIT 5
SELECT d.name, h.location FROM department d JOIN management m ON d.member_id = m.member_id JOIN head h ON m.performance_id = h.performance_id
SELECT d.name, h.location FROM department d JOIN management m ON d.member_id = m.member_id JOIN head h ON m.performance_id = h.performance_id
SELECT head.date FROM department JOIN management ON department.member_id = management.member_id JOIN head ON management.performance_id = head.performance_id WHERE department.role ilike '%violin%' GROUP BY head.date
SELECT d.name, h.date FROM department d JOIN management m ON d.member_id = m.member_id JOIN head h ON m.performance_id = h.performance_id ORDER BY COUNT(m.performance_id) DESC
SELECT m.title FROM management AS m JOIN management AS p ON m.course_id = p.prereq IS NULL AND EXISTS (SELECT 1 FROM management AS q WHERE q.prereq = m.course_id AND q.prereq != p.course_id)
SELECT course_id, title FROM management WHERE credits > 2
SELECT m.title, m.credits, d.dept_name FROM management AS m JOIN (SELECT course_id FROM prerequisite GROUP BY course_id HAVING COUNT(course_id) > 1) AS p ON m.course_id = p.course_id JOIN department AS d ON d.building = m.dept_name
SELECT m.title, m.credits, d.dept_name FROM management AS m JOIN (SELECT course_id FROM management GROUP BY course_id HAVING COUNT(course_id) > 1) AS sub ON m.course_id = sub.course_id JOIN department AS d ON d.building = m.building
SELECT s.name FROM student AS s JOIN course_student AS cs ON s.id = cs.student_id WHERE date_part('year', cs.start_date) IN (2009, 2010)
SELECT student.name FROM student WHERE year_of_birth IN (2009, 2010)
SELECT c.course_name, i.instructor_name FROM course c JOIN instructor i ON c.instructor_id=i.instructor_id WHERE EXTRACT(YEAR FROM to_date(c.start_date,'YYYYMMDD'))=2008
SELECT c.title, i.instructor_name FROM course c JOIN instructor i ON c.instructor_id = i.instructor_id WHERE EXTRACT(YEAR FROM c.start_date) = 2008 ORDER BY c.title ASC
SELECT instructor.name FROM instructor WHERE instructor.id IN (SELECT course.instructor_id FROM course GROUP BY course.instructor_id HAVING COUNT(course.instructor_id) > 1)
SELECT instructor.name FROM instructor WHERE instructor.id IN (SELECT student.instructor_id FROM student GROUP BY student.instructor_id HAVING COUNT(student.instructor_id) > 1)
SELECT s.name FROM student AS s WHERE EXISTS (SELECT 1 FROM advisor AS a WHERE a.student_id = s.id GROUP BY a.student_id HAVING COUNT(a.advisor_id) > 1)
SELECT s.name FROM student AS s JOIN advisor_student AS asd ON s.id = asd.student_id GROUP BY s.name HAVING COUNT(asd.advisor_id) > 1
SELECT instructor.id FROM instructor WHERE instructor.name IN (SELECT student.name FROM student JOIN course ON student.course_id = course.course_id JOIN management ON course.dept_name = management.dept_name JOIN department ON management.building = department.building AND department.building = 'History')
SELECT instructor.id FROM instructor WHERE instructor.dept_name IN (SELECT management.dept_name FROM management JOIN course ON management.course_id = course.course_id JOIN department ON course.department_id = department.building AND department.dept_name = 'History')
SELECT i.name AS instructor_name, s.student_number, h.history_department_head, m.management_title, d.building, to_char(i.hire_date,'YYYY-MM-DD') AS hire_date, to_char(i.salary,'9999-99-99') AS salary_string FROM instructor i JOIN student s ON i.id = s.instructor_id JOIN department d ON i.dept_name = d.building AND d.department_type = 'History' JOIN management m ON i.title = m.title
SELECT i.first_name, i.last_name, s.salary AS salary_instructor FROM instructor i JOIN section s ON i.user_id = s.instructor_id WHERE s.dept_name ilike '%History%' 
SELECT management.title FROM management JOIN department ON management.dept_name = department.building WHERE department.building ilike '%Chandler%' AND EXTRACT(YEAR FROM to_date(management.course_id, 'YYYYMMDD')) = 2010
SELECT m.title FROM management AS m JOIN head AS h ON m.dept_name = h.dept_name JOIN department AS d ON h.building = d.building WHERE d.room_number = 'Chandler' AND to_date(d.capacity::text, '9999') BETWEEN to_date('2010-09-01', 'YYYY-MM-DD') AND to_date('2010-12-31', 'YYYY-MM-DD')
SELECT instructor.first_name, instructor.last_name FROM instructor WHERE instructor.id IN (SELECT management.course_id FROM management WHERE management.title ilike '%C%Programming%' AND management.dept_name IN (SELECT head.dept_name FROM head))
SELECT instructor.first_name, instructor.last_name FROM instructor WHERE instructor.course_id IN (SELECT course_id FROM management WHERE dept_name ILIKE '%C%Programming%')
SELECT i.name AS instructor_name, i.salary, d.dept_name AS department_name FROM instructor i JOIN instructor_student is ON i.id = is.instructor_id JOIN department d ON is.department_id = d.id WHERE d.building = 'Math'
SELECT i.first_name, i.last_name, s.salary AS salary_instructor FROM instructor i JOIN section s ON i.user_id = s.instructor_id WHERE s.dept_id IN (SELECT dept_id FROM department WHERE building ILIKE '%Math%')
SELECT instructor.name, COUNT(student_course.course_id) AS total_courses FROM instructor JOIN student_course ON instructor.user_id = student_course.instructor_id JOIN department ON student_course.dept_id = department.building WHERE department.name ilike '%Math%' GROUP BY instructor.name
SELECT instructor.name, COUNT(student_course.course_id) AS total_courses FROM instructor JOIN student_course ON instructor.user_id = student_course.instructor_id JOIN course ON student_course.course_id = course.code AND course.dept_name = 'Math' GROUP BY instructor.name ORDER BY total_courses DESC NULLS LAST
SELECT m.instructor_name FROM management AS m JOIN (SELECT s.student_id, COUNT(*) AS total_credits FROM student AS s GROUP BY s.student_id) AS subquery ON m.course_id = subquery.student_id
SELECT m.instructor_name FROM management AS m JOIN (SELECT s.student_id, COUNT(*) AS total_credits FROM student AS s GROUP BY s.student_id) AS sub ON m.course_id = sub.student_id ORDER BY total_credits DESC LIMIT 1
SELECT instructor.name, COUNT(instructor.id) AS total_instructors, AVG(instructor.salary) AS average_salary FROM instructor JOIN head ON instructor.dept_name = head.dept_name GROUP BY instructor.name ORDER BY total_instructors DESC NULLS LAST LIMIT 1
SELECT COUNT(*) AS num_instructors, AVG(salary) AS average_salary FROM instructor WHERE dept_name IN (SELECT head_name FROM head ORDER BY budget DESC LIMIT 1)
SELECT m.course_id, m.title, m.credits FROM management AS m JOIN department AS d ON m.dept_name = d.building AND m.budget = d.capacity ORDER BY d.capacity DESC LIMIT 1
SELECT m.course_id, m.title, m.credits FROM management AS m JOIN department AS d ON m.dept_name = d.building AND m.course_id = (SELECT course_id FROM management WHERE title = (SELECT MAX(title) FROM management)) ORDER BY m.credits DESC NULLS LAST
SELECT d.building, COUNT(s.student_id) AS student_count, COUNT(i.instructor_id) AS instructor_count FROM department d JOIN course c ON d.building = c.dept_name JOIN section s ON c.course_id = s.section_id JOIN instructor i ON s.instructor_id = i.instructor_id GROUP BY d.building
SELECT d.building, COUNT(DISTINCT s.student_id) AS student_count, COUNT(DISTINCT i.instructor_id) AS instructor_count FROM department d JOIN course c ON d.building = c.dept_name JOIN section s ON c.course_id = s.section_id JOIN instructor i ON s.instructor_id = i.instructor_id GROUP BY d.building
SELECT s.name FROM student AS s JOIN enrollment e ON s.id = e.student_id JOIN management m ON e.course_id = m.course_id WHERE m.title ILIKE '%International%Finance%' AND EXISTS (SELECT 1 FROM enrollment e2 WHERE e2.student_id = s.id AND e2.course_id != e.course_id)
SELECT s.name FROM student AS s JOIN enrollment e ON s.id = e.student_id WHERE e.course_id IN (SELECT prereq.course_id FROM prerequisite prereq JOIN course c ON prereq.course_id = c.course_id WHERE c.title ilike '%International%Finance%')
SELECT s.name FROM student AS s JOIN enrollment AS e ON s.id = e.student_id JOIN management AS m ON e.course_id = m.course_id WHERE m.dept_name ILIKE '%Statistics%'
SELECT s.name FROM student AS s JOIN course_taken AS ct ON s.id = ct.student_id JOIN course AS c ON ct.course_id = c.id WHERE c.title ilike '%Statistics%'
SELECT c.course_title, d.building, r.room_number, s.semester, to_char(s.start_year,'YYYY') AS start_year FROM course_offering co JOIN course c ON co.course_id = c.course_id JOIN department d ON c.dept_id = d.building JOIN room r ON c.room_number = r.room_number JOIN semester s ON co.semester = s.semester WHERE c.dept_name ILIKE '%Psychology%' ORDER BY c.course_title NULLS LAST
SELECT management.title, department.building, department.room_number, head.semester, CAST(head.year AS integer) FROM management JOIN department ON management.course_id = department.building JOIN head ON department.building = head.dept_name WHERE management.dept_name ILIKE '%Psychology%'
SELECT instructor.name, management.course_id FROM instructor JOIN teaches ON instructor.id = teaches.instructor_id JOIN management ON teaches.course_id = management.course_id
SELECT instructor.name, course.course_id FROM instructor JOIN course ON instructor.user_id = course.instructor_id
SELECT i.first_name, i.last_name, c.course_id FROM instructor AS i JOIN instructor_department AS id ON i.instructor_id = id.instructor_id JOIN department AS d ON id.dept_id = d.dept_name JOIN course_instructor AS ci ON i.instructor_id = ci.instructor_id JOIN course AS c ON ci.course_id = c.course_id WHERE d.dept_name ILIKE '%Art%' 
SELECT instructor.first_name, instructor.last_name, management.course_id FROM instructor JOIN teaches ON instructor.user_id = teaches.instructor_id JOIN management ON teaches.course_id = management.course_id WHERE department.dept_name ILIKE '%Art%'
SELECT p.name, d.date, v.venue FROM person AS p JOIN head h ON p.id = h.debate_id JOIN venue v ON h.venue = v.id
SELECT p.name, d.date, v.venue FROM person AS p JOIN head h ON p.department_id = h.debate_id JOIN venue v ON h.venue = v.venue WHERE p.affirmative_win_others = 1 ORDER BY p.name ASC
SELECT p.name FROM person AS p JOIN management AS m ON p.people_id = m.debate_id JOIN head h ON m.debate_id = h.debate_id WHERE m.affirmative = 1 AND h.num_of_audience > 200
SELECT department.name, COUNT(management.affirmative_win) AS affirmative_wins FROM department JOIN management ON department.people_id = management.debate_id GROUP BY department.name
SELECT p.name FROM person AS p JOIN head h ON p.people_id = h.debate_id JOIN management m ON h.debate_id = m.debate_id WHERE m.negative >= 2
SELECT management.policy_type_code FROM management WHERE management.customer_id = 757071 GROUP BY management.policy_type_code
SELECT management.policy_type_code FROM management WHERE management.staff_id IN (SELECT head.staff_id FROM head WHERE head.staff_details ilike '%Dayana%Robel%') ORDER BY management.policy_type_code NULLS LAST
SELECT SUM(claim_amount) AS total_claimed_amount FROM claim WHERE policy_id IN (SELECT policy_id FROM policy WHERE start_date = (SELECT MAX(start_date) FROM policy))
SELECT SUM(claim_amount) AS total_claimed_amount FROM claim WHERE policy_id IN (SELECT policy_id FROM policy WHERE start_date = (SELECT MAX(start_date) FROM policy))
SELECT c.customer_name, MAX(cl.claim_amount) AS max_claim_amount FROM customer c JOIN claim cl ON c.customer_id = cl.customer_id GROUP BY c.customer_name HAVING MAX(cl.claim_amount) > 10000
SELECT c.customer_first_name, c.customer_last_name, MAX(cl.claim_amount) AS max_claim_amount FROM customer c JOIN claim cl ON c.customer_id = cl.customer_id GROUP BY c.customer_first_name, c.customer_last_name
SELECT c.first_name, c.last_name FROM customers AS c JOIN claims AS cl ON c.customer_id = cl.customer_id WHERE cl.claim_amount = (SELECT MIN(claim_amount) FROM claims)
SELECT c.customer_firstname, c.customer_lastname, MIN(cl.claim_amount) AS min_claim_amount FROM customer c JOIN claim cl ON c.customer_id = cl.customer_id GROUP BY c.customer_firstname, c.customer_lastname
SELECT m.claim_processing_stage_name, COUNT(*)::FLOAT / (SELECT COUNT(*) FROM claim) AS proportion FROM claim c JOIN management m ON c.management_id = m.policy_id GROUP BY m.claim_processing_stage_name ORDER BY proportion DESC LIMIT 1
SELECT c.claim_status_name, COUNT(*) AS total_claims FROM claim c GROUP BY c.claim_status_name ORDER BY total_claims DESC NULLS LAST LIMIT 1
SELECT c.name FROM customer c JOIN policy p ON c.customer_id = p.customer_id JOIN management m ON p.policy_id = m.policy_id WHERE m.policy_type_code = 'deputy'
SELECT management.policy_id, department.customer_details FROM management JOIN department ON management.customer_id = department.customer_id WHERE management.policy_type_code ilike '%deputy%'
SELECT c.first_name, c.last_name FROM customer c JOIN policy p ON c.customer_id = p.customer_id JOIN management m ON p.policy_id = m.policy_id WHERE (m.policy_type_code = 'deputy' OR m.policy_type_code = 'uniformed') AND to_number(c.phone, '9999999999') IS NOT NULL
SELECT c.customer_details FROM customer c JOIN policy p ON c.customer_id = p.customer_id WHERE p.policy_type_code IN ('Deputy', 'Uniform')
SELECT c.customer_name, COUNT(p.policy_id) AS policy_count FROM customer c JOIN policy p ON c.customer_id = p.customer_id GROUP BY c.customer_name ORDER BY policy_count DESC NULLS LAST LIMIT 1
SELECT c.customer_id, COUNT(p.policy_id) AS policy_count FROM customer c JOIN policy p ON c.customer_id = p.customer_id GROUP BY c.customer_id ORDER BY policy_count DESC NULLS LAST
SELECT m.policy_id, d.customer_details FROM management AS m JOIN department AS d ON m.customer_id = d.customer_id ORDER BY m.start_date DESC LIMIT 1
SELECT m.policy_id, d.customer_details FROM management AS m JOIN department AS d ON m.customer_id = d.customer_id ORDER BY m.start_date DESC LIMIT 1
SELECT d.customer_id, d.customer_first_name, d.customer_last_name, h.order_id, to_char(h.date_order_placed,'YYYY-MM-DD') AS order_date FROM department d JOIN head h ON d.customer_id = h.customer_id WHERE d.customer_first_name ilike '%Meaghan%'
SELECT d.customer_id, d.customer_first_name, d.customer_last_name, h.date_order_placed, m.invoice_number, m.invoice_date FROM department d JOIN head h ON d.customer_id = h.customer_id JOIN management m ON h.order_id = m.order_id WHERE d.customer_first_name ILIKE '%Meaghan%'
SELECT d.customer_first_name, d.customer_last_name, a.account_number, a.account_type FROM department d JOIN account a ON d.customer_id = a.customer_id
SELECT department.customer_first_name, department.customer_last_name, department.gender, department.email_address, department.phone_number FROM department WHERE department.customer_first_name ILIKE '%Meaghan%' AND department.customer_last_name ILIKE '%Keeling%'
SELECT department.customer_first_name, department.customer_last_name FROM department WHERE department.account_name = '900'
SELECT department.customer_first_name, department.customer_middle_initial, department.customer_last_name FROM department WHERE department.account_name = '900' 
SELECT department.customer_first_name, department.customer_last_name, department.phone_number FROM department WHERE department.customer_id IS NOT NULL
SELECT department.customer_first_name, department.customer_last_name, department.phone_number FROM department WHERE department.customer_id IS NOT NULL
SELECT department.customer_id, department.customer_first_name, department.customer_last_name, COUNT(*) AS account_count FROM department GROUP BY department.customer_id, department.customer_first_name, department.customer_last_name ORDER BY account_count DESC NULLS LAST LIMIT 1
SELECT d.customer_id, d.customer_first_name, d.customer_last_name FROM department d WHERE d.customer_id IN (SELECT h.customer_id FROM head h GROUP BY h.customer_id HAVING COUNT(h.order_id) > ALLer.customer_id, d.customer_last_name FROM department d GROUP BY d.customer_id, d.customer_last_name ORDER BY COUNT(d.customer_id) DESC NULLS LAST LIMIT 1)
SELECT d.customer_id, d.customer_first_name, d.customer_last_name, COUNT(h.order_id) AS account_count FROM department d JOIN head h ON d.customer_id = h.customer_id GROUP BY d.customer_id, d.customer_first_name, d.customer_last_name
SELECT department.customer_first_name, department.customer_last_name, department.customer_id, COUNT(head.order_id) AS total_orders FROM department JOIN head ON department.customer_id = head.customer_id GROUP BY department.customer_first_name, department.customer_last_name, department.customer_id
SELECT d.customer_first_name, d.customer_id FROM department d JOIN head h ON d.customer_id = h.customer_id GROUP BY d.customer_first_name, d.customer_id HAVING COUNT(h.order_id) >= 2
SELECT d.customer_first_name, d.customer_id FROM department d WHERE d.customer_id IN (SELECT head.customer_id FROM head GROUP BY head.customer_id HAVING COUNT(head.order_id) >= 2)
