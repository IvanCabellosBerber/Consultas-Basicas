use employees;

SELECT first_name FROM employees;
SELECT emp_no AS id_empleado, first_name AS nombre, gender AS sexo FROM employees;
SELECT gender,count(*) AS sexo FROM employees GROUP BY gender;
SELECT first_name FROM employees WHERE first_name LIKE "____" AND gender = 'F';
SELECT first_name, last_name FROM employees WHERE STRCMP(first_name, last_name) = 0;
SELECT first_name, birth_date FROM employees ORDER BY birth_date desc LIMIT 10;
SELECT first_name, last_name, birth_date FROM employees WHERE gender = 'F' ORDER BY birth_date desc, first_name asc, last_name asc LIMIT 10;
SELECT dept_name FROM departments;
SELECT * from dept_emp;
SELECT dept_no, count(*) AS num_trabajadores FROM dept_emp GROUP BY dept_no;
SELECT emp_no, count(DATEDIFF(to_date, from_date)) FROM salaries GROUP BY emp_no;
SELECT emp_no, count(DATEDIFF(to_date, from_date)) FROM salaries GROUP BY emp_no HAVING count(*)>9;
SELECT emp_no, sum(salary) FROM salaries GROUP BY emp_no;
SELECT emp_no, max(salary) AS salario_maximo, min(salary) AS salario_minimo, avg(salary) AS media_salario FROM salaries GROUP BY emp_no;
SELECT emp_no, sum(salary) AS salario_maximo_empleados FROM salaries GROUP BY emp_no ORDER BY emp_no asc LIMIT 1;