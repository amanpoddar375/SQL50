-- Basic Aggregate function

SELECT DATE_FORMAT(trans_date,"%Y-%m") as month, 
country, count(*) as trans_count, 
count(case when state = 'approved' then 1 end) as approved_count, 
sum(amount) as trans_total_amount, 
sum(case when state = 'approved' then amount else 0 end) as approved_total_amount

FROM Transactions
Group by month, country;