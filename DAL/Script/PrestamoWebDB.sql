create database PrestamoWebDB;

use PrestamoWebDB;

create table Usuarios(
UsuarioId int primary key identity(1,1),
Nombres varchar(30),
Apellidos varchar(30),
NombreUsuario varchar(40),
Contrasena varchar(50),
AreaUsuario varchar(30),
Foto image);

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



drop table Usuarios;
drop table Cobradores;
drop table Rutas;

select * from Usuarios;
select * from Cobradores;
select * from Rutas;