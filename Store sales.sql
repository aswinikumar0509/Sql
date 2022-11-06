## Store Data base

create database store;

use store;

create table Departnment(
Id int not null auto_increment,
Name varchar(25),
primary key(Id)
);

Create table Employee(
Id int not null auto_increment,
FName varchar(25),
LName varchar(25),
PhoneNumber int,
ManagerId int not null,
DepartnmentId int not null,
Salary int ,
HireDate datetime not null,
primary key(Id),
foreign key(ManagerId) references Employee(Id),
foreign key(DepartnmentId) references Departnment(Id)
);

create table customer(
Id int not null auto_increment,
FName varchar(25) not null,
LName varchar(25) not null,
Email varchar(100) not null,
Phonenumber varchar(30) ,
PrefferdContact varchar(25) not null,
primary key(Id)
);

CREATE TABLE Cars (
    Id INT NOT NULL AUTO_INCREMENT,
    customerId INT NOT NULL,
    EmployeeId INT NOT NULL,
    Model varchar(50) NOT NULL,
    Status varchar(25) NOT NULL,
    TotalCost INT NOT NULL,
    PRIMARY KEY(Id),
    FOREIGN KEY (customerId) REFERENCES customer(Id),
    FOREIGN KEY (EmployeeId) REFERENCES Employee(Id)
);

data--

INSERT INTO  Departnment
    (Id, Name)
VALUES
    (1, 'HR'),
    (2, 'Sales'),
    (3, 'Tech')
;

INSERT INTO Employee
    (Id, FName, LName, PhoneNumber, ManagerId ,DepartnmentId, Salary, HireDate)
VALUES
    (1, 'James', 'Smith', 12345670, 1, 1, 1000, str_to_date('01-01-2002', '%d-%m-%Y')),
    (2, 'John', 'Johnson', 24681012, '1', 1, 400, str_to_date('23-03-2005', '%d-%m-%Y')),
    (3, 'Michael', 'Williams', 13579111, '1', 2, 600, str_to_date('12-05-2009', '%d-%m-%Y')),
    (4, 'Johnathon', 'Smith', 12121212, '2', 1, 500, str_to_date('24-07-2016', '%d-%m-%Y'))
;

INSERT INTO Customer
    (Id, FName, LName, Email, PhoneNumber,PrefferdContact)
VALUES
    (1, 'William', 'Jones', 'william.jones@example.com', '3347927472', 'PHONE'),
    (2, 'David', 'Miller', 'dmiller@example.net', '2137921892', 'EMAIL'),
    (3, 'Richard', 'Davis', 'richard0123@example.com', NULL, 'EMAIL')
;

INSERT INTO Cars
    (Id, CustomerId, EmployeeId, Model, Status, TotalCost)
VALUES
    ('1', '1', '2', 'Ford F-150', 'READY', '230'),
    ('2', '1', '2', 'Ford F-150', 'READY', '200'),
    ('3', '2', '1', 'Ford Mustang', 'WAITING', '100'),
    ('4', '3', '3', 'Toyota Prius', 'WORKING', '1254')
;

select * from customer;

select * from employee;

select * from departnment;

select * from cars;