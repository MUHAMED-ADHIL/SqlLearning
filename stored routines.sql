drop procedure if exists select_employees;

Delimiter $$
create procedure select_employees()
BEGIN
select * from employees
limit 1000;
END$$
Delimiter ;


call select_employees();

Delimiter $$
create procedure avg_employees()
BEGIN
select avg(salary) from salaries;
END$$
Delimiter ;

call avg_employees;

