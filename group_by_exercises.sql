use employees;

select DISTINCT title from titles;

select last_name from employees
where last_name like "E%E"
group by last_name;

select first_name,last_name from employees
where last_name like "E%E"
group by last_name, first_name;

select last_name from employees
where last_name like "%q%" and last_name not like "%qu%"
group by last_name;

select last_name, count(last_name) as counts from employees
where last_name like "E%E"
group by last_name
order by counts desc;

select count(*),gender from employees
where first_name in ("Irena","Vidya","Maya")
group by gender;
