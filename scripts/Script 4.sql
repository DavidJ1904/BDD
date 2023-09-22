--crear una tabla llamada registros

create table registro_entrada(
	codigo_registro int not null,
	cedula_empleado char (10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key (codigo_registro)
)

select cedula_empleado,fecha,hora from registro_entrada

select * from registro_entrada
where hora
between '7:00:00' and '14:00:00'

select * from registro_entrada
where hora >'8:00:00'

update registro_entrada set cedula_empleado = '0823456789' 
where EXTRACT(MONTH FROM fecha) = 8