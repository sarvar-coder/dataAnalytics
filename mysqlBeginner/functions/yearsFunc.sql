USE cinema_booking_system;
 
SELECT year('2023-09-22 07:45:32');

SELECT start_time FROM screenings;

SELECT year(start_time) FROM screenings;

SELECT max(count),  name  FROM (SELECT f.name, COUNT(*) AS count, year(s.start_time) as year FROM screenings s
JOIN films f ON f.id = s.film_id
WHERE year(s.start_time)  = 2023
GROUP BY f.name, year) a;

SELECT f.name, COUNT(*) AS count, year(s.start_time) as year FROM screenings s
JOIN films f ON f.id = s.film_id
WHERE year(s.start_time)  = 2023
GROUP BY f.name, year;


SELECT film_id, start_time FROM screenings
WHERE DATE(start_time) = '2022-06-18';

SELECT * FROM screenings
WHERE DATE(start_time) BETWEEN '2023-03-6' AND '2023-03-13';

SELECT * FROM screenings 
WHERE year(start_time) = '2022' AND month(start_time) = '10';
