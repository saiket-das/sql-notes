-- https://leetcode.com/problems/duplicate-emails/description/

SELECT email as Email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1 