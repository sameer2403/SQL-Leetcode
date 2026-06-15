# Write your MySQL query statement below
WITH cte AS (
    SELECT 
        person_name,
        SUM(weight) OVER (ORDER BY turn) AS running_wt
    FROM Queue
)
SELECT person_name
FROM cte
WHERE running_wt <= 1000
ORDER BY running_wt DESC
LIMIT 1;
