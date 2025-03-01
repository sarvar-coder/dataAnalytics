USE test;
 SHOW TABLES;
 
-- sql to add a primary key 
ALTER TABLE address  
ADD PRIMARY KEY (id);

-- sql to remove primary key 
ALTER TABLE address 
DROP PRIMARY KEY;

DESCRIBE address;

DESCRIBE people;

ALTER TABLE people 
ADD PRIMARY KEY (id);


