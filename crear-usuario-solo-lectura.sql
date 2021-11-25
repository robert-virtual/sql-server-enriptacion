

-- crear un login
create login UsuarioLeer with password = '1234'

-- seleccionar db 
use SuMuebleDb


-- asignar rol de lectura
create user UsuarioLeer for login UsuarioLeer
alter role db_datareader add member UsuarioLeer

--- db_datareader
--- db_datawriter
--- db_ddladmin : create,alter,drop
