# Write your MySQL query statement below
select teacher_id, count( distinct subject_id) as cnt
from teacher t
group by teacher_id;