-- select a.machine_id, round(avg((b.timestamp - a.timestamp)),3) as processing_time
-- from Activity a JOIN Activity b 
-- ON a.machine_id = b.machine_id and a.process_id=b.process_id
-- where a.activity_type = 'start' and b.activity_type = 'end'
-- group by a.machine_id;

select machine_id, 
round(avg(case when activity_type='end' then timestamp end)-avg(case when activity_type='start' then timestamp end),3) as processing_time
from Activity
group by machine_id