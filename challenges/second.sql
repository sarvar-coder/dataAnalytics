USE cinema_booking_system;
 
-- Which film (or films) had the most screenings?
SELECT f.name, COUNT(s.film_id) as no_watched FROM films f
JOIN screenings s ON s.film_id = f.id
GROUP BY s.film_id;

-- Get the counts.
SELECT COUNT(*) FROM 
(SELECT f.name, COUNT(s.film_id) as no_watched FROM films f
JOIN screenings s ON s.film_id = f.id
GROUP BY s.film_id) a;

-- Get the maximum number of screenings.
SELECT  max(no_watched) as most_watched FROM 
(SELECT f.name as name, COUNT(s.film_id) as no_watched FROM films f
JOIN screenings s ON s.film_id = f.id
GROUP BY s.film_id) a;