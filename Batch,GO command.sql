/*-> BATCH:- A batch of SQL statements is a group of two or more SQL statements or a single SQL statement
             A batch of SQL statement can have:
			 >>> DDL statement
			 >>> DML statement
			 >>> DCL statemnet
		//Standard Types of Batches:-:
		                              1) Explicit Batch-:It is two or more SQL statements separated by semicolons(;)
									    ---------------- EG:insert into employee (emp_name,emp_salary) values('Brad',45000);
										                    insert into employee (emp_name,emp_salary) values('Joe',36000);
									  2) Procedure-: If a procedure contains more than one SQL statement, it will be considered to be a batch.
*/

/*GO COMMAND:- Go is not a T-SQL statement; it is a command recognized by SQL Server utilities.
               GO can be executed by an user. It requires no permissions.
			   It signals the end of a batch to the SQL Server utilities.
			   
			   SYNTAX::GO[count]//count is optional
			                      where, count is a positive integer. The batch will execute the specified number of times.*/

-- This is a single statement batch after go command there will be another batch... 
use Company_DB;
GO

-- This is two statement batch...
declare @Name varchar(20);--These statements are use a local variable. 
set @Name='Microsoft';--Therefore, all local variable declarations must be grouped in a single batch. 
select @Name as Name;--This is done by not having a Go command until after the last statement that references the variable.
GO

-- If we use the @Name variable outside the batch it will give the error...
select @Name;--It is showing the error must declare the scalar variable '@Name'...