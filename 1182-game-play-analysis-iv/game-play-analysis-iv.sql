# Write your MySQL query statement below

select 
round(count(distinct player_id)/(select count(distinct player_id) from activity),2) as fraction
from Activity 
where (player_id, date_sub(event_date, interval 1 day)) in 
    (select player_id,min(event_date) as first_login_date
    from activity group by player_id
    );

-- ********************************************************************************************************
-- 14/15 test cases passed
-- select 
-- round(sum(case when s.first_login_date + 1 = a.event_date then 1 else 0 end)/count(distinct s.player_id),2) as fraction
-- from (
--     select player_id,min(event_date) as first_login_date
--     from activity group by player_id) s
-- join activity a
-- on s.player_id=a.player_id;


