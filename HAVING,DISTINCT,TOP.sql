/*HAVING
Find the average score for each country considering only customers with a score not equal to 0 and return only those countries with an average score greater than 430
*/
SELECT
	country,
	SUM(score) AS avg_score
FROM customers
WHERE score!=0
GROUP BY country
HAVING SUM(score) > 430

/*DISTINCT
Return Unique list of all countries
*/

SELECT DISTINCT
	country
FROM customers

/*TOP
Retrieve only 3 customers*/

SELECT TOP 3 *
FROM customers

--Retrieve the top 3 customers with highest score

SELECT TOP 3 *
FROM customers
ORDER BY score DESC

--Retrieve lowest 2 customers based on score
SELECT TOP 2 *
FROM customers
ORDER BY score ASC

--GET two most recent orders
SELECT TOP 2*
FROM orders
ORDER BY order_date DESC