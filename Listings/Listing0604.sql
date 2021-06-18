CREATE PROCEDURE dbo.PersistLoadedSales (
  @runSeqNo INT
) AS

DELETE tgt
FROM dbo.Sales tgt
  INNER JOIN dbo.Sales_LOAD src
    ON src.Retailer = tgt.Retailer
    AND src.SalesMonth = tgt.SalesMonth
    AND src.Product = tgt.Product
WHERE src.RunSeqNo = @runSeqNo;

DELETE 
FROM [dbo].[Sales_LOAD]
OUTPUT
  deleted.[Retailer]
, deleted.[SalesMonth]
, deleted.[Product]
, deleted.[SalesValueUSD]
, deleted.[UnitsSold]
, deleted.[RunSeqNo]
INTO dbo.Sales (
  [Retailer]
, [SalesMonth]
, [Product]
, [SalesValueUSD]
, [UnitsSold]
, [RunSeqNo]
)
WHERE RunSeqNo = @runSeqNo;
