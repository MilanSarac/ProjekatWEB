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
 * Servlet implementation class ActiveApartmanServlet
 */
@WebServlet("/activeApartmans.jsp")
public class ActiveApartmanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActiveApartmanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sesija = session.getAttribute("sesija").toString();
		
		
		RequestDispatcher rd= request.getRequestDispatcher("view/activeApartmans.jsp"); 
		JSONArray allApartmans = new JSONArray();
		ApartmanLogic ll = new ApartmanLogic();
		ApartmentRepository ur= new ApartmentRepository ();
		allApartmans = ll.ActiveApartmans();
		request.setAttribute("allApartmans", allApartmans);
		
		
		
		/*ApartmanLogic al = new ApartmanLogic();
			JSONArray allANApartments = al.ActiveApartmansTest();
			JSONArray returnApartmans = new JSONArray();
			for (int i=0;i<allANApartments.size();i++) {
				JSONObject result = (JSONObject) allANApartments.get(i);
				
				if(result.get("Host").toString().equals( session.getAttribute("sesija").toString()))
						{
					returnApartmans.add(result);
						}
			}*/
			

	
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
