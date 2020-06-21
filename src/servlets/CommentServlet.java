package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.CommentRepository;
import model.Address;
import model.Comment;

/**
 * Servlet implementation class CommentServlet
 */
@WebServlet("/comment.jsp")
public class CommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd= request.getRequestDispatcher("view/comment.jsp");
		rd.forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Sender= request.getParameter("Sender");
		String ReferedToApartment= request.getParameter("ReferedToApartment");
		String Rating= request.getParameter("Rating");
		String Text= request.getParameter("Text");
		Comment comment = new Comment(Sender, ReferedToApartment,Rating,Text);
		
		
		CommentRepository cr= new CommentRepository();
		cr.addComment(comment);
		response.sendRedirect("/WebProjekat/");
	}

}