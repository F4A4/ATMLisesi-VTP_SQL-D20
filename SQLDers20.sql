--	STORED PROCEDTURE OLU�TURMA
CREATE PROC usp_ErkekMusteriler
AS
SELECT * FROM Musteriler 
where Cinsiyet='E'
GO

---- STORED PROCEDTURE DE���T�RME
ALTER PROC usp_ErkekMusteriler
AS                      
SELECT * FROM Musteriler
where Cinsiyet='E'
GO

-- OLU�TURULAN STORED PROCEDTURE' Y� �ALI�TIRMA
EXEC dbo.usp_ErkekMusteriler


CREATE PROC usp_TelMusteri
AS
SELECT * FROM Musteriler
WHERE Tel like '0501%'
GO

EXEC dbo.usp_TelMusteri

ALTER PROC usp_TelMusteri
AS
SELECT * FROM Musteriler
WHERE Tel like '%4%'
GO

EXEC dbo.usp_TelMusteri

--C�NS�YET� KULLANICI TARAFINDAN G�R�LEN , G�R�LEN C�NS�YETE G�RE 
--M��TER�LER� L�STELEYEN B�R STORED PROC YAZINIZ
CREATE PROC usp_CinsiyeteG�reMusteri
@Cinsiyet nchar(1)
AS
SELECT * FROM Musteriler 
WHERE Cinsiyet=@Cinsiyet
GO

EXEC dbo.usp_CinsiyeteG�reMusteri 'E'
 

CREATE PROC usp_AdaG�reMusteri
@Ad nvarchar(30)
AS
SELECT * FROM Musteriler
WHERE Ad like '%'+@Ad+'%'
GO

EXEC dbo.usp_AdaG�reMusteri 'ak'

ALTER PROC usp_AdaG�reMusteri
@Ad nvarchar(30)
AS
SELECT * FROM Musteriler
WHERE Ad like '%'+@Ad+'%'
GO

EXEC dbo.usp_AdaG�reMusteri 'ak'