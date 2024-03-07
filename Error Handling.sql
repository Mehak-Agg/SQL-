--Error Handling
/*Try...Catch:- 1) It implements error handling for T-SQL.
                2) It is similar to the exception handling in the object-oriented programming languages such as C++, Java, JavaAcript, etc
				3) A group of T-SQL statements can be enclosed in TRY block.
				4) If the statements between the TRY block complete without an error,the statemens between the CATCH block will not execute.
				   However, if any statement inside the TRY block causes an exception,the contol transfers to statements in the CATCH block.
				5) TRY...CATCH run in combination. Its not that if we write TRY the code will give error we cannot handle it.
				6) Any group of Transact-SQL statements in a batch or enclosed in a batch or enclosed in a BEGIN...END block.
				
				SYNTAX::
				        BEGIN TRY
						         {SQL STATEMENT THAT WE WANT TO BE EXECUTE}
						END TRY
						BEGIN CATCH
						          {SQL STATEMENT THAT WE WANT TO BE EXECUTE}
						END CATCH
				
				To retrieve the information about the error :<->:
				1) ERROR_MESSAGE(): returns the complete text of the generated error message.
				2) ERROE_NUMBER(): returns the number of the error.
				3) ERROR_LINE(): returns the line number inside the routine that caused the error.
				4) ERROR_PROCEDURE(): returns the name of the stored procedure or trigger where the error occurred.
				5) ERROR_STATE(): returns the error state number.
				6) ERROR_SEVERITY(): returns the severity.
				
				NOTE: THESE FUNCTIONS RETURN NULL IF THEY ARE CALLED OUTSIDE THE SCOPE OF THE CATCH BLOCK...*/

--No Error code...
begin try
        select 100/5 as 'Division';
end try
begin catch
        select ERROR_MESSAGE() as 'Error_Message';
end catch

--Error code...
begin try
        select 100/0 as 'Division';
end try
begin catch
        select ERROR_MESSAGE() as 'Error_Message';
end catch

--With other error function()
begin try
        select 100/0 as 'Division';
end try
begin catch
        select ERROR_MESSAGE() as 'Error_Message',ERROR_LINE() as 'Error_Line',ERROR_NUMBER() as 'Number of Error';
end catch

--Error function using outside the catch block
select ERROR_MESSAGE() as 'Error_Message',ERROR_LINE() as 'Error_Line',ERROR_NUMBER() as 'Number of Error';--It will give NULL
