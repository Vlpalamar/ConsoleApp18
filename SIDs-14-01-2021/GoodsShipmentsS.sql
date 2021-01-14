SET IDENTITY_INSERT [dbo].[GoodsShipments] ON
INSERT INTO [dbo].[GoodsShipments] ([Id], [contractN], [storage], [shipmentDate], [amount], [currentProfit]) VALUES (6, 3342, N'Storage 1', N'2019-02-13', 100, CAST(5000.0000 AS Money))
INSERT INTO [dbo].[GoodsShipments] ([Id], [contractN], [storage], [shipmentDate], [amount], [currentProfit]) VALUES (8, 3342, N'Storage 2', N'2019-02-20', 300, CAST(9000.0000 AS Money))
INSERT INTO [dbo].[GoodsShipments] ([Id], [contractN], [storage], [shipmentDate], [amount], [currentProfit]) VALUES (9, 3342, N'Storage 3', N'2019-02-05', 1600, CAST(32000.0000 AS Money))
SET IDENTITY_INSERT [dbo].[GoodsShipments] OFF
