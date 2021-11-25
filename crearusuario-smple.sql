


CREATE LOGIN robert12   
    WITH PASSWORD = 'supersecret';


use ebaydb
CREATE USER robert12 FOR LOGIN robert12;  
GO
-- agregar permisos
alter role db_datareader add member robert12
--- db_datareader
--- db_datawriter
--- db_ddladmin : create,alter,drop