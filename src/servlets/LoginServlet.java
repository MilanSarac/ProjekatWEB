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

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.jsp")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/view/login.jsp");// TODO Auto-generated method stub
		rd.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String Username=request.getParameter("Username");
		String Password=request.getParameter("Password");
		
		JSONArray allUsers=new JSONArray();
		UserRepository ur= new UserRepository();
		allUsers=(JSONArray)ur.GetUsers();
			for(int i=0; i<allUsers.size();i++) {
				JSONObject result=(JSONObject) allUsers.get(i);
				String usern=(String) result.get("Username");
				String pass=(String) result.get("Password");
			if(usern.equals(Username)&&pass.equals(Password)) {
				String role=(String) result.get("Role");
				HttpSession sesion=request.getSession();
				sesion.setAttribute("sesija", Username);
				sesion.setAttribute("role",role);
				response.sendRedirect("/WebProjekat/user.jsp");
				return;
			}
	}
			request.setAttribute("errorMessage", "greska");
			RequestDispatcher rd= request.getRequestDispatcher("/view/login.jsp");
			rd.forward(request,response);
			return;
	}
}
