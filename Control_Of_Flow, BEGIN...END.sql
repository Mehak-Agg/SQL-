-- -> CONTROL OF FLOW <-
/* 1) Transact-SQL (T-SQL) statements are executes in squential order (suppose, we have created three statements then, 
      first statement will run, followed by second, followed by third.)
   2) However, in many cases, we will want to intereupt this normal flow.
   3) T-SQL has keywords to control the order of execution.
   
   KEYWORDS:-:
              1) BEGIN...END	2) IF...ELSE	3) WHILE		4) BREAK	5) CONTINUE
			  6) GOTO			7) RETURN		8) TRY...CATCH  9) THROW	10)WAITFOR*/

/*BEGIN...END -: *They are used to group multiple lines into one statement block.
                 *In addition, BEGIN...END can be nested. 
				  IT simply means that we can place a BEGIN...END statement within another BEGIN...END statement

				  SYNTAX:-:
				          BEGIN
								{SQL statemnet or statement Block}
						  END

*/

use company_DB;

select * from Employee;
go

--This is simple BEGIN...END Block
begin

	declare @Name varchar(20),@Salary integer,@DeptID varchar(10)='D3';

	select @Name=Emp_Name, @Salary=Emp_Salary from Employee
	where Emp_DeptID = @DeptID;

	select @Name as Name, @Salary as Salary;

end

--This is nested BEGIN...END Block
begin

	declare @Name1 varchar(20), @Salary1 integer, @DeptID1 varchar(10)='D2';

	select @Name1=Emp_Name, @Salary1=Emp_Salary from Employee
	where Emp_DeptID = @DeptID1;

	select @Name1 as Name, @Salary1 as Salary;

	begin
		print 'Department ID:'+@DeptID1;
	end

end

