create database turismolol;
use turismolol;
create table clientes (
id int not null auto_increment primary key,
nombre varchar(100) not null,
apellido varchar(100) not null,
direccion varchar(100) not null,
dni int not null,
telefono varchar(100) not null,
celular varchar(100) not null
);
create table alojamiento (
id int not null auto_increment primary key,
nombre varchar(100) not null,
categoria varchar(50) not null,
direccion varchar(100) not null,
telefono varchar(100) not null,
cantidad_personas int not null,
cantidad_pisos int not null
);
create table reservas (
id_cliente int not null,
id_alojamiento int not null,
paquete_viaje int not null,
fecha_inicio date not null,
fecha_fin date not null,
cant_personas int not null,
lugar varchar(100) not null,
cant_dias int not null,
cant_noches int not null,
precio int not null,
cant_excurciones int not null,
tipo_viaje varchar(100)
);
insert into clientes (nombre, apellido, direccion, dni, telefono, celular)
values
("guido", "garcia", "pogchamp st 6969", 1, "15 12345678", "11 87654321"),
("gaston", "garciorela", "pogent st 42069", 2, "15 98765432", "11 88889999"),
("german", "gimenez", "yologamer st 12345", 3, "15 77778888", "11 33335555"),
("mejico", "juarez", "panessagorda st 69420", 4, "15 11117777", "11 33339999"),
("peña", "haez", "vilchesbobo st 1234", 5, "15 85943756", "11 87509469"),
("alberto", "fernandez", "tontolandia st 999", 6, "15 66666666", "11 91191166"),
("alberto jr", "fernandez", "gillandia st 666", 7, "15 99999999", "11 11911999"),
("alberto", "fernandez jr", "anime st 911", 8, "15 11111111", "11 22222222"),
("alberto jr", "fernandez jr", "bigote st 69", 9, "15 01012332", "11 95674748"),
("mauricio", "macri", "noseinundamas st 123", 10, "15 91916161", "11 23459876");
select * from clientes;
select * from clientes
where id=6;
select nombre, apellido, telefono, celular from alumnos
where apellido like 'gar%';
select nombre, apellido, telefono, celular from alumnos
where apellido like 'ez%';
select nombre, apellido, telefono, celular from alumnos
where apellido like '%ar%';
update clientes set direccion="San Juan 1234" where id=10;
delete from turismolol where id=10;

insert into alojamiento (id_alojamiento, nombre, categoria, direccion, telefono, cantidad_personas, cantidad_pisos)
(1, "dababy hotel", "mil les go", "baby st 555", "15 66119988", 420, 69),
(2, "amogus hotel", "5 estrellas", "sus st 123", "15 12345678", 10, 5),
(3, "pog hotel", "10 estrellas", "twitch.tv 555", "15 55555555", 99, 8),
(4, "edgy hotel", "5 estrellas", "vena cortada 999", "15 66699996", 66, 6),
(5, "nisman hotel", "2 estrellas", "cabeza plomo 123", "15 9119119", 0, 1),
(6, "maldonado hotel", "4 estrellas", "natacion olimpica 555", "15 19198282", 911, 9),
(7, "videla hotel", "9 estrellas", "zurdo falcon 1979", "15 50550566", 9000, 7),
(8, "menem hotel", "7 estrellas", "rio tercero 1994", "15 44445555", 10),
(9, "peepeepoopoo", "10 estrellas", "ohoh stinky 12345", "15 90909393", 25),
(10, "al qaeda", "5 estrellas", "islam 666", "15 47412810", 20);
insert into reservas (id_cliente, id_alojamiento, paquete_viaje, fecha_inicio, fecha_fin, cant_personas, lugar, cant_dias, cant_noches, precio, cant_excurciones, tipo_viaje)
(1, 1, 5, "2012/05/29", "2012/6/13", 5, "alemania", 16, 15, 10000, 8, "avion"),
(2, 2, 4, "2012/09/10", "2012/9/20", 3, "ecuador", 10, 9, 11000, 5, "avion"),
(3, 3, 9, "2012/01/01", "2012/01/31", 2, "italia", 31, 30, 16000, 10, "avion"),
(4, 4, 7, "2012/02/01", "2012/02/15", 4, "EEUU", 15, 14, 13000, 6, "avion"),
(5, 5, 8, "2012/06/01","2012/06/25", 3, "armenia", 19, 18, 9000, 10, "avion"),
(6, 6, 3, "2012/07/31", "2012/08/15", 4, "ushuaia", 16, 15, 8000, 0, "bus"),
(7, 7, 1, "2012/09/01", "2012/09/15", 5, "francia", 15, 14, 10000, 7, "avion"),
(8, 8, 2, "2012/09/15", "2012/09/30", 3, "españa", 15, 14, 15000, 8, "avion"),
(9, 9, 6, "2012/12/01", "2012/12/20", 4, "australia", 20, 19, 20000, 10, "avion"),
(10, 10, 6, "2012/12/25", "2013/01/05", 3, "australia", 11, 10, 14000, 6, "avion");
select * from reservas where cant_excurciones>3
order by lugar;
select * from reservas where cant_excurciones>3
order by cant_dias;
select * from reservas where cant_dias=2 and precio>6.000;
select * from reservas where fecha_inicio>"2017/04/30" and fecha_fin<"2017/05/11"
order by fecha_inicio;
delete from reservas where id=10;
update reservas set direccion="Belgrano 15897" where id_alojamiento=3;
select * from reservas where fecha_inicio>"2017/03/31" and fecha_fin<"2017/05/01" and cant_personas>2;
delete from turismolol where id=6;
insert into reservas (paquete_viaje, cant_dias, cant_noches)
values ("bariloche", 3, 4),("bariloche", 10, 11);
update reservas set cant_dias=7, cant_noches=8 where paquete_viaje="bariloche";




 

