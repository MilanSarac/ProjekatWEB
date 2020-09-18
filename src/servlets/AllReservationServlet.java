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

import data.ReservationRepository;

/**
 * Servlet implementation class AllReservationServlet
 */
@WebServlet("/allReservation.jsp")
public class AllReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllReservationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		
		RequestDispatcher rd= request.getRequestDispatcher("/view/allReservation.jsp"); 
		ReservationRepository rr = new ReservationRepository();
	
		
		 JSONArray allReservation= (JSONArray) rr.GetReservation();
		 JSONArray resultArray = new JSONArray();
		 for (int i = 0; i < allReservation.size(); i++) {
			 JSONObject result = (JSONObject) allReservation.get(i);
				 resultArray.add(result);
				
		 }
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
