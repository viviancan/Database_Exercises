-- write a query that shows each department along with the name of the current manager for that department.
SELECT  dep.dept_name AS 'Deparment Name', CONCAT( e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS dep
JOIN dept_manager AS dm
	ON dep.dept_no = dm.dept_no
JOIN employees as e
	ON e.emp_no = dm.emp_no
WHERE dm.to_date like '9999-%';

-- Find the name of all departments currently managed by women.
SELECT  dep.dept_name AS 'Deparment Name', CONCAT( e.first_name, ' ', e.last_name) AS 'Department Manager', e.gender
FROM departments AS dep
JOIN dept_manager AS dm
	ON dep.dept_no = dm.dept_no
JOIN employees as e
	ON e.emp_no = dm.emp_no
WHERE dm.to_date like '9999-%'
AND e.gender = 'F';


-- Find the current titles of employees currently working in the Customer Service department.
SELECT  t.title AS 'Title', count(t.title) AS 'Count'
FROM employees AS e
JOIN dept_emp AS de
	ON de.emp_no = e.emp_no
JOIN titles AS t
	 on t.emp_no = de.emp_no
WHERE t.to_date like '9999-%'
	AND de.to_date like '9999-%'
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

WHERE dm.to_date like '9999%'
	AND s.to_date like '999%'





