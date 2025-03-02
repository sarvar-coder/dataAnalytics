USE cinema_booking_system;
 
-- Which files are over 2 hours long?

SELECT name, length_min FROM films
WHERE length_min > 120;