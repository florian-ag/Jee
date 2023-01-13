package fr.formation.inti.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.metamodel.SetAttribute;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.formation.inti.entity.Employee;
import fr.formation.service.EmployeeService;
import fr.formation.service.EmployeeServiceImpl;

/**
 * Servlet implementation class EmployeeUpdate
 */
@WebServlet("/update")
public class EmployeeUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeService employeeservice;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeUpdate() {
		this.employeeservice = new EmployeeServiceImpl();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		String empId = request.getParameter("id");
		Integer id = Integer.parseInt(empId);

		if (session != null && id != null) {
			Employee employee = employeeservice.findById(id);
			request.setAttribute("emp", employee);
			request.getServletContext().getRequestDispatcher("/Update.jsp").forward(request, response);
		} else {
			response.sendRedirect(request.getContextPath());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String empId = request.getParameter("id");
		Integer id = Integer.parseInt(empId);

		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String startDate = request.getParameter("startdate");
		String title = request.getParameter("title");

		SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd");
		Date date;
		try {
			date = (Date) formatDate.parse(startDate);
			Employee employee = new Employee(firstname, lastname, date, title);
			employee.setEmpId(id);
			employeeservice.save(employee);
			request.getServletContext().getRequestDispatcher("/employee").forward(request, response);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}

}
