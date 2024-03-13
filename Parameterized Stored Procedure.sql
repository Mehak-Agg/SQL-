/*Parameterized Stored Procedure: In this we will pass the parameter along with stored procedure created.
                                  This make the dynamic stored procedure.

  STNTAX::
          create procedure procedure_name (parameter list) // at least one 
		  as
		  begin
			   {SQL STATEMENT OR STATEMENT BLOCK}
		  end
*/

--Create a stored procedure that returns all the employees whose department location is Munmbai

exec proc_allEmployeeDetails;
go

use company_DB;
go

create procedure proc_Employee_Details_Location_Wise(@location varchar(50))
as 
begin
	select * from Employee as e
	inner join Department as d
	on e.Emp_DeptID= d.Dept_ID
	where Dept_Location=@location;
end
go

exec proc_Employee_Details_Location_Wise @location= 'Mumbai';