USE coffee_store;
 
/*
%  match any number of characters.
 
_  match just one character.
*/
 
SELECT * FROM customers
WHERE last_name LIKE 'W%'
;

-- FIND ANY NAME WHICH CONTAINS 'O'

SELECT * FROM customers
WHERE last_name LIKE '%O%';

SELECT * FROM customers 
WHERE first_name LIKE '%a';