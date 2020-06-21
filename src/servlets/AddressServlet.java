package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.AddressRepository;
import model.Address;

/**
 * Servlet implementation class AddressServlet
 */
@WebServlet("/address.jsp")
public class AddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddressServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd= request.getRequestDispatcher("view/address.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Street= request.getParameter("Street");
		String Streetnumber= request.getParameter("Streetnumber");
		String Place= request.getParameter("Place");
		String Zip_post= request.getParameter("Zip_post");
		
		Address address = new Address(Street, Streetnumber,Place,Zip_post);
		
		
		AddressRepository ar= new AddressRepository();
		ar.addAddress(address);
		response.sendRedirect("/WebProjekat/");
	}

}
