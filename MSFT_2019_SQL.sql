/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [StockDt]
      ,[StockOpen]
      ,[StockHigh]
      ,[StockLow]
      ,[StockClose]
	  ,datepart(dy,StockDt) DayOfTheYear
      ,[StockAdjClose]
      ,[StockVol]
  FROM [DatapyDB].[dbo].[Stock]
  WHERE datepart(yy,StockDt) = 2019
  AND StockSym = 'MSFT'

 SELECT [StockDt], 
		datepart(dy,StockDt) DayOfTheYear, 
		[StockAdjClose] 
 FROM [DatapyDB].[dbo].[Stock] 
 WHERE datepart(yy,StockDt) = 2019 
 AND StockSym = 'MSFT'