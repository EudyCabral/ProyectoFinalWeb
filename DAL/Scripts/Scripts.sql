drop database BusinessSoftDB
go
use BusinessSoftDB
go
create table Usuarios
(
			
			UsuarioId int Primary key identity(1,1),
            Nombre Varchar(40),
            Cedula varchar(13),
            Telefono varchar(12),
			Email varchar(40),
            Usuario varchar(20),
            TipodeAcceso varchar(15),
            Contraseña varchar(40)
);

drop table Articulos
go
create table Articulos
(
			
			ArticuloId int Primary key identity(1,1),
            Nombre Varchar(25),
            Inventario int
);

go
create table Clientes
(
			ClienteId int Primary key identity(1,1),
            Nombre varchar(40),
            Cedula varchar(13),
            Direccion varchar(60),
            Telefono varchar(12)
);
go

go
create table Efectivos
(
			EfectivoId int Primary key identity(1,1),
            Nombre varchar(40),
            EfectivoCapital money
           
);
go


go
create table EntradadeInversiones
(
			InversionId int Primary key identity(1,1),
            EfectivoId int,
			Fecha date,
            Motivo varchar(60),
			Monto money
					   		           
);
go


go
create TABLE Recibos
(			

			ReciboId int primary key identity(1,1),
			EfectivoId  int,
			ClienteId int,
			NombredeCliente varchar(45),
            Fecha  Date,
            MontoTotal money,
			Abono money,
			UltimaFechadeVigencia date

);
go

drop table ReciboDetalles
drop table Recibos
go
create TABLE ReciboDetalles
(			

			ID int primary key identity(1,1),
            ReciboId int,
            ArticuloId int,
            Articulo varchar(40),
            Descripcion varchar(max),
            Cantidad int,
            Monto money,
           	        
);
go

select* from ReciboDetalles
select* from Recibos
select* from Usuarios

select* from Articulos
select* from Clientes
select* from Efectivos
select* from EntradadeInversiones
insert into Efectivos(Nombre,EfectivoCapital) Values('Inicializacion',0);