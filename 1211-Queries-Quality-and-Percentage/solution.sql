--using basic aggregate function

SELECT query_name,ROUND(sum(rating/position)/count(query_name),2) as quality, Round(((count(Case when rating < 3 then 1 end))/count( query_name))*100,2) as poor_query_percentage
FROM Queries
GROUP by query_name;
