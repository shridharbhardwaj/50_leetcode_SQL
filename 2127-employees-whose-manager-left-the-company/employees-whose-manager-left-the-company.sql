# Write your MySQL query statement below
-- select a.employee_id
-- from employees a join employees b 
-- on a.employee_id=b.manager_id 
-- where a.salary < 30000
-- order by a.employee_id;

-- ********************************************************
--  BY using subquery:
select employee_id
from employees
where salary < 30000 and manager_id not in (select employee_id from Employees)
order by employee_id;





