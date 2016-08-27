package com.niit.shoppingcart.Controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.UserDetailsDAO;
import com.niit.shoppingcart.model.UserDetails;
@Controller
public class HomeController
{
	@Autowired
	private UserDetailsDAO ud;
	
	@RequestMapping("/")
	public ModelAndView display()
	{
		ModelAndView mv1 = new ModelAndView("Home");
		return mv1;
	}
	@RequestMapping("/Login")
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
	
	@ModelAttribute("UserDetails")
	public UserDetails registerUser()
	{
		return new UserDetails();
	}
	
	@RequestMapping(value = "storeUser", method = RequestMethod.POST)
		public String addUser(@Valid @ModelAttribute("UserDetails") UserDetails userdetails,BindingResult result) {
			if (result.hasErrors()) {
				System.out.println("Errors");
				return "Register";
			}
			System.out.println(userdetails.getUsername());
			ud.save(userdetails);
			return "Register";

	}
	
}
