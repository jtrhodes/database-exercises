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

SELECT * FROM employees
WHERE last_name LIKE  '%e'
  AND last_name LIKE 'e%';