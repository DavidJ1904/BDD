create table ciudad(
	id int,
	nombre varchar(45) not null,
	constraint cuidad_pk primary key (id)
)

create table municipio(
	id int,
	nombre varchar(45),
	cuidad_id int,
	constraint municipio_pk primary key (id),
	constraint municipio_fk foreign key (cuidad_id) references ciudad(id)
)

create table proyecto(
	id int,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint proyecto_pk primary key (id)
)
create table proyecto_municipio(
	municipio_id int not null,
	proyecto_id int not null,
	constraint municipio_fk foreign key (municipio_id) references municipio(id),
	constraint proyecto_fk foreign key (proyecto_id) references proyecto(id),
	constraint proyecto_municipio_pk primary key (municipio_id,proyecto_id)
)
-- AGREGAR DATOS TABLA CIUDAD
insert into ciudad values   (1,'Quito'),
							(2,'Ambato'),
							(3,'Guayaquil'),
							(4,'Machala'),
							(5,'Manta'),
							(6,'Loja'),
							(7,'Otavalo'),
							(8,'Cuenca'),
							(9,'Latacunga'),
							(10,'Tena');
-- AGREGAR DATOS TABLA MUNICIPIO
insert into municipio values (1,'GAD MUNICIPAL QUITO',1),
							 (2,'GAD MUNICIPAL DE CUENCA',8),
							 (3,'GAD MUNICIPALIDAD DE AMBATO',2),
							 (4,'MUNICIPALIDAD DE MACAHALA ',4),
							 (5,'MUNIUCIPIO DE GUAYAQUIL',3),
							 (6,'MUNICIPIO DE OTAVALO',7),
							 (7,'MUNICIPIO DE LOJA',6),
							 (8,'MUNICIPIO DE MANTA',5),
							 (9,'MUNICIPIO DE LATACUNGA',9),
							 (10,'MUNICIPIO DE TENA',10);
-- AGREGAR DATOS TABLA PROYECTO
insert into proyecto values (1,'Proyectos de Gestión Ambiental',9543.327,'10/02/2022','10/02/2023'),
							(2,'Proyectos en Fomento y Desarrollo Productivo',26553.264,'25/06/2022','10/08/2022'),
							(3,'Proyectos en Cambio Climático',1292.194,'01/02/2021','10/12/2023');
-- AGREGAR DATOS TABA DE UNION
insert into proyecto_municipio (proyecto_id,municipio_id)
values(1,5);
insert into proyecto_municipio (proyecto_id,municipio_id)
values(3,5);
insert into proyecto_municipio (proyecto_id,municipio_id)
values(1,2);
insert into proyecto_municipio (proyecto_id,municipio_id)
values(2,1);
insert into proyecto_municipio (proyecto_id,municipio_id)
values(1,4);
insert into proyecto_municipio (proyecto_id,municipio_id)
values(2,9);
insert into proyecto_municipio (proyecto_id,municipio_id)
values(1,10);
insert into proyecto_municipio (proyecto_id,municipio_id)
values(3,6);
insert into proyecto_municipio (proyecto_id,municipio_id)
values(1,3);
insert into proyecto_municipio (proyecto_id,municipio_id)
values(2,7);								  
--CONSULTA 1

--seleccionar el nombre del municipio y el nombre del proyecto
select m.nombre, p.proyecto from municipio m, proyecto p, proyecto_municipio
where m.id = municipio_id and p.id = proyecto_id

--debes seleccionar el nombre del proyecto
select p.proyecto from proyecto p, proyecto_municipio
where proyecto_id = p.id
and municipio_id=1

--seleccionar el nombre del municipio y contar la cantidad de proyecto en cada municipio 

select m.nombre, count(proyecto_id) from municipio m, proyecto_municipio
where m.id = municipio_id
group by(m.nombre)


--CONSULTA 2

--seleccionar el nombre del municipio y el nombre del proyecto
select m.nombre, p.proyecto from municipio m, proyecto p, proyecto_municipio
where m.id = municipio_id and p.id = proyecto_id
and m.nombre like '%GAD%'

--seleccionar el nombre del municipio y contar la cantidad de proyecto en cada municipio 

select m.nombre, min(proyecto_id) from municipio m, proyecto_municipio
where m.id = municipio_id
group by(m.nombre)

--CONSULTA 3

--seleccionar el nombre del municipio y el nombre del proyecto

select c.nombre, m.nombre, p.proyecto from municipio m, proyecto p, proyecto_municipio,ciudad c
where m.id = municipio_id and p.id = proyecto_id and (c.id = m.cuidad_id)

--debes seleccionar el nombre del proyecto
--primera manera 
select proyecto from proyecto 
where id in(select proyecto_id from proyecto_municipio where municipio_id=3)

--segunda manera 
select p.proyecto from proyecto p, proyecto_municipio
where proyecto_id = p.id
and municipio_id=3

--seleccionar el nombre del municipio y contar la cantidad de proyecto en cada municipio 

select m.nombre, max(proyecto_id) from municipio m, proyecto_municipio
where m.id = municipio_id
group by(m.nombre)