-- TABLA USUARIOS
create table usuarios(
	id int,
	nombre varchar (25) not null,
	apellido varchar (25) not null,
	fecha_nacimiento date,
	constraint usuarios_pk primary key (id)
)

select * from usuarios

--TABLA GRUPO
create table grupo (
	id int,
	nombre varchar (25) not null,
	descripcion varchar (75) not null,
	fecha_creacion date,
	constraint grupo_pk primary key (id)
)

select * from grupo

--TABLA DE UNION
create table usuario_grupo (
	us_id int not null,
	gr_id int not null,
	constraint usuario_fk foreign key (us_id) references usuarios (id),
	constraint grupo_fk foreign key (gr_id) references grupo (id),
	constraint usuario_grupo_pk primary key (us_id,gr_id)
)
select * from usuario_grupo

select * from usuario_grupo, usuarios, grupo
--AGREGAR DATOS TABLA USUARIOS
insert into usuarios values (1,'Marilyn','Sagñay','05/11/2023'),
							(2,'Romel','Chamba','06/11/2023'),
							(3,'Mario','Guzñay','05/11/2023'),
							(4,'Johann','Domo','07/11/2023'),
							(5,'Monserrate','Vera','05/11/2023'),
							(6,'Lucio','Vargas','05/11/2023'),
							(7,'Martín','Arizaga','05/11/2023'),
							(8,'Fricson','Erazo','05/11/2023'),
							(9,'Jairo','Obando','05/11/2023'),
							(10,'Berni','Tomalá','05/11/2023');
--AGREGAR DATOS TABLA GRUPO
insert into grupo values (1,'Maternal 1','Grupo de maternal matutino','08/03/2020'),
						 (2,'Maternal 2','Grupo de maternal vepertino','08/03/2020'),
						 (3,'Maternal 3','Grupo de maternal nocturno','08/03/2020'),
						 (4,'Incial 1 ','Grupo de inicial matutino','15/03/2021'),
						 (5,'Incial 2','Grupo de  inicial vespertino','15/03/2021'),
						 (6,'Incial 3','Grupo de  inicial  nocturno','15/03/2021'),
						 (7,'Incial intensivo','Grupo de inicial días sabados','15/03/2021'),
						 (8,'Maternal intensivo 1','Grupo de maternal matutino días sabados','15/03/2022'),
						 (9,'Maternal intensivo 2','Grupo de maternal vespertino días sabados','15/03/2022'),
						 (10,'Maternal intensivo 3','Grupo de maternal nocturno días sabados','15/03/2022');
--AGREGAR DATOS TABLA UNION
insert into usuario_grupo values (1,8),
								 (2,3),
								 (3,8),
								 (4,9),
								 (5,1),
								 (6,2),
								 (7,8),
								 (8,8),
								 (9,10),
								 (10,1);
								 
---CONSULTA 1

--seleccionar los nombres de los usuarios y los nombre de los grupos 
select u.nombre,gr.nombre from usuarios u, grupo gr, usuario_grupo
where us_id = u.id and gr_id = gr.id
 
--debes seleccioanr el nombre de los usuarios 
select u.nombre from usuarios u, usuario_grupo ug
where u.id = ug.us_id
and ug.gr_id=1
 
--seleccionar el nombre de grupo y contar la cantidad de usuarios en cada grupo 
select gr.nombre, count(ug.us_id)from grupo gr, usuario_grupo ug
where gr.id = ug.gr_id
group by(gr.nombre)

---CONSULTA 2

--seleccionar los nombres de los usuarios y los nombre de los grupos 

select u.nombre,gr.nombre from usuarios u, grupo gr, usuario_grupo
where us_id = u.id and gr_id = gr.id
and gr.nombre like '%intensivo%'


--debes seleccioanr el nombre de los usuarios 
select u.nombre from usuarios u, usuario_grupo ug
where u.id = ug.us_id
and ug.gr_id=2

--seleccionar el nombre de grupo y contar el maximo valor de cada usuario en cada grupo
select gr.nombre, max(ug.us_id)from grupo gr, usuario_grupo ug
where gr.id = ug.gr_id
group by(gr.nombre)

--CONSULTA 3

--seleccionar los nombres de los usuarios y fechas de creacion de los grupos de los grupos 

select u.nombre,gr.fecha_creacion from usuario u, grupo gr, usuario_grupo
where us_id = u.id and gr_id = gr.id
and gr.fecha_creacion>='08/03/2020' and gr.fecha_creacion<='08/03/2022'


--debes seleccioanr el nombre de los usuarios 
select u.nombre from usuarios u, usuario_grupo ug
where u.id = ug.us_id
and ug.gr_id=3

--seleccionar la descripcion del grupo y contar la cantidad  de cada usuario en cada grupo
select gr.descripcion, count(ug.us_id)from grupo gr, usuario_grupo ug
where gr.id = ug.gr_id
and gr.descripcion like '%matutino%'
group by(gr.descripcion)