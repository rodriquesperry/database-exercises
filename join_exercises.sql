USE employees;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
JOIN dept_manager as de
ON de.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
ORDER BY dept_name;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY dept_name;

SELECT title, COUNT(title) AS TOTAL
FROM titles as t
JOIN dept_emp as de
    ON t.emp_no = de.emp_no
JOIN departments d
    ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY t.title;


SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary
FROM employees as e
         JOIN dept_manager as dm #adds dept_manager as dm
              ON dm.emp_no = e.emp_no # then in dm the dm employeeNum === employeeNUM
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN salaries as s
             ON s.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' #current employees
AND s.to_date = '9999-01-01' #current salary of the employee
ORDER BY dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS EMPLOYEE, d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS MANAGER
FROM employees as e
         JOIN dept_emp de
             ON e.emp_no = de.emp_no
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY dept_name;