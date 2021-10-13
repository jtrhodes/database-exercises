USE employees;
SHOW TABLEs;
DESCRIBE dept_emp;
SELECT  dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager', salary
FROM departments d
         JOIN dept_manager  dm
              ON d.dept_no = dm.dept_no
         JOIN employees e
              ON dm.emp_no = e.emp_no
            JOIN salaries s
                on e.emp_no = s.emp_no
WHERE dm.to_date >= NOW()
AND s.to_date >= NOW()
# AND e.gender = 'F'
ORDER BY dept_name;

SELECT  dept_name AS 'Department Name',CONCAT(first_name, ' ', last_name) AS 'Department Manager', CONCAT(first_name, ' ', last_name) as 'Employee name'
FROM departments d
         JOIN dept_manager  dm
              ON d.dept_no = dm.dept_no
         JOIN employees e
              ON dm.emp_no = e.emp_no
WHERE dm.to_date >= NOW()
# AND e.gender = 'F'
ORDER BY dept_name;


# SELECT title, COUNT(t.title) as 'Total' FROM departments d
# JOIN dept_emp de
# ON de.emp_no = t.dept_no
# JOIN titles t
#     on d.dept_no = de.dept_no
# WHERE d.dept_no = 'd009'
# AND t.to_date > NOW()
# AND de.to_date > NOW()
# GROUP BY t.title;
SELECT title, COUNT(*)
FROM titles t JOIN dept_emp de
    ON t.emp_no = de.emp_no
JOIN departments d
    on de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
GROUP BY title;

SELECT CONCAT(first_name, last_name)
FROM employees e JOIN dept_emp de ON e.emp_no = de.emp_no
WHERE to_date LIKE '9%';

SHOW DATABASES;

USE movies;

SHOW TABLES;
DESCRIBE movie_cast;
SELECT title, person_name FROM movie m
    JOIN movie_cast mc
    ON m.movie_id = mc.movie_id
    JOIN person p
        ON mc.person_id = p.person_id
where person_name = 'Mark Hamill';

USE employees;

SELECT emp_no FROM dept_manager;

SELECT birth_date, CONCAT(first_name, ' ', last_name)
FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager
    );

use codeup_test_db;
SHOW TABLES;
INSERT INTO preferences (person_id, album_id) VALUES ((SELECT id FROM persons WHERE first_name ='Tareq'), (SELECT id FROM albums WHERE name = '1'));

UPDATE preferences
SET albumb_id = (SELECT id FROM albums WHERE name = 'Led Zeppelin IV')
WHERE album_id = (SELECT id FROM albums WHERE name= '1')
AND person_id = (SELECT id FROM persons WHERE first_name = 'Tareq')


