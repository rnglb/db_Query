-- The UNION operator is used to combine the result-set of two or more SELECT statements.
-- The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:

-- GROUP BY
/* The GROUP BY statement is often used with aggregate functions
 (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns. */
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;        

-- The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.