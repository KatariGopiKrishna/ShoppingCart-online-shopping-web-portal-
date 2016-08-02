package com.niit.shoppingcartcore;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class TestCategory {
	public static void main(String[] args){
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		context.getBean("category");
		System.out.println("Bean Created Successfully");
	}
}
