/*-> Script <-*/
-----------------
/*1)A SQL script is a collection of structured query language (SQL) commands saved in a text file. 
  2)SQL scripts can perform a variety of tasks on a database, such as: 
    Creating tables, Inserting data, Querying records, Updating values, Editing database objects
  3)Its extension is .sql
  4)Just by creating the script we can easy copy any database and we need not to write and execute all the sql commands again 
    in order to create the new database with existing information of table and its objects... 
  5)As, we can see that there is go statement written after every some statement it define the block of the statement that is the single part
    Its is kind of batch...*/

USE [Sample_company_DB]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 16-02-2024 11:59:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department]
(
	[Dept_ID] [varchar](10) NULL, 
	[Dept_Name] [varchar](20) NULL,
	[Dept_Location] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 16-02-2024 11:59:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee](
	[Emp_ID] [int] NOT NULL,
	[Emp_Name] [varchar](20) NOT NULL,
	[Emp_Salary] [decimal](10, 2) NULL,
	[Emp_DeptID] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Emp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Department] ([Dept_ID], [Dept_Name], [Dept_Location]) VALUES (N'D1', N'Development', N'California')
INSERT [dbo].[Department] ([Dept_ID], [Dept_Name], [Dept_Location]) VALUES (N'D2', N'Marketing', N'Mumbai')
INSERT [dbo].[Department] ([Dept_ID], [Dept_Name], [Dept_Location]) VALUES (N'D3', N'Account', N'New York')
INSERT [dbo].[Department] ([Dept_ID], [Dept_Name], [Dept_Location]) VALUES (N'D4', N'Management', N'Sydney')
INSERT [dbo].[Department] ([Dept_ID], [Dept_Name], [Dept_Location]) VALUES (N'D6', N'Testing', N'New Delhi')
GO
INSERT [dbo].[Employee] ([Emp_ID], [Emp_Name], [Emp_Salary], [Emp_DeptID]) VALUES (1111, N'Steve', CAST(35000.00 AS Decimal(10, 2)), N'D1')
INSERT [dbo].[Employee] ([Emp_ID], [Emp_Name], [Emp_Salary], [Emp_DeptID]) VALUES (1112, N'Adam', CAST(28000.00 AS Decimal(10, 2)), N'D2')
INSERT [dbo].[Employee] ([Emp_ID], [Emp_Name], [Emp_Salary], [Emp_DeptID]) VALUES (1113, N'John', CAST(50000.00 AS Decimal(10, 2)), N'D3')
INSERT [dbo].[Employee] ([Emp_ID], [Emp_Name], [Emp_Salary], [Emp_DeptID]) VALUES (1114, N'Mike', CAST(45000.00 AS Decimal(10, 2)), N'D2')
INSERT [dbo].[Employee] ([Emp_ID], [Emp_Name], [Emp_Salary], [Emp_DeptID]) VALUES (1115, N'Peter', CAST(60000.00 AS Decimal(10, 2)), N'D5')
GO