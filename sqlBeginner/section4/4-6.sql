USE test;
 
-- How to change a column's name
 
-- ALTER TABLE <table name>
-- CHANGE <current column name> <new column name> <data type>;
 
-- ALTER TABLE <tablename>
-- RENAME COLUMN <current column name> TO <new column name>;

SHOW TABLES;
DESCRIBE address;
DESCRIBE people;
DESCRIBE pet;

ALTER TABLE address
CHANGE huouse_number house_number INT;

ALTER TABLE pet
RENAME COLUMN people_id TO owner_id;