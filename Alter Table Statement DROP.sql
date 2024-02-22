/*Creating the backup of the table...*/
use employee_DB;
select * into emp_info_bkup from employee_DB.dbo.employee_info;
select * from emp_info_bkup;

select * into emp_detail_bkup from employee_DB.dbo.emp_detail;
select * from emp_detail_bkup;

select * into company_bkup from employee_DB.dbo.company_info;
select * from company_info;

/*-> Alter Table Statement <-*/
-- remove a column or multiple columns...
alter table emp_info_bkup drop column phone;
alter table emp_info_bkup drop column job,deptId;

-- Removes constraint
-- Removes constraints an columns
alter table emp_detail drop constraint pID_unique_key;

alter table company_info drop constraint proId_pk,
column revenue,projectId;

/*Changes the data type of a column...*/
-- changes a column of a table from one data type to another

create table customer(ACCNO INT,CUST_NAME CHAR(100));

ALTER TABLE CUSTOMER ALTER COLUMN CUST_NAME VARCHAR(100);

--CHANGING THE SIZE OF THE COLUMN
--change (increase or decrease) the size of a column.
alter table customer alter column cust_name varchar(50);--the size can be decrease only when the table will be empty...

select * from customer;

insert into customer values(123456,'Mehak Aggarwal');
/* String or binary data would be truncated in table 'employee_DB.dbo.customer', column 'CUST_NAME'. Truncated value: ''.
   The statement has been terminated... */ -- The table has data in it and the size will not be decrease than 14... 
alter table customer alter column cust_name varchar(10);
-- We can easily increase the size to any data type...
alter table customer alter column cust_name varchar(60);

/*Changing the data type and size of a column*/
--change the data type as well as the size of a column at same time
alter table customer alter column cust_name char(50);
