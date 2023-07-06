# Write your MySQL query statement below

SELECT id, movie, description, rating
FROM Cinema
WHERE mod(id,2) != 0 AND  description != 'boring'
ORder by rating DESC;