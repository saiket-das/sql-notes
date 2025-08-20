-- https://leetcode.com/problems/employees-earning-more-than-their-managers/description/

SELECT e.name AS Employee
FROM Employee AS e
WHERE salary > (
    SELECT salary
    FROM Employee
    WHERE e.managerId = id
)