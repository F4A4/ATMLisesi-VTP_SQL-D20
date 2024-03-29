--	STORED PROCEDTURE OLUŞTURMA
CREATE PROC usp_ErkekMusteriler
AS
SELECT * FROM Musteriler 
where Cinsiyet='E'
GO

---- STORED PROCEDTURE DEĞİŞTİRME
ALTER PROC usp_ErkekMusteriler
AS                      
SELECT * FROM Musteriler
where Cinsiyet='E'
GO

-- OLUŞTURULAN STORED PROCEDTURE' Yİ ÇALIŞTIRMA
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

--CİNSİYETİ KULLANICI TARAFINDAN GİRİLEN , GİRİLEN CİNSİYETE GÖRE 
--MÜŞTERİLERİ LİSTELEYEN BİR STORED PROC YAZINIZ
CREATE PROC usp_CinsiyeteGöreMusteri
@Cinsiyet nchar(1)
AS
SELECT * FROM Musteriler 
WHERE Cinsiyet=@Cinsiyet
GO

EXEC dbo.usp_CinsiyeteGöreMusteri 'E'
 

CREATE PROC usp_AdaGöreMusteri
@Ad nvarchar(30)
AS
SELECT * FROM Musteriler
WHERE Ad like '%'+@Ad+'%'
GO

EXEC dbo.usp_AdaGöreMusteri 'ak'

ALTER PROC usp_AdaGöreMusteri
@Ad nvarchar(30)
AS
SELECT * FROM Musteriler
WHERE Ad like '%'+@Ad+'%'
GO

EXEC dbo.usp_AdaGöreMusteri 'ak'