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
	/*	LocationAddressRepository lar = new LocationAddressRepository();
		JSONArray allLocationAddress = (JSONArray) lar.GetLocationAddress();
		JSONArray resultArray1 = new JSONArray();
		 for (int i = 0; i < allLocationAddress.size(); i++) {
			 JSONObject result1 = (JSONObject) allLocationAddress.get(i);
				 resultArray1.add(result1);
				
		 }*/
		


		
		

		ApartmentRepository ar = new ApartmentRepository();
		
	/*	JSONArray allApartmants = new JSONArray();
		ApartmentRepository cb = new ApartmentRepository();
		allApartmants = cb.ActiveApartmans();
		request.setAttribute("allApartmants", allApartmants);*/
		
	
		 JSONArray allApartmants = (JSONArray) ar.GetallApartments();
		 JSONArray resultArray = new JSONArray();
		 for (int i = 0; i < allApartmants.size(); i++) {
			 JSONObject result = (JSONObject) allApartmants.get(i);
				 resultArray.add(result);
				
		 }
		 System.out.println(resultArray+"nesto pametno");
		 
		 request.setAttribute("resultArray", resultArray);
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
