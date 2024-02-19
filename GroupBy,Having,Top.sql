use employee_DB

/*GroupBy Clause...*/
select * from employee_info;
insert into employee_info values(7,'Ricky',100000,'CEO','7894561230',30);

select deptId from employee_info group by deptId;

select deptId, sum(empSalary) as TotalSalaryPerDept from employee_info 
group by deptId;

select deptId, min(empSalary) as MinSalaryPerDept from employee_info 
group by deptId;

select deptId, max(empSalary) as MaxSalaryPerDept from employee_info 
group by deptId;

select deptId, avg(empSalary) as AverageSalaryPerDept from employee_info 
group by deptId;

/*Having Clause...*/
select deptId, SUM(empSalary) as TotalSalary from employee_info
group by deptId 
having deptId=20;

select deptId, SUM(empSalary) as TotalSalary from employee_info
where deptId=20 group by deptId;

select deptId, SUM(empSalary) as TotalSalary from employee_info
group by deptId 
having SUM(empSalary)>100000;

select deptId, SUM(empSalary) as TotalSalary from employee_info
group by deptId 
having SUM(empSalary) between 10000 and 130000;

/*TOP Clause...*/
select top(3) empSalary from employee_info
order by empSalary desc;

select top(3) * from employee_info
order by empSalary;


