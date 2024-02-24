/*-> Joins <-*/
-- used to retrieve data from multiple tables(Atleast 2 table required and atmost 4 tables that it for very advance level)
/*Types of joins:-:
                   1)Inner Join/Equi Join/Natural Join/Simple Join
				   2)Outer Join:
				                a)Left Outer Join
								b)Right Outer Join
								c)Full Outer Join
				   3)Cross Join*/
-- To perform join on 2 tables there must be atleast 1 common column with same values, the name can be different

/*Inner Join: It is one of the most commonly used joins in SQL Server.
              It return all rows from multiple where the join condition is satised*/

create database company_DB;
use company_DB;

create table Employee
(
	Emp_ID int primary key,
	Emp_Name varchar(20) not null,
	Emp_Salary decimal(10,2),
	Emp_DeptID int not null
);

Alter table Employee alter column Emp_DeptID varchar(10);

insert into Employee values(1111,'Steve',35000,'D1'),
                           (1112,'Adam',28000,'D2'),
						   (1113,'John',50000,'D3'),
						   (1114,'Mike',45000,'D2'),
						   (1115,'Peter',60000,'D1');

delete from Employee 
where Emp_ID=1115;

-- Here we have addded the value in the table to see the result of the left outer join...
insert into Employee values(1115,'Peter',60000,'D5');

select * from Employee;

create table Department
(
	Dept_ID varchar(10),
	Dept_Name varchar(20),
	Dept_Location varchar(20)
);

insert into Department values ('D1','Development','California'),
                              ('D2','Marketing','Mumbai'),
							  ('D3','Account','New York'),
							  ('D4','Management','Sydney');

select * from Department;
insert into Department values ('D6','Testing','New Delhi');

select Emp_ID,Emp_Name,Emp_Salary,Dept_Name,Dept_Location
from Employee inner join Department
on Employee.Emp_DeptID = Department.Dept_ID;

--Using aliases in thne query as the name of the table...
select e.Emp_ID,e.Emp_Name,e.Emp_Salary,d.Dept_Name,d.Dept_Location
from Employee e inner join Department d
on e.Emp_DeptID = d.Dept_ID;

/*Left Outer Join: return all rows from the left-hand table and records in the right-hand with matching values*/
--NOTE -:> The records without matching values are replaced with NULLs in the respective columns.

select Emp_ID,Emp_Name,Emp_Salary,Dept_Name,Dept_Location
from Employee left outer join Department
on Employee.Emp_DeptID = Department.Dept_ID;

--Using aliases in the query as the name of the table...
select e.Emp_ID,e.Emp_Name,e.Emp_Salary,d.Dept_Name,d.Dept_Location
from Employee e left outer join Department d
on e.Emp_DeptID = d.Dept_ID;

/*Right Outer Join: return all rows from the right-hand table and records in the left-hand table with matching values.*/
--NOTE -:> The records without matching values are replaced with NULLs in the respective columns.

select Emp_ID,Emp_Name,Emp_Salary,Dept_Name,Dept_Location
from Employee right outer join Department
on Employee.Emp_DeptID = Department.Dept_ID;

--Using aliases in the query as the name of the table...
select e.Emp_ID,e.Emp_Name,e.Emp_Salary,d.Dept_Name,d.Dept_Location
from Employee e right outer join Department d
on e.Emp_DeptID = d.Dept_ID;

/*If we switch the table sequence then in right outer join we will get the same result as of left outer join
  LIKE:-:
		select Emp_ID,Emp_Name,Emp_Salary,Dept_Name,Dept_Location
		from Employee left outer join Department
		on Employee.Emp_DeptID = Department.Dept_ID;

		                 -> OR <-

        select Emp_ID,Emp_Name,Emp_Salary,Dept_Name,Dept_Location
		from Department right outer join Employee
		on Employee.Emp_DeptID = Department.Dept_ID;
*/

/*Full Outer Join: return all the rows from both left-hand and right-hand table with matching vales.*/
--It give the result of both the left outer join an right outer join...
--In this first it will form left outer join then right outer join...
--NOTE -:> The records without matching values are replaced with NULLs in the respective columns.

select Emp_ID,Emp_Name,Emp_Salary,Dept_Name,Dept_Location
from Employee full outer join Department
on Employee.Emp_DeptID = Department.Dept_ID;

--Using aliases in the query as the name of the table...
select e.Emp_ID,e.Emp_Name,e.Emp_Salary,d.Dept_Name,d.Dept_Location
from Employee e full outer join Department d
on e.Emp_DeptID = d.Dept_ID;

select Emp_ID,Emp_Name,Emp_Salary,Dept_Name,Dept_Location
from Department full outer join Employee
on Employee.Emp_DeptID = Department.Dept_ID;

