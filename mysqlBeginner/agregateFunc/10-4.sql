USE cinema_booking_system;
 
SELECT * FROM rooms;

SELECT SUM(id ) FROM rooms;

SELECT SUM(no_seats ) FROM rooms
WHERE id > 1;