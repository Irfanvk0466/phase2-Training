---read to get ---
CREATE PROCEDURE dbo.spUserRegUsername
    @Username  NVARCHAR(50)
AS
BEGIN
    SELECT * FROM UserReg WHERE Username = @Username;
END

EXEC  dbo.spUserRegUsername 'Irfan0466'