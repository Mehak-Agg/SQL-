/*STORED PROCEDURE: Its a group of one or more T-SQL statements.
                    It can be stored in the database
					
					It accept input parameters and return multiple values.
					It contain programming statements that perform operations in the database.
					It return a status value to a calling program to indicate success or failure.
		
		Benefits:- 1) Reuse of code
		           2) Easy to maintain
				   3) Improve preformance
				   4) Strong security
				   5) Reduce server/client network traffic
				   
		Types:
		      System-: Physically stored in the internal RESOURCE database.
			  User-Defined-: It can created in a user-defined database or in all system databases except the RESOURCE database.
			  Temporary-: A form of user-defined procedure. 
			              The temporary procedures are like a permanent procedure, except temporary procedures are stored in tempdb.

		CREATE
		MODIFY
		DELETE
		EXECUTE
		GRANT PERMISSION
		RENAME       
		
		-> Two ways to create(or define) a stored procedure
		   1) Stored Procedure without Prameter(Simple Stored Procedure)
		   2) Stroed Procedure with Parameter

		   SYNTAX::
		   CREATE PROCEDURE procedure_name
		   AS
		   BEGIN
		       {SQL STAEMENT OR STATEMENT BLOCK}
		   END
*/

-- Creation of Stored Procedure
-- User-Define Stored Procedure
use company_DB;
go

create procedure proc_allEmployeeDetails
as
begin
	select * from Employee;
end
go

--Execution of the stored procedure create 
execute proc_allEmployeeDetails;
exec proc_allEmployeeDetails;