-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/

SELECT ei.unique_id AS unique_id, name
FROM Employees AS e
LEFT JOIN EmployeeUNI AS ei
    ON e.id = ei.id