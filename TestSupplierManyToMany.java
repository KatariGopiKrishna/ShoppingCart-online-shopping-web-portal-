package com.niit.ShoppingCart;
import java.util.List;
import java.util.ArrayList;
public class TestSupplierManyToMany {
public static void main(String args[]){
	Product p1=new Product(101,"iphone",65_000);
	Product p2=new Product(102,"tv",80_000);
	Product p3=new Product(103,"laptop",70_000);
	Supplier s1=new Supplier("sup0001","reliance","bombay");
	Supplier s2=new Supplier("sup0002","tata","hyderabad");
	 List<Product> ProductsList = new ArrayList<Product>();
	ProductsList.add(p1);
	ProductsList.add(p2);
	ProductsList.add(p3);
	s1.setProducts(ProductsList);
	//List<Product> products = s1.getProducts();
	List<Supplier> SuppliersList = new ArrayList<Supplier>();
	SuppliersList.add(s1);
	SuppliersList.add(s2);
	s2.setProducts(ProductsList);
	//List<Supplier> suppliers=s2.getSuppliers();
	for(Product P: ProductsList){
	for(Supplier S: SuppliersList)
	{
		if(P.getPrice()>60_000)
		{	System.out.println("SUPPLIER DETAILS                        PRODUCT DETAILS");
			System.out.println("================                        ===============");
			System.out.println("Supplier ID   	 : "+S.getId()+"			Product Id   : " +P.getId());
			System.out.println("Supplier Name 	 : "+S.getName()+"			Product Name : " +P.getName());
			System.out.println("Supplier Address : "+S.getAddress()+"			Product Price: " +P.getPrice());
			System.out.println("___________________________________________________________________________");
			
		}
	}
 }
}
}
