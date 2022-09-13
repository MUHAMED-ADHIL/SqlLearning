SELECT 
    d.*, m.*
FROM
    departments d
        CROSS JOIN
    dept_manager m
ORDER BY d.dept_no , m.emp_no;