package com.niit.ShoppingCart;
import java.util.ArrayList;
import java.util.List;
public class TestSupplierOneToMany {
	public static void main(String args[]){
	Product p1=new Product(101,"iphone",65_000);
	Product p2=new Product(102,"tv",80_000);
	Product p3=new Product(103,"laptop",70_000);
	Supplier s1=new Supplier("sup0001","reliance","bombay");
	List<Product> ProductsList = new ArrayList<Product>();
	ProductsList.add(p1);
	ProductsList.add(p2);
	ProductsList.add(p3);
	s1.setProducts(ProductsList);
	for(Product P: ProductsList)
	{
		if(P.getPrice()>60_000)
		{	System.out.println("SUPPLIER DETAILS                        PRODUCT DETAILS");
			System.out.println("================                        ===============");
			System.out.println("Supplier ID   	 : "+s1.getId()+"			Product Id   : " +P.getId());
			System.out.println("Supplier Name 	 : "+s1.getName()+"			Product Name : " +P.getName());
			System.out.println("Supplier Address : "+s1.getAddress()+"			Product Price: " +P.getPrice());
			System.out.println("___________________________________________________________________________");
			
		}
	}
 }
}


