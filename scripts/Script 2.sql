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
