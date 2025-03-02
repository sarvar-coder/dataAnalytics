USE cinema_booking_system;
 
-- Substring

SELECT substring("SarvarBEK", 7, 3) AS sub;

--     substring(string, start, length)

SELECT * FROM films;

SELECT SUBSTRING(name, 1, 4) AS short_name FROM films;


SELECT SUBSTRING(name, 5, 6) AS short_name FROM films;

SELECT SUBSTRING(name, -2, 2) AS short_name FROM films;

SELECT SUBSTRING(name, -6, 5) AS short_name FROM films;