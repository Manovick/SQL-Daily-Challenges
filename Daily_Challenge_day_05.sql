create database students;
use students;

create table student (
student_id int primary key,
student_name varchar (100),
course_id int
);

create table courses (
course_id int primary key,
course_name varchar (100)
);

create table enrollment (
enroll_id int primary key,
student_id int,
course_id int
);

create table current_employees (
emp_id int primary key,
emp_name varchar(100),
department varchar(100)
);

create table past_employees (
emp_id int primary key,
emp_name varchar(100),
department varchar(100)
);

insert into student (student_id , student_name , course_id) values
(1 , "deepak" , 1001),
(2 , "mathesh" , 1002),
(3 , "hari" , 1003),
(4 , "mano" , 1004),
(5 , "dhivan" , 1005),
(6 , "seenu" , 1006);

INSERT INTO courses (course_id, course_name) VALUES
(1001, "Fullstack Development"),
(1002, "Software Testing"),
(1003, "Data Analytics"),
(1004, "Devops"),
(1005, "Cloud Computing"),
(1006, "Web Development");


INSERT INTO current_employees (emp_id , emp_name , department) VALUES
(1, "senthil", "Sales"),
(3, "raju", "Sales"),
(5, "tharun", "IT"),
(7, "mithran", "Finance"),
(9, "pavithra", "IT");

INSERT INTO past_employees(emp_id , emp_name , department) VALUES
(1, "madhavan", "Marketting"),
(2, "lal", "IT"),
(3, "mani", "IT"),
(4, "kishore", "Finance");

insert into enrollment (enroll_id , student_id , course_id) values
(101 , 1 , 1001),
(102 , 2 , 1002),
(103 , 3 , 1003),
(104 , 4 , 1004),
(105 , 5 , 1005),
(106 , 6 , 1006);


-- INNER JOIN --

 select
	s.student_id ,
    s.student_name,
    c.course_name
FROM student as s
INNER JOIN enrollment as e 
    ON s.student_id = e.student_id
INNER JOIN courses as c
    ON e.course_id = c.course_id;
    
    
-- LEFT & RIGHT JOIN -- 
SELECT 
    s.student_id,
    s.student_name,
    e.course_id
FROM student as s
LEFT JOIN enrollment as e
    ON s.student_id = e.student_id;
    
    SELECT
    s.student_id,
    s.student_name,
    e.course_id
FROM student s
RIGHT JOIN enrollment e
    ON s.student_id = e.student_id;
    
    -- UNION vs UNION ALL --
    select emp_name , department from current_employees
    union
    select emp_name , department from past_employees;

    select emp_name , department from current_employees
    union all
    select emp_name , department from past_employees;
