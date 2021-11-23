USE employees;

SELECT first_name, last_name, birth_date
FROM employees
LIMIT 10;

SELECT * FROM dept_manager
# WHERE YEAR(to_date) = '9999
WHERE to_date > now();

SELECT *
FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager WHERE to_date > NOW()
);

USE join_test_db;
SHOW TABLES;

select * from roles;
select * from users;

insert into users (name, email, role_id)
values ('Douglas', 'douglas@codeup.com', (
    select id from roles where name = 'commenter'));

update users
    set role_id = (select id from roles where name = 'admin')
where email = 'douglas@codeup.com';