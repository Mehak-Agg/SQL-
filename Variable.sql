/*-> Working with variables <-
     In every programming language, variables are generally used to temporarily store values in memory.
	 T-SQL variables are created with DECLARE command followed by variable name preceded with @ symbol and data type
	 By default, the value of declared variable is NULL.

	 SYNTAX::
	          declare @variable_name datatype(size);
*/

/*-> Assign a value to variable <-
     Both the SET and SELECT command can assign the value to a variable.
	 SET can only set the value of one variable at a time.
	 SELECT command retrieve data from tables and assign multiple variables values with a single statement.
	 
	 SYNTAX::
	           set @variable_name=value;
			EG:set @salary = 30000;
			   select @variable_name= value, @variable_name= value;
			EG:select @name='Mehak',@age=22;
*/

/*-> Incrementind Variable <-
     With the increment variable feature, we can perform mathematical operations 
	 (addition, subtraction and multiplication) on the variable.
	 
	 SYNTAX::
	         set @number+=10;//@number = @number + 10
			 set @number-=10;//@number = @number - 10
			 set @number*=10;//@number = @number * 10
*/

use company_DB;

declare @name varchar(50);
set @name='Mehak';
select @name as Name;

declare @name1 varchar(20),@age int,@salary decimal(10,2)=20000;
select @name1='Sarika', @age = 45;
select @name1 as Name, @age as Age, @salary as Salary;

--Operator
declare @number int =100;
set @number+=10;
select @number as Number; 

declare @number1 int =100;
set @number1-=10;
select @number1 as Number1; 

declare @number2 int =100;
set @number2*=10;
select @number2 as Number2; 

--From the table 
select * from Employee;

declare @name1 varchar(20), @salary decimal(10,2);
select @name1=Emp_Name,@salary=Emp_Salary from Employee;
select @name1 as Name,@salary as Salary;
