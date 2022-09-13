 SELECT 
    COUNT(emp_no)
FROM
    employees;
    
 SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;
    
SELECT 
    COUNT(*)
FROM
    salaries
WHERE
    salary > 100000;
    
SELECT 
    COUNT(title)
FROM
    titles
WHERE
    title = 'manager';
    
SELECT 
    COUNT(DISTINCT dept_no)
FROM
    dept_emp;
    
SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';

SELECT 
    AVG(salary)
FROM
    salaries;
#round function
SELECT 
    ROUND(AVG(salary),2)
FROM
    salaries;
