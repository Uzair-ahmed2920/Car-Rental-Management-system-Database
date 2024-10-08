USE [CarPalaceSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_insertEmp]    Script Date: 9/12/2024 4:06:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_insertEmp]
	-- Add the parameters for the stored procedure here,  
@EmployeeName varchar(70),
@EmployeeGender varchar(1),
@EmployeeAddress varchar(100) ,
@pass varchar(100),
@EmployeePhone NVARCHAR(10),
@EmployeeEmail varchar(50) ,
@EmployeeRegistrationDate date ,
@AddedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into Employee values(@EmployeeName,@EmployeeGender,@EmployeeAddress,@pass,@EmployeePhone,@EmployeeEmail,@EmployeeRegistrationDate,@AddedBy)
END
