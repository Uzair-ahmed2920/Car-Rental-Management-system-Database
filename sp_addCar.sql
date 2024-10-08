USE [CarPalaceSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_updaterent]    Script Date: 9/12/2024 3:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_updaterent]

@pid int,
@regid int,
@empid int,
@cusid int,
@date nvarchar(50),
@rdate nvarchar(50),
@amount int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update Rents
	set CarID =@regid,EmployeeID=@empid,RentedBy=@cusid,DateOfPurchase=@date,DateOfReturn = @rdate,Totalamount=@amount
	where RentID = @pid
END
