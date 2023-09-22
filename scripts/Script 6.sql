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
select * from transacciones
where tipo like 'D' 

select * from transacciones
where monto
between '200' and '2000'

select codigo,monto,tipo,fecha from transacciones
where codigo is not null

update transacciones set tipo= 'T'
where monto >money(100) and monto <money(500) and EXTRACT(MONTH FROM fecha) = 9 
and hora >'14:00' and hora <'20:00'



