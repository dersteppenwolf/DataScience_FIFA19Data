DECLARE @heightMeter AS FLOAT = 0
DECLARE @heightFeet AS NVARCHAR(50) = '5''7';
DECLARE @feets INT = 0
DECLARE @inches INT = 0
DECLARE @tempResult TABLE ([order] INT, [value] INT)

INSERT INTO @tempResult
SELECT ROW_NUMBER() OVER(ORDER BY (SELECT NULL)), value
  FROM STRING_SPLIT(@heightFeet, '''') 
 WHERE RTRIM(value) <> '';

SELECT * FROM @tempResult;

SELECT @feets = [value] FROM @tempResult WHERE [order] = 1;
SELECT @inches = [value] FROM @tempResult WHERE [order] = 2;
SELECT @feets, @inches;

SET @heightMeter = (@feets * 12 + @inches) * 0.0254;
SELECT @heightFeet, @heightMeter;