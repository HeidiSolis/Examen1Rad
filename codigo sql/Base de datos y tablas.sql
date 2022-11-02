create database ExamenRAD

GO

use ExamenRAD

GO

create table Usuarios (
Id_Usuario int primary key identity (1, 1) not null,
Nombre_Usuario varchar(40) not null,
Contra_Usuario varchar(40) not null
)

create table Sucursales (
Id_Sucursal int primary key identity (1, 1) not null,
Codigo_Sucursal varchar(5) not null,
Nombre_Sucursal varchar(40),
Direccion_Sucursal text
)

create table Empleados (
Id_Empleado int primary key identity (1, 1) not null,
Codigo_Empleado varchar(5) not null,
Nombre_Empleado varchar(40) not null,
Apellido_Empleado varchar(40) not null,
Fecha_Ingreso Date
)