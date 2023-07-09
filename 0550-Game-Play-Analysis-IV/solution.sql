--using DATE_SUB

SELECT ROUND(COUNT(DISTINCT player_id) /(SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM Activity
WHERE (player_id , DATE_SUB(event_date, INTERVAL 1 DAY)) IN (
    SELECT player_id, MIN(event_date)
    FROM Activity
    Group by player_id
);

--using DATE_ADD

SELECT ROUND(COUNT(DISTINCT player_id) /(SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM Activity
WHERE (player_id , DATE_ADD(event_date, INTERVAL -1 DAY)) IN (
    SELECT player_id, MIN(event_date)
    FROM Activity
    Group by player_id
);


