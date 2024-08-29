# Write your MySQL query statement below
/*SELECT name AS Customers
FROM Customers 
WHERE id NOT IN (
    SELECT customerId FROM Orders
)*/

SELECT c.name AS Customers
FROM Customers c 
LEFT JOIN Orders o 
ON c.id = o.customerId 
WHERE o.customerId IS NULL;