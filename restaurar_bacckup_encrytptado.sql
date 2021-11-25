


create master key  encryption by PASSWORD = '123'


create certificate certificado_bk 
from file = 'D:\backups\SuMuebleBkCer.cer'
with private key (
    file = 'D:\backups\BkPKey.pvk',
    decryption by PASSWORD = '123'
);
GO