-- we want to select the name and cohort_id of all students
-- But what if we wanted the cohort name instead of the cohort id?
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students JOIN cohorts 
ON cohort_id = cohorts.id;