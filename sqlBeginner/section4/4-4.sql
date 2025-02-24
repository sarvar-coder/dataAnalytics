USE test;
 
-- How to add a foreign key to a table
 
-- ALTER TABLE <table name>
-- ADD CONSTRAINT <constraint name>
-- FOREIGN KEY (<column name>) REFERENCES <table name>(<column name>);
 
-- How to remove a foreign key from a table
 
-- ALTER TABLE <table name>
-- DROP FOREIGN KEY <constraint name>,
-- DROP INDEX <constraint name>;
 
DESCRIBE address;
DESCRIBE people;

ALTER TABLE people 
ADD CONSTRAINT FK_PeopleAddress
FOREIGN KEY (address_id) 
REFERENCES address(id);







