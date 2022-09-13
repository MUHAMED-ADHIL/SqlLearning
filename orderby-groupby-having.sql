SELECT 
    *
FROM
    employees
ORDER BY first_name DESC;

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;

SELECT 
    *
FROM
    employees
ORDER BY first_name , last_name;

SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;

#groupby

SELECT 
    first_name
FROM
    employees
GROUP BY first_name;

SELECT 
    first_name AS name, COUNT(first_name)
FROM
    employees
GROUP BY first_name
ORDER BY first_name;

SELECT 
    salary, COUNT(emp_no) AS emps_with_same_salary
FROM
    salaries
WHERE
    salary > 80000
GROUP BY emp_no
ORDER BY COUNT(emp_no) DESC;

#having clause
 SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name;

SELECT 
    *, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;

SELECT 
    first_name, COUNT(first_name) AS count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name;

#limit 

SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;
    







 