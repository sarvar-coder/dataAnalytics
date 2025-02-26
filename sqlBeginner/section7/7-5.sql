USE coffee_store;
  
SELECT orders.*, customers.* FROM customers 
LEFT JOIN orders  ON orders.id_customers = customers.id
ORDER BY orders.id;

SELECT orders.*, customers.* FROM customers 
RIGHT JOIN orders ON orders.id_customers = customers.id
ORDER BY orders.id;

SELECT orders.*, customers.* FROM orders 
RIGHT JOIN customers ON orders.id_customers = customers.id
ORDER BY orders.order_time;
DESCRIBE orders;