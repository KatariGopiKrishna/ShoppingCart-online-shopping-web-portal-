package com.niit.shoppingcart.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.shoppingcart.dao.LoginDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;


@Controller
public class UserController {

	@Autowired
	UserDAO ud;
	@Autowired
	LoginDAO ld;


	@RequestMapping(value = "/fail2login", method = RequestMethod.GET)
	public ModelAndView loginerror(ModelMap model) {
		return new ModelAndView("Login", "error", true);
	}
	@RequestMapping("ManageUsers")
	public ModelAndView display11() {
		ModelAndView m10 = new ModelAndView("ManageUsers");
		return m10;
	}
	@RequestMapping("viewuser")
	public ModelAndView display8() {
		ModelAndView m4 = new ModelAndView("viewuser");
		return m4;
	}
	@RequestMapping("/viewusers")
	public ModelAndView display10() {
		ModelAndView m4 = new ModelAndView("viewusers");
		return m4;
	}
	

	@RequestMapping("/deleteuser")
	public ModelAndView deleteSupplier(@RequestParam int id) {
		ud.delete(id);
		ModelAndView m1 = new ModelAndView("ManageUsers");
		 return m1;
		
	}
	
	@RequestMapping(value = "listud", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody String showList()
	{
		List list = ud.list();
		Gson y = new Gson();
		String json = y.toJson(list);
		return json;
	}
	
		
	@ModelAttribute("User")
	public User CreateUser() {
		return new User();

	}


	@RequestMapping(value = "/welcome")
	public ModelAndView checkUserOne(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {
		if (request.isUserInRole("ROLE_ADMIN"))
		{
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String str = auth.getName(); // get username
			System.out.println("------------------------"+str);
			session = request.getSession(true);
			session.setAttribute("loggedInUser", str);
			// session.invalidate();
			ModelAndView m1 = new ModelAndView("adminHome");
			return m1;
		}
		else
		{
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String str = auth.getName();
			System.out.println("------------------------"+str);
			session = request.getSession(true);
			session.setAttribute("loggedInUser", str);
			ModelAndView m2 = new ModelAndView("UserHome");
			return m2;
		}
		
	}
	
	@RequestMapping("logoutsuccess")
	public ModelAndView logoutpage(){
		ModelAndView mv9 = new ModelAndView("logoutsuccess");
		return mv9;
	}

	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws ServletException, IOException {
		HttpSession newsession = request.getSession(false);
		if (newsession != null) 
	    {
	         newsession.invalidate();

	    }
		response.sendRedirect("j_spring_security_logout");	
		}
}




