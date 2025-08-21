-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/

SELECT m.name
FROM Employee AS e
JOIN Employee AS m
    ON e.managerId = m.id
    
GROUP BY e.managerId, m.id
HAVING COUNT(*) >= 5