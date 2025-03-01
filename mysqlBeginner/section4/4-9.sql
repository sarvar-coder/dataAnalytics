USE test; 

-- 1. First challenge add primary key to to the id in pet table 

DESCRIBE pet;

ALTER TABLE pet
ADD PRIMARY KEY (id);

-- 2. Second challenege: check people table and add primary key if it is not available 
DESCRIBE people;

-- 3. Third challenge: add foreign key to pet's owner_id 
DESCRIBE pet;

ALTER TABLE pet
ADD CONSTRAINT FK_PetOwnerId
FOREIGN KEY (owner_id)
REFERENCES people(id);

-- 4. Fourth challenge: add email column to people table
DESCRIBE people;

ALTER TABLE people 
ADD COLUMN email VARCHAR(30);

-- 5. Fifth challenge: add unique constraint to email column 

ALTER TABLE people 
ADD CONSTRAINT unique_email UNIQUE (email);

-- 6. Six th challenge: rename  the name atr to first_name in pet table 
DESCRIBE pet;

ALTER TABLE pet 
RENAME COLUMN name TO first_name;

-- 7. Seven th challenge: Change the type of postcode attr on address table. 
DESCRIBE address; 

ALTER TABLE address
MODIFY postcode CHAR(7);

