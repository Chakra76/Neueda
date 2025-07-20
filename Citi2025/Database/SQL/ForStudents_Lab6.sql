#Designing and Creating Databases
#Overview
#In this lab we will practice creating a database and tables.

#EXERCISES
--Create a new database named 'myDatabase'



--Switch to the newly created database



/* Create a 'students' table with columns:

student_id (numeric, primary key)

first_name (string)

last_name (string)

date_of_birth (date)
*/







/*Create a 'courses' table with columns:
course_id (numeric, primary key, auto increment)

course_name (string)

credit_hours (numeric)
*/







-- Add a unique constraint to the course_name column in the 'courses' table




/* Create a 'professors' table with columns:

professor_id (numeric, primary key, auto increment)

first_name (string)

last_name (string)

subject (string)

*/








--Add a not null constraint to the subject column in the 'professors' table




/* Create a 'classrooms' table with columns:

classroom_id (numeric, primary key, auto increment) 
classroom_name (string) 
capacity (numeric)

*/








-- Add a check constraint to the capacity column in the 'classrooms' table such that capacity should be greater than 0





/* Create a 'enrollment' table to track which student is taking which course. The table should have the following columns:

enrollment_id (numeric, primary key, auto increment)

student_id (reference to the students table)

course_id (reference to the courses table)

*/












