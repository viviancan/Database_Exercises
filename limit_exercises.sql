-- List the first 10 distinct last name sorted in descending order. Your result should look like this:

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;