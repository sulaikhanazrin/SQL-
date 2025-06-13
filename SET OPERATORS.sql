/*SET OPERATORS
UNION
Combine the data from employees and customers in one table*/

SELECT
FirstName,
LastName
FROM Sales.Customers
UNION
SELECT
FirstName,
LastName
FROM Sales.Employees

--UNION ALL
--Combine the data from employees and customers into one table,including duplicates

SELECT
FirstName,
LastName
FROM Sales.Customers
UNION ALL
SELECT
FirstName,
LastName
FROM Sales.Employees

--EXCEPT
--Find employess who are not customer at the same time

SELECT
FirstName,
LastName
FROM Sales.Customers
EXCEPT
SELECT
FirstName,
LastName
FROM Sales.Employees

--INTERSECT
--Returns only the rows that are common in both queries

SELECT
FirstName,
LastName
FROM Sales.Customers
INTERSECT
SELECT
FirstName,
LastName
FROM Sales.Employees

/*UNION USE CASE 
Combine information

Ordrs are stored in seperate tables(orsers and orders archieve)
Combine all the orders into one report without duplicates*/

SELECT
'Order' AS SourceTable
        ,[OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.Orders
UNION
SELECT
'OrderArchive' AS SourceTable
       ,[OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.OrdersArchive
ORDER BY OrderID