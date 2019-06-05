use employees;

select * from employees
where first_name in ("Irena","Vidya","Maya")
ORDER BY last_name DESC, first_name DESC;

select * from employees
where last_name like "%E%"
order by emp_no DESC;

select * from employees
where hire_date like "199%";

select * from employees
where birth_date like "%-12-25";

select * from employees
where last_name like "%q%";

select * from employees
where (first_name = "Irena" or first_name = "Vidya" or  first_name = "Maya") and gender="M";

select * from employees
where last_name like "E%" or last_name like "%e";

select CONCAT(first_name, " ", last_name) as "Full Name" from employees
where last_name like "E%E";


select concat(first_name," ",last_name), datediff(curdate(),hire_date) as "Days working at company" from employees
where birth_date like "%-12-25" and hire_date like "199%"
order by birth_date, hire_date desc;

select * from employees
where last_name like "%q%" and last_name not like "%qu%";