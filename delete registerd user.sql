--delete a user from table---

CREATE PROCEDURE dbo.spUserRegDelete
    @RegID INT
AS
BEGIN
    DELETE FROM UserReg WHERE RegID = @RegID
END

EXEC  dbo.spUserRegDelete @RegID = 6;
