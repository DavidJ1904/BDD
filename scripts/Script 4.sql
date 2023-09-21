--crear una tabla llamada registros

create table registro_entrada(
	codigo_registro int not null,
	cedula_empleado char (10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key (codigo_registro)
)

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('09891','1891310221','09/09/2000','22:12')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('09892','1982178221','09/09/2000','23:10')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('09893','1921431021','09/09/2000','10:30')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('09894','1982012021','01/10/2003','21:00')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('09895','1123131021','15/01/2015','09:32')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('09896','1982098021','21/08/2010','14:12')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('09897','1789131021','05/07/2002','00:32')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('09898','1982801021','06/06/2030','09:52')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('09899','1387131021','11/01/2001','10:42')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('09900','1238213102','01/07/2012','18:22')

select * from registro_entrada