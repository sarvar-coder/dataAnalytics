USE cinema_booking_system;
 
SELECT 
    *
FROM
    bookings;

SELECT 
    customers.last_name, COUNT(*)
FROM
    bookings
        JOIN
    customers ON bookings.customer_id = customers.id
GROUP BY customer_id
ORDER BY customers.last_name;


SELECT 
    films.name,
    screenings.start_time,
    customers.first_name,
    customers.last_name,
    COUNT(bookings.id)
FROM
    films
        JOIN
    screenings ON screenings.film_id = films.id
        JOIN
    bookings ON bookings.screening_id = screenings.id
        JOIN
    customers ON customers.id = bookings.customer_id
    WHERE films.name = 'Blade Runner'

GROUP BY films.name , screenings.start_time , customers.first_name , customers.last_name
;
