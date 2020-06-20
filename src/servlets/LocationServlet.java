package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.LocationRepository;
import data.UserRepository;
import model.Location;
import model.User;

/**
 * Servlet implementation class LocationServlet
 */
@WebServlet("/location.jsp")
public class LocationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LocationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd= request.getRequestDispatcher("view/location.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Latitude= request.getParameter("Latitude");
		String Longitude= request.getParameter("Longitude");
		String Location_Adress= request.getParameter("Location_Adress");
		
		Location location= new Location(Latitude,Longitude,Location_Adress); 
	
		LocationRepository lr= new LocationRepository();
		lr.addLocation(location);
		response.sendRedirect("/WebProjekat/");
		
	}
}
