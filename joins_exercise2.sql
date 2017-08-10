-- write a query that shows each department along with the name of the current manager for that department.
SELECT  dep.dept_name AS 'Deparment Name', CONCAT( e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS dep
JOIN dept_manager AS dm
	ON dep.dept_no = dm.dept_no
JOIN employees as e
	ON e.emp_no = dm.emp_no
WHERE dm.to_date > now();

-- Find the name of all departments currently managed by women.
SELECT  dep.dept_name AS 'Deparment Name', CONCAT( e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM departments AS dep
JOIN dept_manager AS dm
	ON dep.dept_no = dm.dept_no
JOIN employees as e
	ON e.emp_no = dm.emp_no
WHERE dm.to_date > now()
AND e.gender = 'F';


-- Find the current titles of employees currently working in the Customer Service department.
SELECT  t.title AS 'Title', count(*) AS 'Count'
FROM employees AS e
JOIN dept_emp AS de
	ON de.emp_no = e.emp_no
JOIN titles AS t
	 on t.emp_no = de.emp_no
WHERE t.to_date > now()
	AND de.to_date > now()
	AND de.dept_no = 'D009'
GROUP BY t.title;

-- Find the current salary of all current managers.


SELECT d.dept_name AS 'Department Name', 	CONCAT(e.first_name, ' ', e.last_name) AS 'Name' , 	s.salary AS 'Salary'
FROM departments as d

JOIN dept_manager as dm
	ON dm.dept_no = d.dept_no

JOIN employees as e
	ON e.emp_no = dm.emp_no
	
JOIN salaries as s
	ON s.emp_no = e.emp_no

WHERE dm.to_date > now()
	AND s.to_date >now();


/*  Find the names of all current employees, their department name, and their current manager's name. */

SELECT CONCAT(e.first_name , ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name' , CONCAT(em.first_name, ' ', em.last_name) AS 'Manager Name'
FROM employees AS e
JOIN dept_emp AS de
	ON de.emp_no = e.emp_no
JOIN departments as d
	ON d.dept_no = de.dept_no
JOIN dept_manager AS dman
	ON dman.dept_no = d.dept_no
JOIN employees as em
	ON dman.emp_no = em.emp_no
	
WHERE de.to_date like '9999%'
	AND dman.to_date like '9999%';
	
/* BONUS Write a query to get the average salary current managers make by gender 
M 79350.60
F 75690.00 */

SELECT  e.gender, avg(s.salary) AS 'AVG SALARY'
FROM departments as d

JOIN dept_manager as dm
	ON dm.dept_no = d.dept_no

JOIN employees as e
	ON e.emp_no = dm.emp_no
	
JOIN salaries as s
	ON s.emp_no = e.emp_no

WHERE dm.to_date > now()
	AND s.to_date >now()
	
GROUP BY e.gender;


/* Write a query to get the avg salary managers historically make by gender
M 72810.94
F 62037.21 */
SELECT  e.gender, avg(s.salary) AS 'AVG SALARY - HISTORICALLY'
FROM departments as d

JOIN dept_manager as dm
	ON dm.dept_no = d.dept_no

JOIN employees as e
	ON e.emp_no = dm.emp_no
	
JOIN salaries as s
	ON s.emp_no = e.emp_no
	
GROUP BY e.gender;

/* get avg salary for all current empoyees by gender
M 72044.66
F 71963.57 */

SELECT  e.gender, avg(s.salary) AS 'Avg salary for current employees'
FROM employees as e
JOIN dept_emp as de
	ON de.emp_no = e.emp_no
JOIN salaries as s
	ON s.emp_no = de.emp_no
WHERE de.to_date > now()
	AND s.to_date > now()
GROUP BY e.gender;

/* get avg historic salary for all employees by gender
M 63842.25
F 63750.17 */

SELECT  e.gender, avg(s.salary) AS 'Avg salary for ALL employees'
FROM employees as e
JOIN dept_emp as de
	ON de.emp_no = e.emp_no
JOIN salaries as s
	ON s.emp_no = de.emp_no
GROUP BY e.gender


