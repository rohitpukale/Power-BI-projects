--cleansed dim date table. removed not useful columns from table--
SELECT  [DateKey],
      [FullDateAlternateKey] as Date,
      --,[DayNumberOfWeek]
      [EnglishDayNameOfWeek] as Day,
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      [WeekNumberOfYear] as Weekno,
      [EnglishMonthName] as Month,
	  left ([EnglishMonthName],3) as Monthshort,
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      [MonthNumberOfYear] as Monthno,
      [CalendarQuarter] as Quarter,
      [CalendarYear] as year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2012].[dbo].[DimDate]
  where CalendarYear >=2019