-- using self join


select m.employee_id as employee_id, m.name as name, count(e.employee_id) as reports_count, ROUND(avg(e.age),0) as average_age
from Employees as e
inner join Employees as m
on e.reports_to = m.employee_id
group by employee_id
order by employee_id


-- using sub query

select  reports_to as employee_id,
(select name from Employees m where e.reports_to = m.employee_id) name, 
count(reports_to) as reports_count, 
ROUND(avg(age),0) as average_age
from Employees as e
group by reports_to
having reports_count > 0
order by employee_id