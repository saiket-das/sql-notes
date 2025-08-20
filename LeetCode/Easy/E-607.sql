-- https://leetcode.com/problems/sales-person/description/

SELECT S.name
FROM SalesPerson AS S
WHERE sales_id NOT IN (
    SELECT sales_id
    FROM Orders AS O
    JOIN Company AS C ON O.com_id = C.com_id
    WHERE C.name = 'RED'
)