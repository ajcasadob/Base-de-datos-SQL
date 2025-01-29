SELECT first_name, last_name, department_name
FROM employees , departments 
WHERE employees.department_id= departments.department_id;


SELECT *
FROM employees 
JOIN departments USING (department_id)
WHERE salary > 10000;

SELECT *
FROM employees e
JOIN departments d
ON(e.department_id=d.department_id);
--Ejercicio 1 BOLETÍN
SELECT first_name, last_name, email
FROM employees
JOIN departments USING (department_id)
JOIN locations USING(location_id)
JOIN countries USING (country_id)
WHERE country_name = 'United Kingdom';
