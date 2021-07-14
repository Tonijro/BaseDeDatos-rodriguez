create database personas;
create database automotores;
use personas;
create table clientes (DNI int, nombre varchar(100), direccion varchar(100), telefono int);
create table empleados (DNI int, nombreapellido varchar(100), direccion varchar(100), telefono int, mail varchar(100), cargo varchar(100), edad int);
insert into clientes (DNI, nombre, direccion, telefono) values
(1, "Raul", "calle qteimporta 123", 12345678),
(2, "Alberto", "calle postaman 123", 87654321),
(3, "Juan", "calle parareagresivo 123", 12344321),
(4, "Marcelo", "calle requetodasterminabanen123 123", 12312312),
(5, "Pepe", "calle buequemadisimoelchiste 123", 999999999);
insert into empleados (DNI, nombreapellido, direccion, telefono, mail, cargo, edad) values
(6, "Pepe Argento", "calle nombrecorto 123", 11111111, "mail1@gmail.com", "rey de los salames", 99),
(7, "Pepe Franccela", "calle seleccion 123", 22222222, "mailfranccela@gmail.com", "rey de los boludos", 11),
(8, "Perito Moreno", "calle montañaalta 123", 33333333, "elperimore@gmail.com", "rey de las montañas", 69),
(9, "Evita Peron", "calle evita 123", 44444444, "evipero@gmail.com", "rey de los zurdos", 70),
(10, "Albertobarco Fernandex", "calle selvabrazuca 123", 55555555, "vinimosenbarco@gmail.com", "rey de latinoamerica", 5);
use automotores;
create table ambulancias (patente varchar (100), NombreDeChofe varchar(100));
insert into ambulancias (patente, NombreDeChofe) values
("ABC 123", "Chofer"),
("DFG 456", "apure"),
("HIJ 789", "ese"),
("LMN 101", "motor"),
("OPQ 112", "paulo");
alter table clientes 
add NroDeSocio int;
alter table empleados
add NumLegajo int;
alter table ambulancias
add NumDeUnidad int;
update clientes set direccion = "calle falsa 123" where direccion = "calle qteimporta 123" or direccion = "calle postaman 123";
update empleados set mail = "hola@gmail.com" where DNI = 8;
update ambulancias set nombre = "Rodolfo" where patente = "ABC 123";
delete from empleados where edad>=65;
delete from clientes where telefono<40000000;
delete from clientes where nombre="equis";
  