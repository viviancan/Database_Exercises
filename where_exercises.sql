SELECT *
FROM employees
WHERE first_name IN ("Irena" , "Vidya" , "Maya");

SELECT *
FROM employees
WHERE last_name like "E%";

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
WHERE last_name like "%e"
	OR last_name like "e%";






