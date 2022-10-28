CREATE TABLE [dbo].Registration
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [name] VARCHAR(50) NOT NULL, 
    [age] INT NOT NULL, 
    [address] VARCHAR(MAX) NOT NULL, 
    [username] NCHAR(10) NOT NULL, 
    [password] NCHAR(10) NOT NULL
	

)
