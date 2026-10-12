use Institute;

Create table Staff(staff_id int , first_name varchar(10), last_name varchar(10), DOB date , dept_id int);

Create table Department(dept_id int , dept_name varchar(10), dept_location varchar(15));

desc staff;

desc department;

alter table staff add Location varchar(20); /* to add single column */

alter table staff add Joining_year int; 

alter table staff add age int , add contact_no int(10); 

alter table staff modify first_name text;

alter table staff drop column contact_no;

desc staff;

alter table staff modify Location varchar(25);

alter table staff add primary key(staff_id);

alter table department add primary key(dept_id);

desc staff;

desc department;

alter table department drop primary key;

alter table department add primary key(dept_id);

desc department;

alter table staff add foreign key(dept_id) references department(dept_id);

desc staff;

alter table staff add constraint FK_staff_department foreign key(dept_id) references department(dept_id);

desc staff;


alter table staff rename staff1;

desc staff1;

rename table staff1 to staff;

alter table staff rename


