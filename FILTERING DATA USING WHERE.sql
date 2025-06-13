/*FILTERING DATAS
USING WHERE Operator
This includes comparison,logical,range,membership and search operaors*/

--COMPARISON
--Retrive all customers from germany
SELECT *
FROM customers
WHERE country = 'Germany'

--Retrive all customers who are not from germany
SELECT *
FROM customers
WHERE country != 'Germany'

--Retrive all customers with a score greater than 500
SELECT *
FROM customers
WHERE score > 500

--Retrive all customers with a score of 500 or more
SELECT *
FROM customers
WHERE score >= 500

--Retrive all customers with a score LESS than 500
SELECT *
FROM customers
WHERE score < 500

--Retrive all customers with a score 500 OR LESS
SELECT *
FROM customers
WHERE score <= 500

--LOGICAL OPERATOR
--AND
----Retrive all customers who are from USA AND have score greater than 500

SELECT *
FROM customers
WHERE country = 'USA' AND score > 500

--OR
--Retrive all customers who are either from USA OR have score greater than 500
SELECT *
FROM customers
WHERE country = 'USA' OR score > 500

--NOT
--Retrive all customers WITH SCORE NOT LESS than 500
SELECT *
FROM customers
WHERE NOT SCORE < 500

/*RANGE OPERATOR
BETWEEN

Retrive all customers whose score falls in range b/w 100 and 500*/
SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500
--OR you can use logical operator here
SELECT * 
FROM customers
WHERE score >=100 AND score <=500

/*Membership operator
IN

Retrive all customers from either germany or USA*/
SELECT *
FROM customers
WHERE country = 'Germany' OR country = 'USA'
--Above is using OR Operator
SELECT *
FROM customers
WHERE country IN('Germany','USA')

/*SEARCH OPERATOR
LIKE
Find all customers whose first name starts with 'M'*/
SELECT *
FROM customers
WHERE first_name LIKE 'M%'

--Find all customers whose first name ends with 'N'
SELECT *
FROM customers
WHERE first_name LIKE '%N'

--Find all customers whose first name contain 'r'
SELECT *
FROM customers
WHERE first_name LIKE '%r%'

--Find all customers whose first name has 'r' in the 3rd postion
SELECT *
FROM customers
WHERE first_name LIKE '__r%'