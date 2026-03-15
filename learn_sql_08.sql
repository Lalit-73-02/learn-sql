create database Joining;
use Joining;

-- create two table
create table users (
id int primary key,
name varchar(100)
);

create table address (
id int primary key,
user_id int,
city varchar(50)
);

-- insert users data
INSERT INTO users (id, name) VALUES
(1, 'Aarav'),
(2, 'Sneha'),
(3, 'Raj');

-- insert address data
INSERT INTO addresses (id, user_id, city) VALUES
(1, 1, 'Mumbai'),
(2, 2, 'Kolkata'),
(3, 4, 'Delhi');

-- understanding join - combine row from two table
-- users.id = address.user_id;

-- inner join
select users.name, addresses.city
from users inner join address on users.id = address.user_id;
-- only matching data in two table


-- left join
select users.name, address.city from users 
left join address on users.id = address.user_id;
-- ALL rows from left table (users)
-- +
-- matching rows from right table (address)

-- Right join
select users.name, address.city from users right join address
on users.id = address.user_id;
-- ALL rows from right table (address)
-- +
-- matching rows from left table (users)



