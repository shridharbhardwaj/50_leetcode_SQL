# Write your MySQL query statement below
-- select a.name 
-- from employee a JOIN employee b 
-- ON a.id = b.managerId and a.id <> b.id
-- having count(b.managerId) >= 5
-- order by a.name;

select a.name as name
from employee a join employee b on a.id = b.managerId
group by b.managerId
having count(b.managerId) >= 5;