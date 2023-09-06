# Write your MySQL query statement below

select d.name as Department,e.name as Employee, e.salary as Salary From Employee as e 
JOIN Department as d on d.id = e.departmentID
where(
  select count(distinct e2.salary)
  from Employee e2
  where e2.departmentID = e.departmentID
  And e2.salary > e.salary 
) < 3
order by d.name, e.salary desc
