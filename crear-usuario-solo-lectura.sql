


create login UsuarioLeer with password = '1234'


use VentasDB



create user Usuario1 for login UsuarioLeer
alter role db_datareader add member Usuario1