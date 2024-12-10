SELECT 
  p.ProductKey, 
  p.[ProductAlternateKey] as ProductItemCode 
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  , 
  p.[EnglishProductName] as [Product Name], 
  ps.EnglishProductSubcategoryName as [Sub Category], 
  pc.EnglishProductCategoryName as [Product Category] 
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  , 
  p.[Color] as [product color] --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  , 
  p.[Size] as [product size] --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  , 
  p.[ProductLine] as [product line] --,[DealerPrice]
  --,[Class]
  --,[Style]
  , 
  p.[ModelName] as [product model name] --,[LargePhoto]
  , 
  p.[EnglishDescription] as [product description] --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  -- ,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  --,[Status]
  , 
  ISNULL (p.status, 'outdated') as [product status] 
FROM 
  dbo.DimProduct as p 
  left join dbo.DimProductSubcategory as ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  left join dbo.DimProductCategory as pc on ps.ProductCategoryKey = pc.ProductCategoryKey 
order by 
  p.ProductKey asc
