-- Write your MySQL query statement below

SELECT name
FROM Customer
WHERE referee_id <> 2 OR referee_id IS NULL;

--other form
/*
SELECT name
FROM Customer
WHERE NOT (referee_id = 2) OR referee_id IS NULL;

*/