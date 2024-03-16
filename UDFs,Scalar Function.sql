/*User-Defined Functions(UDFs)-: *They are the routines that accept parameters, perform as action (complex calculation, in which we can transfer or manipulate the data)
                                  and return the result of that action as a value. The return value can either be a single scalar value or a result set.
                                 *It always returns a value.
								 *They only have input parameters for it.
								 *It cannot return multiple result sets.
								 *Error handling is restricted in a user-defined function. A UDF does not support TRY...CATCH, @ERROR or RAISERROR.
								 *SET statements are not allowed in a user-defined function.
								 *UDFs cannot call a stored procedure.
								 *UDFs can be nested. UDFs can be nested up to 32 levels.
  Why UDFs? 
            1)Modular Programming :-: *Create the function once,
			                          *Store it in the database,
									  *Call it any number of times in our program
			2)Faster Execution :-: *Reduces the compilation cost of Transact-SQL code
			                        (UDFs does not need to be reparsed and reoptimized with each use resulting in much faster execution times...)
            3)Reduce Network Traffic :-: *Function can be invoked in the WHERE clause to reduce the number of rows sent to the client
  Types->
         1)System Function :-: SQL Server provides many system functions that we can use to perform a variety of opeartions.They cannot be modified
		 2)Scalar Function :-: It returns a single data value of the type defined in the RETURNS clause.
		 3)Table-Valued Function :-: It returns a table data type. 
*/

--> Scalar Function:-:
/*                      SYNTAX:- create function function_name(parameter datatype,...)
                                 returns return_datatype
								 [With <function_option>[,...]]
								 [As]
								     BEGIN
									       function_body
										   return scalar_expression
									 END;
*/

use company_DB;
go

create function salary (@name varchar(20))
returns decimal 
begin
	 declare @sal decimal

	 select @sal = Emp_Salary from Employee
	 where Emp_Name= @name;

	 return @sal;
end;
go

select dbo.salary('Mike') as 'Employee Salary';

select * from Employee;