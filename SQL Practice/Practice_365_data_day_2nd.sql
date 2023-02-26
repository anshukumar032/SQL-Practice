use employees;
elect * from departments ;

drop database employees;

select *  from salaries;

select count(salary) from salaries;

select count(distinct from_date) from salaries;

select * from departments;

select count(dept_no) from departments;

select sum(salary) from salaries;


select max(salary) from salaries;

select min(salary) from salaries;

select * from employees;


select min(emp_no ) from employees;

select max(emp_no) from employees;

select * from salaries;

select avg(salary) from salaries;

select avg(salary) from salaries where from_date > '1997-01-01';

select round(avg(salary),2) from salaries;

select round(avg(salary),2) from salaries where from_date >'1997-01-01';

























































































