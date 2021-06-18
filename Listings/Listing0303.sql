SELECT 
  Retailer
, SalesMonth
, COUNT(*) AS [Rows]
FROM [dbo].[Sales_LOAD]
GROUP BY
  Retailer
, SalesMonth;
