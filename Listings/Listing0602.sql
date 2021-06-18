CREATE TABLE dbo.LoadingError (
  [Timestamp] DATETIME2 NULL
, [Level] NVARCHAR(50) NULL
, [OperationName] NVARCHAR(50) NULL
, [OperationItem] NVARCHAR(4000) NULL
, [Message] NVARCHAR(4000) NULL
);
