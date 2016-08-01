package com.niit.ShoppingCart;

public class TestProduct {
	public static void main(String[] args)
	{
		Product p1=new Product(101,"iphone");
		Product p2=new Product(102,"tv");
		p1.setPrice(65_000);
		p2.setPrice(80000);
		System.out.println("Id:" +p1.getId());
		System.out.println("Name:" +p1.getName());
		System.out.println("Price:" +p1.getPrice());
		System.out.println("Id:" +p2.getId());
		System.out.println("Name:" +p2.getName());
		System.out.println("Price:" +p2.getPrice());
	}
	

}
