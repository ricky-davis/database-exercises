use employees;
select * from dept_manager;
select * from departments;
select * from dept_emp;
select * from employees;
select * from salaries;
select * from titles;

select d.dept_name as "Department Name", concat(e.first_name," ", e.last_name) as "Department Manager" from departments as d
join dept_manager as dm on d.dept_no = dm.dept_no
join employees as e on e.emp_no = dm.emp_no
where dm.to_date > curdate()
order by d.dept_name;

select d.dept_name as "Department Name", concat(e.first_name," ", e.last_name) as "Department Manager" from departments as d
join dept_manager as dm on d.dept_no = dm.dept_no
join employees as e on e.emp_no = dm.emp_no
where dm.to_date > curdate() and e.gender="F"
order by d.dept_name;

select t.title as Title, count(*) as Count from titles as t
join dept_emp as de on t.emp_no = de.emp_no
where de.dept_no = "d009" and t.to_date > curdate()
group by t.title;

select d.dept_name as "Department Name", concat(e.first_name," ", e.last_name) as "Department Manager", s.salary as Salary from departments as d
join dept_manager as dm on d.dept_no = dm.dept_no
join employees as e on e.emp_no = dm.emp_no
join salaries as s on s.emp_no = e.emp_no
where s.to_date > curdate() and dm.to_date > curdate()
order by d.dept_name;


select concat(e.first_name," ", e.last_name) as "Employee Name",
       d.dept_name as "Department Name",
       concat(em.first_name," ", em.last_name) as "Department Manager" from departments as d
join dept_manager as dm on d.dept_no = dm.dept_no
join dept_emp as de on d.dept_no = de.dept_no
join employees as em on em.emp_no = dm.emp_no
join employees as e on e.emp_no = de.emp_no
where dm.to_date > curdate() and de.to_date > curdate()
order by d.dept_name;




select e.first_name, e.last_name, e.birth_date from employees as e
join dept_manager dm on e.emp_no = dm.emp_no;

select first_name, last_name, birth_date from employees
where emp_no in (
    select emp_no from dept_manager
    );