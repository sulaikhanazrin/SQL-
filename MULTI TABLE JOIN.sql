/*Task:Using SalesDB,Retrive a list of all orders, along with the related customer, producct,and employee details, for each order,display:
OrderID, Customer's name, Product name, Sales, Price, Sales person's name*/

--FIRST EXPLORE ALL TABLES.
SELECT * FROM Sales.Customers
SELECT * FROM Sales.Employees

SELECT * FROM Sales.Orders

SELECT * FROM Sales.OrdersArchive

SELECT * FROM Sales.Products

--ANSWER
SELECT 
	o.OrderID,
	o.Sales,
	c.FirstName AS CustomerFirstName,
	c.LastName AS CustomerLastName,
	p.Product as ProductName,
	p.Price,
	e.FirstName AS EmployeeFirstName,
	e.LastName AS EmployeeLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees as e
ON o.SalesPersonID = e.EmployeeID