-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/

SELECT 
    r.contest_id, 
    ROUND(
        (
            COUNT(DISTINCT r.user_id)            -- Count unique users in 'r'
            / (SELECT COUNT(*) FROM Users)       -- Divide by total users in 'Users'
            * 100.0                              -- Convert ratio to percentage
        ), 2                                     -- Round to 2 decimal places
    ) AS percentage

FROM Register AS r
GROUP BY contest_id                           -- Counnt the number of distinct user registered in each contest
ORDER BY percentage DESC, r.contest_id ASC    -- Percentage in descending order & contest_id in ascending order