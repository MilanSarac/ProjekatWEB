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

import logic.ApartmanLogic;

/**
 * Servlet implementation class AllSearch
 */
@WebServlet("/allSearch.jsp")
public class AllSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		RequestDispatcher rd= request.getRequestDispatcher("view/allSearch.jsp"); 
		HttpSession session = request.getSession();
		String sesija = session.getAttribute("sesija").toString();
	 
		 ApartmanLogic al = new ApartmanLogic();
			JSONArray allActiveApartments = al.ActiveApartmans();
			if(session.getAttribute("role").toString().equals("Domacin")) {
				for (int i=0;i<allActiveApartments.size();i++) {
					JSONObject result = (JSONObject) allActiveApartments.get(i);
				String host = (String) result.get("Host");
				if(host==("dom")) {
			request.setAttribute("allActiveApartments", allActiveApartments);
			}
		 rd.forward(request, response);
	}
			}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
