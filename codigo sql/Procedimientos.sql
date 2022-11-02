create proc Crear_Usuario
@Nombre_Usuario as varchar(40),
@Contra_Usuario as varchar(40)
as
insert into Usuarios(Nombre_Usuario, Contra_Usuario) values(@Nombre_Usuario, @Contra_Usuario)

go

create proc Crear_Sucursal
@Codigo_Sucursal as varchar(5),
@Nombre_Sucursal as varchar(40),
@Direccion_Sucursal as text
as
insert into Sucursales(Codigo_Sucursal, Nombre_Sucursal, Direccion_Sucursal) values(@Codigo_Sucursal, @Nombre_Sucursal, @Direccion_Sucursal)

go

create proc Crear_Empleado
@Codigo_Empleado as varchar(5),
@Nombre_Empleado as varchar(40),
@Apellido_Empleado as varchar(40),
@Fecha_Ingreso as date
as
insert into Empleados(Codigo_Empleado, Nombre_Empleado, Apellido_Empleado, Fecha_Ingreso) values(@Codigo_Empleado, @Nombre_Empleado, @Apellido_Empleado, @Fecha_Ingreso)

go

create proc Eliminar_Sucursal
@Codigo_Sucursal as varchar(5)
as
delete from Sucursales where Codigo_Sucursal = @Codigo_Sucursal

go

create proc Eliminar_Empleado
@Codigo_Empleado as varchar(5)
as
delete from Empleados where Codigo_Empleado = @Codigo_Empleado