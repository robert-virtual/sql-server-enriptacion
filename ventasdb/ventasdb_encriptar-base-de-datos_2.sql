




use master
go
-- crear la llave maestra
create master key ENCRYPTION by password = '123';
go


-- crear un certificado
create CERTIFICATE verntasdb_tde_cert
with subject = 'encryptacion de base de datos';
GO

use VentasDB
GO

create database encryption key 
with  algorithm = AES_256
encryption by server certificate verntasdb_tde_cert;
go 

ALTER DATABASE VentasDB
SET ENCRYPTION ON;
GO


USE VentasDB;
GO
BACKUP DATABASE VentasDB
TO DISK = 'D:\backups\ventasdb\VentasDB.bak'
   WITH FORMAT,
      MEDIANAME = 'SQLServerBackups',
      NAME = 'Full Backup of VentasDB';
GO





