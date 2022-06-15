CREATE TABLE [dbo].[Users]
(
	[UserID] INT NOT NULL PRIMARY KEY, 
    [UserLogin] NCHAR(256) NULL, 
    [UserDatabase] NCHAR(256) NULL, 
    [databasePrincipalID] INT NULL
)
