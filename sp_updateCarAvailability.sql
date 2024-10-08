USE [CarPalaceSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_updatecaravailability]    Script Date: 9/12/2024 4:04:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_updatecaravailability]

@id int,
@availability nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update CARS
	set CarAvailability = @availability
	where CarRegID = @id
END
