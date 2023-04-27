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
CREATE FUNCTION CheckPositive
(
	-- Add the parameters for the function here
	@num int
)
RETURNS varchar(20)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Ans varchar(20);

	if @num>=0
	set @Ans='Positive'
	else
	set @ans='negative'
	-- Return the result of the function
	RETURN @Ans

END
GO

select dbo.CheckPositive(-4) as result;
