/*Alter(Modify) Stored Procedure: 1) We can modify a previously created stored procedure.
                                  2) To perform modification, we need to use ALTER command
								  3) BY this ALTER command we cannot rename the stored procedure

				SYNTAX::
				        ALTER PROCEDURE proc_name
						AS
						BEGIN
						     {SQL STATEMENT OR STAEMENT BLOCK}
						END
*/

--Modify an existing simple stored procedure proc_allEmployeesDetails.

USE [company_DB]
GO
/****** Object:  StoredProcedure [dbo].[proc_allEmployeeDetails]    Script Date: 19-02-2024 19:10:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER procedure [dbo].[proc_allEmployeeDetails]
as
begin
	select e.Emp_Name,e.Emp_Salary,d.Dept_Location from Employee e
	inner join Department d
	on e.Emp_DeptID=d.Dept_ID;
end

exec proc_allEmployeeDetails;
go


--Modify an existing parameterized stored procedure proc_Employee_Details_Location_Wise.

ALTER procedure [dbo].[proc_Employee_Details_Location_Wise](@location varchar(50))
as 
begin
	select e.Emp_Name,e.Emp_Salary,d.Dept_Location,d.Dept_Name from Employee as e
	inner join Department as d
	on e.Emp_DeptID= d.Dept_ID
	where Dept_Location=@location;
end

exec proc_Employee_Details_Location_Wise @location='Mumbai';
