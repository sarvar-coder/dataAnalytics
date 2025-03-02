USE cinema_booking_system;
 
-- Upper and Lower case.
 
-- SELECT upper(column1) AS new_column_name FROM table1;

-- SELECT lower(column1) AS new_column_name FROM table1;

SELECT concat(upper(first_name), " ", upper(last_name)) AS full_name FROM customers;