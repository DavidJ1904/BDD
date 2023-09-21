--crea tabla estudiante

create table estudiante(
	cedula char (10) not null,
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	email varchar (50) not null,
	fecha_nacimiento date,
	constraint estudiante_pk primary key (cedula)
)