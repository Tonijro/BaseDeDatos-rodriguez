create database libreripog; -- 1
use libreripog;
create table libros ( -- 2
id_libro int not null auto_increment primary key,
titulo varchar (100),
autor varchar (100),
editorial varchar(100),
precio int,
stock int,
fecha_de_lanzamiento date
);
create table ventas (
fecha_venta date,
id_libro int not null,
unidades int
);
insert into libros (titulo, autor, editorial, precio, stock, fecha_de_lanzamiento)
values
("matematica", "Pablo Effeberger", "Kapelusz", 1500, 10, "2020/02/02"),
("Mis cinco sentidos", "Carolina Micha", "Sudamericana", 1400, 7, "2019/02/05"),
("El mono relojero", "Constantino Vigil", "Atlántida", 800, 12, "2021/05/05"),
("Redes Informáticas", "Miguel Dederkremer", "Raduses", 1000, 5, "2019/11/01"),
("Freddy Mercury, biografía", "Lesley Ann Jones", "Alianza", 2200, 5, "2018/06/05");
insert into ventas (id_libro, fecha_venta, unidades)
values
(4, "2021/05/03", 5),
(5, "2020/12/06", 3),
(3, "2021/05/03", 10),
(2, "2019/11/24", 4),
(1, "2018/05/03", 6);
select * from ventas where unidades>8 order by id; -- 3
select * from ventas where unidades<=5; -- 4
select * from libros where precio>=1000 and precio<=2000; -- 5
select * from libros where editorial like '%a%'; -- 6
select * from libros where editorial like 's%'; -- 7
select * from libros order by fecha_de_lanzamiento; -- 8
select * from ventas order by fecha_venta desc; -- 9
select stock from libros; -- 10
select MAX(precio) from libros; -- 11
select MIN(precio) from libros; -- 12
select AVG(precio) from libros; -- 13
update libros set stock=stock-unidades; -- 14
select * from ventas where fecha_venta="2021/05/03";  -- 15
select * from ventas where fecha_venta>="2018/05/03" and fecha_venta<="2019/12/31"; -- 16
select * from libros where stock>4 and stock<14 limit 3; -- 17
insert into libros (titulo, autor, editorial, precio, stock, fecha_de_lanzamiento) -- 18
values
("pogchamp", "peepeepoopoo", "amogus", null, 69, "2020/04/20");
update libros set precio=1200 where precio=null; -- 19
select * from libros where stock>avg(stock); -- 20
alter table libros add ISBN int not null; -- 21
select editorial, precio and titulo from ventas where unidades=MAX(unidades); -- 22
select stock from ventas where fecha_venta=MAX(fecha_venta); -- 23
