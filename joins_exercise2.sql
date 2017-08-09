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


