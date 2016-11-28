create database PrestamoWebDB;

use PrestamoWebDB;

create table Usuarios(
UsuarioId int primary key identity(1,1),
Nombres varchar(30),
Apellidos varchar(30),
NombreUsuario varchar(40),
Contrasena varchar(50),
ConfirmarContrasena varchar(50),
TipoUsuario varchar(30),
Foto varchar(100));

create table Cobradores(
CobradorId int primary key identity(1,1),
Nombres varchar(30),
Apellidos varchar(30),
Direccion varchar(100),
Telefono varchar(14),
Celular varchar(14),
Cedula varchar(13));

create table Rutas(
RutaId int primary key identity(1,1),
CobradorId int references Cobradores(CobradorId),
NombreRuta varchar(100));

create table Clientes(ClienteId int primary key identity(1,1),
RutaId int references Rutas(RutaId),
Nombres varchar(30),
Apellidos varchar(30),
Apodos varchar(30),
Direccion varchar(100),
Referencia varchar(50),
Sexo int,
Cedula varchar(13),
Telefono varchar(14),
Celular varchar(14));

create table Prestamos(PrestamoId int primary key identity(1,1),
ClienteId int references Clientes(ClienteId),
FechaInicial varchar(30),
FechaVencimiento varchar(30),
Monto float, 
NuSemana int,
CantidadCuota float,
Cuota float,
Interes float,
PagoTotal float);

 Create table Cobros(CobroId int primary key identity(1,1),
FechaCobro Date,
 Abono float,
SubTotal float,
Total float
 );

 create table CobrosDetalle(CobroDetalleId int primary key identity(1,1),
 PrestamoId int references Prestamos(PrestamoId),--cliente
 CobroId int references Cobros(CobroId),
 NuSemana int,
 Cuota float,--No Aplica para no cobro
 );
                         
create table NoCobrados(NoCobradosId int identity primary key,
RutaId int references Rutas(RutaId),
Total float
 );

create table NoCobradosDetalle(NoCobradoId int identity primary key,
PrestamoId int references Prestamos(PrestamoId),
Cedula varchar(15),
CuotaAtraso int,
Mora float,--No Aplica para no cobro
 SubTotal float)


drop table Usuarios;
drop table Cobradores;
drop table Rutas;
drop table Clientes;
drop table Prestamos;
drop table Cobros;
drop table CobrosDetalle;
drop table NoCobrados;
drop table RutasCobradores;

select * from Usuarios;
select * from Cobradores;
select * from Rutas;
select * from Clientes;
select * from Prestamos;
select * from Cobros;
select * from CobrosDetalle;

insert into Prestamos(ClienteId,RutaId,FechaInicial,FechaVencimiento,Monto,PagoTotal)values('1','1','10-10-2016','12-12-20166','2000','2600');
insert into RutasCobradores(RutaId,CobradorId)values('1','2');