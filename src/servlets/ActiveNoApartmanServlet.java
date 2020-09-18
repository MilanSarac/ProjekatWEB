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

import data.ApartmentRepository;
import logic.ApartmanLogic;

/**
 * Servlet implementation class ActiveNoApartmanServlet
 */
@WebServlet("/activeNOApartman.jsp")
public class ActiveNoApartmanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActiveNoApartmanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sesija = session.getAttribute("sesija").toString();
		
		
		RequestDispatcher rd= request.getRequestDispatcher("view/activeNOApartmans.jsp"); 
		JSONArray allApartmans = new JSONArray();
		ApartmanLogic ll = new ApartmanLogic();
		ApartmentRepository ur= new ApartmentRepository ();
		allApartmans = ll.ActiveNOApartmans();
		request.setAttribute("allApartmans", allApartmans);
		

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
