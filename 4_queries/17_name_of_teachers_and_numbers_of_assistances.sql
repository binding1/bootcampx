SELECT DISTINCT teachers.name, cohorts.name, count(assistance_request.*)
FROM teachers
JOIN assistance_request ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;