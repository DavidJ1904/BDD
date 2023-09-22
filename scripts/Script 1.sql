--crear la tabla productos

create table productos (
	codigo int not null,
	nombre varchar (50) not null,
	descripcion varchar (200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)

select * from productos
where nombre like 'Q%'

select * from productos
where descripcion is null

select * from productos
where precio 
between '2' and '3'

update productos set stock=0
where descripcion is null

delete from productos
where descripcion is null

--RETO 7
select * from productos
where stock = '10' and precio < '10'

select nombre, stock from productos
where nombre like 'M%' or descripcion is null

select nombre from productos
where descripcion is null or stock='0'