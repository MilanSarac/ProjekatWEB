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
 * Servlet implementation class AllApartmansServlet
 */
@WebServlet("/allApartmans.jsp")
public class AllApartmansServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllApartmansServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		RequestDispatcher rd= request.getRequestDispatcher("/view/allApartmans.jsp"); 
		ApartmentRepository ar = new ApartmentRepository();
		
		 ApartmanLogic al = new ApartmanLogic();
			JSONArray allANApartments = al.ApartmansAN();
			request.setAttribute("allANApartments", allANApartments);

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
