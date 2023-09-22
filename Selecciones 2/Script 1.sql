--PRODUCTOS
create table PRODUCTO (
	codigo int not null,
	nombre varchar (50) not null,
	descripcion varchar (200),
	precio money not null,
	stock int not null,
	constraint producto_pk primary key (codigo)
)
--PRODUCTOS
select * from producto 
insert into producto(codigo,nombre,descripcion,precio,stock) 
values (1,'Jabón','Lava todo',3.50,10);
insert into producto(codigo,nombre,descripcion,precio,stock) 
values (2,'Shampoo','Savital',2.50,20);
insert into producto(codigo,nombre,descripcion,precio,stock) 
values (3,'Deja','Deja',1.50,30);
insert into producto(codigo,nombre,descripcion,precio,stock) 
values (4,'Pasta dental','Fortident',3.0,40);
insert into producto(codigo,nombre,descripcion,precio,stock) 
values (5,'Cera','Cera de piso',2.50,50);
insert into producto(codigo,nombre,precio,stock) 
values (6,'Pan',1.50,50);
insert into producto(codigo,nombre,precio,stock) 
values (7,'Queso',5.50,60);
insert into producto(codigo,nombre,precio,stock)
values (8,'Leche',2.50,70);
insert into producto(codigo,nombre,precio,stock)
values (9,'Jamon',1.00,120);
insert into producto(codigo,nombre,precio,stock)
values (10,'Coca Cola',3.50,300);

--RETO 7
select * from producto
where stock = '10' and precio < '10'

select nombre, stock from producto
where nombre like 'M%' or descripcion is null

select nombre from producto
where descripcion is null or stock='0'

