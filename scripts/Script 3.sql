--crea tabla estudiante

create table estudiante(
	cedula char (10) not null,
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	email varchar (50) not null,
	fecha_nacimiento date,
	constraint estudiante_pk primary key (cedula)
)
select nombre,cedula from estudiante

select * from estudiante
where cedula like '17%'

select * from estudiante
where nombre like 'A%'

update estudiante set apellido='Hernandez'
where cedula like '17%'

delete from estudiante
where cedula like '%05'