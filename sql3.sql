create database join_sql;

use join_sql;

create table customer(
customerid int,
customername varchar(100),
contactnumber int,
address varchar(100),
postalcode varchar(10),
country varchar(50),
primary key(customerid)
);

create table orders(
orderid int not null,
customerid int,
employeeid int,
orderdate datetime,
shipperid int
);

insert into customer values(1,"aswini",94579,"delhi","000","India");
insert into customer values(2,"aditya",94578,"delhi","000","India");
insert into customer values(3,"monu",94573,"delhi","000","India");
insert into customer values(4,"vikash gupta",94575,"delhi","000","India");
insert into customer values(5,"akash gupta",94572,"delhi","000","India");
insert into customer values(6,"uditya",94576,"delhi","000","India");
insert into customer values(7,"tonu",94572,"delhi","000","India");
insert into customer values(8,"anish",945797,"delhi","000","India");
insert into customer values(9,"amit",94578,"delhi","000","India");
insert into customer values(10,"ansari",94549,"delhi","000","India");

insert into orders values(901,1,1,sysdate(),39085);
insert into orders values(902,2,2,sysdate(),39085);
insert into orders values(903,3,3,sysdate(),39085);
insert into orders values(904,5,2,sysdate(),39085);
insert into orders values(905,4,4,sysdate(),39085);
insert into orders values(906,6,6,sysdate(),39085);

select * from customer;

select * from orders;

select c.customerid,c.customername,c.address ,o.orderid, o.customerid,o.orderdate
 from customer c left join orders o
on c.customerid = o.customerid;

select c.customerid,c.customername,c.address ,o.orderid, o.customerid,o.orderdate
 from customer c right join orders o
on c.customerid = o.customerid;

select c.customerid,c.customername,c.address ,o.orderid, o.customerid,o.orderdate
 from customer c inner join orders o
on c.customerid = o.customerid;

select c.customerid,c.customername,c.address ,o.orderid, o.customerid,o.orderdate
 from customer c left outer join orders o
on c.customerid = o.customerid
union
select c.customerid,c.customername,c.address ,o.orderid, o.customerid,o.orderdate
 from customer c right outer join orders o
on c.customerid = o.customerid;
