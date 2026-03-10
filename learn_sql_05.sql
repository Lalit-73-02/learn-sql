create database Follow;
use Follow;

CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10,2),
    date_of_birth DATE,
    gender VARCHAR(10)
);

INSERT INTO users (id, name, salary, date_of_birth, gender) VALUES
(1, 'Rahul Sharma', 45000.00, '1998-05-12', 'Male'),
(2, 'Priya Verma', 52000.00, '1997-08-21', 'Female'),
(3, 'Amit Kumar', 48000.00, '1996-11-03', 'Male'),
(4, 'Neha Singh', 55000.00, '1999-01-17', 'Female'),
(5, 'Rohit Gupta', 47000.00, '1995-09-09', 'Male'),
(6, 'Anjali Mehta', 60000.00, '1998-04-25', 'Female'),
(7, 'Vikas Patel', 51000.00, '1997-12-30', 'Male');

-- Mathematical function 

-- round()
select salary, round(salary) from users;
select salary, round(salary) as rounded from users;

-- floor()
select salary, floor(salary) from users;
select salary, floor(salary) as floored from users;

-- ceil()
select salary, ceil(salary) from users;
select salary, ceil(salary) as ceiled from users;

-- use of mod()
-- When find even id data so 
select id, mod(id, 2) from users;
select id, mod(id, 2) as remainder from users;

-- conditional function
select name, gender, if(gender = 'female', 'yes', 'no' ) from users;
SELECT name, gender, IF(gender = 'Female', 'Yes', 'No') AS is_female FROM users;
select name, gender, if(gender = 'Male', 'Yes', 'NO' ) from  users;
select name, gender, if(gender = 'Male', 'Yes', 'NO' ) as is_Male from users;
select name, salary, if(salary > 50000, 'High salary', 'Low salary' ) as salaty_status from users;

-- case statement
select name, salary, case
when salary > 55000 then 'very high'
when salary > 50000 then 'high'
else 'Normal'
end as salary_level from users;

-- ifnull() if salary null show 0
select name, ifnull(salary,0) as salary from users; 

-- use of autocommit -- to save direct data in database
-- autocommit 

-- step 1 - AutoCommit off
set autocommit = 0;

-- step 2 - update the data
update users set salary = 80000 where id = 5;

-- save changes so 
commit; 

-- if you fil rong data so use back 
rollback;
update users set salary = 70000 where id = 5;
commit;

-- Then on Autocommit
set autocommit = 1;  

select * from users;


