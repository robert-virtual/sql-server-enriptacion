



use master
-- crear la llave maestra
create master key ENCRYPTION by password = '123'
USE master
go




-- crear un certificado
create CERTIFICATE certificadobk
with subject = 'certificado para backups',
expiry_date = '20231120';
GO

USE master
go
BACKUP CERTIFICATE certificadobk
TO FILE = 'D:\backups\SuMuebleBkCer.cer'  
WITH private key (
	FILE = 'D:\backups\BkPKey.pvk',
	ENCRYPTION by PASSWORD = '123'
)
go




-- hacer backup con el certificado
BACKUP DATABASE [SuMuebleDb]  
TO DISK = N'D:\backups\SuMuebleDBEncrypted.bak'  
WITH
INIT,  
  ENCRYPTION   
   (  
   ALGORITHM = AES_256,  
   SERVER CERTIFICATE = certificadobk  
   ),  
  COMPRESSION, 
  FORMAT, 
  STATS = 10  
GO