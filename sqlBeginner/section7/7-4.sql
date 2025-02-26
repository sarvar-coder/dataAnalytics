USE coffee_store;
 
UPDATE orders
SET id_customers = Null
WHERE id IN (1, 3, 5);
 
SELECT * FROM customers;
SELECT * FROM orders;

SELECT orders.*, customers.* FROM orders 
LEFT JOIN customers on orders.id_customers = customers.id
ORDER BY orders.order_time;
