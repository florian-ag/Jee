package fr.formation.inti.controller.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class ExampleFilter
 */
@WebFilter("/*")
public class ExampleFilter implements Filter {

    /**
     * Default constructor. 
     */
    public ExampleFilter() {
        
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		System.out.println("doFilter : avant");
		System.out.println("path :"+ httpRequest.getContextPath());
		System.out.println("path :"+ httpRequest.getServletPath());
		System.out.println("Method :"+ httpRequest.getMethod());
		HttpSession session = httpRequest.getSession(false);
		System.out.println("session : " + session);
		System.out.println();
		
		String email = httpRequest.getParameter("email");
		String password = httpRequest.getParameter("password");
		System.out.println("mail : " +email);
		System.out.println("password : " +password);
		
		//verifie si les sessions sont ouvertes
		
		//pour la page login la session n'est pas encore ouverte, il faut qd meme y avoir acces
		if ("/login".equals(httpRequest.getServletPath()) && "POST".equals(httpRequest.getMethod()))
			{chain.doFilter(request, response);}	
		//si la session est non nulle et que la personne est enregistrée : exécuter la servlet
		else if (session != null && session.getAttribute("user") !=null)			
			{chain.doFilter(request, response);}
		//sinon renvoyer vers la page de connexion 
		else
			{request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);}
			//httpResponse.sendRedirect("/index.jsp");
		
		
		// pass the request along the filter chain
		//chain.doFilter(request, response);
		System.out.println("doFilter : après");
		session = httpRequest.getSession(false);
		System.out.println("session : " + session);
		System.out.println();
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
