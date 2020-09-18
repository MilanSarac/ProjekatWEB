package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;

import data.ApartmentRepository;
import logic.ApartmanLogic;

/**
 * Servlet implementation class BrisanjeApartmanaServlet
 */
@WebServlet("/brisanjeApartmana.jsp")
public class BrisanjeApartmanaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BrisanjeApartmanaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JSONArray allApartmans = new JSONArray();
		ApartmanLogic ll = new ApartmanLogic();
		ApartmentRepository ur= new ApartmentRepository ();
		allApartmans = ll.ActiveApartmans();
		request.setAttribute("allUser", allApartmans);
		RequestDispatcher rd = request.getRequestDispatcher("/view/brisanjeApartmana.jsp");
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
