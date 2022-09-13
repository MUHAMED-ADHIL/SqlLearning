SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' AND gender = 'M';
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie' AND gender = 'F';
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie'
        OR first_name = 'Aruna';


SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis'
        AND (gender = 'F' OR gender = 'M');
        
SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND (first_name = 'Kellie'
        OR first_name = 'Aruna');
#not In operator        
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie', 'Mark', 'Nathan');

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie', 'Mark', 'Nathan');
    
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denis' , 'Elvis');


SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John', 'Mark', 'Jacob');
    
    
#like and not like

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('ar%')
;

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mark%')
;

SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_')
;

SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('%2000%')
;

#between and

SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01';
    
SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN '66000' AND '70000';
    
SELECT 
    *
FROM
    employees
WHERE
    emp_no NOT BETWEEN '10004' AND '10012';
    
SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';
    
#is not null and is null

SELECT 
    *
FROM
    employees
WHERE
    first_name IS NOT NULL;
    
SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no IS NOT NULL;

#other comparison operator

SELECT 
    *
FROM
    employees
WHERE
    hire_date > '2000-01-01';


SELECT 
    *
FROM
    employees
WHERE
    hire_date > '2000-01-01'  AND gender = 'F';
    
SELECT 
    *
FROM
    salaries
WHERE
    salary > '150000';
    
