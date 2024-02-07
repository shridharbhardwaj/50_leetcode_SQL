# Write your MySQL query statement below
select ifnull(max(num),null) as num
from 
( select num from MyNumbers
group by num
having count(num) = 1
order by num desc
limit 1) a;

