# Write your MySQL query statement below
select product_id, year as first_year,quantity,price
from sales
where (product_id,year) in (select product_id, min(year)
                     from sales 
                     group by product_id);

-- select product_id, first_year, quantity, price
-- from 
--  (select distinct product_id, min(year) as first_year, quantity, price
--                      from sales 
--                      group by product_id) a

