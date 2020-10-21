CREATE database employees;
use employees;

CREATE TABLE my_emp (
empid int(3) primary key auto_increment,
name varchar(20),
addr varchar(20),
salary double(8,2),
deptid varchar(10),join_date date);
INSERT INTO my_emp  VALUES(DEFAULT,'A','Sevastopool',15000,'R&D','2015-11-18');
INSERT INTO my_emp  VALUES(DEFAULT,'B','BakuCity',18000,'R&D','2015-1-18');
INSERT INTO my_emp  VALUES(DEFAULT,'C','Karlovy',13000,'Dev','2016-7-8');
INSERT INTO my_emp  VALUES(DEFAULT,'D','Bruges',25000,'R&D','2015-3-18');
INSERT INTO my_emp  VALUES(DEFAULT,'E','Arnhem',21000,'Dev','2017-11-18');