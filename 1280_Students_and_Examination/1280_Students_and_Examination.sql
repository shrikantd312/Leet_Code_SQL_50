select s1.student_id, s1.student_name, s2.subject_name, 
sum(if(s2.subject_name = e.subject_name and s1.student_id = e.student_id, 1, 0)) as     attended_exams
from Students as s1
cross join Subjects as s2
cross join Examinations as e
group by s1.student_id, s1.student_name, s2.subject_name
order by s1.student_id, s2.subject_name

-- or
  
select s1.student_id, s1.student_name, s2.subject_name, count(e.subject_name) as attended_exams
from Students as s1
cross join Subjects as s2
left join Examinations as e
on s1.student_id = e.student_id and s2.subject_name = e.subject_name
group by s1.student_id, s1.student_name, s2.subject_name
order by s1.student_id, s2.subject_name
