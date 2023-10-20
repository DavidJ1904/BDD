--RETO 23
--crea la tabla personas
create table persona(
	cedula char (10) not null,
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint persona_pk primary key (cedula)
)
select * from persona
--crear la tabla prestamo
create table prestamo(
	cedula char(10),
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar (40),
	constraint prestamo_pk primary key (cedula)
)

alter table persona 
add constraint personas_prestamo_fk
foreign key (cedula)
references prestamo(cedula)

--Agregar datos a la tabla persona
insert into persona (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values(1726500588,'David','Jima',1.8,'05/03/2004','20:20',300.2,0);
insert into persona (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values(1732412348,'Esteban','Castro',1.79,'15/10/1978','09:20',130.5,4);
insert into persona (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values(1709123588,'Julio','Benedito',1.58,'09/12/2000','18:45',550.1,2);
insert into persona (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values(1122190918,'Raul','Ruiz',1.90,'20/12/1992','10:30',825.4,3);

select * from persona
--Agregar datos a la tabla prestamo
insert into prestamo (cedula,monto,fecha_prestamo,hora_prestamo,garante)
values(1726500588,800,'09/01/2020','12:30',100)

insert into prestamo (cedula,monto,fecha_prestamo,hora_prestamo,garante)
values(1732412348,910,'29/01/2022','21:32',300);

insert into prestamo (cedula,monto,fecha_prestamo,hora_prestamo,garante)
values(1709123588,1000,'29/08/2022','10:44',250);

insert into prestamo (cedula,monto,fecha_prestamo,hora_prestamo,garante)
values(1122190918,900,'23/01/2010','19:10',500);

select * from prestamo

--RETO 24
--CONSULTA
select pe.cantidad_ahorrada, pr.monto, pr.garante from
prestamo pr,persona pe
where pr.cedula=pe.cedula
and garante between '100' and '1000'
--SUBCONSULTA
select * from
prestamo pr,persona pe
where pr.cedula=pe.cedula
and nombre='Sean'

--RETO 25
--AGREGACION 1
select cedula,SUM(cast(monto as numeric)) from prestamo
group by (cedula)
--AGREGACION 2
select count(*)
from persona pr, prestamo pe
where pr.cedula = pe.cedula
and numero_hijos > 1