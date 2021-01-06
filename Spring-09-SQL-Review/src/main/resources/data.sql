select *
from departments;

select *
from employees;

select *
from regions;

select region
from regions;

select *
from employees
where department = 'Sports';

select *
from employees
where department like '%nit';

select *
from employees
where department like '%nit%';

select *
from employees
where department like 'F%nit%';

select *
from employees
where salary>=100000;

select *
from employees
where department = 'Sports'
and salary>150000;

select *
from employees
where department = 'Clothing'
and salary >=100000
and region_id = 2;

select *
from employees
where department = 'Clothing'
or salary > 80000;

select *
from employees
where salary > 80000
and (department = 'Clothing'
or department = 'Sports');

-- different than

select *
from employees
where salary > 80000
and department = 'Clothing'
or department = 'Sports';

select *
from employees
where department != 'Sports';

-- same as below

select *
from employees
where department <> 'Sports';

-- opposite

select *
from employees
where not department <> 'Sports';

select *
from employees
where email is Null;

select *
from employees
where email is not Null;

select *
from employees
where department in ('Sports', 'First Aid', 'Toys');

select *
from employees
where salary between 80000 and 100000;

select first_name
from employees
where gender = 'F'
and salary > 110000
and department = 'Tools';

select first_name, hire_date
from employees
where salary > 165000
or (gender = 'M'
and department = 'Sports');

select *
from employees
order by employee_id desc;

select distinct department
from employees;

select distinct department
from employees
fetch first 3 rows only;

select salary as yearly_salary
from employees;

select *
from students
order by age DESC
fetch first 4 rows only;

select *
from students
where age<=20 and
      ((student_no between 3 and 5)
           or (student_no = 7))
or
            age>20 and
            (student_no >=4);

select upper(first_name), lower(department)
from employees;

select length(first_name)
from employees;

select trim ('   Hello World   ');

select length ('   Hello World   ');

select first_name || ' ' || last_name as full_name
from employees;

select (salary>140000)
from employees;

select (salary>140000) as high_paid
from employees
order by salary desc;

select department, (department like '%oth%')
from employees;

select 'This is test data' test_data;

select substring ('This is test data' from 1 for 4) as test_data;

select substring ('This is test data' from 9) as test_data;

select department
, replace(department, 'Clothing', 'Clothes')
from departments;

select max(salary)
from employees;

select min(salary)
from employees;

select round(avg(salary))
from employees;

select count(employee_id)
from employees;

select count(email)
from employees;

select sum(salary)
from employees;

select sum(salary)
from employees
where department = 'Clothing';

select last_name, upper(substring(department,1,3)) as department, salary, hire_date
from professors;

select max(salary) max_salary, min(salary) min_salary
from professors
where last_name != 'Wilson';

select count(*), department
from employees
group by department;

select sum(salary) as total_salary, department
from employees
group by department;

select max(salary) max_salary, min(salary) min_salary, round(avg(salary)) avg_salary, count(*) total_number_employees, department
from employees
group by department;

select sum(salary) as total_salary, department
from employees
where region_id in(4,5,6,7)
group by department;

select department, count(*)
from employees
group by department
order by department;

select department, count(*)
from employees
group by department
having count(*) <=20
order by department;

select count(*), substring(email, position('@' in email) +1) email_domain
from employees
where email is not Null
group by email_domain;

select e.department
from employees e, departments d;

select *
from employees
where department not in (select department from departments);

select *
from (select * from employees where salary > 50000) a;

-- Return all employees who works in electronic division

select first_name, last_name, salary, department
from employees
where department in (select department from departments where division = 'Electronics')
order by salary desc;

-- Return all employees work in Asia or Canada make more than 130000

select *
from employees
where region_id in (select region_id from regions where country = ('Asia') or country = 'Canada')
and salary >= 130000;

-- First name who works in Asia and Canada and how much less making from the highest employee in the company

select first_name, (select max(salary) from employees) - salary
from employees
where region_id in (select region_id from regions where country = ('Asia') or country = 'Canada');

--Write a query that returns all of those employees that work in the kids division AND
--the dates at which those employees were hired is greater than all of the hire_dates of employees
--who work in the maintenance department

select *
from employees
where department = any (select department from departments where division = 'Kids')
and hire_date > all (select hire_date from employees where department = 'Maintenance');

--Write a query that returns the names of those students that are taking the courses Physics and US History

select student_name
from students
where student_no in (select student_no from student_enrollment
where course_no in (select course_no from courses where course_title in ('Physics', 'US History')));

SELECT first_name, salary,
Case
    WHEN salary<100000 THEN 'Under Paid'
    WHEN salary>100000 THEN 'Paid Well'
    ELSE 'UNPAID'
END as category
From employees;

SELECT category,COUNT(*)
FROM (SELECT first_name,
             CASE
                 WHEN salary<100000 THEN 'UNDER PAID'
                 WHEN salary>100000 AND salary<160000 THEN 'PAID WELL'
                 ELSE 'EXECUTIVE'
                 END as category
      FROM employees) a
GROUP BY category;

SELECT first_name,country
FROM employees e,regions r
WHERE e.region_id = r.region_id;

SELECT first_name,email,division,d.department
FROM employees e,departments d,regions r
WHERE e.department = d.department
  AND e.region_id=r.region_id;

SELECT first_name,country
FROM employees INNER JOIN regions
ON employees.region_id=regions.region_id;

SELECT  first_name,email,division
FROM employees e INNER JOIN  departments d
ON e.department=d.department
WHERE email IS NOT NULL;

SELECT first_name,email,division,country
FROM employees e INNER JOIN departments d
ON e.department=d.department INNER JOIN  regions r
ON e.region_id=r.region_id
WHERE email IS NOT NULL;

SELECT distinct department from employees;--31
SELECT distinct department from departments;--24

SELECT distinct e.department,d.department
FROM employees e LEFT JOIN  departments d
ON e.department=d.department;

SELECT distinct e.department,d.department
FROM employees e RIGHT JOIN  departments d
ON e.department=d.department;

SELECT distinct e.department,d.department
FROM employees e FULL JOIN departments d
ON e.department=d.department;

select department
from departments
UNION
select department
from employees;

select department
from employees
EXCEPT
select department
from departments;


























