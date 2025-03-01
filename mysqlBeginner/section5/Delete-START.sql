USE test;

CREATE TABLE person ( 
       id INT auto_increment PRIMARY KEY,
       name VARCHAR(30),
       last_name VARCHAR(30),
       gender ENUM('M', 'F')
);

SELECT * FROM person;

INSERT INTO person (name, last_name, gender) 
VALUES ('Sarvar', 'Boltaboyev', 'M'),
	   ('Nozima', 'Boltaboyeva', 'F'),
       ('Boris', 'Matkarimov', 'M'),
       ('Nasiba', 'Matkarimova', 'F');

DELETE FROM person 
WHERE name = 'Sarvar';

DELETE FROM person 
WHERE gender = 'F';

DELETE FROM person;
