DECLARE
 @CustomerId		bigint
,@OrderSrcId		int
,@OrderDstId		int
,@StoredId			int
,@CrustId			int
,@ToppingId			int
,@SizeId			int
,@ExtrasInd			bit
,@Quantity			int
,@EmployeeId		int
,@Counter			int = 0
,@StartDate			datetime = '01-01-2014'
,@EndDate			datetime = GETDATE()
,@HourOfTheDay		int
,@MinuteOfTheHour	int
,@StoreOpenHour		int = 8		-- 8am (24hr clock)
,@StoreCloseHour	int	= 20	-- 8pm (24hr clock)


BEGIN

	WHILE @StartDate < @EndDate

	BEGIN

		SET @HourOfTheDay = DATEPART(HOUR, @StartDate)

		SELECT @MinuteOfTheHour = ROUND(RAND()*(55-5)+2,0)

		IF @HourOfTheDay >= @StoreOpenHour AND @HourOfTheDay <= @StoreCloseHour
			
			BEGIN

				WHILE @Counter < 55
			
				BEGIN
					
					SET @StartDate = DATEADD(minute, @Counter, @StartDate)

					--OrderId
					--OrderDt
					--Order By
					SELECT TOP 1 @CustomerId = Id FROM dbo.Customer ORDER BY NEWID()
					-- Order Destination
					SELECT TOP 1 @OrderSrcId = Id FROM dbo.OrderSrc ORDER BY NEWID()  
					-- Order Source
					SELECT TOP 1 @OrderDstId = Id FROM dbo.OrderDst ORDER BY NEWID()  
					-- Store Id
					SELECT @StoredId = 3000
					-- Crust Id
					SELECT TOP 1 @CrustId = Id FROM dbo.PizzaCrust ORDER BY NEWID() 
					-- Topping Id
					SELECT TOP 1 @ToppingId = Id FROM dbo.PizzaTopping ORDER BY NEWID()
					-- Size Id
					SELECT TOP 1 @SizeId = Id FROM dbo.PizzaSize ORDER BY NEWID() 
					-- Extras
					SELECT @ExtrasInd = 1
					-- Quantity (random)
					SELECT @Quantity = ROUND(RAND()*(10-5)+1,0)
					-- Empolyee Id
					SELECT TOP 1 @EmployeeId = EmpId FROM dbo.Employee ORDER BY NEWID() 
					
					INSERT INTO [dbo].[Order]
					([OrderDt],[OrderBy],[OrderSrc],[OrderDst],[StoreId],[CrustId],[ToppingId],[SizeId],[Extras],[Qty],[EmployeeId])
					VALUES(@StartDate,@CustomerId,@OrderSrcId,@OrderDstId,@StoredId,@CrustId,@ToppingId,@SizeId,@ExtrasInd,@Quantity,@EmployeeId)
				
					SET @Counter = @Counter + 5

				END
			END
		
		SET @Counter = 0
		
		SET @StartDate = DATEADD(minute, @MinuteOfTheHour, @StartDate)
		
	END

END