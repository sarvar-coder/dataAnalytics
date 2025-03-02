USE cinema_booking_system;
 
-- CONCATENATE
 
-- SELECT concat(column1, column2) AS new_column_name FROM table;

describe customers;

SELECT concat(first_name , ' ',  last_name) AS full_name FROM customers
WHERE first_name IS NOT NULL;

SELECT concat(first_name , ' ',  last_name, '--', email) AS full_name FROM customers;