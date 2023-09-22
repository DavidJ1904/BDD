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
values(15983, 'Fornite', 'juego de suspenso', 10);

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
