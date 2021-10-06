USE employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT  first_name, last_name FROM employees
WHERE last_name LIKE  'e%E'
#   AND last_name LIKE 'e%e';
GROUP BY first_name, last_name;

SELECT DISTINCT last_name, COUNT(*) FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT gender, COUNT(*) FROM employees
WHERE (first_name LIKE 'Irena'
    OR first_name LIKE 'Vidya'
    OR first_name LIKE 'Maya')
      #   AND gender ='M'
GROUP BY gender;
