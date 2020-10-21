CREATE database customers;
use customers;

CREATE TABLE my_customers (
id int primary key auto_increment,
deposit_amt double,
email varchar(20) UNIQUE,
name varchar(20),password varchar(20),
reg_date date,role varchar(10));

INSERT INTO my_customers VALUES(1,1500,'a@a.com','A','1234','2017-1-23','admin');
INSERT INTO my_customers VALUES(2,1200,'b@b.com','B','123','2018-5-29','customer');
INSERT INTO my_customers VALUES(3,1800,'c@c.com','C','1235','2016-3-4','customer');
INSERT INTO my_customers VALUES(4,1700,'d@d.com','D','4235','2017-3-4','customer');
INSERT INTO my_customers VALUES(5,1900,'e@e.com','E','4535','2019-3-4','customer');