USE coffee_store;
 
/*
!= ... not equal to.
<> ... not equal to (i.e. greater than or less than).
>  ... greater than.
>= ... greater than or equal to.
<  ... less than.
<= ... less than or equal to.
*/
 
SELECT * FROM products
WHERE price != 3;

SELECT * FROM products
WHERE price > 3;