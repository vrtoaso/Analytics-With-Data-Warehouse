-- ======================================================================================
-- Create SQL Login template for Azure SQL Database and Azure SQL Data Warehouse Database
-- ======================================================================================

CREATE LOGIN <SQL_login_name, sysname, login_name> 
	WITH PASSWORD = '<password, sysname, Change_Password>' 
GO


-- ========================================================================================
-- Create User as DBO template for Azure SQL Database and Azure SQL Data Warehouse Database
-- ========================================================================================
-- For login <login_name, sysname, login_name>, create a user in the database
CREATE USER <user_name, sysname, user_name>
	FOR LOGIN <login_name, sysname, login_name>
	WITH DEFAULT_SCHEMA = <default_schema, sysname, dbo>
GO

-- Add user to the database owner role
EXEC sp_addrolemember N'db_owner', N'<user_name, sysname, user_name>'
GO

--create sql auth login from master
create login ecalkins
with password = 'PassWord123!'

--add user

create user ecalkins
from login ecalkins
with default_schema = dbo;

select * from employee
select * from users
select DATABASE_PRINCIPAL_ID('ecalkins')



select * from employee e
join department d on e.department = d.deptdesc /*change to deptcode*/
join users u on d.DeptID = u.departmentcode /*change to deptcode*/
where u.username = 'ecalkin'

--Provision a user in SSRS

========================================================================================

/* The safest way to do this is add a user using the Reporting Services interface, then use queries to find out which IDs are assigned. Use those IDs as a template for your own.

The following queries ought to get you where you want to go. I would suggest creating your policies and roles first, then use the pre-existing uniqueidentifiers found in these tables to put it all together in the PolicyUserRole table. */

--Get your role IDs
select * from roles

--Get your policy IDs
select * from policies

--See your UserIDs
select * from users

--This will return the Sid you need for the users table
select suser_sid('The_userID')

--This ties them all together
select * from policyUserRole
The insert statement whould be like the following:

insert into users
select newid(), suser_sid('YourNewUser'), 1, 1, 'YourNewUser'

declare @NewUser uniqueidentifier
select @NewUser = userid from users where username = 'YourNewUser'

insert into policyUserRole
select newid(), @NewUser, YourPolicyID, YourRoleID


Let me know if that's what you were looking for!
Randy




