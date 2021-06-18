CREATE PROCEDURE dbo.LogPipelineEnd (
  @RunSeqNo INT
, @RunEndDateTime DATETIME
, @RunStatus VARCHAR(20)
, @FilesRead INT
, @RowsRead INT
, @RowsCopied INT
) AS

UPDATE dbo.PipelineExecution
SET RunEndDateTime = @RunEndDateTime
  , RunStatus = @RunStatus
  , FilesRead = @FilesRead
  , RowsRead = @RowsRead
  , RowsCopied = @RowsCopied
WHERE RunSeqNo = @RunSeqNo;
