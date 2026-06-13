# Write your MySQL query statement below
with cte as(select delivery_id,customer_id,order_date, customer_pref_delivery_date,
(case when order_date = customer_pref_delivery_date then 'immediate' else 'scheduled' end )as delivery_status,
row_number() over(partition by customer_id order by order_date) as rn
from Delivery)
select  ROUND(
    sum(case when delivery_status = 'immediate' then 1 else 0 end)*100.0/(count(*)),
    2) AS immediate_percentage
from cte 
where rn=1
