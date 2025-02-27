USE cinema_booking_system;
 DESCRIBE bookings;
-- 1. How many bookings did the customer with ID 10 make, in total.
SELECT 
    COUNT(*)
FROM
    bookings
WHERE
    customer_id = 10;
 
-- 2. Count the number of screenings for Blade Runner 2049 in October 2022.
 DESCRIBE screenings;
 DESCRIBE films;
 
SELECT 
    COUNT(*)
FROM
    screenings
        JOIN
    films ON films.id = screenings.film_id
WHERE
    films.name = 'Blade Runner 2049'
        AND screenings.start_time BETWEEN '2022-10-01' AND '2022-10-30';
 
 
-- 3. Count the number of unique customers who made a booking for April 2023.
DESCRIBE customers;
DESCRIBE bookings;
 DESCRIBE screenings;

SELECT COUNT(DISTINCT bookings.customer_id) FROM bookings
JOIN screenings ON screenings.id = bookings.screening_id
WHERE screenings.start_time BETWEEN '2023-04-01' AND '2023-05-01'
 ;