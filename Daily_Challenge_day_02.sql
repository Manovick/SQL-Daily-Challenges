
-- daily challenge day 29--
-- PRIMARY KEY & FOREIGN KEY --
create database online_bookstore;
use online_bookstore;

create table books(
book_id int primary key,
title varchar (100),
author varchar (100),
release_date date,
book_genre varchar (100)
);
select * from books;

create table orders(
order_id int primary key,
order_date date,
customer_name varchar (100),
book_id int,
foreign key (book_id) references books (book_id)
);

-- UNIQUE Constraint --
-- Add a UNIQUE constraint to the ISBN column in Books--

alter table books add isbn varchar (50) unique;

-- DELETE vs TRUNCATE--
Select * from Books;
-- DELETE specific rows
Delete from orders Where book_id < 10;
-- TRUNCATE removes all rows quickly
Truncate Table Orders;
