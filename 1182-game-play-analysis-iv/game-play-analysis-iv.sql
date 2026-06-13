# Write your MySQL query statement below
WITH first_login AS (
    -- Step 1: get each player's first login date
    SELECT
        player_id,
        MIN(event_date)     AS first_date
    FROM Activity
    GROUP BY player_id
)
-- Step 2: check if they logged in the very next day
SELECT
    ROUND(
        COUNT(DISTINCT a.player_id)           -- players who came back day 1
        / (SELECT COUNT(DISTINCT player_id)   -- total players
           FROM Activity)
    , 2)                                      AS fraction
FROM      Activity a
JOIN      first_login f
    ON    a.player_id  = f.player_id
    AND   a.event_date = DATE_ADD(f.first_date, INTERVAL 1 DAY);
