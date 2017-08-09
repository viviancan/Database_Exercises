-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be: 

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

-- Functinos: Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.

SELECT CONCAT(first_name, " ", last_name) as "Employee First & Last name"
FROM employees
WHERE last_name like "%e%";

	

/* Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini. */

-- Function: For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())

SELECT CONCAT(first_name, " ", last_name), DATEDIFF(CURDATE(), hire_date) AS "Days worked at company"
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' 
AND birth_date like '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;

SELECT CURDATE();


/* Add a GROUP BY clause to your query for last names with 'q' and not 'qu' to find the distinct combination of first and last names. You will find there were some duplicate first and last name pairs in your previous results. Add a count() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others. */
SELECT first_name, last_name, count(*)
FROM employees
WHERE last_name like '%q%' 
	AND last_name NOT LIKE '%qu%'
GROUP BY first_name, last_name
ORDER BY count(*) DESC;




