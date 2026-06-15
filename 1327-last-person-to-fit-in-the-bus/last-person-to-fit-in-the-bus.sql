# Write your MySQL query statement below
with cte as (select turn,person_name,weight,
    sum(weight) over(order by turn) as running_wt,
    row_number()over(order by turn) as rn
    from Queue),
cte2 as(select     person_name, turn , running_wt,
row_number() over(order by turn desc) as rn
from cte
where running_wt<=1000)
select person_name
from cte2
where rn=1

