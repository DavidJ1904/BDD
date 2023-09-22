--crear una tabla llamada registros

create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char (10) not null,
	fecha date not null,
	hora time not null,
	constraint registro_entrada_pk primary key (codigo_registro)
)
--REGISTROS_ENTRADA
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12345, '1754416489', '18/06/2023', '7:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12355, '1758254591', '03/08/2023', '14:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12346, '1715974492', '25/03/2022', '23:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12347, '1735642583', '28/12/2015', '16:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12389, '1707416984', '16/07/2012', '8:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12349, '1778541235', '17/03/2013', '10:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12310, '1742158637', '14/05/2017', '19:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12311, '1756321784', '15/05/2004', '20:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12358, '1712546328', '07/07/2008', '21:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12378, '1725785413', '02/09/2023', '4:00');

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
