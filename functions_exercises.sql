/* Modify your first query to order by first name. The first result should be Irena Majewski and the last result should be Vidya Schaft */

SELECT count(gender), gender
FROM employees
WHERE (first_name ="Irena" 
	OR first_name ="Vidya"  
	OR first_name = "Maya")
GROUP BY gender;


/* Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change! */
SELECT *
FROM employees
WHERE last_name like "E%"
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' ;

SELECT *
FROM employees
WHERE birth_date like '%-12-25';

SELECT *
FROM employees
WHERE last_name like '%q%';


SELECT *
FROM employees
WHERE first_name IN ("Irena" , "Vidya" , "Maya") 
AND gender = "M";

SELECT *
FROM employees
-- like '%E%'
WHERE last_name like "%e"
	AND last_name like "e%";
	

/* Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini. */
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' 
AND birth_date like '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;

SELECT *
FROM employees
WHERE last_name like '%q%' 
	AND last_name NOT LIKE '%qu%';




