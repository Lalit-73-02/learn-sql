-- Primary key - must be unique and can not be null.
create database Foxi;
use Foxi;

create table users(
 id int auto_increment primary key, -- primary key
 name varchar(100),
 email varchar(100),
 salary decimal(3,2),
 date_of_birth date
 );
 
INSERT INTO users (name, email, salary, date_of_birth)
VALUES 
('Rahul', 'rahul@gmail.com', 4500.50, '2000-05-10'),
('Aman', 'aman@gmail.com', 5200.00, '1998-11-21'),
('Priya', 'priya@gmail.com', 6100.75, '2001-02-15');

ALTER TABLE users MODIFY salary DECIMAL(8,2);

select * from users;
alter table users add unique (email);
alter table users drop index email;
 
 alter table users drop primary key; -- not work on auto_increment


 
 
