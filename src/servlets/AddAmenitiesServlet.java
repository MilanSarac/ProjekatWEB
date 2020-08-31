package servlets;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.AmenitiesRepository;
import model.Amenities;

/**
 * Servlet implementation class AddAmenitiesServlet
 */
@WebServlet("/addAmenities.jsp")
public class AddAmenitiesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAmenitiesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/view/addAmenities.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UUID uuid1 = UUID.randomUUID();
		String Name_Amenities = request.getParameter("Name_Amenities");
		String ID_Apartmans = request.getParameter("ID_Apartmans");
		AmenitiesRepository amr = new AmenitiesRepository();

		Amenities amenities = new Amenities(uuid1.toString(), Name_Amenities, true, ID_Apartmans);
		amr.addAmenities(amenities);
		response.sendRedirect("/WebProjekat/updateAmenities1.jsp");

	}

}