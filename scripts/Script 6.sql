--crear tabla llamada transacciones 

create table transacciones(
	codigo int not null,
	numero_cuenta char (5) not null,
	monto money not null,
	tipo char (1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key (codigo)
)

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('091234','12094','400','D','12/02/2003','21:02')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('091235','01232','120','C','12/08/2001','13:30')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('091236','19031','160','D','24/01/2013','10:32')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('091237','09821','123','C','10/02/2009','16:42')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('091238','12312','321','D','31/12/2001','21:02')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('091239','12094','400','C','12/02/2003','21:02')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('091240','09187','901','D','12/06/2016','10:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('091241','12783','100','C','23/07/2011','01:30')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('091242','09124','910','D','12/02/2022','11:09')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('091243','13094','210','C','09/01/2023','14:02')

select * from transacciones
