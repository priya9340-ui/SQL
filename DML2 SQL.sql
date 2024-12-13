create database office;
use office;

create table employes (Eid int, Ename varchar(20), d_o_j date, salary decimal(10,3));
 # single record
 insert into employes (Eid, Ename, d_o_j, salary) values
 (101, "ABC", "2004-04-17", 45000); 
 
 select *from employes;
 
 # multiply record
 
 insert into employes (Eid, Ename, d_o_j, salary) values
 (102, "WHF", "2005-04-17", 540000),
 (103, "hgF", "2005-04-17", 540000),
 (104, "xxF", "2005-04-17", 540000);
 
 # extansion record
 
 insert into employes set
 Eid=105,
 Ename="mnb",
 d_o_j="2001-08-27",
 salary=44000;
 
 update employes set Ename="xyz"
 where Eid=103;
  
  set sql_safe_updates=0;
  
 #delete
 #delete from tablename where cloumnname=datavalue;
 
 delete from employes where Eid=104;
 start transaction;
 delete from employes;
 rollback; 
 
 select *from employes;
 
 alter table employes add column mobile varchar(20);
 alter table employes add column department varchar(20);
 
 update  employes set department="DA";
 
 update employes set mobile="+919993512904"
 where Eid=103;
 
 
 
 
 