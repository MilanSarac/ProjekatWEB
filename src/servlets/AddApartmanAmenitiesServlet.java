package servlets;

import java.io.IOException;
import java.util.Enumeration;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.AmenitiesRepository;
import logic.AmenitiesLogic;
import model.Amenities;

/**
 * Servlet implementation class AddApartmanAmenitiesServlet
 */
@WebServlet("/addApartmanAmenities.jsp")
public class AddApartmanAmenitiesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddApartmanAmenitiesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AmenitiesLogic al= new AmenitiesLogic();
		request.setAttribute("allAmenities", al.Name_Amenities());
		RequestDispatcher rd = request.getRequestDispatcher("/view/addApartmanAmenities.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		UUID uuid1 = UUID.randomUUID();
		Enumeration enumeration = request.getParameterNames();
        while (enumeration.hasMoreElements()) {
            String parameterName = (String) enumeration.nextElement();
            System.out.println("Parameter = " + parameterName);
    		AmenitiesRepository amr = new AmenitiesRepository();
            Amenities amenities = new Amenities(uuid1.toString(), parameterName, true, request.getParameter("ID_Apartmans"));
    		amr.addAmenities(amenities);
        }
		

		response.sendRedirect("/WebProjekat/updateAmenities1.jsp");
	}

}
