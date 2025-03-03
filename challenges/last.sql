USE cinema_booking_system;
 
-- How many of our customers have made a booking.
SHOW TABLES;
SELECT c.first_name, c.last_name, COUNT(b.customer_id) FROM customers c
JOIN bookings b ON b.customer_id = c.id
GROUP BY c.first_name, c.last_name;

SELECT COUNT(*) as clients FROM
(
SELECT c.first_name, c.last_name, COUNT(b.customer_id) FROM customers c
JOIN bookings b ON b.customer_id = c.id
GROUP BY c.first_name, c.last_name
) a ;