CREATE DATABASE Employee;
Use Employee;
create table Departments(
department_id int primary key,
department_name varchar(100) unique	not null
);
select * from Departments;
create table Location(
location_id int primary key,
location varchar(30) unique not null
);
select * from Location;
create table Employees(
employee_id int primary key,
employee_name varchar(50) unique not null,
gender enum ("M","F"),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2)
);
select * from Employees;

alter table Employees add column email varchar(50);
alter table Employees modify column designation varchar(250);
alter table Employees drop column age;
alter table Employees rename column hire_date to date_of_joining;
select * from Employees;

rename table Departments to Departments_Info;
rename table Location to Locations;
select * from Locations;

truncate table Employees;

drop table Employees;
drop database Employee;

drop database if exists Employee;

CREATE DATABASE Employee;
Use Employee;
create table Departments(
department_id int primary key,
department_name varchar(100) unique	not null
);
select * from Departments;
create table Location(
location_id int auto_increment primary key,
location varchar(30) unique not null
);
select * from Location;
create table Employees(
employee_id int primary key,
employee_name varchar(50) unique not null,
gender varchar(20) check (gender in ("M","F")),
age int check (age>= 18),
hire_date date,
designation varchar(100),
salary decimal(10,2),
department_id int,
location_id int,
foreign key (department_id) references Departments (department_id),
foreign key (location_id) references Location (location_id)
);

alter table Employees add column email varchar(50);
alter table Employees modify column designation varchar(250);
alter table Employees drop column age;
alter table Employees rename column hire_date to date_of_joining;
select * from Employees;

rename table Departments to Departments_Info;
rename table Location to Locations;
select * from Locations;

truncate table Employees;

rename table departments_info to departments;

rename table locations to location;

drop table employees;





