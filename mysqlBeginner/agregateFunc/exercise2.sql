USE cinema_booking_system;
SHOW tables;
DESCRIBE customers;
DESCRIBE reserved_seat;
DESCRIBE seats;
DESCRIBE rooms;
SELECT * FROM bookings;
DESCRIBE screenings;
DESCRIBE films;
-- 1. Select the customer ID and count the number of reserved seats, grouped by customer.
--    Sort the results by customer ID.
SELECT bookings.customer_id, COUNT(*) FROM bookings
JOIN reserved_seat ON bookings.id = reserved_seat.booking_id 
GROUP BY bookings.customer_id
ORDER BY bookings.customer_id;

-- 2. Select the film name, and count the number of screening, for each film that is
--    over two hours long.

SELECT films.name, films.length_min, COUNT(*) FROM films 
JOIN screenings ON screenings.film_id = films.id 
GROUP BY films.name, films.length_min 
HAVING films.length_min >= 120;
 
-- 3. Modify the query from question 2, so that it only counts screenings for January 2023.
SELECT films.name, films.length_min, COUNT(*) FROM films 
JOIN screenings ON screenings.film_id = films.id 
WHERE screenings.start_time BETWEEN '2023-01-01' AND '2023-02-01'
GROUP BY films.name, films.length_min 
HAVING films.length_min >= 120;
 
-- 4. Find out how many seats each customer booked, for each screening.
--    Include the customer ID, the screening ID, and the number of seats for each
--    customer for that screening.

