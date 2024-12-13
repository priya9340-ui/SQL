create database lotus;
use lotus;
create table user (userid int primary key, uname varchar(20), mobile varchar(20)); 

create table product ( pid int primary key, pname varchar(20) , price decimal(10,2));

create table orders(oid int primary key, uid int , pid int, foreign key (uid) references user (userid));

alter table orders add foreign key(pid) references product(pid);

alter table orders drop foreign key orders_ibfk_1;

desc orders;
alter table orders drop key uid;

alter table orders drop foreign key orders_ibfk_2;
alter table orders drop key pid;

create database office12;
use office12;

create table employee (empid int primary key, 
ename varchar(20)not null,
mobile varchar(20)unique, salary decimal(10,2),
city varchar(20) default "bhopal",
check(salary >=40000));
 
create table department (pid int , pname varchar(20), 
empid int, foreign key(empid) references employee(empid));
desc department;
select *from department;

insert into employee (empid, ename, mobile, salary)
values (101, "ABC", "+919993512904", 46000),
(102, "PRK", "+9192347568", 48000),
(103, "PDF", "+9188745642", 55000);
select *from employee;

insert into employee(empid, ename, mobile, salary, city)
value (104, "pqr", "+918453746284", 65000, "indore");

insert into department(pid, pname, empid)
values(201, "mnd", 103), (202, "khd", 104),
(203, "lmn",101), (204, "lmp", 101);

alter table department drop foreign key department_ibfk_1;
alter table department drop key empid;

alter table employee drop primary key;
alter table employee modify empid int;

alter table employee modify ename varchar(20);

alter table employee modify city varchar(20);

alter table employee drop key mobile;
desc employee;










create database croma;
use croma;

create table customer(uid int primary key, uname varchar(20),
mobile varchar(20));

create table orders(oid int primary key, userid int, pid int ,
foreign key(userid) references customer(uid));

insert into customer(uid, uname, mobile)
value (1, "abc" , "+91999936464"), (2, "def", "+91863423466"),
(3, "pqr", "+91647938477"), (4, "xyz", "+917873345"),
(5, "uvh", "+9198474384389");

select *from customer;

insert into orders (oid,userid,pid)
values (101, 1, 201), (102, 2, 203), (103, 3, 202),
(104, 2, 201), (105, 2, 202);
select *from orders;

delete from customer where uid=5;
delete from customer where uid=1;

alter table  orders drop foreign key orders_ibfk_1;
alter table orders drop key userid;

alter table orders add foreign key(userid) references customer(uid)
on delete set null;

# on delete cascade
alter table  orders drop foreign key orders_ibfk_1;
alter table orders drop key userid;

alter table orders add foreign key(userid) references customer(uid)
on delete cascade;

start transaction;

delete from customer where uid=2;
select *from customer;
select *from orders;

rollback;

update customer set uid=40 where uid =4;
update customer set uid=20 where uid=2;

# on update cascade

alter table  orders drop foreign key orders_ibfk_1;
alter table orders drop key userid;

alter table orders add foreign key(userid) references customer(uid)
on delete cascade on update cascade;

