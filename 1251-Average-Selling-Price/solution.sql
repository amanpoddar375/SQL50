-- Write your MySQL query statement below

SELECT p.product_id, ROUND(sum(p.price*s.units)/(sum(s.units)),2) as average_price
From Prices as p
JOIN UnitsSold as s
on p.product_id = s.product_id AND s.purchase_date BETWEEN p.start_date AND p.end_date
Group by p.product_id;