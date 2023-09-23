package com.krakedev;

public class TestProducto {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Producto proA = new Producto();
		Producto proB = new Producto();
		Producto proC = new Producto();
		// Accdedo a los atributos proA
		System.out.println("nombre:" + proA.nombre);
		System.out.println("descripcion:" + proA.descripcion);
		System.out.println("precio:" + proA.precio);
		System.out.println("stockActual:" + proA.stockActual);
		System.out.println("-------------------------");
		// Accdedo a los atributos proB
		System.out.println("nombre:" + proB.nombre);
		System.out.println("descripcion:" + proB.descripcion);
		System.out.println("precio:" + proB.precio);
		System.out.println("stockActual:" + proB.stockActual);
		System.out.println("-------------------------");
		// Accdedo a los atributos proC
		System.out.println("nombre:" + proC.nombre);
		System.out.println("descripcion:" + proC.descripcion);
		System.out.println("precio:" + proC.precio);
		System.out.println("stockActual:" + proC.stockActual);
		System.out.println("-------------------------");
		// 4.Modificar los atributos proA
		proA.nombre = "Jabon de manos";
		proA.descripcion = "Es un producto de limpieza y humectacion de las manos";
		proA.precio = 2.54;
		proA.stockActual = 200;
		// 4.Modificar los atributos proB
		proB.nombre = "Pasta Dental";
		proB.descripcion = "Es un producto de limpieza bucal";
		proB.precio = 7.74;
		proB.stockActual = 112;
		// 4.Modificar los atributos proC
		proC.nombre = "Paracetamol";
		proC.descripcion = "Es un producto analgesico que bloquea la generacion de dolor";
		proC.precio = 0.05;
		proC.stockActual = 100;
		// Accdedo a los atributos proA
		System.out.println("nombre:" + proA.nombre);
		System.out.println("descripcion:" + proA.descripcion);
		System.out.println("precio:" + proA.precio);
		System.out.println("stockActual:" + proA.stockActual);
		System.out.println("-------------------------");
		// Accdedo a los atributos proB
		System.out.println("nombre:" + proB.nombre);
		System.out.println("descripcion:" + proB.descripcion);
		System.out.println("precio:" + proB.precio);
		System.out.println("stockActual:" + proB.stockActual);
		System.out.println("-------------------------");
		// Accdedo a los atributos proC
		System.out.println("nombre:" + proC.nombre);
		System.out.println("descripcion:" + proC.descripcion);
		System.out.println("precio:" + proC.precio);
		System.out.println("stockActual:" + proC.stockActual);
	}

}
