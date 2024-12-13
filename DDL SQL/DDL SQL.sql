use sakila;
show tables;
desc actor;
#create Database dataname
create database Cybrom;

#use databasename
use Cybrom;
#create table
#create table tablename(columname1 datatype, columname2 datatype, columname3 datatype, columnameN datatype)
create table student (sid int, sname varchar (20), 
d_o_b date, fees decimal(10,2));

show tables;
desc student;

#rename
#syntax - rename table oldtable to newtable;
rename table student to stu;


desc stu;

#Alter;
#aad column to an existing sturcture/table;
#alter table tablename add columnname datatype;
alter table stu add column mobile varchar(20);

use cybrom;

desc stu;

#alter
#drop column form an existing structure.
#alter table tablename drop column columnname 
alter table stu drop column mobile;

#add column 
#alter  table tablename add column columnname datatype;

alter table stu add column mobile varchar(20);

# COLUMN rename
# alter table tablename rename column oldcolumn to newcolumn 

alter table  stu rename column sname to studentname;

desc stu;

# chnage datatype
#alter table tablename modify columnname newdatatype

alter table stu modify sid tinyint;

alter table stu modify fees decimal(28,8);

#drop table tablename
drop table stu;

#drop database databasename 
drop database cybrom;

desc stu;
 
 use sakila;
 desc

