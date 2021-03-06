USE [DSTraining]
GO
/****** Object:  StoredProcedure [dbo].[___tmpl___BLD_WRK_TableName]    Script Date: 05-07-2020 16:59:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[___tmpl___BLD_WRK_TableName]
-- =============================================
-- Author:		
-- Create date: 
-- Description:	RAW -> WRK
-- MOD Date:
-- =============================================
AS
BEGIN

-- =============================================
-- DROP TABLE
-- =============================================

IF OBJECT_ID('WRK_TableName') IS NOT NULL
DROP TABLE [WRK_TableName]

-- =============================================
-- CREATE TABLE BLOCK
-- =============================================
CREATE TABLE [WRK_TableName]
(
	[RowNumber]      INT identity(1,1)
	,[AAA]   VARCHAR(100)
	,[DDD]	 DATE
	,[FFF]	 FLOAT
	,[III]	 INT	
)

-- =============================================
-- TRUNCATE TABLE
-- =============================================

	TRUNCATE TABLE [WRK_TableName]

-- =============================================
-- INSERT INTO
-- =============================================

INSERT INTO [WRK_TableName]
(
	[AAA]   
	,[DDD]	
	,[FFF]	 
	,[III]
	,[JJJ]	 	
)
SELECT
	[xAAA]
	,[xBBB]
	,CONVERT(Date, [xZZZ], 20)
	,CAST([xYYY] as FLOAT)
	,CAST([xWWW] as INT)
FROM [RAW_TableName]

-- (XX row(s) affected)



END
/*
	SELECT * FROM [RAW_TABLE]
	SELECT * FROM [WRK_TABLE]
*/