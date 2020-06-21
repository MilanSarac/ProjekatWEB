package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import data.AmenitiesRepository;
import data.CommentRepository;
import model.Amenities;
import model.Comment;

/**
 * Servlet implementation class AmenitiesServlet
 */
@WebServlet("/amenities.jsp")
public class AmenitiesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AmenitiesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd= request.getRequestDispatcher("view/amenities.jsp");
		rd.forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ID_Amenities= request.getParameter("ID_Amenities");
		String Wifi= request.getParameter("Wifi");
		String Tv= request.getParameter("Tv");
		String AirConditioning= request.getParameter("AirConditioning");
		String Elevator= request.getParameter("Elevator");
		String Parking= request.getParameter("Parking");
		String Kitchen= request.getParameter("Kitchen");
		String Iron= request.getParameter("Iron");
		String Washing_machine= request.getParameter("Washing_machine");
		
		Amenities amenities = new Amenities(ID_Amenities,Wifi,Tv,AirConditioning
				,Elevator,Parking,Kitchen,Iron,Washing_machine);

		AmenitiesRepository ar= new AmenitiesRepository();
		ar.addAmenities(amenities);
		response.sendRedirect("/WebProjekat/");
	}

}
