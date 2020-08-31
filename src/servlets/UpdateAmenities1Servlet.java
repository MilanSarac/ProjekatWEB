package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;

import data.AmenitiesRepository;

/**
 * Servlet implementation class UpdateAmenities1Servlet
 */
@WebServlet("/updateAmenities1.jsp")
public class UpdateAmenities1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAmenities1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		JSONArray allAmenities = new JSONArray();
		System.out.println(allAmenities);
		AmenitiesRepository cb = new AmenitiesRepository();
		allAmenities = cb.ActiveAmenities();
		request.setAttribute("allAmenities", allAmenities);
		RequestDispatcher rd = request.getRequestDispatcher("/view/updateAmenities1.jsp");
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
