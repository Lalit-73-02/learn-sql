Create database GOt;
use GOt;

create table users (
id int auto_increment primary key,
name varchar(100),
email varchar(100)
);

insert into users (name, email) values 
('Rahul', 'rahul@gmail.com'),
('Aman', 'aman@gmail.com'),
('Priya', 'priya@gmail.com');

-- foreign key
create table address (
id int auto_increment primary key,
user_id int,
street varchar(100),
city varchar(100),
state varchar(100),
pincode varchar(10),

constraint fk_user foreign key (user_id) references users(id)
);

INSERT INTO address (user_id, street, city, state, pincode)
VALUES
(1, 'MG Road', 'Delhi', 'Delhi', '110001'),
(1, 'Park Street', 'Kolkata', 'West Bengal', '700016'),
(2, 'MI Road', 'Jaipur', 'Rajasthan', '302001');

-- join the table
select users.name, address.city, address.street from 
users join address on users.id 
=address.user_id;

-- foreign key drop
alter table address drop foreign key fk_user;

-- add foreign key
ALTER TABLE address ADD CONSTRAINT fk_user FOREIGN KEY (user_id)
REFERENCES users(id);



