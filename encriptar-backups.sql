

-- no es necesario tener la base de datos encrytptada para encryptar backups


use master
-- crear la llave maestra
create master key ENCRYPTION by password = '123'
USE master
go




-- crear un certificado
create CERTIFICATE certificado_bk
with subject = 'certificado para backups',
expiry_date = '20231120';-- debe ser un periodo mas o menos largo
GO

-- respaldar el certificado
USE master
go
BACKUP CERTIFICATE certificado_bk
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
   SERVER CERTIFICATE = certificado_bk  
   ),  
  COMPRESSION, 
  FORMAT, 
  STATS = 10  
GO