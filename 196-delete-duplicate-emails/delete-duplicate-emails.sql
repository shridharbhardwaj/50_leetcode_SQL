# Write your MySQL query statement below
-- DELETE 

delete p.*
FROM person p join person q
on p.email = q.email where p.id>q.id