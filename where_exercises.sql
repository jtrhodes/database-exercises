USE employees;

SELECT * FROM employees
WHERE (first_name LIKE 'Irena'
    OR first_name LIKE 'Vidya'
    OR first_name LIKE 'Maya')
    AND gender ='M'



SELECT * FROM employees
WHERE last_name LIKE 'E%';

SELECT * FROM employees
WHERE last_name LIKE '%Q%';

SELECT * FROM employees
WHERE last_name LIKE  '%e'
  AND last_name LIKE 'e%';