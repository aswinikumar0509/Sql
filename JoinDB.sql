create database joindb;

use joindb;

create table Customers(
CustomerId int,
CustomerName varchar(30),
ContactName varchar(40),
Country varchar(30)
);

Create table Corders(
Orderid  int,
CustomerId int,
OrderDate date
);

insert into Customers values(1,"Aswini Kumar","Aswini","India");

select * from customers;

insert into Customers values(2,"Aditya Saxena","Aditya","India");
insert into Customers values(3,"Uditya Kumar","Uditya","India");
insert into Customers values(4,"Tonu Kumar","Tonu","India");
insert into Customers values(5,"Monu Kumar","Monu","India");

insert into Corders values(01,3,3/4/22);
insert into Corders values(02,5,1/4/22);
insert into Corders values(03,1,6/4/22);
insert into Corders values(04,3,8/4/22);
insert into Corders values(05,2,2/4/22);

select * from customers;

select * from Corders;

#Inner join
select orders.orderid , customers.customerName ,  Corders.Corderdate
from orders
inner join customers on Corders.Corderid = customers.customerid;

#Left join

#CustomerID	CustomerName	ContactName	Address	City	PostalCode	Country
create table customer(
customerid int,
CustomerName varchar(20),
ContactName varchar(20),
Address varchar(20),
City Varchar(20),
PostalCode int,
Country varchar(30)
);

insert into customer values(1,"Aswini  Kumar","Aswini","Jay Ambey Apartnment","Delhi",110096,"India");
insert into customer values(2,"Aditya saxena","Aditya","Prabhat colony ","Chas",827013,"India");
insert into customer values(3,"Uditya Kuamar","Uditya","Prabhat Colony ", "Chas",827013,"India");

create table order2(
OrderId int,
CustomerId int,
EmployeeId int,
OrderDate date,
ShipperId int
);
insert into order2 values(10308,1,7,18/9/2022,3);
insert into order2 values(10309,2,3,19/9/2022,1);
insert into order2 values(10310,3,8,20/9/2022,2);

select customer.customername , order2.orderid
from customer
left join order2 on customer.customerid = order2.orderid
order by customer.customername;

# Right Join

create table employee(
EmployeeID int,
LastName varchar(20),
FirstName varchar(20),
Birth date,
Photo varchar(20)
);

insert into employee values(1,"Kumar","Monu",04/04/1999,"Empid1");
insert into employee values(2,"Kumar","Tonu",27/09/2002,"Empid2");
insert into employee values(3,"Kumar","Hardik",14/07/2018,"Empid3");

select * from employee;

select order2.orderid,employee.lastname,employee.firstname
from order2
right join employee on order2.employeeid = employee.employeeid
order by order2.orderid;

#full join

select * from customer;

select customers.CustomerName , order2.orderid
from customers
full join order2 on order2.customerid = customer.customerid;
