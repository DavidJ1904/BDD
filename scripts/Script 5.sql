--crear tabla llamada videojuegos

create table videojuegos(
	codigo int not null,
	nombre varchar (100) not null,
	descripcion varchar (300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)

select * from videojuegos
where nombre like 'C%'

select * from videojuegos
where valoracion
between '9' and '10'

select * from videojuegos
where descripcion is null

update videojuegos set descripcion = 'Mejor puntuado'
where valoracion >9