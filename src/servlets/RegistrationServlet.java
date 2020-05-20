package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.UserRepository;
import model.User;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/registration.jsp")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd= request.getRequestDispatcher("view/registration.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Username= request.getParameter("Username");
		String Name= request.getParameter("Name");
		String SureName= request.getParameter("SureName");
		String Male= request.getParameter("Male");
		String Female=request.getParameter("Female");
		String Password= request.getParameter("Password");
		String PasswordControl= request.getParameter("PasswordControl");
		String Role=request.getParameter("Role");
		
		User user= new User(Username,Name,SureName,Male,Female,Password,PasswordControl,"Domacin"); 
			
			UserRepository us= new UserRepository();
			us.addUser(user);
			response.sendRedirect("/WebProjekat/");
		
	}
}
