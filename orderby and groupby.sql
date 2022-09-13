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


 