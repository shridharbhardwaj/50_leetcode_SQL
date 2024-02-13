# Write your MySQL query statement below
-- select case 
-- when income < 20000 then "Low Salary"
-- when income >= 20000 and income <= 50000 then "Average Salary"
-- when income > 50000 then "High Salary"
-- else 0
-- end as category, coalesce(count(account_id),0) as accounts_count
-- from accounts
-- group by category;

-- **************************************************************************
SELECT 
    'Low Salary' AS category,
    count(income) as accounts_count
FROM accounts
where income < 20000

UNION ALL

SELECT 
    'Average Salary' AS category,
    count(income) as accounts_count
FROM accounts
where income >= 20000 AND income <= 50000

UNION ALL

SELECT 
    'High Salary' AS category,
    count(income) as accounts_count
FROM accounts
where income > 50000;