USE employees;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
        JOIN dept_manager as dm
            ON dm.emp_no = e.emp_no
        JOIN departments as d
            ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY dept_name;


SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY dept_name;


SELECT t.title, COUNT(t.emp_no) AS TOTAL
FROM titles as t
        JOIN dept_emp as de
            ON t.emp_no = de.emp_no
        JOIN departments as d
            ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01'
  AND t.to_date = '9999-01-01'
  AND d.dept_name = 'Customer Service'
GROUP BY t.title;


SELECT d.dept_name AS 'DEPARTMENT NAME',
       CONCAT(e.first_name, ' ', e.last_name) AS 'DEPARTMENT MANAGER',
       s.salary AS SALARY
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN salaries as s
             ON s.emp_no = e.emp_no
WHERE YEAR(dm.to_date) = '9999'
AND YEAR(s.to_date) = '9999'
ORDER BY dept_name;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS MANAGER,
       d.dept_name AS DEPARTMENT
FROM employees as e
         JOIN dept_emp de
             ON e.emp_no = de.emp_no
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no



WHERE YEAR(dm.to_date) = '9999'
ORDER BY dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS EMPLOYEE,
       d.dept_name AS DEPARTMENT
FROM employees AS e
        JOIN dept_emp AS de
            ON e.emp_no = de.emp_no
        JOIN departments AS d
            ON de.dept_no = d.dept_no
        JOIN (SELECT CONCAT(e2.first_name, ' ', e2.last_name) AS 'MANAGER'
              FROM employees AS e2
                       JOIN dept_manager AS dm2 on e2.emp_no = dm2.emp_no) as e2d2M
WHERE YEAR(de.to_date) = '9999';