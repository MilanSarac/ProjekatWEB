package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import data.UserRepository;

/**
 * Servlet implementation class AllUsers
 */
@WebServlet("/allUsers.jsp")
public class AllUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllUsersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd= request.getRequestDispatcher("view/allUsers.jsp"); 
		UserRepository ar = new UserRepository();
		 JSONArray allUsers = (JSONArray) ar.GetUsers();
		 JSONArray resultArray = new JSONArray();
		 for (int i = 0; i < allUsers.size(); i++) {
			 JSONObject result = (JSONObject) allUsers.get(i);
				 resultArray.add(result);
				
		 }
		 System.out.println(resultArray);
		 
		 request.setAttribute("resultArray", resultArray);
		 rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
