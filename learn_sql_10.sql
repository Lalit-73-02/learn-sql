create database self;
use self;

create table users (
id int primary key,
name varchar(100),
email varchar(100),
referred_by_id int 
);

INSERT INTO users (id, name, email, referred_by_id) VALUES
(1, 'Aarav', 'aarav@example.com', NULL),
(2, 'Sneha', 'sneha@example.com', 1),
(3, 'Raj', 'raj@example.com', 1),
(4, 'Fatima', 'fatima@example.com', 2),
(5, 'Karan', 'karan@example.com', NULL);

SELECT * FROM users;

-- self join - is join to be use only related table row
select 
a.id,
a.name as user_name,
b.name as referred_by 
from users a left join users b
on a.referred_by_id = b.id;
-- as - its mean to give new column name

-- second practice
create table employees(
id int primary key,
name varchar(100),
manager_id int
);
-- drop table employee;

INSERT INTO employees (id, name, manager_id) VALUES
(1, 'Rahul', NULL),
(2, 'Priya', 1),
(3, 'Amit', 1),
(4, 'Neha', 2),
(5, 'Karan', 2);

SELECT
e.name AS employee,
m.name AS manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.id;
