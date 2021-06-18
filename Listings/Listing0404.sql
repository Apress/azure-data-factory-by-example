CREATE PROCEDURE dbo.LogPipelineStart (
  @PipelineRunId UNIQUEIDENTIFIER
, @RunStartDateTime DATETIME
, @Comments NVARCHAR(1024) = NULL
) AS

INSERT INTO dbo.PipelineExecution (
  PipelineRunId
, RunStartDateTime
, Comments
) VALUES (
  @PipelineRunId
, @RunStartDateTime
, @Comments
);

SELECT SCOPE_IDENTITY() AS RunSeqNo;
