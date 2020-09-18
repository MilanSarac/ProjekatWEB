package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.UserRepository;

/**
 * Servlet implementation class UpdateUser
 */
@WebServlet("/updateUser.jsp")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Username= request.getParameter("Username");
		String Name= request.getParameter("Name");
		String SureName= request.getParameter("SureName");
		String Password= request.getParameter("Password");
		String PasswordControl= request.getParameter("PasswordControl");
		UserRepository ur= new UserRepository(); 
		ur.updateUser(Username,Name, SureName, Password,PasswordControl);
		
		response.sendRedirect("/WebProjekat/user.jsp");
		return;
	}

}
