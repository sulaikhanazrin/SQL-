/* ==============================================================================
   SQL Date & Time Functions
-------------------------------------------------------------------------------
   This script demonstrates various date and time functions in SQL.
   It covers functions such as GETDATE, DATETRUNC, DATENAME, DATEPART,
   YEAR, MONTH, DAY, EOMONTH, FORMAT, CONVERT, CAST, DATEADD, DATEDIFF,
   and ISDATE.
   
   Table of Contents:
     1. GETDATE | Date Values
     2. Date Part Extractions (DATETRUNC, DATENAME, DATEPART, YEAR, MONTH, DAY)
     3. DATETRUNC
     4. EOMONTH
     5. Date Parts
     6. FORMAT
     7. CONVERT
     8. CAST
     9. DATEADD / DATEDIFF
    10. ISDATE
===============================================================================
*/

/* ==============================================================================
   GETDATE() | DATE VALUES
===============================================================================*/

/* TASK 1:
   Display OrderID, CreationTime, a hard-coded date, and the current system date.
*/
SELECT
    OrderID,
    CreationTime,
    '2025-08-20' Hardcoded,
    GETDATE() Today
FROM Sales.Orders;

/* ==============================================================================
   DATE PART EXTRACTIONS
   (DATETRUNC, DATENAME, DATEPART, YEAR, MONTH, DAY)
===============================================================================*/

/* TASK 2:
   Extract various parts of CreationTime using DATETRUNC, DATENAME, DATEPART,
   YEAR, MONTH, and DAY.*/

SELECT
OrderID,
CreationTime,
-- DATETRUNC Examples
DATETRUNC(year,CreationTime) AS year_dt,
DATETRUNC(day,CreationTime) AS day_dt,
DATETRUNC(minute,CreationTime) AS minute_dt,
-- DATENAME Examples
DATENAME(month,CreationTime) AS month_dn,
DATENAME(weekday,CreationTime) AS weekday_dn,
DATENAME(day, CreationTime) AS Day_dn,
DATENAME(year, CreationTime) AS Year_dn,
-- DATEPART Examples
DATEPART(year,CreationTime) AS year_dp,
DATEPART(month,CreationTime) AS month_dp,
DATEPART(day,CreationTime) AS day_dp,
DATEPART(hour,CreationTime) AS hour_dp,
DATEPART(quarter, CreationTime) AS Quarter_dp,
DATEPART(week, CreationTime) AS Week_dp,
YEAR(CreationTime) AS Year,
MONTH(CreationTime) AS Month,
DAY(CreationTime) AS Day
FROM Sales.Orders;

/* ==============================================================================
   DATETRUNC() DATA AGGREGATION
===============================================================================*/

/* TASK 3:
   Aggregate orders by year using DATETRUNC on CreationTime.
*/
SELECT
DATETRUNC(year,CreationTime) AS Creation,
COUNT(*) AS OrderCount
FROM Sales.Orders
GROUP BY DATETRUNC(year,CreationTime);

/* ==============================================================================
   EOMONTH()
===============================================================================*/

/* TASK 4:
   Display OrderID, CreationTime, and the end-of-month date for CreationTime.
*/

SELECT
OrderID,
CreationTime,
EOMONTH(CreationTime) AS EndofMonth
FROM Sales.Orders;

/* ==============================================================================
   DATE PARTS | USE CASES
===============================================================================*/

/* TASK 5:
   How many orders were placed each year?
*/
SELECT
YEAR(OrderDate) AS OrderYear,
COUNT(*) AS TotalOrders
FROM Sales.Orders
GROUP BY YEAR(OrderDate);

/* TASK 6:
   How many orders were placed each month?
*/
SELECT
MONTH(OrderDate) AS OrderMonth,
COUNT(*) AS TotalOrders
FROM Sales.Orders
GROUP BY MONTH(OrderDate);

/* TASK 7:
   How many orders were placed each month (using friendly month names)?
*/
SELECT
DATENAME(month,OrderDate) AS OrderMonth,
COUNT(*) AS TotalOrders
FROM Sales.Orders
GROUP BY DATENAME(month,OrderDate);

/* TASK 8:
   Show all orders that were placed during the month of February.
*/
SELECT
*
FROM Sales.Orders
WHERE MONTH(OrderDate) = 2;
/* ==============================================================================
   FORMAT()
===============================================================================*/

/* TASK 9:
   Format CreationTime into various string representations.
*/

SELECT
OrderID,
CreationTime,
FORMAT(CreationTime, 'MM-dd-yyyy') USA_format,
FORMAT(CreationTime, 'dd-MM-yyyy') EURO_format,
FORMAT(CreationTime, 'dd') dd,
FORMAT(CreationTime, 'ddd') ddd,
FORMAT(CreationTime, 'dddd') dddd,
FORMAT(CreationTime, 'MM') MM,
FORMAT(CreationTime, 'MM') MMM,
FORMAT(CreationTime, 'MMMM') MMMM
FROM Sales.Orders
/* TASK 10:
   Display CreationTime using a custom format:
   Example: Day Wed Jan Q1 2025 12:34:56 PM
*/
SELECT
OrderID,
CreationTime,
'Day ' + FORMAT(CreationTime, 'ddd MMM') + 
 ' Q' + DATENAME(quarter,CreationTime) + ' ' +
FORMAT(CreationTime, 'yyyy hh:mm:ss tt')AS Customformat
FROM Sales.Orders

