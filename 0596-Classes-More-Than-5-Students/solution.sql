

SELECT class from Courses GROUP BY class HAVING count(*) >= 5;