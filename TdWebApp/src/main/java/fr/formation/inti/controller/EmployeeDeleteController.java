package fr.formation.inti.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.formation.service.EmployeeService;
import fr.formation.service.EmployeeServiceImpl;

/**
 * Servlet implementation class EmployeeDeleteController
 */
@WebServlet("/delete")
public class EmployeeDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeService employeeservice;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeDeleteController() {
		this.employeeservice = new EmployeeServiceImpl();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		String id = request.getParameter("id");
		if (session != null && id != null) {
			employeeservice.deleteById(Integer.parseInt(id));
			request.getServletContext().getRequestDispatcher("/employee").forward(request, response);
		}else {
			response.sendRedirect(request.getContextPath());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		employeeservice.deleteById(id);
		request.getServletContext().getRequestDispatcher("/employee").forward(request, response);
	}

}
