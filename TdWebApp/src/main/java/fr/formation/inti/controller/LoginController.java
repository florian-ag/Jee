package fr.formation.inti.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.formation.inti.entity.User;
import fr.formation.service.UserService;
import fr.formation.service.UserServiceImpl;


/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userservice;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		this.userservice = new UserServiceImpl();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session == null) {
			response.sendRedirect(request.getContextPath());

		} else {
			request.getServletContext().getRequestDispatcher("/employee").forward(request, response);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		PrintWriter out = response.getWriter();
		String email =  request.getParameter("email");
		String password =request.getParameter("password");
		User user = userservice.findByEmail(email, password);
		if(user!= null) {
			
			
			out.print("<br> <span> Hello </span> : "+ email);
			
				
		} else {
			response.sendRedirect("/login");
		}	
		
	}

}
