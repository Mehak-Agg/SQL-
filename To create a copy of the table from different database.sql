/*To create a copy of the table from different database*/

create database Sample_Emp_DB;

use Sample_Emp_DB;

select * into employee_details
from employee_DB.dbo.employee_info;

select * from employee_details;