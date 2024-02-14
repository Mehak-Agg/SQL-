create database employee_DB;

Use employee_DB;

create table employee_info
(
	emp_Id integer primary key,
	empName varchar(20) not null,
	empSalary decimal(10,2) not null,
	job varchar(20),
	phone varchar(10) unique,
	deptId integer not null
);

drop table employee_info;

create table department_info
(
	deptId integer not null,
	deptName varchar(20) not null,
	deptLocation varchar(50)
);

/*INSERT*/

insert into employee_info values (01,'Adam',25000,'Jr. Developer','9879879879',20);

insert into employee_info values (02,'Smith',38000,'Tester','7878787878',20);

insert into employee_info values (03,'Mike',45000,'Designer','7777777777',10);

insert into employee_info values (04,'Steve',12000,'Tester','1234567890',10);

insert into employee_info values (05,'James',68000,'CEO','5544332211',30);

insert into employee_info values (06,'Brain',72000,'Accountant','8787878787',20);


/*SELECT*/

select * from employee_info;

select empName,empSalary from employee_info;

/*UPDATE*/

update employee_info 
set empSalary=empSalary+1000;

update employee_info
set job='Tester'
where empName='Smith';

update employee_info
set phone='7878787878' , deptId=20
where emp_Id=2;

/*DELETE*/

delete from employee_info 
where deptId=10;

delete from employee_info;

/*-> ORDER BY CLAUSE <-*/

select * from employee_info
order by empSalary;

select * from employee_info
order by empSalary desc;

select empName from employee_info
order by empName;

select empName from employee_info
order by empName desc;

