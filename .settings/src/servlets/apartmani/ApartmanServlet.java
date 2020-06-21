package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import data.ApartmentRepository;
import data.UserRepository;
import model.Apartment;
import model.User;

/**
 * Servlet implementation class ApartmanServlet
 */
@WebServlet("/apartmani.jsp")
public class ApartmanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApartmanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd= request.getRequestDispatcher("view/apartmani.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Type= request.getParameter("Type");
		String Number_Rooms= request.getParameter("Number_Rooms");
		String Number_Guests= request.getParameter("Number_Guests");
		String Alocation= request.getParameter("Alocation");
		String Date_for_Rent=request.getParameter("Date_for_Rent");
		String Avaliable_by_Date= request.getParameter("Avaliable_by_Date");
		String Host= request.getParameter("Host");
		String Comments_visited=request.getParameter("Comments_visited");
		String Price_per_night=request.getParameter("Price_per_night");
		String Active_or_Inactive= request.getParameter("Active_or_Inactive");
		String Amenities= request.getParameter("Amenities");
		String Check_in_time= request.getParameter("Check_in_time");
		String Check_out_time= request.getParameter("Check_out_time");
		String ListReservation= request.getParameter("ListReservation");
		String Pictures= request.getParameter("Pictures");
		
		Apartment apartman= new Apartment(Type, Number_Rooms, Number_Guests, Alocation, Date_for_Rent, Avaliable_by_Date, Host, Comments_visited,Price_per_night,
				Active_or_Inactive, Amenities, Check_in_time, Check_in_time, Active_or_Inactive, ListReservation); 
		
		
		ApartmentRepository ar= new ApartmentRepository();
		ar.addApartment(apartman);
			response.sendRedirect("/WebProjekat/");
		
	}
}
