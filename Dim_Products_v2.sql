--cleansed product table--
SELECT [ProductKey],
      [ProductAlternateKey] as ProductItemCode,
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      [EnglishProductName] as [Product Name],
	  ps.[EnglishProductSubcategoryName] as [Sub Category], --joined in from sub category table
	  pc.[EnglishProductCategoryName] as [Product Category], --joined in from category table
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      [Color] as [Product Color],
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      [Size] as [Product Size],
      --,[SizeRange]
      --[Weight]
      --,[DaysToManufacture]
      [ProductLine] as [Product Line],
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      [ModelName] as [Product Model Name],
      --,[LargePhoto]
      [EnglishDescription] as [Product Description],
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
     --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      [Status] as [Product Status]
  FROM [AdventureWorksDW2012].[dbo].[DimProduct] as p
  left join [AdventureWorksDW2012].[dbo].[DimProductSubcategory] as ps on p.ProductSubcategoryKey= ps.ProductSubcategoryKey
  left join [AdventureWorksDW2012].[dbo].[DimProductCategory] as pc on ps.ProductCategoryKey=pc.ProductCategoryKey
  order by p.ProductKey asc 