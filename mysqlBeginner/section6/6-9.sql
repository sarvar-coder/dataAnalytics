USE coffee_store;
 
SELECT * FROM orders;

SELECT * FROM orders
WHERE order_time BETWEEN '2022-01-01' AND '2022-01-22';

SELECT * FROM orders
WHERE id_products BETWEEN 1 AND 2;

