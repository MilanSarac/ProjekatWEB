package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		HttpSession session = request.getSession();
		//ApartmentRepository ar = new ApartmentRepository();
		String sesija = session.getAttribute("sesija").toString();
		
		String Sadrzaj = request.getParameter("parameterName");
		String Type = request.getParameter("Type");
		String Number_Rooms = request.getParameter("Number_Rooms");
		double brSoba = Double.parseDouble(Number_Rooms);
		String Number_Guests = request.getParameter("Number_Guests");
		double NumberGuests = Double.parseDouble(Number_Guests);
		String Date_for_Rent_Start = request.getParameter("Date_for_Rent_Start");
		String Date_for_Rent_End = request.getParameter("Date_for_Rent_End");

		String Price_per_night = request.getParameter("Price_per_night");
		double price = Double.parseDouble(Price_per_night);

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
		List<String> sadrzaji = new ArrayList<String>();
        while (enumeration.hasMoreElements()) {
            String parameterName = (String) enumeration.nextElement();
            if(parameterName.startsWith("xx_")) {
            	parameterName =parameterName.replace("xx_", "");
            	System.out.println("Parameter = " + parameterName);
            	sadrzaji.add(parameterName);
            }
        }
        Apartment apartman = new Apartment(sadrzaji, Type, brSoba, NumberGuests, Date_for_Rent_Start,
        	      sesija, price, Check_in_time, Check_out_time, true,uuid1.toString(),Latitude,Longitude,Street,
        	     Streetnumber,Place,Zip_post,0,"Niko",Date_for_Rent_End);
        ar.addApartment(apartman);
        	        
		response.sendRedirect("/WebProjekat/");
	}

}
