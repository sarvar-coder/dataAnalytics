USE test;
 
-- How to change a column's data type
 
-- ALTER TABLE <table name>
-- CHANGE COLUMN <current column name> <new column name> <data type>;
 
-- ALTER TABLE <table name>
-- MODIFY COLUMN <column name> <data type>;
 
DESCRIBE people;

ALTER TABLE people 
CHANGE COLUMN iD id INT;

ALTER TABLE people 
MODIFY id INT;












