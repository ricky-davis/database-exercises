SELECT DISTINCT last_name
FROM employees
order by last_name desc
limit 10;

select * from employees
where birth_date like "%-12-25" and hire_date like "199%"
order by birth_date, hire_date desc
limit 5 offset 45;