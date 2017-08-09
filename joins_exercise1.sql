-- Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.

SELECT users.id, users.name, users.email, users.role_id, roles.name
FROM roles
JOIN users 
ON users.role_id = roles.id;

SELECT users.id, users.name, users.email, users.role_id, roles.name
FROM roles
LEFT JOIN users 
ON users.role_id = roles.id;

SELECT users.id, users.name, users.email, users.role_id, roles.name
FROM roles
RIGHT JOIN users 
ON users.role_id = roles.id;