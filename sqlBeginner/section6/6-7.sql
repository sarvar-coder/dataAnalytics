USE coffee_store;
 
-- 1. From the customers table, select the first name and phone number
--    of all the females who have a last name of Bluth.
SELECT first_name, last_name, phone_number from customers
WHERE last_name = 'Bluth';
 
-- 2. From the products table, select the name for all products that have
--    a price greater than 3.00, or a coffee origin of Sri Lanka.
SELECT * FROM products
WHERE price > 3 
OR coffee_orign = 'Sri Lanka';

 
-- 3. How many male customers don't have a phone number
--    entered in the customers table.
SELECT * FROM customers
WHERE phone_number is null 
AND gender = 'M';
