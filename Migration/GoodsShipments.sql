CREATE TABLE [dbo].[GoodsShipments]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [contractN] INT NOT NULL
	 FOREIGN KEY ([contractN]) REFERENCES [dbo].[Contracts] ([number]),
	 [storage] NVARCHAR(50) NOT NULL, 
	 [shipmentDate] DATE NOT NULL, 
    [amount] INT NOT NULL CHECK([amount]>0),
	[currentProfit] MONEY NOT NULL 
)
