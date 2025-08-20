-- https://leetcode.com/problems/bank-account-summary-ii/description/

SELECT u.name, SUM(amount) AS balance
FROM Users AS u
JOIN Transactions AS t
    ON u.account = t.account
GROUP BY t.account
HAVING SUM(amount) > 10000;