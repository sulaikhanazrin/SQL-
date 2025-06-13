/*ORDER BY
Retrive all customers and sort the results by highest score first
*/

SELECT *
FROM customers
ORDER BY score DESC

--Retrive all customers and sort the results by lowest score first

SELECT *
FROM customers
ORDER BY score ASC

/*NESTED ORDER BY
Retrieve all the customers and sort the results by the country and then by highest score
*/

SELECT *
FROM customers
ORDER BY country ASC,score DESC