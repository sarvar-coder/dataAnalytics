USE cinema_booking_system;
 
-- In the Chaplin room, which film was shown most often?
-- helper 
 SELECT * FROM rooms;
 SELECT * FROM films;
 SELECT * FROM screenings;

-- SOLUTION ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT f.name as name, count(s.film_id) as most_showing FROM screenings s
JOIN films f ON s.film_id = f.id
WHERE room_id = ( SELECT id FROM rooms  WHERE name = 'Chaplin') 
GROUP BY f.name
ORDER BY most_showing DESC
limit 1;

-- helper 
SELECT id FROM rooms 
WHERE name = 'Chaplin';

 
