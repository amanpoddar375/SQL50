SELECT t.teacher_id, count(distinct t.subject_id) as cnt
FROM Teacher as t
Group by t.teacher_id;