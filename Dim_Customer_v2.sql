-- cleansed dim customer table --
SELECT [CustomerKey],
      --[GeographyKey],
      --,[CustomerAlternateKey]
      --,[Title]
      [FirstName] as [First Name],
      --,[MiddleName]
      [LastName] as [Last Name],
	  [FirstName]+' '+[LastName] as [Full Name],
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      case when [Gender]='M' then 'Male' when [Gender]='F' then 'Female' end as Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      [DateFirstPurchase],
      --,[CommuteDistance]
	  g.[City] as [Customer city]
  FROM [AdventureWorksDW2012].[dbo].[DimCustomer] as c 
  left join [AdventureWorksDW2012].[dbo].[DimGeography] as g -- joined customer city from geograpghy table
  on c.[GeographyKey]=g.[GeographyKey] 
  order by customerkey asc 