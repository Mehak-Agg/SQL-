/*IF...ELSE:- It is a control-flow statement that allows us to execute or skip a statement block based on a specified condition

			SYNTAX:-:
					 IF condition
					 BEGIN
					       {SQL statements or statement block}
					 END
			
			NOTE->-> If the condition contains a SELECT statement, then it must be enclosed in parentheses
			
			SYNTAX:-:
			         IF CONDITION
					 BEGIN
					       {SQL statements or statement block}
					 END

					 ELSE
					 BEGIN
					       {SQL statements or statement block}
					 END
					 */


-- IF statement
begin
	declare @Salary decimal;
	select @Salary= AVG(Emp_Salary) from Employee;
	select @Salary as 'Avg.Salary';

	if @Salary > 25000 -- condition
	begin
		print'Average salary is grater than 25000';
	end
end	

-- IF...ELSE statement
begin
	declare @Salary1 decimal;
	select @Salary1= AVG(Emp_Salary) from Employee;
	select @Salary1 as 'Avg.Salary';

	if @Salary1 > 50000 -- condition
	begin
		print'Average salary is greater than 50000';
	end

	else
	begin
		print'Average salary is less than 50000 ';
	end
end	