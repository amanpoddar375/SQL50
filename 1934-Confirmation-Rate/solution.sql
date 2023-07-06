--using left join and also IFNULL func

SELECT s.user_id, IFNULL(ROUND(COUNT(CASE WHEN c.action = 'confirmed' THEN 1 end)/count(c.action),2),0) as confirmation_rate
FROM Signups as s
LEFT JOIN Confirmations as c
ON s.user_id = c.user_id
GROUP BY s.user_id; 