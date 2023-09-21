--crear tabla cuentas

create table cuentas (
	numero_cuenta char (5) not null,
	cedula_propietario char (5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key (numero_cuenta)
)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12921','10931','09/10/2003',400.9)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12922','11951','10/11/2013',341)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12923','17999','09/03/2013',123.97)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12924','18921','01/12/2032',144.23)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12925','15954','23/12/2023',901)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12926','17976','30/08/2012',693)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12927','12962','19/12/2030',5400)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12928','11977','10/04/2033',543.93)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12929','17990','30/10/2023',100)
		
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12930','16941','15/03/2011',781)

select * from cuentas
