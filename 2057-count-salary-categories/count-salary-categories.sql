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
    SUM(income < 20000) AS accounts_count
FROM 
    Accounts

UNION ALL

    SELECT 
        'Average Salary' AS category,
        SUM(income BETWEEN 20000 AND 50000 ) AS accounts_count
    FROM 
        Accounts

UNION ALL

    SELECT 
        'High Salary' AS category,
        SUM(income > 50000) AS accounts_count
    FROM 
        Accounts;