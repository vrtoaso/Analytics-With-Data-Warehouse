CREATE TABLE [dbo].[UserMapping]
(
	[UserName] NCHAR(10) NOT NULL, 
    [GroupName] NCHAR(10) NULL, 
    [DepartmentCode] NCHAR(10) NULL, 
    [DBUserName] NCHAR(10) NULL, 
    [databasePrincipalID] INT NULL 
)
