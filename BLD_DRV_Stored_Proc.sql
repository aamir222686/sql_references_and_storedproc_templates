USE [DSTraining]
GO
/****** Object:  StoredProcedure [dbo].[___tmpl___BLD_WRK_TableName]    Script Date: 05-07-2020 17:25:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[___templ___BLD_DRV_TableName]
-- =============================================
-- Author:		
-- Create date: 
-- Description:	WRK -> DRV
-- MOD Date:
-- =============================================
AS
BEGIN

-- =============================================
-- DROP TABLE
-- =============================================

IF OBJECT_ID('DRV_TableName') IS NOT NULL
DROP TABLE [DRV_TableName]

-- =============================================
-- CREATE DERVIVED TABLE
-- =============================================
SELECT 
	A.[AAA]	
	,A.[BBB]			
	,A.[CCC]		
	,A.[DDD]			
	,A.[EEE]			
	,B.[AAA]		
	,B.[BBB]		
	,B.[CCC]			
	,B.[DDD]			
	,B.[EEE]			
	,B.[AAA] * B.[BBB] AS NewColumnName		
INTO [DRV_TableName]
FROM [WRK_TableNameA] A
LEFT JOIN [WRK_TableNameB] B
ON A.[SimColumn] = B.[SimColumn]

END