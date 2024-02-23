/* DATE & TIME FUNCTION
	1. GETDATE()/getdate(),current_timestamp,sysdatetime():->It tells the date and time of the system
	2. datename():-> Tell the different things related to the date
	3. datediff():-> Tells the time stamp till the present date 
	4. dateadd():-> Show the date after some specific time (future prediction)*/

select GETDATE() as TodayDate;

select SYSDATETIME() as todayDate;

select current_timestamp as todayDate;

select DATENAME(MONTH,CURRENT_TIMESTAMP) as 'Month';

select DATENAME(YEAR,CURRENT_TIMESTAMP) as Year;

select DATENAME(HOUR,CURRENT_TIMESTAMP) as Hour;

select DATEDIFF(YEAR,'December 4 2001',CURRENT_TIMESTAMP) as 'AgeInYear';

select DATEDIFF(MONTH,'December 4 2001',CURRENT_TIMESTAMP) as 'AgeInMonths';

select DATEDIFF(YEAR,'December 4 2001','January 12 2024') as 'AgeInYear';

select DATEADD(YEAR,100,CURRENT_TIMESTAMP) as '100YearsFromNow';

select DATEADD(MONTH,10,CURRENT_TIMESTAMP) as '10MonthsFromNow';
