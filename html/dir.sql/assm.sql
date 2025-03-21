1.Display all student records. 
 
select * from students ;

2.Show only student names and genders. 
 
select student,gender from students ;

3.List students born after Jan 1, 2002. 

Select dob from students where dob< 2002-01-01;

4.Find the total number of male and female students. 
 
SELECT gender, COUNT(*) AS total_students 

FROM students GROUP BY gender;

5.Display students sorted by DOB (oldest to youngest). 
 
SELECT * FROM students 

ORDER BY dob ASC;

6.Show students whose name starts with 'S'. 
 
 
SELECT * FROM students   WHERE student_name LIKE 'S%;

7. Format DOB as 'DD-MON-YYYY'. 
 
 
TO_CHAR(15-mar-2025, 'DD-MON-YYYY')

8. Display age of each student using SYSDATE - DOB. 

 

SELECT StudentName,  

TRUNC(MONTHS_BETWEEN(SYSDATE, DOM) / 12) AS Age  

FROM students; 

9.Show all female students in descending order of names. 
 
SELECT * FROM students  

WHERE Gender = 'F'  

ORDER BY StudentName DESC;