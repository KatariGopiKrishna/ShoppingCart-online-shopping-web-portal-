package com.niit.shoppingcart.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="product")
@Component
public class Product {

	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "Id")
	private int Id;
	 @NotNull
	 @Size(min=2,max=30,message="Name Must be more than 2 letters")
	 @Column(name="Name",unique=true)
	private String Name;
	 @NotNull
	 @Size(min=2,max=30)
	 @Column(name="Description")
	private String Description;
	 @NotNull
	 @Size(min=2,max=30)
	 @Column(name="primarymaterial")
	private String primarymaterial;
	 @NotNull
	 @Size(min=2,max=30)
	 @Column(name="style")
	private String style;
	 @NotNull
	 @Size(min=2,max=30)
	 @Column(name="warranty")
	private String warranty;
	 @NotNull
	 @Size(min=2,max=30)
	 @Column(name="capacity")
	private String capacity;
	@OneToOne(cascade=CascadeType.PERSIST)
	@JoinColumn(name="supplier")
	private Supplier supplier;
	
	private int quantity;

	private double Price;
	@NotNull
	@Column(name = "image", columnDefinition = "varchar(255)")
	@Size(min = 3, message = "Please Select the Image")
	private String image;
	@JsonIgnore
	transient private MultipartFile img;


	
	public Product(int Id,String Name,String Description,String primarymaterial,String style,String warranty,String capacity,Supplier supplier,int supplierid,String suppliername,int quantity,double Price,String image,MultipartFile img) {
	this.Id=Id;
	this.Name = Name;
	this.Description = Description;
	this.primarymaterial = primarymaterial;
	this.style = style;	
	this.warranty = warranty;
	this.capacity = capacity;
	this.supplier = supplier;
	this.quantity = quantity;	
	this.Price = Price;	
	this.image = image;
	this.img = img;	
	}
	 public Product() {
	    }
	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public String getPrimarymaterial() {
		return primarymaterial;
	}

	public void setPrimarymaterial(String primarymaterial) {
		this.primarymaterial = primarymaterial;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public String getWarranty() {
		return warranty;
	}

	public void setWarranty(String warranty) {
		this.warranty = warranty;
	}

	public String getCapacity() {
		return capacity;
	}

	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public MultipartFile getImg() {
		return img;
	}

	public void setImg(MultipartFile img) {
		this.img = img;
	}
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}

	public void setName(String Name) {
		this.Name = Name;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String Description) {
		this.Description = Description;
	}

	public double getPrice() {
		return Price;
	}

	public void setPrice(double Price) {
		this.Price = Price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
