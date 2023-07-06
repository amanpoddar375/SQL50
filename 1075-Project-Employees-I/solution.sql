--using AVG()

SELECT p.project_id, ROUND(AVG(e.experience_years),2) as average_years
From Project as p
left JOIN Employee as e
ON p.employee_id = e.employee_id
GRoup by p.project_id;


--using sum() and count()

SELECT p.project_id, ROUND(sum(e.experience_years)/(count(p.project_id)),2) as average_years
From Project as p
left JOIN Employee as e
ON p.employee_id = e.employee_id
GRoup by p.project_id;