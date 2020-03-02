package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Metiers.Utilisateurs;


public class ServletDeReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public ServletDeReservation() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
//		Utilisateurs TableUtilisateurs=new Utilisateurs();
//		request.setAttribute("Prenom", TableUtilisateurs.recupererUtilisateur());
//		
//		
//		request.setAttribute("Prenom", TableUtilisateurs.recupererUtilisateur());
		this.getServletContext().getRequestDispatcher("/index.html").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String prenom = request.getParameter("Prenom");
		request.setAttribute("Prenom", prenom);
		
		
//		if (prenom.equals("Prenom")) {
//			this.getServletContext().getRequestDispatcher("/indexConnexion.jsp").forward(request, response);
//		} 
//		else
		response.sendRedirect("/indexConnexion.jsp");
	}

}
