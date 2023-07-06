SELECT r.contest_id,ROUND(((COUNT(r.contest_id )*100)/(SELECT COUNT(user_id) FROM Users)),2) AS percentage
FROM Register AS r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;
