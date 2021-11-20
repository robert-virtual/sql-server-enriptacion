


use master
go
-- crear la llave maestra
create master key ENCRYPTION by password = '123';
go


-- crear un certificado
create CERTIFICATE tde_cert
with subject = 'encryptacion de base de datos';
GO

use SuMuebleDb
GO

create database encryption key 
with  algorithm = AES_256
encryption by server certificate tde_cert;
go 

ALTER DATABASE SuMuebleDb
SET ENCRYPTION ON;
GO


