create database sql_intro;

use sql_intro;

show databases;

create table employee(
emp_name varchar(20),
emp_id int(10),
emp_add varchar(50),
primary key(emp_id)
);
show tables;
insert into employee(emp_name,emp_id,emp_add)values("aswini",834,"delhi");
insert into employee(emp_name,emp_id,emp_add)values("aditya",84,"delhi");
insert into employee(emp_name,emp_id,emp_add)values("monu",34,"delhi");
insert into employee(emp_name,emp_id,emp_add)values("something",83,"delhi");
insert into employee(emp_name,emp_id,emp_add)values("something",43,"delhi");

select * from employee;


show tables from employee;