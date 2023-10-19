--RETO 23
--Crear la tabla cliente
create table cliente(
	cedula char (10),
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	constraint cliente_pk primary key (cedula)
)
--Crear la tabla compras
create table compras (
	id_compra int,
	cedula char (10) not null,
	fecha_compra date not null,
	monto decimal (10,2) not null,
	constraint compras_pk primary key (id_compra)
)

alter table compras
add constraint cliente_compras_fk
foreign key (cedula)
references cliente (cedula)
--Agregar datos a la tabla clientes
insert into cliente (cedula,nombre,apellido)
values(1178901232,'Felix','Torres');
insert into cliente (cedula,nombre,apellido)
values(1901201232,'Arthur','Peres');
insert into cliente (cedula,nombre,apellido)
values(1178231332,'Alejandro','Diaz');
insert into cliente (cedula,nombre,apellido)
values(1178231332,'Felipe','Torres');
insert into cliente (cedula,nombre,apellido)
values(1178909122,'Carlos','Armijos')
--Agregar datos a la tabla compras
insert into compras (id_compra,cedula,fecha_compra,monto)
values(09823,1178901232,'09/10/2021',200.7);
insert into compras (id_compra,cedula,fecha_compra,monto)
values(02313,1178231332,'22/08/2001',912.9);
insert into compras (id_compra,cedula,fecha_compra,monto)
values(09013,1901201232,'19/01/2022',310.2);
insert into compras (id_compra,cedula,fecha_compra,monto)
values(12323,1901201232,'10/12/2011',740.4);
insert into compras (id_compra,cedula,fecha_compra,monto)
values(89123,1178231332,'09/10/2021',200.1);

select * from cliente
select *from compras