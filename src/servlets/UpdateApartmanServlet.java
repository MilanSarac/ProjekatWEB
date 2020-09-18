package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import data.ApartmentRepository;

/**
 * Servlet implementation class UpdateApartmanServlet
 */
@WebServlet("/updateApartman.jsp")
public class UpdateApartmanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateApartmanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ID_Apartman= request.getParameter("name");
		ApartmentRepository amr = new ApartmentRepository();
		JSONArray allApartments = new JSONArray();
		allApartments = (JSONArray) amr.GetallApartments();
		JSONObject  apartments =  new JSONObject();
		for (int i=0; i<allApartments.size();i++) {
			JSONObject result = (JSONObject) allApartments.get(i);
			String iD = (String) result.get("ID_Apartman");
			if (iD.equalsIgnoreCase(ID_Apartman)) {
				apartments =  (JSONObject) allApartments.get(i);
				request.setAttribute("apartments", apartments);
				//System.out.println(apartments);
			}
			
		}
		RequestDispatcher rd = request.getRequestDispatcher("/view/updateApartman.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ID_Apartman = request.getParameter("ID_Apartman");
		String Number_Rooms = request.getParameter("Number_Rooms");
		
		ApartmentRepository amr = new ApartmentRepository();
		amr.updateApartman(ID_Apartman,Number_Rooms );
		response.sendRedirect("/WebProjekat/updateApartman1.jsp");
		
		return;
	}

}
