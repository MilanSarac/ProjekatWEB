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
 * Servlet implementation class UserServlet
 */
@WebServlet("/user.jsp")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();
		String sesija = session.getAttribute("sesija").toString();
		JSONArray allUsers=new JSONArray();
		UserRepository ur= new UserRepository();
		allUsers=(JSONArray)ur.GetUsers();
			for(int i=0; i<allUsers.size();i++) {
				JSONObject result=(JSONObject) allUsers.get(i);
				String mail = (String) result.get("Username");
				
			if(mail.equals(sesija)) {
				request.setAttribute("result", result);
				
			}
	}
			RequestDispatcher rd = request.getRequestDispatcher("/view/user.jsp");
			rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
