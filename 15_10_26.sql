show databases;

create database User;

use user;

create table customer (custid int, custname varchar(15), city varchar(10), product varchar(15), price int);

desc customer;

insert into customer values (101 , 'jethalal', 'gujrat', 'mobile', 15000);
insert into customer values (102 , 'bhide', 'mumbai', 'mobile', 16000);
insert into customer values (103 , 'sodhi', 'punjab', 'mobile', 17000);
insert into customer values (104 , 'tarak', 'mp', 'mobile', 18000);

select * from customer;

alter table customer add primary key(custid);

select * from customer;

select custid, custname , city from customer;

select * from customer where custid = 101 or custid=103; -- or is used to show one and more id's at a time


create table clonetable as select * from  customer;

select * from clonetable;

drop table clonetable;

/* Where Clause */

select custname , city from customer;

select custname, city from customer where custid=101;

select custname, product , price from customer where price > 15000;

select * from customer where city='mp';


/* Sorting data using Order by sigle column */

select * from customer order by price;

select * from customer order by price desc;

/* Sorting data Order by multiple columns */

select * from customer order by price , city;

select * from customer order by city desc , price asc;
select * from customer order by price desc , city asc;

/* Single-row functions*/
/* Case Conversion functions*/

select upper(custname), lower(product) from customer where custid < 3;
/* uppercase & lower case function*/

select upper(custname), lower(product) from customer;

alter table customer add column lastname varchar(15);

select * from customer;

update customer set lastname='gada' where custid=101;
update customer set lastname='sharam' where custid=102;
update customer set lastname='verma' where custid=103;
update customer set lastname='joshi' where custid=104;

/* concat two column */

select concat (custname,' ', lastname) as FullName from customer;

/* use of substr and instr fuctions*/

select * from customer;

select substr(custname,1,0) from customer; 
select substr(custname,0,1) from customer; 
select substr(custname,1,3) from customer;

/* Instring query */

select instr(custname, 'a') as position from customer;

select substr(custname,1,2) as substring,
instr(custname,'j')as instring from customer;

select substr(custname,1,3), instr(custname, 'a')
from customer where custid<3;


 








