-- https://leetcode.com/problems/employee-bonus/description/

SELECT e.name, b.bonus
FROM Employee AS e
LEFT JOIN Bonus AS b
    ON e.empId = b.empId
WHERE bonus < 1000 OR b.bonus IS NULL;