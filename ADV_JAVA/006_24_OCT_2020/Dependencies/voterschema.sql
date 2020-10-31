create database voterschema;
use voterschema;

create table voters (id int primary key auto_increment,name varchar(20),
email varchar(20) unique,
password varchar(20),
status boolean,role varchar(20));
insert into voters values(default,'a','a@a.com','a#123',0,'admin');
insert into voters values(default,'b','b@b.com','b#123',0,'voter');
insert into voters values(default,'c','c@c.com','c#123',0,'voter');
insert into voters values(default,'d','d@d.com','d#123',0,'voter');
insert into voters values(default,'e','e@e.com','e#123',0,'voter');
insert into voters values(default,'f','f@f.com','f#123',0,'voter');
insert into voters values(default,'g','g@g.com','g#123',0,'voter');

create table candidates(id int primary key auto_increment,
name varchar(20) unique,party varchar(20),votes int);
insert into candidates values(default,'R','ABC',11);
insert into candidates values(default,'O','DEF',15);
insert into candidates values(default,'T','GHI',7);
insert into candidates values(default,'F','JKL',4);
insert into candidates values(default,'L','MNO',21);