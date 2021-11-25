

--- tde transparent data encryption -- encripta el lado del servidor
-- otro --encrita de lado del cliente

use master
go
-- crear la llave maestra
create master key ENCRYPTION by password = '123';
go


-- crear un certificado
create CERTIFICATE tde_cert
with subject = 'encryptacion de base de datos';
GO

--- respaldo del certificado
BACKUP CERTIFICATE tde_cert
TO FILE = 'D:\backups\tde_cert.cer'  
WITH private key (
	FILE = 'D:\backups\tde_cert_Key.pvk', -- tde private key  
	ENCRYPTION by PASSWORD = '123'
)
go


use SuMuebleDb
GO
-- crear encryptacion
create database encryption key 
with  algorithm = AES_256
encryption by server certificate tde_cert;
go 

-- habilitar la enccryptacion
ALTER DATABASE SuMuebleDb
SET ENCRYPTION ON;
GO


