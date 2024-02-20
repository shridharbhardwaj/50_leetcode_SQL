SELECT user_name AS results
FROM (
SELECT u.name AS user_name, COUNT(DISTINCT mr.movie_id) AS rated_movies
FROM Users u
JOIN MovieRating mr ON u.user_id = mr.user_id
GROUP BY u.user_id
ORDER BY rated_movies DESC, user_name
LIMIT 1
) user_ratings

UNION ALL

SELECT movie_title AS results
FROM (
SELECT m.title AS movie_title, AVG(mr.rating) AS avg_rating
FROM Movies m
JOIN MovieRating mr ON m.movie_id = mr.movie_id
WHERE DATE_FORMAT(mr.created_at, '%Y-%m') = '2020-02'
GROUP BY m.movie_id
ORDER BY avg_rating DESC, movie_title
LIMIT 1
) movie_ratings;