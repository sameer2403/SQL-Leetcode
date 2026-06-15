# Write your MySQL query statement below
with cte as (select id,num,
id-row_number() over (partition by num order by id) as dr
from Logs)
select distinct num as ConsecutiveNums
from cte 
group by num,dr
having count(*)>=3