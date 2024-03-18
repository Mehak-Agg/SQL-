/*Table-Valued Function :-: User-defined table-valued functions return a table data type.
                            A table-valued function accepts zero or more parameters.
				
		Types->
		       1) Inline Table-valued Function- *There is no function body (i.e. there is no need for a BEGIN-END block in an Inline function).
			                                    *The table is the result set of a single SELECT statement.

						SYNTAX:-: CREATE function function_name(parameter datatype...)
						          RETURNS return_datatype
								  AS
								  RETURN statement

               2) Multi Table-valued Function- *It contains multiple SQL statements enclosed in BEGIN-END blocks.
			                                   *The return value is declared as a table variable.
											    The return statement is without a value and the declared table variable is returned.

						SYNTAX:-: CREATE function function_name(parameter datatype...)
						          RETURNS @table_variable TABLE
								  (column_1 datatype,column_2 datatype,...)
								  AS
									BEGIN
										  SQL-statement(s)
										  RETURN
									END;
*/

use company_DB;
go

--Create a function to get employee information by passing employee salary...
create function get_Employee(@salary decimal)
returns table
as
return select * from Employee where Emp_Salary=@salary;
go

--Execute the inline table-value function...
select * from get_Employee(60000);--Here,we have used the function name instead of the table name to execute the function...
go


--Create a function to get list of employees by passing department id
create function get_Emp_Info(@id varchar(10))
returns @Result table
(Id int, Name varchar(20), Salary decimal, Dept_ID varchar(20))
as
begin
insert into @Result
select * from Employee where Emp_DeptID=@id;
return
end;
go

--Execute the multi table-value function...
select * from get_Emp_Info('D2');


select * from Employee;
