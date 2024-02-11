# Write your MySQL query statement below
-- select distinct employee_id, department_id
-- from employee
-- where employee_id in (select employee_id 
--                       from employee 
--                       group by employee_id
--                       having count(primary_flag) = 1 ) or
-- primary_flag = 'Y';
-- *********************************************************************************************
select employee_id, department_id
from employee 
group by employee_id
having count(primary_flag) = 1
UNION      
select employee_id, department_id
from employee
where primary_flag = 'Y';

-- *********************************************************************************************
-- select employee_id,
-- case 
--      when (count(primary_flag) = 1 and max(primary_flag) = 'N') then max(department_id)
--      when (count( distinct primary_flag) > 1 and primary_flag= 'Y') then department_id
--      else null
-- end as department_id
-- from Employee
-- group by employee_id;

-- *********************************************************************************************