# Write your MySQL query statement below
# select if(id < (select MAX(id) from seat), if(id % 2 = 0, id-1, id+1), if(id % 2 = 0, id-1, id)) AS id, student 
# from seat
# order by id;

# Using CASE condition:
select id, coalesce(case when id%2=0 then lag(student) over() else lead(student) over() end, student) as student
from seat;