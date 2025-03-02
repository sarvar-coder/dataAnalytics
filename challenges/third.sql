USE cinema_booking_system;
 
-- How many bookings did the film Jigsaw have, in May 2022?

SELECT screenings.id FROM screenings
JOIN films ON films.id = screenings.film_id
WHERE films.name = 'Jigsaw'
AND year(start_time) = 2022 AND month(start_time) = 5;

SELECT count(*) FROM bookings
WHERE screening_id IN
(SELECT screenings.id FROM screenings
JOIN films ON films.id = screenings.film_id
WHERE films.name = 'Jigsaw'
AND year(start_time) = 2022 AND month(start_time) = 5);


SELECT count(*) FROM bookings b
JOIN screenings s ON b.screening_id = s.id
JOIN films ON films.id = s.film_id
WHERE films.name = 'Jigsaw'
AND year(start_time) = 2022 AND month(start_time) = 5;