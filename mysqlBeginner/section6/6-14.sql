use coffee_store;

SELECT coffee_orign FROM products;

SELECT DISTINCT(coffee_orign) FROM products;

SELECT COUNT(DISTINCT(coffee_orign)) FROM products;
 
 SELECT DISTINCT  coffee_orign, price FROM products;

SELECT DISTINCT  id_customers FROM orders
WHERE order_time BETWEEN '2022-01-01' AND '2022-01-20';