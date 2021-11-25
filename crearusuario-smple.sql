


CREATE LOGIN robert12   
    WITH PASSWORD = 'supersecret';


use ebaydb
CREATE USER robert12 FOR LOGIN robert12;  
GO
alter role db_datareader add member robert12
