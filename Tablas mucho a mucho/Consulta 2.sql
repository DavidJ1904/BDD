-- TABLA HABITACIONES
create table habitaciones (
	habitacion_numero int,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,
	constraint habitaciones_pk primary key (habitacion_numero)
)

select * from habitaciones
-- TABLA HUESPEDES
create table huespedes (
	id int,
	nombres varchar (45) not null,
	apellidos varchar (45) not null,
	telefono char (10),
	correo varchar (45),
	direccion varchar (45),
	ciudad varchar (45),
	pais varchar (45),
	constraint huesped_pk primary key (id)
)
select *from huespedes
-- TABLA DE UNION
create table reservas(
	inicio_fecha date,
	fin_fecha date,
	habitacion_numero int not null,
	huespedes_id int not null,
	constraint habitaciones_fk foreign key (habitacion_numero) references habitaciones(habitacion_numero),
	constraint huespedes_fk foreign key (huespedes_id) references huespedes(id),
	constraint reservas_pk primary key (habitacion_numero,huespedes_id)
)
select * from reservas
-- AGREGAR DATOS TABLA HABITACIONES
insert into habitaciones values (1,40.0,4,4),
 								 (2,20.0,4,2),
								 (3,40.0,4,4),
								 (4,40.0,3,4),
								 (5,20.0,3,2),
								 (6,20.0,3,2),
								 (7,20.0,2,2),
								 (8,20.0,2,2),
								 (9,20.0,2,2),
								 (10,15.0,1,1),
								 (11,15.0,1,1),
								 (12,15.0,1,1);
-- AGREGAR DATOS TABLA HUESPEDES
insert into huespedes values    (1,'Ricardo','Montero',0980658774,'Ricmontero@gmail.com'),
								(2,'Sofía','Martinez',09887563205,'Sofimar@gmail.com'),
								(3,'Yamilteh','Guami',0998763298,'YAMGUAM@gmail.com'),
								(4,'Esther','Contreras',0995783602,'Esthcontro@gmail.com'),
								(5,'Wiliam','Mantilla',09858796320,'wmANTILLA@gmail.com'),
								(6,'Carmen','Noguera',0995876321,'Cnoguera@gmail.com'),
								(7,'Anika','Jimenez',0978965432,'AniJimenez@gmail.com'),
								(8,'Belen','Orejuela',0996365748,'BOrejuela@gmail.com'),
								(9,'Diana','Monroy',0987963214,'DianaMroy@gmail.com'),
								(10,'Bryan','Moncada',0986325741,'BrMoncada@gmail.com');
-- AGREGAR DATOS TABLA DE UNION							
insert into reservas(inicio_fecha,fin_fecha,habitacion_numero,huespedes_id) 
values('11/05/2023','12/05/2023',2,10);
insert into reservas(inicio_fecha,fin_fecha,habitacion_numero,huespedes_id) 
values('11/05/2023','12/05/2023',2,9);
insert into reservas(inicio_fecha,fin_fecha,habitacion_numero,huespedes_id) 
values('22/06/2023','23/06/2023',1,1);
insert into reservas(inicio_fecha,fin_fecha,habitacion_numero,huespedes_id) 
values('22/06/2023','23/06/2023',1,2);
insert into reservas(inicio_fecha,fin_fecha,habitacion_numero,huespedes_id) 
values('22/06/2023','23/06/2023',1,3);
insert into reservas(inicio_fecha,fin_fecha,habitacion_numero,huespedes_id) 
values('22/06/2023','23/06/2023',1,4);
insert into reservas(inicio_fecha,fin_fecha,habitacion_numero,huespedes_id) 
values('01/01/2023','02/01/2023',12,5);
insert into reservas(inicio_fecha,fin_fecha,habitacion_numero,huespedes_id) 
values('11/08/2023','12/08/2023',11,6);
insert into reservas(inicio_fecha,fin_fecha,habitacion_numero,huespedes_id) 
values('11/05/2023','12/05/2023',10,7);
insert into reservas(inicio_fecha,fin_fecha,habitacion_numero,huespedes_id) 
values('11/05/2023','12/05/2023',9,8);
--CONSULTA 1

--seleccionar el numero de habitacion, los nombres y apellidos de los huespedes 
select h.habitacion_numero,hue.nombres, hue.apellidos from habitaciones h, huespedes hue, reservas r
where r.habitacion_numero = h.habitacion_numero and r.huespedes_id = hue.id
--debes seleccioanr el nombre y apellidos de los huespedes 
select hue.nombres, hue.apellidos from huespedes hue, reservas r
where r.huespedes_id = hue.id
and r.habitacion_numero=2
--seleccionar el numero de habitacion y contar la cantidad de huespedes en cada habitacion 
select h.habitacion_numero, count(r.huespedes_id) from habitaciones h, reservas r
where r.huespedes_id = h.habitacion_numero
group by(h.habitacion_numero)

--CONSULTA 2

--seleccionar el numero de habitacion, los nombres y apellidos de los huespedes 
select h.habitacion_numero,h.piso,hue.nombres, hue.apellidos from habitaciones h, huespedes hue, reservas r
where r.habitacion_numero = h.habitacion_numero and r.huespedes_id = hue.id
and h.piso= 4
--debes seleccioanr el nombre y apellidos de los huespedes
select hue.nombres, hue.apellidos from huespedes hue, reservas r
where r.huespedes_id = hue.id
and r.habitacion_numero=3

--seleccionar el numero de habitacion y obtener el promedio de cada huespedes en cada habitacion 
select h.habitacion_numero, avg(r.huespedes_id) from habitaciones h, reservas r
where r.huespedes_id = h.habitacion_numero
group by(h.habitacion_numero)

--CONSULTA 3

--seleccionar el numero de habitacion, los nombres y apellidos de los huespedes 
select h.habitacion_numero,h.piso,hue.nombres, hue.apellidos from habitaciones h, huespedes hue, reservas r
where r.habitacion_numero = h.habitacion_numero and r.huespedes_id = hue.id

--debes seleccionar el nombre y apellidos de los huespedes 
select hue.nombres, hue.apellidos from huespedes hue, reservas r
where r.huespedes_id = hue.id
and r.habitacion_numero=4
--seleccionar el numero de habitacion y obtener el suma precio por noche en cada habitacion 
select h.habitacion_numero, sum(h.precio_por_noche) from habitaciones h, reservas r
where r.huespedes_id = h.habitacion_numero
group by(h.habitacion_numero)
