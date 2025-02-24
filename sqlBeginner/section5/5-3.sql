USE coffee_store;
 
-- UPDATE <table name>
-- SET <column name> = <value>
-- WHERE <column name> = <match>;
 
SELECT * FROM products;

UPDATE products
SET coffee_orign = 'Sri Lanka'
WHERE id = 7;

SET sql_safe_updates = false;

UPDATE products
SET coffee_orign = 'Brazil'
WHERE coffee_orign = 'Uzbek';