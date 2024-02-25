use company_DB;

select * from Department;
select * from Employee;

/*-> Subquery:- A query within another SQL query and embedded within WHERE clause. 
                It must be enclosed within parenthesis()
				It can be used with the SELECT, INSERT, UPDATE and DELETE statements along with the comparison operators.
				It can have only one column in SELECT statement.*/
-- In subquery, we must start from the last part of the query as it will make it easy to write and identify the result of entire query 

-- Q1. Display name,salary of the employees whose salary is greater than Mike's salary
/* Here, we have to return the result the employee who have salary greater then MIke so first we will find the salary of mike 
   that will be :-  select emp_salary from employee where emp_name ='Mike'; this will be the inner query which will return the return of mike's salary
   then the other part of the query is to find the employee whose salary is greater than mike's salary 
   that will be :-  select emp_name,emp_salary from employee where emp_salary > subquery */

select Emp_Name, Emp_Salary from Employee
where Emp_Salary > (select Emp_Salary from Employee 
                    where Emp_Name='Mike');

-- Q2. Display name,salary of the employees whose salary is greate than Adam's salary and deptno same as Adam's deptno.
/* Here, we have to return the result of that employee who has salary greate than Adam and work in adam' department itself
   that will be :-  select emp_salary from employee where emp_name = 'Adam' And emp_deptId = (select emp_deptid from employee where emp_name ='adam'); This will be the inner query which will return the department ID and salary of Adam
   then other part of the query is to find that employee whose salary is greater salary and belong to the same department
   that will be :-  select emp_name, emp_salary from employee where emp_salary > subquery */

select Emp_Name, Emp_Salary from Employee
where Emp_Salary > (select Emp_Salary from employee where Emp_Name='Adam') and 
      Emp_DeptID = (select Emp_DeptID from Employee where Emp_Name='Adam');

-- Q3. Display the employee information whose department is located at New York.
/* Here, we have to return the result of that employee who is located in the New York 
   As, the LOcation is in the Department table and we need the dept_ID so to access or get the result
   that will be :-  select dept_ID from department where dept_location = 'New York';
   then the other part of the query is to get all the information from the employee table of that employee who has the same output as we get from the subquery
   that will be :-  select * from employee where dept_ID = subquery*/

select * from Employee
where Emp_DeptID = (select Dept_ID from Department 
                    where Dept_Location = 'New York');