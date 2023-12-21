/* Write your PL/SQL query statement below */

DELETE FROM Person p2
WHERE EXISTS (
    SELECT 1
    FROM Person p1
    WHERE p1.email = p2.email AND p1.id < p2.id
);