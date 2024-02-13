# Write your MySQL query statement below
-- select d.name as Department, e.name as Employee, salary as Salary
-- from department d join employee e on d.id = e.departmentId
-- where 3 > (
--     select count(distinct e2.salary)
--     from employee e2
--     where e2.departmentId = d.id and e2.salary > e.salary
-- )

-- ****************************************************************************
-- by using window function
SELECT Department, Employee, Salary
FROM (
    SELECT 
        d.name AS Department,
        e.name AS Employee,
        e.salary AS Salary,
        DENSE_RANK() OVER (PARTITION BY d.name ORDER BY Salary DESC) AS rnk
    FROM Employee e
    JOIN Department d
    ON e.departmentId = d.id
) AS rnk_tbl
WHERE rnk <= 3;


