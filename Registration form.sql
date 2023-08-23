---run created user and updated age ---
CREATE PROCEDURE dbo.spUserReg_run
AS
BEGIN
SELECT * FROM dbo.UserReg
END



EXEC dbo.spUserReg_run