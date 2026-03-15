-- union - cobine two more select queries into one result table, remove dublicates

create database Uni;
use Uni;

CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);
 
 INSERT INTO users VALUES
(1,'Rahul',30000),
(2,'Amit',35000),
(3,'Priya',40000),
(4,'Neha',42000);

create table admin_users (
id int primary key,
name varchar(100),
email varchar(100),
gender enum('male','female','other'),
date_of_birth date,
salary int 
);

INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
(101, 'Amit', 'amit@example.com', 'Male', '1985-04-12', 60000),
(102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
(103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
(104, 'Rahul', 'rahul@example.com', 'Female', '1990-06-30', 62000);

-- truncate table admin_users;         to delete the table data only

-- basic union - get all name from users table and admin_users, 
-- combine them into one list and remove duplicate
select name from users union
select name from admin_users;

-- union all - keeps duplicates
select name from users union all
select name from admin_users;

-- union of multiple columns
select name, salary from users union 
select name, salary from admin_users;

-- adding role lable on table
select name, 'user' as role from users union
select name, 'admin' as role from admin_users;

-- sorting the result / alphabetically sorted
select name from users union 
select name from admin_users order by name; 

