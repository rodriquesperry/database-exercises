USE employees;

SELECT DISTINCT title FROM titles;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name, first_name
ORDER BY last_name;

SELECT COUNT(first_name), last_name
AS 'Number of People Who Have These Last Names'
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

SELECT COUNT(*)
AS 'Number of Males and Females Who Have These First Names',
       gender
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
GROUP BY gender;