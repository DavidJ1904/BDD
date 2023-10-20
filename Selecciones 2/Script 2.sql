--crear tabla cuentas

create table cuentas (
	numero_cuenta char (5) not null,
	cedula_propietario char (5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key (numero_cuenta)
)
select * from cuentas

select numero_cuenta,saldo from cuentas

delete from cuentas
select * from cuentas
where fecha_creacion
between '21/07/2023' and '21/09/2023'

select numero_cuenta,saldo from cuentas
where fecha_creacion
between '21/07/2023' and '21/09/2023'

update cuentas set saldo='10'
where cedula_propietario like '17%'

delete from cuentas
where cedula_propietario like '10%'

--RETO 7

select numero_cuenta,saldo from cuentas
where saldo > '100' and saldo<'1000'

select * from cuentas
where fecha_creacion
between '22/09/2022' and '22/09/2023'

select * from cuentas 
where saldo='0' or cedula_propietario like '%2'

--RETO 23
create table usuario (
	cedula char (10),
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar (20),
	limite_credito decimal(10,2),
	constraint usuario_pk primary key (cedula)
)

alter table cuentas
add constraint usuario_cuentas_fk
foreign key (cedula_propietario)
references usuario(cedula)

select * from usuario

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values('24502','Carlos','Mejia','Cuenta corriente',2030);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values('24522','Juan','Albarado','Cuenta ahorros',1230);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values('24322','Felipe','Rojas','Cuenta suspendida',0)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('25569','24502','15/01/2023',200);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('25413','24522','25/11/2003',1230);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('22134','24322','10/10/2010',0);

--RETO 24
--CONSULTA
select cu.numero_cuenta,us.nombre from
cuentas cu,usuario us
where cu.cedula_propietario = us.cedula
and (cu.saldo>= money(100) and cu.saldo<=money(1000))
--SUBCONSULTA
select cu.numero_cuenta,cu.fecha_creacion,cu.saldo,us.cedula from
cuentas cu,usuario us
where cu.cedula_propietario = us.cedula
and cu.fecha_creacion = '21/09/2022' and cu.fecha_creacion = '21/09/2023'

--RETO 25
--AGREGACION 1
select AVG (cast(saldo as numeric)) 
from cuentas cu, usuario us
where cu.cedula_propietario = us.cedula
and cu.cedula_propietario ='24502'
--AGREGACION 2
select tipo_cuenta, count (tipo_cuenta)
from usuario group by (tipo_cuenta)

