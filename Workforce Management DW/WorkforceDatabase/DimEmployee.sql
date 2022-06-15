CREATE TABLE [dbo].[DimEmployee]
(
	[EmployeeSK] INT NOT NULL PRIMARY KEY, 
    [EmployeeName] NVARCHAR(30) NULL, 
    [EmployeeNumber] INT NULL, 
    [MarriedID] TINYINT NULL, 
    [MaritalStatusID] TINYINT NULL, 
    [GenderID] TINYINT NULL, 
    [EmpStatusID] TINYINT NULL, 
    [DeptID] TINYINT NULL, 
    [PerfScoreID] TINYINT NULL, 
    [Age] DATE NULL, 
    [PayRate] FLOAT NULL, 
    [State] NCHAR(2) NULL, 
    [Zip] INT NULL, 
    [DOB] DATE NULL, 
    [MaritalDesc] NCHAR(10) NULL, 
    [CitizenDesc] NCHAR(10) NULL, 
    [HispanicLatino] NCHAR(3) NULL, 
    [RaceDesc] NCHAR(20) NULL

)
