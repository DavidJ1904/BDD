create table estudiantes(
	cedula char (10) not null,
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	email varchar (50) not null,
	fecha_nacimiento date,
	constraint estudiantes_pk primary key (cedula)
)
--ESTUDIANTES
delete from estudiantes
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003',19021);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000',19022);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005',19021);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002',19021);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008',19022);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002',19022);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010',19021);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001',19022);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000',19021);

select * from estudiantes
--RETO 7

select nombre,apellido from estudiantes
where nombre like 'M%' or apellido like 'Z%'

select nombre from estudiantes
where cedula like '%32%' and cedula like '18%'

select nombre,apellido from estudiantes
where cedula like '%06' or cedula like '17%'

--RETO 23
alter table estudiantes
add column codigo_profesor int

create table profesores(
	codigo int,
	nombre varchar(50) not null,
	constraint codigo_pk primary key(codigo)
)

select * from profesores
select * from estudiantes
insert into profesores (codigo,nombre)
values(19021,'Juan Antonio');
insert into profesores (codigo,nombre)
values(19022,'Felipe Garcia')

alter table estudiantes
add constraint profesores_estudiantes_fk
foreign key (codigo_profesor)
references profesores(codigo)

--RETO 24
--CONSULTA
select pro.codigo,es.nombre,es.apellido from 
estudiantes es, profesores pro
where es.codigo_profesor = pro.codigo
and es.apellido like '%n%'
--SUBCONSULTA
select es.cedula,es.nombre,es.apellido,es.email,es.fecha_nacimiento,es.codigo_profesor from 
estudiantes es, profesores pro 
where es.codigo_profesor = pro.codigo
and pro.nombre = 'Francisco'

--RETO 25
--AGREGACION 1
select codigo_profesor, count (*) from estudiantes , profesores
group by (codigo_profesor)
--AGREGACION 2
select ROUND(AVG(extract(year from age(fecha_nacimiento))))as edad_promedio
from estudiantes

