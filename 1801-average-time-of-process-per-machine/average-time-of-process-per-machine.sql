-- select a.machine_id, round(avg((b.timestamp - a.timestamp)),3) as processing_time
-- from Activity a JOIN Activity b 
-- ON a.machine_id = b.machine_id and a.process_id=b.process_id
-- where a.activity_type = 'start' and b.activity_type = 'end'
-- group by a.machine_id;

-- select machine_id, 
-- round(avg(case when activity_type='end' then timestamp end)-avg(case when activity_type='start' then timestamp end),3) as processing_time
-- from Activity
-- group by machine_id;

select machine_id, round(avg (end_timestamp - start_timestamp),3) as processing_time
from
(
        select
            machine_id,
            process_id,
            SUM(if(activity_type ='start', timestamp,null)) AS start_timestamp,
            SUM(if(activity_type ='end', timestamp,null)) AS end_timestamp
        from Activity
        group by machine_id, process_id
) as t
group by machine_id