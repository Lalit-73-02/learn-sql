create database dataBd;
use dataBd;


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
('Eve Davis', 'eve.davis@example.com', 'female', '1985-09-18', 70000.00),
('Frank Wilson', 'frank.wilson@example.com', 'male', '1993-06-12', 48000.00),
('Grace Kim', 'grace.kim@example.com', 'female', '1991-12-03', 53000.00),
('Henry Clark', 'henry.clark@example.com', 'male', '1989-04-25', 65000.00),
('Isabella Martinez', 'isabella.martinez@example.com', 'female', '1994-08-14', 59000.00),
('Jack Lewis', 'jack.lewis@example.com', 'other', '1990-11-20', 61000.00);

-- string function
select length(name) from users; -- length
select name, length(name) as name_length from users;

SELECT LOWER(name) FROM users; -- upper/lower
select name, lower(name) as lower_name from users;
SELECT UPPER(name) FROM users;
select name, upper(name) as upper_name from users;

select concat(name, ' <', email, '>') from users;  -- concat
SELECT CONCAT(name, ' <', email, '>') AS user_contact FROM users;

-- date and time function
select now(); -- show current date and time
SELECT name, YEAR(date_of_birth) AS birth_year FROM users;
-- datediff  - find nu. of days and b_o_d b/w
SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days_lived FROM users;
-- timestampdiff -- calculate age in years
SELECT name, TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age FROM users;

