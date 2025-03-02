USE cinema_booking_system;
 
-- How many bookings did the film Jigsaw have, in May 2022?
SELECT * FROM bookings;
SELECT * FROM screenings;
SELECT * FROM films;


SELECT  count(b.screening_id) FROM bookings b
JOIN screenings s ON s.id = b.screening_id
WHERE year(start_time) = 2022 AND month(start_time) = 5 AND s.id = 1
GROUP BY s.id;

SELECT s.id, f.name, count(s.film_id) as no_sold FROM films f
JOIN screenings s ON s.film_id = f.id
GROUP BY f.name, s.id
HAVING f.name = 'Jigsaw';

SELECT film_id FROM screenings 
WHERE year(start_time) = 2022 AND month(start_time) = 5;

SELECT f.name,  count(a.film_id) from (SELECT film_id FROM screenings 
WHERE year(start_time) = 2022 AND month(start_time) = 5) a
JOIN films f ON f.id = a.film_id
GROUP BY f.name
HAVING f.name = 'Jigsaw';


 -- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT s.id FROM screenings s
JOIN films f ON f.id = s.film_id
WHERE f.name = 'Jigsaw'
AND year(s.start_time ) = 2022 AND month(start_time) = 5 ;


SELECT count(*)  FROM bookings
where screening_id IN
(
SELECT s.id FROM screenings s
JOIN films f ON f.id = s.film_id
WHERE f.name = 'Jigsaw'
AND year(s.start_time ) = 2022 AND month(start_time) = 5 
) ;







