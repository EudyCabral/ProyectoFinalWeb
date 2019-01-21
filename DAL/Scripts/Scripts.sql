create database BusinessSoftDB
go
use BusinessSoftDB
go
create table Usuarios
(
			
			UsuarioId int Primary key identity(1,1),
            Nombre Varchar(40),
            Cedula varchar(13),
            Telefono varchar(12),
            Usuario varchar(20),
            TipodeAcceso varchar(15),
            Contraseña varchar(40)
);

select* from Usuarios