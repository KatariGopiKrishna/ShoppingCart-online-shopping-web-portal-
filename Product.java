package com.niit.ShoppingCart;
public class Product{
	private int id;
	private String name;
	private int price;
	//private List<supplier> suppliers;
public Product(int id,String name){
	this.id=id;
	this.name=name;
}
public Product(int id,String name,int price){
	 this.id=id;
	 this.name=name;
	 this.price=price;
    }
public void SetPrice(int price){
	if(price<0)
	{
		System.out.println("the price should not be -ve");
		price=50_000;
	}
	this.price=price;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
 
}


