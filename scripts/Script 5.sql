--crear tabla llamada videojuegos

create table videojuegos(
	codigo int not null,
	nombre varchar (100) not null,
	descripcion varchar (300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values('091823','Minecraft','Juego de supervivencia',5.0)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values('124324','Resident evil','Juego de accion',5.0)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values('091442','Dead Space','Juego de terror',4.2)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values('321433','Cyberpunk','Juego de accion',4.3)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values('011823','The Forest','Juego de supervivencia',5.0)

insert into videojuegos(codigo,nombre,valoracion)
values('041823','ROBLOX',4.1)

insert into videojuegos(codigo,nombre,valoracion)
values('001232','ARK',4.9)

insert into videojuegos(codigo,nombre,valoracion)
values('09312','FIFA2020',4.7)

select * from videojuegos