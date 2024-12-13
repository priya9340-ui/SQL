use cybrom;

create table student1(sid int primary key,
sname varchar(20) not null,
age tinyint, city varchar(20) default "bhopal",
fees decimal(10,2), mobile varchar(20) unique,
check(age>18));

desc student1;

#remove primary key from an existing structure.
#alter table tablename drop primary key;
alter table student1 drop primary  key;
alter table  student1 modify sid int;


# remove not null from existing structure
# alter table tablename modife columnname datatype;
alter table student1 modify sname varchar(20);

#remove defualt from an existing structure
# alter table tablename modify columnname  datatype;
alter table student1 modify city varchar(20);

#remove check constraint fron an existing structure.
#alter table tablename drop constraint constraintname;
alter table student1 drop constraint student1_chk_1;

#remove unique key from an exiting structure;
#alter table tablename drop key uniquekeyname;
#alter table tablename drop index uniquekeyname;
alter table student1 drop key mobile;

desc student1;

#add primary key to an existing structure
alter table student1 add primary key(sid);

alter table student1 modify sname varchar(20) not null;

alter table student1 modify city varchar(20) default "bhopal";

alter table student1 add constraint check(age>18);

alter table student1 add unique(mobile);

alter table student1 drop index mobile;


desc student1;
