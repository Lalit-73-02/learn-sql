create database Comp; -- create database
use Comp;

-- create the table
create table users ( 
id int auto_increment primary key,
name varchar(100) not null,
email varchar(100) unique not null,
gender enum('Male', 'Female', 'Other' ),
date_of_birth Date,
create_at timestamp default current_timestamp
);

-- insert the data in table 
INSERT INTO users (name, email, gender, date_of_birth) VALUES
('Rahul Sharma', 'rahul.sharma@email.com', 'Male', '1998-05-14'),
('Priya Verma', 'priya.verma@email.com', 'Female', '2000-11-22'),
('Amit Kumar', 'amit.kumar@email.com', 'Male', '1995-03-09'),
('Neha Singh', 'neha.singh@email.com', 'Female', '1999-07-30'),
('Arjun Patel', 'arjun.patel@email.com', 'Male', '1997-01-18');

-- Drop command - delete everything in db
drop database Comp;

-- Use of select command 
select * from users;
select name from users;
select id from users;
select name, email from users;
select id, name from users;

-- Rename table 
Rename Table users to Customers;
RENAME TABLE customers TO users;

-- filtering row with where
select * from users where gender = 'Male';
select * from users where id = 2;
select * from users where name = 'Amit Kumar';

-- use of not equal
select * from users where gender != 'Male';
select * from users where date_of_birth != 1997-07-30;
select * from users where gender <> 'Female';
-- grater than/less than
select * from users where date_of_birth < 1997-01-01; -- less then 
select * from users where id > 1; -- grater then
select * from users where id >= 2; -- grater then equal to
select * from users where id <=  1997-01-01; -- less then equal to

-- use of alter
alter table users add column is_active boolean default true;
alter table users drop column is_active;
alter table users modify column name varchar(150);
alter table users modify column email varchar(150);

-- Move to the column use to alter
alter table users modify column email varchar(150) First;
alter table users modify column name varchar(150) First;
alter table users modify column id int First;
alter table users modify column date_of_birth date First;
ALTER TABLE users 
MODIFY COLUMN gender ENUM('male','female','other') FIRST;  -- enum must be define value

alter table users modify column gender enum('male', 'female', 'other') after name;
select * from users;

-- Working with Null
select * from users where date_of_birth is null;
SELECT * FROM users WHERE date_of_birth IS NOT NULL;

-- use between
select * from users where date_of_birth between '1990-01-01' and '2000-12-31';
-- use of in
SELECT * FROM users WHERE gender IN ('Male', 'Other');
select * from users where id in (2,4);

-- use of like
SELECT * FROM users WHERE name LIKE 'A%';  -- Starts with A
SELECT * FROM users WHERE name LIKE '%a';  -- Ends with a
SELECT * FROM users WHERE name LIKE '%li%'; -- Contains 'li'

-- and / or
SELECT * FROM users WHERE gender = 'Female' AND date_of_birth > '1990-01-01';
SELECT * FROM users WHERE gender = 'Male' OR gender = 'Other';

-- order by
SELECT * FROM users ORDER BY date_of_birth ASC;
SELECT * FROM users ORDER BY name DESC;
select * from users order by id asc;
select * from users order by id desc;

-- use  of limit
SELECT * FROM users LIMIT 5;  -- Top 5 rows
SELECT * FROM users LIMIT 5 OFFSET 2;  -- Skip first 2 rows, then get next 5





