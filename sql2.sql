create database employe;

use  employe;

create table emp_info(
firstname varchar(50),
designation varchar(50),
age int,
salary float
);

insert into emp_info values("jony weber ", "secretary", 29,195000.00);
insert into emp_info values("posty weber ", "Programmer", 32,485000.00);
insert into emp_info values("Dirk smith", "Programmer", 45,75020.00);

select * from emp_info;
insert into emp_info values("aswini Kumar ", "data science", 23,1800000.00);
insert into emp_info values("aditya ", "big data", 24,1700000.00);
insert into emp_info values("vikash gupta ", "software engineer", 23,1600000.00);
insert into emp_info values("akash gupta", "data anlyst", 24,1500000.00);
insert into emp_info values("uditya", "sql", 23,1400000.00);

select * from emp_info;

select  * from emp_info where salary > 30000;
select  * from emp_info where age > 30;

select firstname from  emp_info where age >20;

SET SQL_SAFE_UPDATES = 0;


update  emp_info set designation ='Sr.data scientiest' where firstname ='aswini kumar';

select * from emp_info where firstname = 'aswini kumar';







