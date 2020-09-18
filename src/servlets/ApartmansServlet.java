package servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import data.ReservationRepository;
import logic.ApartmanLogic;
import model.Reservation;

/**
 * Servlet implementation class ApartmansServlet
 */
@WebServlet("/apartments.jsp")
public class ApartmansServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApartmansServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ID_Apartman= request.getParameter("name");
		ApartmanLogic al = new ApartmanLogic();
		JSONObject apartments = al.ApartmanById(ID_Apartman);
		request.setAttribute("apartments", apartments);
		RequestDispatcher rd = request.getRequestDispatcher("/view/apartments.jsp");
		rd.forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String sesija = session.getAttribute("sesija").toString();
		String ID_Apartman = request.getParameter("ID_Apartman");
		String Price_per_night = request.getParameter("Price_per_night");
		double dnum = Double.parseDouble(Price_per_night);
		String Date_for_Rent_Start = request.getParameter("Date_for_Rent_Start");
		String Date_for_Rent_End = request.getParameter("Date_for_Rent_End");
		String MessageReservation= request.getParameter("MessageReservation");
		
		Date dateStart = new Date();
		long diff = 0;
		try {
			dateStart = new SimpleDateFormat("yy-M-d").parse(Date_for_Rent_Start);
			Date dateEnd=new SimpleDateFormat("yy-M-d").parse(Date_for_Rent_End);
			long diffInMillies = Math.abs(dateEnd.getTime() - dateStart.getTime());
		    diff = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
	
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	/*	if (request.getParameter("update") != null) {
	        //update button is clicked
	        //Do the update action or forward the request to the servlet to do update action 

	    } else if (request.getParameter("delete") != null) {
	          //delete button is clicked
	          //Do the delete action or forward the request to the servlet to do delete action
	    }*/
		

		ReservationRepository rr= new ReservationRepository();
		Reservation reservation = new Reservation(Date_for_Rent_Start,diff,ID_Apartman,dnum*diff,sesija,MessageReservation,"Kreirana");
		System.out.println(reservation+"i tebe sam upisao");
		rr.addReservation(reservation);
		
		response.sendRedirect("/WebProjekat/");
	}

}
