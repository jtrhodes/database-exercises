USE employees;

SELECT hire_date, CONCAT(first_name, ' ', last_name) FROM employees
WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no = '101010');

SELECT title, COUNT(*) FROM titles
WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod')
GROUP BY title;

SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE gender = 'f' AND emp_no IN (SELECT emp_no FROM dept_manager WHERE to_date > NOW());


SELECT birth_date, CONCAT(first_name, ' ', last_name)
FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager
);

SET album_id = (SELECT id FROM albums WHERE name = 'Led Zeppelin IV')
    WHERE album_id = (SELECT id FROM albums WHERE name= '1')
AND person_id = (SELECT id FROM persons WHERE first_name = 'Tareq')
