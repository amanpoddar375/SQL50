SELECT 
    'Low Salary' AS category,
    COUNT(*) AS accounts_count
FROM Accounts WHERE income < 20000

UNION

SELECT 
    'Average Salary' AS category,
    COUNT(*) AS accounts_count
FROM Accounts WHERE income BETWEEN 20000 AND 50000

UNION

SELECT 
    'High Salary' AS category,
    COUNT(*) AS accounts_count
FROM Accounts WHERE income > 50000;


--using case when

select "Low Salary" as Category,
SUM(CASE WHEN income < 20000 THEN 1 ELSE 0 END) as accounts_count  from Accounts
union
select "Average Salary" as Category,
SUM(CASE WHEN income >= 20000 AND income <= 50000 THEN 1 ELSE 0 END) as accounts_count  from Accounts
union
select "High Salary" as Category,
SUM(CASE WHEN income > 50000 THEN 1 ELSE 0 END) as accounts_count  from Accounts
order by accounts_count desc