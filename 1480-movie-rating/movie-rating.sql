(
  select name as results
  from movierating mr inner join users u 
  on mr.user_id=u.user_id
  group by u.user_id 
  order by count(rating) desc, name
  limit 1
)
union all
(
  select results from
  (
  select title as results, avg(rating) as average_rating 
  from movierating mr inner join movies m on mr.movie_id=m.movie_id 
  where month(created_at) = 2 and year(created_at) = '2020'
  group by m.movie_id
  ) rating_group
  order by average_rating desc, results
  limit 1
);