--using cross join and left join

SELECT s1.student_id, s1.student_name, s2.subject_name, COUNT(s3.subject_name) as attended_exams
FROM Students as s1
CROSS JOIN Subjects as s2
LEFT JOIN Examinations as s3
ON s1.student_id = s3.student_id AND s2.subject_name = s3.subject_name
GROUP BY s1.student_id, s1.student_name, s2.subject_name
ORDER BY s1.student_id, s2.subject_name;