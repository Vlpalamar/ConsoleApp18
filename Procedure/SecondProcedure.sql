 --хранимую процедуру для заполнения таблицы «Отгрузка товара»,
 --которая получается в качестве параметров контракт, место хранения,
 --дату отгрузки и количество. Данная процедура должна рассчитывать
 --сумма прибыли по реализации партии товара, а так же выполнять следующие 
 --проверки –
 --1) достаточно ли товара в месте хранения на дату отгрузки, 
 --2) не превышен ли объем по контракту в результате отгрузки.


CREATE PROCEDURE [dbo].[ReportProcedure]
	@beginDate Date ,
	@endDate Date
AS
	SELECT [Contracts].number AS 'Контракт',
		SUM([GoodsShipments].amount) AS 'Количество',
		SUM([GoodsShipments].currentProfit) AS 'Прибыль',
	   (SUM([GoodsShipments].currentProfit)/SUM([GoodsShipments].amount)) AS'Прибыль на тонну'

FROM [Contracts]
JOIN [GoodsShipments]
ON   [GoodsShipments].contractN=[Contracts].number
WHERE [Contracts].dateOfComplit >= @beginDate and  [Contracts].dateOfComplit <=@endDate 
GROUP BY  [Contracts].number
RETURN 0
