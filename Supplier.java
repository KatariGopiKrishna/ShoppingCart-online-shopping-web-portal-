package com.niit.ShoppingCart;
import java.util.List;
public class Supplier {	
	private String id;
	private String name;
	private String address;
	private List <Product> Products;
	private List <Supplier> Suppliers;
	private Product product;
	private Supplier supplier;
	public List<Supplier> getSuppliers() {
		return Suppliers;
	}
	public void setSuppliers(List<Supplier> suppliers) {
		Suppliers = suppliers;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public List<Product> getProducts() {
		return Products;
	}
	public void setProducts(List<Product> products) {
		Products = products;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Supplier(String id, String name, String address) {
		this.id = id;
		this.name = name;
		this.address = address;
	}
	
}
