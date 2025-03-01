USE coffee_store;

-- FROM THE PRODUCTS TABLE SELECT coffe orign columbi or indoseia by ascending order A-Z 


INSERT INTO products (name, price, coffee_orign)
VALUES ('Latte', 5.43, 'Brazil');

SELECT price, name FROM products
WHERE coffee_orign = 'Brazil'
OR coffee_orign = 'Indonesia'
ORDER BY name ASC
;

SELECT * FROM orders
 WHERE order_time BETWEEN '2023-02-01' AND '2023-02-28' 
AND id_customers in (19, 20, 21, 24) 
;

SELECT first_name, last_name, phone_number FROM customers
WHERE last_name LIKE '%ar%';
