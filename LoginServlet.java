package com.niit.ShoppingCart;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * Default constructor.
     */
    public LoginServlet() {
        
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String userId=request.getParameter("UserId");
		String Password=request.getParameter("Password");
		LoginDAO loginDAO = new LoginDAO();
		RequestDispatcher dispatcher;
		if(loginDAO.isValidUser(userId,Password) == true)
		{
			dispatcher = request.getRequestDispatcher("welcome.html");
			dispatcher.forward(request,response);
		}
		else
		{
			PrintWriter writer=response.getWriter();
			writer.println("Please enter valid details");
			dispatcher=request.getRequestDispatcher("login.html");
			dispatcher.include(request,response);
		}
	}

}
 