USE [CarPalaceSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_selectallcarsforpurchase]    Script Date: 9/12/2024 4:06:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_selectallcarsforpurchase]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from CARS where CarAvailability = 'Y'
END
