USE coffee_store;

SELECT * FROM products;
SELECT * FROM orders;

SELECT products.id, orders.id, products.name, orders.order_time FROM products
INNER JOIN orders ON orders.id_products = products.id;