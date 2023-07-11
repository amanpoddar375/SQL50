--using simple sorting and grouping

SELECT activity_date as day, count(distinct user_id) as active_users
FROM Activity
WHERE activity_date > '2019-06-27' and activity_date <= '2019-07-27'
GROUP BY activity_date



--using between and

SELECT activity_date as day, count(distinct user_id) as active_users
FROM Activity
WHERE activity_date BETWEEN DATE_SUB('2019-07-28', INTERVAL 30 DAY) AND '2019-07-28'
GROUP BY activity_date
Having active_users > 0
