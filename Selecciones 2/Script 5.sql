--crear tabla llamada videojuego

create table videojuego(
	codigo int not null,
	nombre varchar (100) not null,
	descripcion varchar (300),
	valoracion int not null,
	constraint videojuego_pk primary key (codigo)
)
--VIDEOJUEGOS
insert into videojuego(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);

insert into videojuego(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);

insert into videojuego(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15984, 'Fornite', 'juego de suspenso', 10);

insert into videojuego(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

insert into videojuego(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuego(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuego(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);

insert into videojuego(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);

insert into videojuego(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);

select * from videojuego

--RETO 7

select * from videojuego
where nombre like 'C%' or valoracion ='7'

select nombre from videojuego
where codigo between '3' and '7' 
or valoracion ='7'

select * from videojuego 
where (descripcion ='juego de guerra') 
and (valoracion > '7')
and (nombre like 'C%') 
or (valoracion > '8')
and (nombre like 'D%')

--RETO 23
delete from videojuego
create table plataforma (
	id_plataforma int,
	nombre_plataforma varchar (50) not null,
	codigo_videojuego int,
	constraint plataforma_pk primary key (id_plataforma)
)

alter table plataforma
add constraint plataforma_videojuego_fk
foreign key (codigo_videojuego)
references videojuego (codigo)

select * from plataforma

insert into plataforma(id_plataforma,nombre_plataforma,codigo_videojuego)
values(12909,'PC',70215);
insert into plataforma(id_plataforma,nombre_plataforma,codigo_videojuego)
values(19009,'PC',07563);
insert into plataforma(id_plataforma,nombre_plataforma,codigo_videojuego)
values(12919,'PS',70215);
insert into plataforma(id_plataforma,nombre_plataforma,codigo_videojuego)
values(14119,'PS',63549)
insert into plataforma(id_plataforma,nombre_plataforma,codigo_videojuego)
values(12194,'XBox',63549);
insert into plataforma(id_plataforma,nombre_plataforma,codigo_videojuego)
values(11194,'XBox',63240);
insert into plataforma(id_plataforma,nombre_plataforma,codigo_videojuego)
values(12109,'Nintendo',63549)
insert into plataforma(id_plataforma,nombre_plataforma,codigo_videojuego)
values(12191,'Nintendo',63240)
--RETO 24
--CONSULTA
select vi.nombre,vi.descripcion,vi.valoracion, pl.id_plataforma, pl.nombre_plataforma, pl.codigo_videojuego from 
plataforma pl, videojuego vi
where vi.codigo = pl.codigo_videojuego and
vi.descripcion='Guerra' and vi.valoracion > 7 or
vi.nombre like 'C%'and vi.valoracion > 8 or
vi.nombre like 'D%'
--SUBCONSULTA
select pl.id_plataforma, pl.nombre_plataforma, pl.codigo_videojuego from 
plataforma pl, videojuego vi
where vi.codigo = pl.codigo_videojuego 
and nombre ='God of Ward'

--RETO 25
--AGREGACION 1
select codigo_videojuego , count(*) from plataforma
group by (codigo_videojuego)
--AGREGACION 2
select ROUND(AVG(valoracion),2)as decimal from videojuego