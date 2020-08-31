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

import org.json.simple.JSONArray;

import data.AmenitiesRepository;
import data.ApartmentRepository;
import model.Apartment;

/**
 * Servlet implementation class AddApartmanServlet
 */
@WebServlet("/addApartmans.jsp")
public class AddApartmanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddApartmanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		AmenitiesRepository am = new AmenitiesRepository();
		JSONArray allActiveAmenities=new JSONArray();
		allActiveAmenities= am.ActiveAmenities();
		request.setAttribute("Sadrzaj", allActiveAmenities);

		RequestDispatcher rd = request.getRequestDispatcher("/view/addApartmans.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String Sadrzaj = request.getParameter("parameterName");
		String Type = request.getParameter("Type");
		String BrojSoba = request.getParameter("brojsoba");
		double brSoba = Double.parseDouble(BrojSoba);
		String Number_Guests = request.getParameter("Number_Guests");
		double NumberGuests = Double.parseDouble(Number_Guests);
		String Date_for_Rent_Start = request.getParameter("Date_for_Rent_Start");
		String Date_for_Rent_End = request.getParameter("Date_for_Rent_End");

		String Price = request.getParameter("Price");
		double price = Double.parseDouble(Price);

		String Check_out_time = request.getParameter("Check_out_time");
		String Check_in_time = request.getParameter("Check_in_time");
		UUID uuid1 = UUID.randomUUID();
		String Latitude = request.getParameter("Latitude");
		String Longitude = request.getParameter("Longitude");
		String Street= request.getParameter("Street");
		String Streetnumber= request.getParameter("Streetnumber");
		String Place= request.getParameter("Place");
		String Zip_post= request.getParameter("Zip_post");
		
		ApartmentRepository ar = new ApartmentRepository();
		Enumeration enumeration = request.getParameterNames();
        while (enumeration.hasMoreElements()) {
            String parameterName = (String) enumeration.nextElement();
            if(parameterName.startsWith("xx_")) {
            	parameterName =parameterName.replace("xx_", "");
            	System.out.println("Parameter = " + parameterName);
        		Apartment apartman = new Apartment(parameterName, Type, brSoba, NumberGuests, Date_for_Rent_Start,
        				Date_for_Rent_End, "NekiMail", price, Check_in_time, Check_out_time, true,uuid1.toString(),Latitude,Longitude,Street,Streetnumber,Place,Zip_post);
        		ar.addApartment(apartman);
            }
        }
		response.sendRedirect("/WebProjekat/");
	}

}
