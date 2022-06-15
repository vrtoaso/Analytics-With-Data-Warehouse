CREATE TABLE [dbo].[FactJob]
(
	[JobKey] INT NOT NULL PRIMARY KEY, 
    [EmployeeSK] INT NOT NULL, 
    [ScoreSK] INT NOT NULL, 
    [SourceSK] INT NOT NULL, 
    [StatusSK] INT NOT NULL, 
    [ReasonSK] INT NOT NULL, 
    [DepartmentSK] INT NOT NULL, 
    [PositionSK] INT NOT NULL, 
    [PayRate] DECIMAL NOT NULL
)
