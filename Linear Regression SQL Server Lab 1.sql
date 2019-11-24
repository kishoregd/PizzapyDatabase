SELECT count(*) FROM dbo.[Order]

SELECT TOP 10 * FROM dbo.[Order]

-- Formatted to show DATE, Order Hour, Week Day Number and Quantity
SELECT	DATEADD(HH,DATEPART(HH,[OrderDt]),CAST(CAST([OrderDt] AS DATE) AS DATETIME)) AS OrderDt,					
		datepart(hour,OrderDt) OrderHour,
		datepart(dw,OrderDt) WeekDayNumber, 
		Qty
		FROM [PizzapyDB].[dbo].[Order]


-- Formatted to show DATE, Order Hour, Week Day Number and Quantity. 
-- Quantity summerized at Hour level
SELECT AllOrders.OrderDt,AllOrders.OrderHour, AllOrders.WeekDayNumber WeekDayNbr, SUM(Qty) Qty
FROM
(
	SELECT	DATEADD(HH,DATEPART(HH,[OrderDt]),CAST(CAST([OrderDt] AS DATE) AS DATETIME)) AS OrderDt,					
	datepart(hour,OrderDt) OrderHour,
	datepart(dw,OrderDt) WeekDayNumber, 
	Qty
	FROM [PizzapyDB].[dbo].[Order]
) AS AllOrders
GROUP BY AllOrders.OrderDt,AllOrders.OrderHour, AllOrders.WeekDayNumber
ORDER BY 1

-- Formatted to show DATE, Order Hour, Week Day Number and Quantity. 
-- Quantity summerized at Week Day Number level
SELECT CAST(AllOrders.OrderDt AS DATE) OrderDt, AllOrders.WeekDayNumber WeekDayNbr, SUM(Qty) Qty
FROM
(
	SELECT	DATEADD(HH,DATEPART(HH,[OrderDt]),CAST(CAST([OrderDt] AS DATE) AS DATETIME)) AS OrderDt,					
	datepart(hour,OrderDt) OrderHour,
	datepart(dw,OrderDt) WeekDayNumber, 
	Qty
	FROM [PizzapyDB].[dbo].[Order]
) AS AllOrders
GROUP BY CAST(AllOrders.OrderDt AS DATE), AllOrders.WeekDayNumber
ORDER BY 1,2