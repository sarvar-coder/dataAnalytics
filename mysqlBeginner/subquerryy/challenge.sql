USE cinema_booking_system;
 
-- 1. Select the film name and length, for all films with a length greater than the 
--    average film length.
DESCRIBE films;

SELECT 
    name, length_min
FROM
    films
WHERE
    length_min > (SELECT AVG(length_min) FROM films);

(SELECT 
    AVG(length_min)
FROM
    films);
 
-- 2. Select the maximum and minimum number of screenings, for our films.
--    We want two values in the result, the maximum number of screenings, and the
--    minimum number.

SELECT MAX(no_screenings), MIN(no_screenings) FROM 
(SELECT film_id, count(*) as no_screenings FROM screenings
GROUP BY film_id) a;

SELECT film_id, count(*) as no_screenings FROM screenings
GROUP BY film_id; 

-- 3. Select each film, and the number of screenings for that film.
SELECT name,
(SELECT count(*) 
FROM screenings 
WHERE screenings.film_id = f.id) as no_screenings
FROM films f;


