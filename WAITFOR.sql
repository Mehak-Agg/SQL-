/*WAITFOR: Its a blocks the execution of a batch, stored procedure, or transaction until either a specified time or time interval elapses,
           or a specified statement modifies or returns at least one row.
		   
		   WAITFOR has two arguments:
		                             TIME-> the period of time to wait. time_to_pass.
									 DELAY-> the time (up to a maximum of 24 hours) at which the WAITFOR statement finishes.
		   
		   SYNTAX::
		           BEGIN
						WAITFOR TIME 'time_to_execute'
						{SQL STATEMENT OR STATMENT BLOCK}
				   END
		   where, time_to_execute can be specified either in a datetime data format, or as a local variable.
		   

		   SYNTAX::
		           BEGIN
				        WAITFOR TIME 'time_to_pass'
						{SQL STATEMENT OR STATEMENT BLOCK}
				   END
		   where, time_to_pass can be specified either in a datetime data format, or as a local variable.	
				   */

-- This is a EG of waitfor time
select GETDATE() as 'Current_Time'
go

begin
     waitfor time'13:29:00'
	 select * from company_DB.dbo.Employee;
end

select GETDATE() as 'Current_Time'
go


-- This is a EG of waitfor delay
select GETDATE() as 'Current_Time'
go

begin
     waitfor delay'00:00:20'
	 select * from company_DB.dbo.Employee;
end

select GETDATE() as 'Current_Time'
go