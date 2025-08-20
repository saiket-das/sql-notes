-- https://leetcode.com/problems/customers-who-never-order/description/

SELECT name AS Customers
FROM Customers AS C
WHERE id NOT IN (
    SELECT customerId
    FROM Orders
)