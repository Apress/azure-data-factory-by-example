CREATE PROCEDURE dbo.LogPipelineExecution (
  @PipelineRunId UNIQUEIDENTIFIER
, @RunEndDateTime DATETIME
, @FilesRead INT
, @RowsRead INT
, @RowsCopied INT
) AS

INSERT INTO dbo.PipelineExecution (
  PipelineRunId
, RunEndDateTime
, FilesRead
, RowsRead
, RowsCopied
) VALUES (
  @PipelineRunId
, @RunEndDateTime
, @FilesRead
, @RowsRead
, @RowsCopied
);
