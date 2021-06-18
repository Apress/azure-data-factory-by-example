SELECT
  p.ProductName
, SUM(s.UnitsSold) AS UnitsSold
, SUM(s.SalesValueUSD) AS SalesValueUSD
, SUM(p.WeightInGrams * s.UnitsSold)/1000 AS KgSold
FROM dbo.Sales s
  INNER JOIN dbo.Product p ON p.Product = s.Product
GROUP BY p.ProductName
ORDER BY p.ProductName;
