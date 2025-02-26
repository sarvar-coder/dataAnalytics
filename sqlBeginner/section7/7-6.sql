USE coffee_store;
 
 DESCRIBE orders;
 DESCRIBE customers;
 DESCRIBE products;
 SELECT * FROM orders;
 
 -- exeercise first done 
SELECT orders.id_products, orders.id, customers.phone_number FROM orders
JOIN customers on orders.id_products = 4;


SELECT orders.id, products.name, orders.order_time FROM orders 
JOIN  products ON orders.order_time
BETWEEN '2023-01-01' AND '2023-03-31 23:59:59.999999';