USE employees;

SELECT * FROM employees
WHERE (first_name LIKE 'Irena'
    OR first_name LIKE 'Vidya'
    OR first_name LIKE 'Maya')
    #   AND gender ='M'
ORDER BY first_name, last_name;

SELECT * FROM employees
WHERE (first_name LIKE 'Irena'
    OR first_name LIKE 'Vidya'
    OR first_name LIKE 'Maya')
    #   AND gender ='M'
ORDER BY last_name, first_name;



SELECT * FROM employees
WHERE last_name LIKE '%E%' ORDER BY emp_no;

SELECT * FROM employees
WHERE last_name LIKE '%Q%';

SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE last_name LIKE  '%e'
  AND last_name LIKE 'e%';

SELECT DATEDIFF(NOW(), hire_date) AS days_working, CONCAT(first_name, ' ', last_name)
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 2000
    AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY YEAR(birth_date);

SELECT salary, COUNT(*) FROM salaries
GROUP BY salary ORDER BY COUNT(*);