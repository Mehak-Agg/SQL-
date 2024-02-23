/*-> Aliases <-*/
--can be use to create a temporary name for columns or tables.

--Types of aliases (are used to make column headings in query outpuut easier to read.
                   --[Specially with functions and column concatenation])

select  * from employee_info;

select empSalary from employee_info;

select empSalary as Employee_Salary from employee_info;
select empSalary as 'Employee Salary' from employee_info;

--Aliases for all the column...
select emp_Id as 'Employee ID',empName as 'Employee Name',empSalary as 'Employee Salary',job as 'Profile', 
deptId as 'Department ID' from employee_info;
