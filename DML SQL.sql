create database cybrom;
use cybrom;

create table student(sid int, sname varchar(20), d_o_b date, fees decimal(10,3));
 
# single record insertion
# syntax
# insert into tablename
# (columnname1, columnname2, columnname3,........columnname N) values 
# (value1, value2......... value N);

insert into student (sid, sname, d_o_b, fees)
value (101, "xyz", "1992-07-17", 55000);

select *from student;

# Multiple record

insert into student(sid,sname, d_o_b,fees)
value
(102,"abc","1990-05-27",45000),
(103,"fgh","1995-12-12",35000),
(104,"psw","1997-04-17",12003);

# extension based insertion

insert into student set
sid=105,
sname="wef",
d_o_b="2010-09-01",
fees=56000;

# update tablename set columnname="newvalue"
# where columnname=datavalue;
update student set sname="cybrom"
where sid=103;

set sql_safe_updates=0;
select *from student;



# truncate table tablename
truncate table student;
select * from student;

use cybrom;

insert into student (sid, sname, d_o_b, fees)
value (101, "ABC", "2004-02-10", 40000),
(102,"XYZ", "2004-04-07", 45000),
(103, "WEF", "2002-07-17", 55000),
(104, "hmnt", "1998-07-17", 75000);

select *from student;

