--GROUP BY
--FIND THE TOTAL SCORE FOR EACH COUNTRY

SELECT
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country


SELECT
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country,first_name


--Find total score and total no of customers for each country

SELECT 
	country,
	SUM(score) AS total_score,
	COUNT(id) AS total_customers
FROM customers
GROUP BY country