--crear tabla llamada transaccion

create table transaccion(
	codigo int not null,
	numero_cuenta char (5) not null,
	monto money not null,
	tipo char (1) not null,
	fecha date,
	hora time not null,
	constraint transaccion_pk primary key (codigo)
)

--TRANSACCIONES
insert into transaccion(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');

insert into transaccion(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');

insert into transaccion(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');

insert into transaccion(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');

insert into transaccion(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');

insert into transaccion(codigo, numero_cuenta, monto, tipo, hora)
values(23210, '32015', 400, 'C', '13:55');

insert into transaccion(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');

insert into transaccion(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');

insert into transaccion(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');

insert into transaccion(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '11/09/1999', '7:30');

select * from transaccion

--RETO 7
select * from transaccion 
where tipo ='D' 
and numero_cuenta between '222001' and '222004'

select * from transaccion 
where tipo ='D' 
and EXTRACT(DAY FROM fecha) = 25
and EXTRACT(MONTH FROM fecha) = 5
and numero_cuenta between '22007' and '22010'

select * from transaccion
where codigo between '1' and '5'
and numero_cuenta ='22002' or numero_cuenta ='22004'
and EXTRACT(DAY FROM fecha) = 26 
and EXTRACT(DAY FROM fecha) = 29
and EXTRACT(MONTH FROM fecha) = 5