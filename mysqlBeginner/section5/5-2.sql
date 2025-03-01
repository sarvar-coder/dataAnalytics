USE coffee_store;
 
SHOW tables;
 
-- INSERT INTO <table name> (<column1>, <column2>, <column3>, ... <column_n>)
-- VALUES (value1, value2, value3, ... value_n);

SELECT * FROM products;  

DESCRIBE products;

INSERT INTO products(name, price, coffee_orign)
VALUES ('Americano', 4.34, 'Turkey');

INSERT INTO products(name, price, coffee_orign)
VALUES ('Capucino', 6.7, 'Arabic'), 
       ('Ordinary', 3, 'Uzbek');
  
INSERT INTO products(name, price, coffee_orign)
VALUES ('Latte', 3.5, 'Indonesia'),
       ('Americano', 3, 'Brazil'),
       ('Flat white', 3.5, 'Indonesia'),
       ('Filter', 3, 'India');







































