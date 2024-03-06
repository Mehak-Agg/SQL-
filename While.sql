/*WHILE:-1)The while loop statement is a control-flow statement that 
           allows us to execute a statement block repeatedly as long as specified condition is TRUE.
		 2)The execution of statements in the while loop can be controlled from 
		   inside the loop with the BREAK and CONTINUE keywords.

		   SYNTAX:-:
		            while condition
					begin
					     {SQL statements or statement block}
					end
*/
use company_DB;

select * from Employee;

begin 
	while (select MIN(Emp_Salary) from Employee) < 35000
	begin
		update Employee 
		set Emp_Salary+=10000;
		print 'Salary Updated';

		select * from Employee;
		
		if (select MIN(Emp_Salary) from Employee) >= 35000
		print 'Min Salary is greater or equal to 35000';
		break;
	end
end
