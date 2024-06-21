create database empresa_id;
use empresa_id;
create table departamento (
 num_dpt int primary key,
 nombre_dpt varchar(20),
 planta int,
 edificio varchar(30),
 ciudad_dpt varchar(20)) Engine=InnoDB;

 create table proyecto (
 num_proy int primary key,
 nombre_proy varchar(10),
 producto varchar(20),
 presupuesto int) Engine=InnoDB;

 create table empleado (
 num_empl int primary key,
 nombre_empl varchar(30),
 sueldo int,
 ciudad_empl varchar(20),
 num_dpt int,
 num_proy int,
foreign key (num_dpt) references departamento(num_dpt),
foreign key (num_proy) references proyecto (num_proy)) Engine=InnoDB;

insert into departamento values (1, "DIRECCION", 10, "PAU CLARIS", "BARCELONA");
insert into departamento values (2, "DIRECCION", 8, "RIOS ROSAS", "MADRID");
insert into departamento values (3, "MARQUETING", 1, "PAU CLARIS", "BARCELONA");
insert into departamento values (4, "CALIDAD", 5, "RIOS ROSAS", "MADRID");
insert into departamento values (5, "PRODUCCION", 1, "PAU CLARIS", "BARCELONA");
insert into departamento values (6, "RRHH", 1, "PAU CLARIS", "BARCELONA");
insert into proyecto values (1, "IBDTEL", "TELEVISION", 1000000);
insert into proyecto values (2, "IBDVID", "VIDEO", 500000);
insert into proyecto values (3, "IBDTEF", "TELEFONIA", 750000);
insert into proyecto values (4, "IBDRAD", "RADIO", 250000);
insert into proyecto values (5, "IBDCOM", "COMUNICACIONES", 500000);
insert into empleado values (1, "CARME", 40000, "MATARO", 1, 1);
insert into empleado values (2, "EUGENIA", 35000, "TOLEDO", 2, 2);
insert into empleado values (3, "JOSEP", 25000, "SITGES", 3, 1);
insert into empleado values (4, "RICARDO", 40000, "BARCELONA", 1, 1);
insert into empleado values (11, "NURIA", 20000, "VIC", 3, 2);
insert into empleado values (12, "NURIA", 20000, "MATARO", 5, 5);
insert into empleado values (13, "ALBERT", 20000, "BARCELONA", 1, 5);
insert into empleado values (14, "MANEL", 30000, "TERRASA", 4, 3);
insert into empleado values (15, "JORDI", 30000, "BARCELONA", 5, 3);
insert into empleado values (20, "MARIA", 18000, "GETAFE", 5, 2);
insert into empleado values (21, "IGNACIO", 37000, "MADRID", 4, 5);