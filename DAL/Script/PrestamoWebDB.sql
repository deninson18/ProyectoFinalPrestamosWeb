create database PrestamoWebDB;

use PrestamoWebDB;

create table Usuarios(
UsuarioId int primary key identity(1,1),
Nombres varchar(30),
Apellidos varchar(30),
NombreUsuario varchar(40),
Contrasena varchar(50),
AreaUsuario varchar(30),
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
RutaId int references Rutas(RutaId),
FechaInicial varchar(30),
FechaVencimiento varchar(30),
Monto float, 
NuSemana int,
Semana int,
ValorCuota int,
Interes float,
PagoTotal float);

drop table Usuarios;
drop table Cobradores;
drop table Rutas;
drop table Clientes;
drop table Prestamos;

select * from Usuarios;
select * from Cobradores;
select * from Rutas;
select * from Clientes;
select * from Prestamos;

insert into Prestamos(ClienteId,RutaId,FechaInicial,FechaVencimiento,Monto,PagoTotal)values('1','1','10-10-2016','12-12-20166','2000','2600');