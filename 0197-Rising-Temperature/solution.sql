--using DATEDIFF() mysql function : returns the number of days between two date values.

SELECT w1.id 
FROM Weather w1, Weather w2
WHERE DATEDIFF(w1.recordDate,w2.recordDate) = 1
AND w1.temperature > w2.temperature


--using ADDDATE() mysql function : adds a time/date interval to a date and then returns the date.

SELECT w1.id 
FROM Weather w1, Weather w2
WHERE w1.recorddate = ADDDATE(w2.recordDate, INTERVAL 1 DAY)
AND w1.temperature > w2.temperature;
