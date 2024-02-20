# Write your MySQL query statement below
SELECT
    CASE
        WHEN id=(select max(id) from seat) and mod(id,2) =1 THEN id
        WHEN MOD(id,2)=1 THEN id+1 ELSE id-1
    END AS id, student
FROM seat
ORDER BY id 