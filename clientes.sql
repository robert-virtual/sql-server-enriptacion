
select * from Clientes
insert into Clientes(DNI,Nombre,Telefono,Direccion,Email) 
VALUES ('0703200101235','Roberto Castillo','88137603','Danli El Paraiso','roberto@gmail.com'),
('0703200001231','Carlos Rodiguez','88137602','Col Villeda Morales, Danli El Paraiso','carlos@gmail.com'),
('0703198501232','Daysi Castellanos','88137601','La Ceiba Atlantidad','daysi@gmail.com'),
('0703199001233','Ivis Valle','88137600','Residencial El Dorado Tegucigalpa, Francisco Morazan','ivis@gmail.com')


update Clientes set Registrado = '2021-10-24' 
where IdCliente  = 1

update Clientes set Registrado = '2020-10-24' 
where IdCliente  = 2 

update Clientes set Registrado = '2020-1-24' 
where IdCliente  = 3 

update Clientes set Registrado = '2020-5-24' 
where IdCliente  = 4 



select * from Clientes
