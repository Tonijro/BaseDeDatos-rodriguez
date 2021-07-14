create database MiEmpresa;
use MiEmpresa;
create table empleados(
    dni int not null,
    apellido varchar(50) not null,
    nombre varchar(50) not null,
    domicilio varchar(50) not null,
    sector varchar(50) not null,
    telefono int not null,
    num_interno int not null,
    celular int not null,
    estado_civil varchar(50) not null,
    hijos int,
    fecha_nac date not null,
    fecha_ing date not null);
create table sueldo(
    basico int not null,
    retenciones int not null,
    asignaciones int not null,
    comisiones int not null,
    mes int not null,
    sueldo_neto int not null);
create table productos(
    descripcion varchar(50),
    stock int not null,
    stock_minimo int not null,
    precio_coste int not null,
    precio_venta int not null,
    demora_entrega_dias int not null);
create table control_horas(
    fecha date not null,
    hora_inicio time not null,
    hora_fin time not null);
create table productos_vendidos(
    dni_vendedor int not null,
    apellido varchar(50) not null,
    nombre varchar(50) not null,
    cant int not null,
    descripcion_producto varchar(50),
    fecha_venta date not null);
insert into empleados(DNI, apellido, nombre, domicilio, sector, telefono, num_interno, celular, estado_civil, hijos, fecha_nac, fecha_ing) values
    (1, "apellido 1", "nombre 1", "domicilio 1", "sector 1", 2352523, 325235235, 23525323, "casado", 1, "1945-01-17", "1993-12-11"),
    (2, "apellido 2", "nombre 2", "domicilio 2", "sector 2", 3256789, 346375478, 34763457, "divorciado", 2, "1944-07-14", "2000-11-01"),
    (3, "apellido 3", "nombre 3", "domicilio 3", "sector 3", 4678907, 346534767, 53474587, "soltero", 3, "1935-10-10", "1999-06-12"),
    (4, "apellido 4", "nombre 4", "domicilio 4", "sector 4", 5437678, 346345745, 54374578, "viudo", null, "1949-01-12", "1998-05-11"),
    (5, "apellido 5", "nombre 5", "domicilio 5", "sector 5", 3467547, 214123567, 53756486, "casado", 2, "1950-11-16", "1990-04-23");
insert into sueldo(basico, retenciones, asignaciones, comisiones, mes, sueldo_neto) values
    (124, 215, 432, 325, 245, 124),
    (421, 213, 346, 123, 234, 234),
    (528, 325, 534, 241, 123, 532),
    (647, 436, 743, 324, 567, 636),
    (976, 645, 436, 532, 856, 435);
insert into productos(descripcion, stock, stock_minimo, precio_coste, precio_venta, demora_entrega_dias) values
    ("descripcion 1", 100, 10, 100, 120, 7),
    ("descripcion 2", 200, 20, 200, 240, 8),
    ("descripcion 3", 150, 30, 300, 360, 9),
    ("descripcion 4", 250, 50, 400, 480, 10),
    ("descripcion 5", 300, 350, 500, 600, 5);
insert into control_horas(fecha, hora_inicio, hora_fin) values
    ("2000-04-23", "12:30:00", "18:00:00"),
    ("2000-04-24", "10:30:00", "16:00:00"),
    ("2000-04-25", "09:30:00", "15:00:00"),
    ("2000-04-26", "11:30:00", "17:00:00"),
    ("2000-04-27", "12:00:00", "17:30:00");
insert into productos_vendidos(dni_vendedor, apellido, nombre, cant, descripcion_producto, fecha_venta) values
    (1, "apellido 1", "nombre 1", 10, "descripcion 1", "2021-03-05"),
    (2, "apellido 2", "nombre 2", 14, "descripcion 2", "2021-09-15"),
    (3, "apellido 3", "nombre 3", 13, "descripcion 4", "2017-08-25"),
    (4, "apellido 4", "nombre 4", 14, "descripcion 5", "2021-02-12"),
    (5, "apellido 5", "nombre 5", 15, "descripcion 3", "2020-12-16");