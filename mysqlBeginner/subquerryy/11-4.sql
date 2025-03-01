USE cinema_booking_system;
 
SELECT * FROM reserved_seat;

SELECT booking_id, count(seat_id) AS no_seats
FROM reserved_seat
GROUP BY booking_id;

SELECT max(no_seats) FROM
(SELECT booking_id, count(seat_id) AS no_seats
FROM reserved_seat
GROUP BY booking_id) b ;

SELECT * FROM reserved_seat;

SELECT 
    booking_id, COUNT(seat_id) AS no_seats
FROM
    reserved_seat
GROUP BY booking_id;