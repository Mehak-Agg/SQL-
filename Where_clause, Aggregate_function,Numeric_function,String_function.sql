use employee_DB

/*WHERE CLAUSE*/

select * from employee_info
where deptId=10;

select * from employee_info
where job='Designer';

update employee_info
set empSalary=empSalary+5000
where deptId=20;

delete from employee_info
where deptId=30;

insert into employee_info values(05,'Bob',28000,'Admin','4564564564',30);

/*Aggregate functions or gruop functions*/

select SUM(empSalary) from employee_info;

select AVG(empSalary) from employee_info;

select MIN(empSalary) from employee_info;

select Max(empSalary) from employee_info;

select COUNT(empName) from employee_info;

/*-> Numeric Functions <-*/

/*ABS() function:- Its a function which return the position value only...*/
select ABS(-10);

/*CEILING() function:- Its a function which provide the upper value of the number...*/
select CEILING(76.54);

/*FLOOR() function:- Its a function which give the lower value of the number*/
select FLOOR(76.54);

/*SIGN() function*/
select SIGN(10),SIGN(-15),SIGN(0);

/*Square() funtcion*/
select SQUARE(5);

/*Square Root() function*/
select SQRT(64);

/*PI() function*/
select PI();

/*Trignometric Functions*/
select COS(30),SIN(90),TAN(45);

/*Exponential function-: exp() basically it is the e power calculator */
select EXP(1);

/*-> String Function <-*/

/*Len() function */
select LEN('Mehak');

select empName,LEN(empName) from employee_info;

/*Upper() function*/
select UPPER('This is sql language');

/*Lower() function*/
select empName,LOWER(empName) from employee_info;

/*Trim() function:- Used to remove the extra space from the text
 RTRIM() function:- To remove space from right hand side_
 LTRIM() function:- To remove space from left hand side*/

 select LTRIM('           anystring'),RTRIM('anystring        ');

 /*Substring() function*/
 select SUBSTRING('Microsoft',6,9);

 /*Replace() function*/
 select REPLACE('Microsoft','micro','Major');

 /*Replicate() function*/
 select replicate('Dummy ',5);



