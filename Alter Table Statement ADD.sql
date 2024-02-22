/*-> Alter Table Statement <-*/
--adds a column without constraints that aloows null values...

use employee_DB

create table emp_detail(id int , name varchar(10));

select * from emp_detail;

alter table emp_detail add salary decimal;

insert into emp_detail values(1,'Ishwar',25000);

alter table emp_detail add phone varchar(10) null;

--adds a new column with constraint (unique,default,etc...)

alter table emp_detail add project_completed int not null default 5;

alter table emp_detail add projectId int null 
constraint pID_unique_key unique;

insert into emp_detail values(2,'Steve',50000,'9876543210',DEFAULT,4);

--adds more than one column with constraints defined with the new column...

create table company_info(id int);

alter table company_info
add revenue decimal(10,2) null,
projectId integer constraint proId_pk primary key;

select * from company_info;