CREATE FUNCTION dbo.Remover (@input VARCHAR(250))
RETURNS VARCHAR(250)
AS BEGIN
    DECLARE @Work VARCHAR(250)

    SET @Work = @Input
    SET @Work = REPLACE(@Work, 'pw', '')
    RETURN @work
END

USE TestSpace

SELECT id, dbo.Remover (userPassword)
FROM dbo.Account

SELECT * FROM dbo.Account
select * from information_schema.routines where routine_type='function'
