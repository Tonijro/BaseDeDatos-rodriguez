create database bancopog;
use bancopog;
create table empleados (
id_empleados int not null auto_increment primary key,
id_dept int not null,
puesto varchar(100) not null,
nombre varchar(100) not null,
apellido varchar(100) not null,
dni int not null,
salario int not null
);
create table departamentos (
id_depar int not null auto_increment primary key,
nombre varchar(100) not null,
cant_empleados int not null,
direct_depto varchar(100) not null
);
insert into empleados (id_dept, puesto, nombre, apellido, dni, salario)
values
(1, "gerente de ventas", "David", "Austin", 45.555.555, 90.000),
(2, "diseñador web", "Juan", "Dimperio", 44.444.444, 150.000),
(3, "auditor financiero", "Pedro", "Guerreiro", 43.333.333, 100.000),
(4, "administrador de sistemas", "Lucas", "Martinez", 42.222.222, 170.000),
(5, "vigilador", "Guido", "Gianoni", 40.000.000, 40.000),
(6, "supervisor de limpieza", "Gaston", "Gianoni", 35.555.555, 35.000),
(7, "tecnico de atencion al cliente", "franco", "Pesino", 33.333.333, 40.000),
(8, "analista producto prestamos", "Micaela", "Fedullo", 20.000.000, 100.000),
(9, "administrador de empresas", "Nicolas", "Mamede", 50.000.000, 80.000),
(10, "HR manager", "Delfina", "Cancelo", 44.050.050, 100.000);
insert into departamentos (nombre, cant_empleados, direct_depto)
values
("ventas", 1, "Alberto Raul"),
("marketing", 1, "Raul Alberto"),
("finanzas", 1, "Alberto Alberto"),
("sistemas", 1, "Raul Raul"),
("seguridad", 1, "Jose Manuel"),
("limpieza", 1, "Manuel Jose"),
("atencion consumidor", 1, "Jose Jose"),
("prestamistas", 1, "Manuel Manuel"),
("organizacion", 1, "juan Raul"),
("HR", 1, "Raul Juan");
select * from empleados where id_dept=2;
select * from empleados where salario < (select avg(salario) from empleados);
select * from empleados where salario < (select avg(salario) from empleados where id_dept=1);
select * from empleados where puesto="gerente de ventas";
select * from empleados where id_dept=4;


