USE coffee_store;

SELECT DISTINCT last_name FROM customers
ORDER BY last_name;

SELECT * FROM orders
WHERE id_products = 3 
LIMIT 4; 

DESCRIBE products;

SELECT name, price AS retail_price, coffee_orign FROM products;
