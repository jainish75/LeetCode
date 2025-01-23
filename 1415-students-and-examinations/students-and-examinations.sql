-- # Write your MySQL query statement below
-- select s.student_id, s.student_name, sub.subject_name, count(e.subject_name) as attended_exams
-- from students s
-- cross join subjects sub 
-- left outer join examinations e 
-- on sub.subject_name= e.subject_name and s.student_id = e.student_id
-- group by s.student_id, sub.subject_name ,  s.student_name
-- order by s.student_id, sub.subject_name

select s.student_id, s.student_name, sub.subject_name, count(e.subject_name) as attended_exams
FROM Students s
JOIN Subjects sub
LEFT JOIN Examinations e ON s.student_id = e.student_id 
                      AND sub.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name;