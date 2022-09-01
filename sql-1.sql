create database abc;

use abc;
drop database abc;

create database test;
use test;

create table person(
Person_id int,
First_Name varchar(50),
Last_Name varchar(50),
Address varchar(50),
City varchar(50)

);

select * from person;

create table customers(
CustomerName varchar(50),
ContactName varchar(50),
Address varchar(50),
City varchar(50),
PostalCode int,
Country varchar(50)
);
alter table customers
add Customer_Id int;

insert into customers values('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway',89);

select * from customers;

insert into customers values("Wilman Kala","	Matti Karttunen	","Keskuskatu 45","Helsinki",21240,"Finland",90);
insert into customers values("Wolski","Zbyszek","ul. Filtrowa 68","Walla",01-012,"Poland",91);

 create table testtable as
 select CustomerName , ContactName
 from customers;
 
 select * from testtable ;
 
 