
/*Seleccionar el FIRST_NAME y LAST_NAME de los empleados del departamento de IT o Finance cuya fecha de alta (HIRE_DATE) fuera un día cualquiera de Abril o Junio.*/

SELECT first_name, last_name
FROM employees
	JOIN departments USING (department_id)
WHERE (department_name = 'IT' OR department_name ='Finance')
AND (hire_date::text ILIKE '%04%' OR hire_date::text ILIKE '%06%');

/*Seleccionar el FIRST_NAME y LAST_NAME de los managers de los empleados del departamento de Administration.*/

SELECT jefe.first_name, jefe.last_name
FROM employees trabajador
	JOIN employees jefe ON (trabajador.manager_id=jefe.employee_id)
	JOIN departments d ON (d.department_id=trabajador.department_id)
WHERE d.department_name = 'Administration';	


/*Seleccionar el COUNTRY_NAME donde tiene localización el departamento de Public Relations*/

SELECT country_name
FROM countries
	JOIN locations USING (country_id)
	JOIN departments USING(location_id)
WHERE department_name ILIKE 'Public Relations';	

/*Seleccionar aquellos empleados que trabajen en oficinas de América.*/
SELECT *
FROM employees
	JOIN departments USING (department_id)
	JOIN locations USING (location_id)
	JOIN countries USING (country_id)
	JOIN regions USING (region_id)
WHERE region_name ILIKE 'Americas';	


/*Seleccionar el nombre y apellidos de los hijos, así como el nombre y apellidos de sus padres, para aquellos empleados que trabajen en oficinas de América. Ordena la salida por orden alfabético del país :)*/

SELECT hijos.first_name, hijos.last_name, padres.first_name, padres.last_name
FROM employees padres
	JOIN dependents hijos USING (employee_id)
	JOIN departments USING (department_id)
	JOIN locations USING (location_id)
	JOIN countries USING (country_id)
	JOIN regions USING (region_id)
WHERE region_name ILIKE 'Americas'
ORDER BY country_name;


/*Diseña una consulta (incluyendo su solución) para la base de datos HR que contenga los siguientes elementos.
La salida del select no será SELECT *
Debe realizar el JOIN de al menos 3 tablas.
Uno de los JOINs debe, obligatoriamente, ser un JOIN ON
Al menos, tendrá dos condiciones en el WHERE (conectadas con AND u OR)
Debe ordenar la salida por algún criterio.*/


/*La consulta debe mostrar el nombre, apellido, departamento y puesto de trabajo de los empleados que:

Pertenecen al departamento de IT.
Tienen un salario mayor a 3000.
Ordenados alfabéticamente por su nombre.*/

SELECT e.first_name, e.last_name, d.department_name, j.job_title
FROM employees e
JOIN departments d ON (e.department_id = d.department_id)  -- JOIN ON obligatorio
JOIN jobs j ON (e.job_id = j.job_id)
WHERE d.department_name = 'IT'  -- Primera condición
AND e.salary > 3000  -- Segunda condición
ORDER BY e.first_name;  

