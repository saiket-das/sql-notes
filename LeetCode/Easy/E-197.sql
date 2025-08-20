-- https://leetcode.com/problems/rising-temperature/description/

SELECT w2.id
FROM Weather AS w1
JOIN Weather AS w2
    ON DATEDIFF(w2.recordDate, w1.recordDate) = 1
WHERE w1.temperature < w2.temperature AND w1.recordDate < w2.recordDate