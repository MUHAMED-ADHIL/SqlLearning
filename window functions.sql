use employees;

SELECT 
    emp_no, salary,
    row_number() over(partition by emp_no order by salary) AS row_num
FROM
    salaries;
    
    
SELECT 
    emp_no, salary,
    row_number() over w AS row_num
FROM
    salaries
window w AS (partition by emp_no order by salary);


SELECT  distinct
    emp_no, salary,
    row_number() over w AS row_num
FROM
    salaries
    where emp_no = 10001
window w AS (partition by emp_no order by salary DESC);

    
 SELECT 
    emp_no, (COUNT(salary) - COUNT(DISTINCT salary)) AS diff
FROM
    salaries
GROUP BY emp_no
HAVING diff > 0
ORDER BY emp_no;

SELECT 
    *
FROM
    salaries
WHERE
    emp_no = 11839;
    
SELECT 
    emp_no, salary,
    rank() over w AS rank_num
FROM
    salaries
    where emp_no = 11839
window w AS (partition by emp_no order by salary DESC);

SELECT 
    emp_no, salary,
    dense_rank() over w AS rank_num
FROM
    salaries
    where emp_no = 11839
window w AS (partition by emp_no order by salary DESC);


Select
	d.dept_no,
    d.dept_name,
    dm.emp_no,
    rank() over w as department_salary_ranking,
    s.salary,
    s.from_date as salary_from_date,
    s.to_date as salary_to_date,
    dm.from_date As dept_manager_from_date,
    dm.to_date as dept_manager_to_date
from
	dept_manager dm
    join
    salaries s on s.emp_no =dm.emp_no
    AND s.from_date between  dm.from_date and dm.to_date
    AND s.to_date between dm.from_date and dm.to_date
    join 
    departments d on d.dept_no = dm.dept_no
window w as (partition by dm.dept_no order by s.salary DESC);

SELECT 
    emp_no,
    salary,
    lag(salary) over w as previous_salary,
    lead(salary)  over w as next_salary,
    salary - lag(salary) over w as diff_salary_current_previous,
    lead(salary)  over w - salary as diff_salary_next_current
FROM
    salaries
WHERE
    emp_no = 10001
    window w as (order by salary);

select sysdate();

SELECT 
    emp_no, salary, from_date, to_date
FROM
    salaries
WHERE
    to_date > SYSDATE();
    
SELECT 
    s1.emp_no, s.salary, s.from_date, s.to_date
FROM
    salaries s
        JOIN
    (SELECT 
        emp_no, MAX(from_date) AS from_date
    FROM
        salaries
    GROUP BY emp_no) S1 ON s.emp_no = s1.emp_no
WHERE
    s.to_date > SYSDATE()
        AND s.from_date = s1.from_date;
        
        
