package com.niit.shoppingcart.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.LoginDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Login;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.model.User;
@Controller
public class HomeController
{
	@Autowired
	UserDAO ud;
	@Autowired
	LoginDAO ld;
	@Autowired
	SupplierDAO sd;
	
	@RequestMapping("/")
	public ModelAndView display()
	{
		ModelAndView mv1 = new ModelAndView("Home");
		return mv1;
	}
	
	
	@RequestMapping("ref")
	public ModelAndView display15()
	{
		ModelAndView mv1 = new ModelAndView("Home");
		return mv1;
	}
	@RequestMapping("Loginpopup")
	public ModelAndView display8()
	{
		ModelAndView mv1 = new ModelAndView("Loginpopup");
		return mv1;
	}
	@RequestMapping("adminHome")
	public ModelAndView display7()
	{
		ModelAndView mv1 = new ModelAndView("adminHome");
		return mv1;
	}
	@RequestMapping("Success")
	public ModelAndView display17()
	{
		ModelAndView mv1 = new ModelAndView("LoginSuccess");
		return mv1;
	}
	
	@RequestMapping("Contact")
	public ModelAndView display14()
	{
		ModelAndView mv1 = new ModelAndView("Contact");
		return mv1;
	}
	@RequestMapping("userContact")
	public ModelAndView display24()
	{
		ModelAndView mv1 = new ModelAndView("usercontact");
		return mv1;
	}
	@RequestMapping("Login")
	public ModelAndView display1()
	{
		ModelAndView mv1 = new ModelAndView("Login");
		return mv1;
	}
	@RequestMapping("Register")
	public ModelAndView display2()
	{
		ModelAndView mv1 = new ModelAndView("Register");
		return mv1;
	}

	
	
	@ModelAttribute("Supplier")
	public Supplier Disply()
	{
		return new Supplier();
	}
	
	
    @RequestMapping("addSupplier")
	public ModelAndView display3() {

		ModelAndView mv3 = new ModelAndView("addSupplier");
		return mv3;
	} 
    	
	@RequestMapping(value = "storeUser", method = RequestMethod.POST)
	public String addUser(@Valid @ModelAttribute("User") User user,BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("Errors");
			return "Register";
		}
		ud.save(user);
		Login loginuser = new Login();
		loginuser.setId(user.getId());
		loginuser.setUsername(user.getUsername());
		loginuser.setPassword(user.getPassword());
		loginuser.setStatus(user.isStatus());
		ld.save(loginuser);
		return "LoginSuccess";
	}
	  
	@ModelAttribute("/login")
	    public Login createuser(){
	    	return new Login();
	    }
	@ModelAttribute("/LogininSuccess")
    public Login user(){
    	return new Login();
    }
	    
	    @RequestMapping("/checkuser")
	    public ModelAndView chackedUser(@Valid @ModelAttribute("login")Login user,BindingResult result,@RequestParam("userName") String userName,@RequestParam("password")String password) 
	    { 
	    	System.out.println("UserName is............."+userName);
	    	System.out.println("Password is............."+password);
			return null;
	    	
	    }
	    
	
	    
	    @RequestMapping("storesupplier")
		public String addBook(HttpServletRequest request, @Valid @ModelAttribute("Supplier") Supplier supplier,
				BindingResult result) {
			if (result.hasErrors()) {
				return "addSupplier";
			}
			sd.save(supplier);
			return "ManageSuppliers";

		}    
	    
	    
	    
}
