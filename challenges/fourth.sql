USE cinema_booking_system;
 
-- Which 5 customers made the most bookings?

SELECT c.first_name, c.last_name, COUNT(*) as no_bookings FROM bookings b
JOIN customers c ON c.id = b.customer_id
GROUP BY c.last_name, c.first_name
ORDER BY no_bookings DESC
LIMIT 5;