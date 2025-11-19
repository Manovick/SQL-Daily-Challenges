create database ecommerce;
use ecommerce;

create table products(
product_id int primary key,
product_name varchar(50),
price decimal (10,2)
);

create table sales(
sales_id int primary key,
product_id int,
quantity int,
Totalamount decimal(10,2),
sales_date date
);

create table employee(
employee_id int primary key,
employee_name varchar (80),
department_name varchar(50)
);

INSERT INTO products (product_id, product_name, price) VALUES
(1, "smartTV", 4500),
(2, "Laptop", 65000),
(3, "AirBuds", 3000),
(4, "SmartPhone", 35000);

INSERT INTO sales (sales_id, product_id, quantity, Totalamount, sales_date) VALUES
(1, 1, 2, 9000, "2025-07-04"),
(2, 2, 1, 65000, "2025-09-24"),
(3, 3, 4, 12000, "2024-01-16"),
(4, 4, 1, 35000, "2024-05-10");


INSERT INTO employee(employee_id, employee_name, department_name) VALUES
(1, "deepak", "Finance"),
(2, "mano", "IT"),
(3, "mathesh", "IT"),
(4, "vinoth", "Marketting"),
(5, "dhivan", "HR"),
(6, "ramakrishnan", "Marketting"),
(7, "deva", "IT"),
(8, "thirupathi", "Finance");

-- ORDER BY & LIMIT --
select product_name , price
from products
order by price desc
limit 3;

-- Aggregate Functions --
select count(*) from sales;
select sum(Totalamount) from sales;
select max(Totalamount) from sales;
select min(Totalamount) from sales;
select avg(Totalamount) from sales;

-- GROUP BY & HAVING --

select department_name , count(employee_id) as Total_employee
from employee
group by department_name
having Total_employee >10;

 
