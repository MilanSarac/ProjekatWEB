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

import data.AmenitiesRepository;

/**
 * Servlet implementation class AllAmenitiesServlet
 */
@WebServlet("/allAmenities.jsp")
public class AllAmenitiesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllAmenitiesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd= request.getRequestDispatcher("view/allAmenities.jsp"); 
		AmenitiesRepository amr = new AmenitiesRepository();
		 JSONArray allAmenities = (JSONArray) amr.GetAmenities();
		 JSONArray resultArray = new JSONArray();
		 for (int i = 0; i < allAmenities.size(); i++) {
			 JSONObject result = (JSONObject) allAmenities.get(i);
				 resultArray.add(result);
				
		 }
		 request.setAttribute("resultArray", resultArray);
		 rd.forward(request, response);
	}
	

	
	/**}
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
