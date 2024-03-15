/*Rename a Stored Procedure...
  To remane the existing stored procedure, we need to use system procedure that is sp_rename
  
  SYNTAX::
          exec sp_rename 'existing stored procedure','new name of the stored procedure';
		  
  Drawbacks/Limitations: 1) Renaming a stored procedure does not change the name of the corresponding object name in the definition column of 
                            sys.sql_modules catalog view. To do that,we must drop and re-create the stored procedure with its new name.
						 2) Changing the name or defintion of a procedure can cause dependent objects to fail when the objects are not updated
						    to reflect the changes that have been made to the procedure.*/

use company_DB;
go
--Rename the stored procedure...
exec sp_rename 'proc_allEmployeeDetails','proc_displayEmployeeDetails';
go
--This shows all the stored procedure in that db...
select * from sys.sql_modules;
go

--Its better to create the new stored procedure instead of changing the name of the existing procedure...
create procedure proc_displayEmployeeDetails
as
begin
	select e.Emp_Name,e.Emp_Salary,d.Dept_Location from Employee e
	inner join Department d
	on e.Emp_DeptID=d.Dept_ID;
end;
