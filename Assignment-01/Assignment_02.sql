SELECT * 
FROM SampleStudent.student;
		  
SELECT concat(first_name,' ',last_name) as full_name, start_year, major, COUNT(*) as cnt
FROM SampleStudent.student
WHERE start_year = 2019
GROUP BY full_name, major, start_year
;

SELECT concat(first_name,' ',last_name) as full_name, start_year, major, COUNT(*) as cnt
FROM SampleStudent.student
WHERE first_name ='laura' or first_name ='dana'
GROUP BY full_name, major, start_year
;

SELECT major, start_year
FROM SampleStudent.student
WHERE major ='biol'
GROUP BY major, start_year
;