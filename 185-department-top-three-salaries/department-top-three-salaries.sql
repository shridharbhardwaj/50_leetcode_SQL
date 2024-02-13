# Write your MySQL query statement below
-- select d.name as Department, e.name as Employee, e.salary as Salary
-- from Employee e join department d 
-- on e.departmentId=d.id
-- group by e.name
-- order by e.salary desc;

select d.name as Department, e.name as Employee, salary as Salary
from department d join employee e on d.id = e.departmentId
where 3> (
    select count(distinct e2.salary)
    from employee e2
    where e2.departmentId = d.id and e2.salary > e.salary
)


