# Write your MySQL query statement below
-- 1. By using subquery:
-- select 
-- round(sum(if(order_date=customer_pref_delivery_date,1,0))*100/count(distinct customer_id),2) 
-- as immediate_percentage
-- from delivery
-- where (customer_id, order_date) in 
--                                   (select customer_id, min(order_date) as first_order_date
--                                   from delivery d
--                                   group by customer_id);

-- ************************************************************************************************************
-- 2. By using rank:
select
round(avg(if(order_date = customer_pref_delivery_date,1,0))* 100,2) as immediate_percentage 
from ( select *,
        row_number() over (partition by customer_id
        order by order_date ) row_num from delivery) sub
where sub.row_num = 1
