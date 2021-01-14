CREATE TABLE [dbo].[Contracts]
(
	[number] INT NOT NULL PRIMARY KEY, 
    [dateOfDeal] DATE NOT NULL, 
    [dateOfComplit] DATE NOT NULL, 
    [contractor] NVARCHAR(50) NOT NULL, 
    [culture] NVARCHAR(50) NOT NULL, 
    [amount] INT NOT NULL CHECK([amount]>0), 
    [price] MONEY NOT NULL CHECK([price]>0)
)
