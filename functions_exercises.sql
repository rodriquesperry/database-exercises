USE employees;

SELECT *
FROM employees
WHERE gender = 'M'
AND (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya')
ORDER BY last_name DESC, first_name;

SELECT *
FROM employees
WHERE last_name LIKE 'e%';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE last_name LIKE 'e%'
OR last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT CONCAT(first_name,' ', last_name)
AS 'Full Employee Name'
FROM employees
WHERE last_name LIKE 'e%e';

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
AND last_name
NOT LIKE '%qu%';