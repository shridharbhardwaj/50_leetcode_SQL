select id, coalesce(case when mod(id,2)=0 then lag(student) over(order by id) else lead(student) over(order by id) end, student) as student
from seat;