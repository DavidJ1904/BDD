--crear la tabla productos

create table productos (
	codigo int not null,
	nombre varchar (50) not null,
	descripcion varchar (200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)

insert into productos(codigo,nombre,descripcion,precio,stock)
values ('09891','Manzana','Es una fruta de color rojo', 0.7,03)

insert into productos(codigo,nombre,descripcion,precio,stock)
values ('09892','Naranja','Es una fruta de color tomate', 1.0,04)

insert into productos(codigo,nombre,descripcion,precio,stock)
values ('09893','Frutilla','Es una fruta con forma de diamante', 1.5,05)

insert into productos(codigo,nombre,descripcion,precio,stock)
values ('09894','Uva','Es una fruta pequeña', 1.0,06)

insert into productos(codigo,nombre,descripcion,precio,stock)
values ('09895','Pera','Es una fruta de color verde', 0.8,07)

insert into productos(codigo,nombre,precio,stock)
values ('09896','Sandia', 3.0,08)

insert into productos(codigo,nombre,precio,stock)
values ('09897','Naranjilla', 1.5,9)

insert into productos(codigo,nombre,precio,stock)
values ('09898','Babaco', 0.90,10)

select * from productos