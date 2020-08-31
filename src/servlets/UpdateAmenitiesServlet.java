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

import data.AmenitiesRepository;

/**
 * Servlet implementation class UpdateAmenitiesServlet
 */
@WebServlet("/updateAmenities.jsp")
public class UpdateAmenitiesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAmenitiesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ID_Amenities= request.getParameter("name");
		AmenitiesRepository amr = new AmenitiesRepository();
		JSONArray allAmenities = new JSONArray();
		allAmenities = (JSONArray) amr.GetAmenities();
		JSONObject  amenities =  new JSONObject();
		for (int i=0; i<allAmenities.size();i++) {
			JSONObject result = (JSONObject) allAmenities.get(i);
			String iD = (String) result.get("ID_Amenities");
			if (iD.equalsIgnoreCase(ID_Amenities)) {
				amenities =  (JSONObject) allAmenities.get(i);
				request.setAttribute("amenities", amenities);
				System.out.println(amenities);
			}
			
		}
		RequestDispatcher rd = request.getRequestDispatcher("/view/updateAmenities.jsp");
		rd.forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ID_Amenities = request.getParameter("ID_Amenities");
		String Name_Amenities = request.getParameter("Name_Amenities");
		
		AmenitiesRepository amr = new AmenitiesRepository();
		amr.UpdateAmenities(ID_Amenities,Name_Amenities);
		response.sendRedirect("/WebProjekat/updateAmenities1.jsp");
		//response.sendRedirect("/WebProjekat/user.jsp");
		return;
	}

}
