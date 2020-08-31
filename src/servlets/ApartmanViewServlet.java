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

import data.ApartmentRepository;

/**
 * Servlet implementation class ApartmanViewServlet
 */
@WebServlet("/apartmanView.jsp")
public class ApartmanViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApartmanViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ApartmentRepository ar = new ApartmentRepository();
			 JSONArray allApartmants = (JSONArray) ar.GetallApartments();
			 JSONArray apartman = new JSONArray();
			 for (int i = 0; i < allApartmants.size(); i++) {
				 JSONObject result = (JSONObject) allApartmants.get(i);
				
			 
			 System.out.println(result+"nesto pametno");
			 
			 request.setAttribute("resultArray", result);

			 }
	

		RequestDispatcher rd = request.getRequestDispatcher("/view/apartmanView.jsp");
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
