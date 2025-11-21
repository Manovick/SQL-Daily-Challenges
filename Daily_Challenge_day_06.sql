-- day 06 challenge --
-- functions --

create database Employees;
use Employees;

create table employee_details(
employee_id int primary key,
first_name varchar(50),
last_name varchar(50),
hire_date date
);

insert into employee_details(employee_id , first_name , last_name , hire_date) values
(1, "harry", "potter", "1984-04-01"),
(2, "james", "bond", "1990-10-10"),
(3, "ragnor", "lothburk", "2006-11-22"),
(4, "peter","parker", "2009-11-13"),
(5, "tony", "stark", "2000-07-18");

create table students_info(
student_id int,
first_name varchar(50), 
last_name varchar(50)
);

insert into students_info(student_id, first_name , last_name) values
(1, "harry", "potter"),
(2, "james", "bond"),
(3, "ragnor", "lothburk"),
(4, "peter","parker"),
(5, "tony", "stark");



-- queries using UPPER, LOWER, SUBSTRING, CONCAT. --
select first_name , last_name ,upper(first_name) , upper(last_name) from employee_details;
select first_name , last_name ,lower(first_name) , lower(last_name) from employee_details;
select first_name, substring(first_name,1,2) as alter_cloumn from employee_details;
select first_name , last_name , concat(first_name, " " ,last_name) as Full_name from employee_details;

-- YEAR(), DATEDIFF(), NOW() --
select employee_id, hire_date , year(now()) - year(hire_date) as tenure_year from employee_details;
select employee_id , hire_date , datediff(now() , hire_date) as tenure_days from employee_details;


Delimiter //
create function getfullname
(
first_name varchar(50),
 last_name varchar(50)
 ) 
 returns varchar(100)
 deterministic 
 begin
 return 
 concat(first_name," ", last_name);
 end //
 
 select getfullname(first_name,last_name) from students_info;
