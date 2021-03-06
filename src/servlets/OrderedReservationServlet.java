package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;

import logic.UserLogic;

/**
 * Servlet implementation class OrderedReservationServlet
 */
@WebServlet("/orderedReservation.jsp")
public class OrderedReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderedReservationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String custimer = session.getAttribute("sesija").toString();
		UserLogic ul = new UserLogic();
		JSONArray allUsersOrderedReservation = ul.AllOrderedApartmans(custimer);
		System.out.println(allUsersOrderedReservation);
		request.setAttribute("allUsersOrderedProdut", allUsersOrderedReservation);
		RequestDispatcher rd = request.getRequestDispatcher("/view/orderedReservation.jsp");
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
