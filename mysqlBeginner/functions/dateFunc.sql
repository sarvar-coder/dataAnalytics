USE cinema_booking_system;
 
SELECT date('2023-09-23 07:00:00');

SELECT start_time FROM screenings;
 
SELECT date(start_time) FROM screenings;

SELECT * FROM screenings
WHERE DATE(start_time) = '2022-01-22';

SELECT * FROM screenings
WHERE start_time = '2022-01-22';