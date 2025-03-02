USE cinema_booking_system;
 
-- In the Chaplin room, which film was shown most often?
 
SELECT * FROM films;
SELECT * FROM rooms;
SELECT * FROM screenings;

SELECT f.name, count(*) AS no_screenings FROM films f
JOIN screenings s ON f.id = s.film_id
JOIN rooms r ON r.id = s.room_id
WHERE r.name = 'Chaplin'
GROUP BY f.name
ORDER BY no_screenings DESC
LIMIT 1;


-- Sub-query solution.
 
SELECT f.name, count(*) AS no_screenings FROM films f
JOIN screenings s ON f.id = s.film_id
JOIN rooms r ON r.id = s.room_id
WHERE r.name = 'Chaplin'
GROUP BY f.name
HAVING no_screenings =
(SELECT max(screenings_count) FROM
(SELECT count(*) AS screenings_count FROM films f
JOIN screenings s ON f.id = s.film_id
JOIN rooms r ON r.id = s.room_id
WHERE r.name = 'Chaplin'
GROUP BY f.name) as rc);