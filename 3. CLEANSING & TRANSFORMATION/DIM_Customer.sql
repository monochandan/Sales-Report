--CLEANSED DIM_CUSTOMER TABLE
SELECT 
  c.CustomerKey as CustomerKey, 
  --[GeographyKey]
  --[CustomerAlternateKey]
  --,[Title]
  c.FirstName as [First Name], 
  --,[MiddleName]
  c.lastname as [LastName], 
  c.FirstName + ' ' + c.lastname as [Full Name], 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS [Gender], 
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
  c.datefirstpurchase as DateFirstPurchase, 
  --,[CommuteDistance]
  g.city as [Cuastomer City] 
FROM 
  dbo.DimCustomer as c 
  left join dbo.DimGeography as g on g.GeographyKey = c.GeographyKey --Joined the customer table with geography table
order by 
  c.CustomerKey asc -- ordered list by customerKey in ascending order

