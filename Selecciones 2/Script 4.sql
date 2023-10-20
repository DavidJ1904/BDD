--crear una tabla llamada registros

create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char (10) not null,
	fecha date not null,
	hora time not null,
	constraint registro_entrada_pk primary key (codigo_registro)
)
--REGISTROS_ENTRADA
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12345, '1754416489', '18/06/2023', '7:00',12314);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12355, '1758254591', '03/08/2023', '14:00',12314);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12346, '1715974492', '25/03/2022', '23:00',12313);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12347, '1735642583', '28/12/2015', '16:00',12313);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12389, '1707416984', '16/07/2012', '8:00',12312);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12349, '1778541235', '17/03/2013', '10:00',12312);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12310, '1742158637', '14/05/2017', '19:00',12312);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12311, '1756321784', '15/05/2004', '20:00',12314);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12358, '1712546328', '07/07/2008', '21:00',12313);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12378, '1725785413', '02/09/2023', '4:00',12313);

select * from registros_entrada

--RETO 7
select * from registros_entrada
where EXTRACT(MONTH FROM fecha) = 9 or cedula_empleado like '17%'

select * from registros_entrada
where EXTRACT(MONTH FROM fecha) = 8 
and (cedula_empleado like '17%')
and hora between '08:00:00' and '12:00:00' 

select * from registros_entrada
where EXTRACT(MONTH FROM fecha) = 8 
and (cedula_empleado like '17%')
and (hora between '08:00:00' and '12:00:00')
or EXTRACT(MONTH FROM fecha) = 9 
and (cedula_empleado like '08%')
and (hora between '09:00:00' and '13:00:00')

--RETO 23
select * from registros_entrada
delete from registros_entrada
alter table registros_entrada
add column codigo_empleado int not null

select * from empleado
create table empleado(
	codigo_empleado int not null,
	nombre varchar (25) not null,
	fecha date not null,
	hora time not null,
	constraint empleado_pk primary key (codigo_empleado)
)

alter table registros_entrada
add constraint registro_entrada_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado)

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(12312,'Alexander Domingues', '12/09/2002','12:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(12313,'Anthony Maiquiza', '22/07/2024','17:04');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(12314,'Alejandro Majno', '08/10/2012','11:30')

--RETO 24
--CONSULTA
select re.cedula_empleado,re.fecha,em.nombre from
empleado em,registro_entrada re
where (re.fecha > '2023/08/01' and re.fecha <'2023/08/31') or
(re.cedula_empleado like '17%' and em.hora >'8:00' and em.hora <'12:00')or
(re.fecha > '2023/10/06' and re.fecha < '2023/10/20'and re.cedula_empleado like '08%' and em.hora > '9:00' and em.hora<'13:00')
--SUBCONSULTA
select em.codigo_empleado,em.nombre,em.fecha,em.hora from
empleado em,registro_entrada re
where em.codigo_empleado = re.codigo_registro

--RETO 25
--AGREGACION 1
select cedula_empleado,count (*) from registros_entrada
group by (cedula_empleado)
--AGREGACION 2
select MAX(cast(fecha as date)), MIN(cast(fecha as date))  
from registros_entrada

