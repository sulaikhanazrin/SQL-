/*JOINS
NO JOIN

Retrive all data from customers and orders as seperate events*/

SELECT *
FROM customers

SELECT *
FROM orders

--INNER JOIN

--Get all customers along with thier orders but only for custoers who have place an order
SELECT *
FROM customers
INNER JOIN orders
ON id = customer_id

--Select the required columns and use aliasis for betetr reduced length
SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id

--LEFT JOIN
--Get all customers along with thier orders,including those without orders
SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id

--RIGHT JOIN
--Get all customers along with thier orders including orders without matching customers
SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id

--Get all customers along with thier orders including orders without matching customers USING LEFT JOIN
SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id

--FULL JOIN
-- Get all customers and orders even if there is no match
SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id

