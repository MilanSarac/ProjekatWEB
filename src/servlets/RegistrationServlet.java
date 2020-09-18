package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

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
		
		JSONArray allUsers=new JSONArray();
		UserRepository ur= new UserRepository();
		allUsers=(JSONArray)ur.GetUsers();
			for(int i=0; i<allUsers.size();i++) {
				JSONObject result=(JSONObject) allUsers.get(i);
				String usern=(String) result.get("Username");
				String usernR=(String) result.get("role");
				System.out.println("1. "+usern+ " 2 "+ Username);
				if(usern.equals(Username)) {
					response.sendRedirect("/WebProjekat/registration.jsp");	
					return;
				}
			}
				HttpSession sesion=request.getSession();
				String role = (String) sesion.getAttribute("role");
				User user;
				if(role != null && role.equals("Admin")) {
					 user= new User(Username,Name,SureName,Male,Female, Password,PasswordControl,"Domacin",true);
					 UserRepository us= new UserRepository();
						us.addUser(user);
						response.sendRedirect("/WebProjekat/user.jsp");
				}else if(role == null){
					user= new User(Username,Name,SureName,Male,Female, Password,PasswordControl,"Gost",true);
					UserRepository us= new UserRepository();
					us.addUser(user);
					sesion=request.getSession();
					sesion.setAttribute("sesija", Username);

					sesion.setAttribute("role","Gost");
					response.sendRedirect("/WebProjekat/user.jsp");
				}
				else {
					
					response.sendRedirect("/WebProjekat/403.jsp");
				}
					
					return;
			
	}
		
		
		
	}

