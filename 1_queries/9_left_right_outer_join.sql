-- The LEFT OUTER JOIN will return all of the students, even ones without a cohort_id.
--        student_name       |               email               | cohort_name 
-- --------------------------+-----------------------------------+-------------
--  Armand Hilll             | lera_hahn@dickens.org             | FEB12
--  Stephanie Wolff          | darius.homenick@tod.ca            | 
--  Stan Miller              | mcdermott.maxie@schoen.com        | 

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- The RIGHT OUTER JOIN will return all cohorts, even ones without any students enrolled.
--        student_name       |               email               | cohort_name 
-- --------------------------+-----------------------------------+-------------
--  Armand Hilll             | lera_hahn@dickens.org             | FEB12
--                           |                                   | FEB12
--                           |                                   | FEB12

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- The FULL OUTER JOIN will return all cohorts and all students, even when there is no match.
--        student_name       |               email               | cohort_name 
-- --------------------------+-----------------------------------+-------------
--  Armand Hilll             | lera_hahn@dickens.org             | FEB12
--                           |                                   | FEB12
--  Stan Miller              | mcdermott.maxie@schoen.com        | 

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;