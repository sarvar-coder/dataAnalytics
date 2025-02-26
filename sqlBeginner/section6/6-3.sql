USE coffee_store;

DESCRIBE customers;

SELECT last_name FROM customers
WHERE gender = 'F';

SELECT * FROM products
WHERE coffee_orign = 'Brazil';

SELECT * FROM products
WHERE price = 3
AND name = 'Filter';