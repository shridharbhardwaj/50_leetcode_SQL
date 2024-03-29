select a.name 
from employee a inner join employee b on a.id = b.managerId
group by b.managerId
having count(b.managerId) >= 5
order by b.managerId;

-- *********************************************************
-- SELECT E1.name
-- FROM Employee E1
-- JOIN (
--     SELECT managerId, COUNT(*) AS directReports
--     FROM Employee
--     GROUP BY managerId
--     HAVING COUNT(*) >= 5
-- ) E2 ON E1.id = E2.managerId;
-- *********************************************************

-- select e1.name from employee e1
-- where e1.id in (
--                   select e2.managerId 
--                    from employee e2
--                     group by e2.managerId
--                     having count(e2.managerId) >= 5);