USE employees;

SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

SELECT *
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    )
ORDER BY title;

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE gender = 'F' AND to_date > NOW()
    );

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
        AND to_date > NOW()
        )
);

SELECT first_name, last_name, emp_no
from employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary = (
        SELECT salary
        FROM salaries
        ORDER BY salary DESC
        LIMIT 1
     )
);

