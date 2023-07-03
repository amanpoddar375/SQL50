--Write your MySQL query statement below

SELECT EmployeeUNI.unique_id, Employees.name
FROM Employees
LEFT JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id
ORDER BY unique_id;




--other forms
/*
type1:

SELECT eu.unique_id, e.name
FROM Employees as e
LEFT JOIN EmployeeUNI as eu
ON e.id = eu.id
ORDER BY unique_id;

type2:


SELECT EmployeeUNI.unique_id, Employees.name
FROM Employees 
LEFT JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id
WHERE unique_id IS NULL OR unique_id IS NOT NULL;

*/