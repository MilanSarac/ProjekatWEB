package servlets;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;

import logic.ApartmanLogic;
import logic.ApartmansSearch;

/**
 * Servlet implementation class ApartmanSearchServlet
 */
@WebServlet("/apartmanSearch.jsp")
public class ApartmanSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApartmanSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		JSONArray filter = new JSONArray();
		ApartmansSearch us= new ApartmansSearch();
		ApartmanLogic ab = new ApartmanLogic();
		
		 JSONArray allActiveApartments = ab.ActiveApartmansTest();
		try {
			filter = us.SearchApartmans(request);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("filter", filter);
		request.setAttribute("allAd", allActiveApartments);
		RequestDispatcher rd = request.getRequestDispatcher("/view/apartmanSearch.jsp");
		rd.forward(request, response);
	}
		
		
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
