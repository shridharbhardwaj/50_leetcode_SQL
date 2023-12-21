/* Write your PL/SQL query statement below */
select score, dense_rank() OVER (ORDER BY score desc) rank
from Scores;
