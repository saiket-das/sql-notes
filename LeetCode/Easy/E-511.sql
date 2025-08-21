-- https://leetcode.com/problems/game-play-analysis-i/description/

SELECT player_id, event_date AS first_login
FROM Activity AS a1
WHERE a1.event_date = (
    SELECT MIN(a2.event_date)
    FROM Activity AS a2
    WHERE a1.player_id = a2.player_id
)
ORDER BY a1.player_id;