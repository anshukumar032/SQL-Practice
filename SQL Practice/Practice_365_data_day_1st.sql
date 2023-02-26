use employees;

select * from employees where first_name = 'Denis';

select * from employees where first_name ='Elvis';

select * from employees where first_name ='Elvis' and gender = "M";

select * from employees where first_name = 'Kellie' and gender = "F";

select * from employees where first_name = 'Denis' or first_name = 'Elvis';

select * from employees where last_name = 'Denis' and (gender = 'M' or  gender = 'F');

select * from employees where gender = 'F' and (first_name = 'Kellie' or 'Aruna');

select * from employees where first_name ='cathie' or first_name = 'mark' or first_name = 'Nathan';

/*2nd mehtoedth of the above correy*/

select * from employees where first_name in ('Cathie','Mark', 'Nathan');

select * from employees where first_name in ('Denis', 'Elvis');

select * from employees where first_name like('ar%');

select * from employees where first_name like('Mar_');

select * from employees where first_name not like ('%MAR%');

select * from employees where first_name like ('Mark_');

SELECT * FROM employees WHERE first_name LIKE('Mark%');

select * from employees where hire_date like('%2000%');


select * from employees where emp_no like('1000_');

SELECT * FROM employees WHERE emp_no LIKE ('1000_');

select * from employees where first_name like ('Jack%');

select * from employees where first_name not like ('Jack%');

select * from salaries;

select * from salaries where  salary between 66000  and 77000;

select * from employees where emp_no not between 10004 and 10012;

select * from dept_emp;

select * from  departments;

select * from departments where dept_no between 'd003' and 'd006';

select * from employees where first_name is not null;

select * from employees where first_name is null;

/*Select the names of all departments whose department number value is not null.*/

select * from departments;
select dept_name from departments where dept_no is not null;

SELECT dept_name FROM departments WHERE dept_no IS NOT NULL;

select * from employees where first_name <> 'Mark';

select * from employees where hire_date > '2000-01-01';

select * from employees where hire_date >= '2000-01-01'and gender = "F";

/*Extract a list with all employees’ salaries higher than $150,000 per annum.*/

select * from salaries;

select * from salaries where salary > 150000;

select gender from employees;

select distinct gender from employees;

select * from employees;

select distinct hire_date from employees;

select distinct hire_date from employees limit 100;

select count(emp_no) from employees;

select count(first_name) from employees;

select count(distinct(first_name)) from	employees;

select * from departments;
select count(dept_no) from departments;

select * from  salaries;

select count(salary) from salaries where salary >= 100000;

SELECT COUNT(*) FROM salaries WHERE salary >= 100000;

SELECT COUNT(*) FROM dept_manager;


select * from employees order by first_name desc;

select * from employees order by emp_no asc;

select * from employees order by hire_date desc;

select first_name from employees group by first_name;

select count(first_name) from employees group by first_name;

select first_name  , count(first_name) from employees group by first_name;

select first_name , count(first_name) as names_count 
from employees group by first_name
order by first_name;

select * from salaries;

 select salary , count(salary) as emps_with_same_salary from salaries 
 where salary > 80000 group by salary 
 order by salary asc;
 
 SELECT salary, COUNT(emp_no) AS emps_with_same_salary
FROM salaries WHERE salary > 80000 GROUP BY salary ORDER BY salary;


select first_name , count(first_name) as names_count
from employees where count(first_name) > 250
group by first_name
order by first_name;


select  first_name , count(first_name) as names_count
from employees group by first_name 
having count(first_name) > 250
order by first_name;

select * from salaries;

select emp_no, avg(salary) from salaries group by emp_no
Having avg(salary) > 12000 order by emp_no;

select first_name , count(first_name) as names_coun from employees
where hire_date > '1999-01-01'
group by first_name 
having count(first_name) < 200
order by first_name desc;

select * from dept_emp;

SELECT emp_no FROM dept_emp WHERE from_date > '2000-01-01'
GROUP BY emp_no HAVING COUNT(from_date) > 1 ORDER BY emp_no;


select * from salaries;

SELECT 
    *
FROM
    salaries
ORDER BY salary DESC;

select * from salaries order by salary desc	 limit 10;

SELECT 
    *
FROM
    dept_emp
LIMIT 100;


insert into employees
( 
	emp_no,
    birth_date,
    first_name,
    last_name,
    gender,
    hire_date
) values
(
	999901,
    '1986-04-21',
    'John',
    'Smith',
    'M',
    '2011-01-01'
);


select * from employees where emp_no = 999901;

update employees
set 
	first_name ='Stella', 
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
	gender = 'F'
where 
	emp_no = 999901;

select * from departments;
select * from departments order by dept_no;

commit;

update departments set dept_no = 'd011',
dept_name = 'quality Control';

rollback;

select  * from employees where emp_no = 999903;

delete from employees where emp_no =999903;

select	* from titles where emp_no = 999903;

rollback;

select * from departments order by dept_no;

delete from departments;

select * from departments ;

rollback;

use employees;

select * from departments ;

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
















