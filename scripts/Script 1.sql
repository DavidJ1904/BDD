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

--Reto 23
create table ventas (
	id_venta int ,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint ventas_pk primary key (id_venta)
)
select * from ventas

alter table ventas
add constraint ventas_producto_fk
foreign key (codigo_producto)
references producto(codigo)

insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values(250,5,'20/01/2013',4);
insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values(251,6,'14/10/2002',1);
insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values(252,7,'01/08/2011',2);

insert into productos(codigo,nombre,descripcion,precio,stock)
values (1,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock)
values (2,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock)
values (3,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock)
values (4,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock)
values (5,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock)
values (6,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock)
values (7,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (8,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (9,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (10,'Coca Cola',3.50,300)

