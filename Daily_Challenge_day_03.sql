-- Daily Challenge day 30 --
-- clauses and operators --

create database university;
use university;

create table students (
student_id int unique,
student_name varchar (100),
department varchar (50),
email varchar (100),
gpa decimal (3,1)
);

insert into students ( student_id , student_name , department , email , gpa ) values
(1 , "deepak" , "commerce" , "deepak119@gmail.com" , 9.5),
(2 , "mathesh" , "biology" , "mathesh220@gmail.com" , 9.2),
(3 , "seenu" , "botany" , "seenu456@gmail.com" , 8.5),
(4 , "dhivan" , "chemistry" , "dhivan789@gmail.com" , 8.2),
(5 , "rajesh" , "physics" , null, 8.1),
(6 , "mahadevan" , "computerscience" , "mahadevan@gmail.com" , 7.5);
select * from students;
insert into students ( student_id , student_name , department , email , gpa ) values
(7 , "thirupathi" ,"biology" , "thirupathi77@gmail.com" , 7.6);

select distinct department from students;

select * from students where email is null;

select * from students where email is not null;

select * from students where department in ("biology" , "chemistry");

select * from students where gpa between 8.5 and  9.5;

select * from students where gpa not between 8.5 and  9.5;
