-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION CheckEven
(
	-- Add the parameters for the function here
       @num1 int
)
RETURNS varchar(20)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @result varchar(20);

	if @num1%2=0
	set @result='even'
	else
	set @result='odd'
	
	-- Return the result of the function
	RETURN @result

END
GO

select dbo.CheckEven(6) as result;