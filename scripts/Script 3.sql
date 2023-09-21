--crea tabla estudiante

create table estudiante(
	cedula char (10) not null,
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	email varchar (50) not null,
	fecha_nacimiento date,
	constraint estudiante_pk primary key (cedula)
)
insert into estudiante (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1479801231','Arthur','Sanchez','sanchez123@hotmail.com','03-12-2000')

insert into estudiante (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1794801231','Juan','Fernando','fercho123@hotmail.com','03-02-2003')

insert into estudiante (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1109182341','Antonio','Lara','jufer12@hotmail.com','09-02-2010')

insert into estudiante (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1891230182','Lourdes','Luz','lucero120@hotmail.com','17-04-1999')

insert into estudiante (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1421236112','Maximo','Escalera','famoso2020@hotmail.com','20-01-2018')

insert into estudiante (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1872190521','Marcos','Gutierres','luciaxmarco@hotmail.com','08-08-2020')

insert into estudiante (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1190123492','Sancho','Panza','mexico13@hotmail.com','01-02-1978')

insert into estudiante (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1311234123','Rodrigo','Fernando','fenand123@hotmail.com','01-01-2000')

select * from estudiante