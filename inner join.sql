SELECT 
    *
FROM
    dept_manager_dup
ORDER BY emp_no;


SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;


#inner join
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY m.dept_no;

#inner join exercise
SELECT 
    m.emp_no, e.first_name, e.last_name, m.dept_no, e.hire_date
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no;


