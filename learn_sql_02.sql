create database Como;
use Como;

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    gender ENUM('male', 'female', 'other'),
    date_of_birth DATE,
    salary DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
('Alice Johnson', 'alice.johnson@example.com', 'female', '1992-03-15', 50000.00),
('Bob Smith', 'bob.smith@example.com', 'male', '1988-07-22', 60000.00),
('Carol Lee', 'carol.lee@example.com', 'female', '1995-11-05', 55000.00),
('David Brown', 'david.brown@example.com', 'other', '1990-01-30', 62000.00),
('Eve Davis', 'eve.davis@example.com', 'female', '1985-09-18', 70000.00),
('Frank Wilson', 'frank.wilson@example.com', 'male', '1993-06-12', 48000.00),
('Grace Kim', 'grace.kim@example.com', 'female', '1991-12-03', 53000.00),
('Henry Clark', 'henry.clark@example.com', 'male', '1989-04-25', 65000.00),
('Isabella Martinez', 'isabella.martinez@example.com', 'female', '1994-08-14', 59000.00),
('Jack Lewis', 'jack.lewis@example.com', 'other', '1990-11-20', 61000.00);

select * from users;

-- use of update
update users set salary = 70000 where id = 2;
UPDATE users SET gender = 'male' WHERE id = 10;
UPDATE users SET salary = 58000 WHERE id IN (1,3,9);
UPDATE users SET salary = 70000 WHERE id = 5;

-- delete row
delete from users where gender = 'other';
delete from users; -- all row 
drop table users; -- use to drop the table 
delete from users where salary is null;

