SET IDENTITY_INSERT [dbo].[GoodsRemains] ON
INSERT INTO [dbo].[GoodsRemains] ([Id], [name], [storage], [onDate], [price], [amount]) VALUES (1, N'Кукуруза', N'Storage 1 ', N'2019-02-12', CAST(250.0000 AS Money), 100)
INSERT INTO [dbo].[GoodsRemains] ([Id], [name], [storage], [onDate], [price], [amount]) VALUES (2, N'Кукуруза ', N'Storage 2', N'2019-02-18', CAST(270.0000 AS Money), 400)
INSERT INTO [dbo].[GoodsRemains] ([Id], [name], [storage], [onDate], [price], [amount]) VALUES (3, N'Ячмень ', N'Storage 1 ', N'2019-02-01', CAST(310.0000 AS Money), 800)
INSERT INTO [dbo].[GoodsRemains] ([Id], [name], [storage], [onDate], [price], [amount]) VALUES (4, N'Кукуруза', N'Storage 2', N'2019-02-02', CAST(280.0000 AS Money), 2000)
SET IDENTITY_INSERT [dbo].[GoodsRemains] OFF
