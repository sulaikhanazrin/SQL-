/*ADVANCED SQL JOINS
LEFT ANTI JOINS

Get all customers who havent place any order*/
SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE customer_id IS NULL

--RIGHT ANTI JOIN
--Get all orders without matching customers
SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id is NULL

--Alternate to anti right join - Use anti left join
SELECT *
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id is NULL

--FULL ANTI JOIN
--Find customers without order and orders without customers
SELECT *
FROM orders AS o
FULL JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id is NULL OR o.customer_id IS NULL

--ADVANCED INNER JOIN
--Get all customers along with thier orders but only for customers who have placed an order(without using INNER JOIN)
SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id is NOT NULL

--CROSS JOIN
--Generate all possible combination of customers and orders
SELECT *
FROM customers
CROSS JOIN orders