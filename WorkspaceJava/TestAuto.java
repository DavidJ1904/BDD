package com.krakedev;

public class TestAuto {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Auto auto1 = new Auto();
		Auto auto2 = new Auto();
		//Auto1
		System.out.println("marca:"+auto1.marca);
		System.out.println("anio:"+auto1.anio);
		System.out.println("precio:"+auto1.precio);
		System.out.println("-----------------------");
		//Auto2
		System.out.println("marca:"+auto2.marca);
		System.out.println("anio:"+auto2.anio);
		System.out.println("precio:"+auto2.precio);
		//Atributos auto1
		auto1.marca = "Mercedes";
		auto1.anio = 2004;
		auto1.precio = 1422;
		//Atributos auto2
		auto2.marca = "Mazda";
		auto2.anio = 2002;
		auto2.precio = 1822;
		System.out.println("-----------------------");
		//NuevosAtributos auto1
		System.out.println("marca:"+auto1.marca);
		System.out.println("anio:"+auto1.anio);
		System.out.println("precio:"+auto1.precio);
		System.out.println("-----------------------");
		//NuevosAtriv=butos auto2
		System.out.println("marca:"+auto2.marca);
		System.out.println("anio:"+auto2.anio);
		System.out.println("precio:"+auto2.precio);
	}

}
