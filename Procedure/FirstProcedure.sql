 --хранимую процедуру для заполнения таблицы «Отгрузка товара»,
 --которая получается в качестве параметров контракт, место хранения,
 --дату отгрузки и количество. Данная процедура должна рассчитывать
 --сумма прибыли по реализации партии товара, а так же выполнять следующие 
 --проверки –
 --1) достаточно ли товара в месте хранения на дату отгрузки, 
 --2) не превышен ли объем по контракту в результате отгрузки.


CREATE PROCEDURE [dbo].[GoodsShipmentsProcedure]
	@contractN INT ,
	@storage NVARCHAR,
	@shipmentDate DATE,
	@amount  INT
AS
if @amount<(Select SUM([GoodsRemains].amount)
FROM	[Contracts]
JOIN	[GoodsRemains]
	ON [Contracts].culture=[GoodsRemains].[name] 
WHERE	@contractN=[Contracts].number 
	AND [GoodsRemains].storage=@storage 
HAVING
	[GoodsRemains].onDate<@shipmentDate )
BEGIN
	PRINT('нет товара на складе')
	RETURN 0
END

ELSE


INSERT INTO [GoodsShipments](contractN,storage,shipmentDate,amount,currentProfit)
Values(@contractN,@storage,@shipmentDate,@amount,
	(SELECT (@amount*([Contracts].price-[GoodsRemains].price))
	 FROM [Contracts]
	 JOIN [GoodsRemains]
		ON[GoodsRemains].[name]=[Contracts].culture
	 WHERE @contractN=[Contracts].number 
		AND [GoodsRemains].storage=@storage))
RETURN 0

	
	
 
