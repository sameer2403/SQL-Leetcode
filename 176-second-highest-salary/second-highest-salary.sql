# Write your MySQL query statement below
with cte as(select id , salary, 
dense_rank() over(order by salary desc) as dr
from Employee)
select  MAX(salary) as SecondHighestSalary
from cte where dr=2