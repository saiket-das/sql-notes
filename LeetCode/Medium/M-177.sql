-- https://leetcode.com/problems/nth-highest-salary/description/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N - 1;
    RETURN (
      # Write your MySQL query statement below.
        SELECT IFNULL(
        (
            SELECT DISTINCT salary
            FROM Employee
            ORDER BY salary DESC
            LIMIT N, 1), NULL
        ) AS getNthHighestSalary
  );
END