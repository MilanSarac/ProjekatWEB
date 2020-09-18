package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import data.CommentRepository;
import model.Comment;

/**
 * Servlet implementation class AddComment
 */
@WebServlet("/addComment.jsp")
public class AddComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddComment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sesija = session.getAttribute("sesija").toString();
		String ID_Apartman = request.getParameter("ID_Apartman");
		String Ratting= request.getParameter("Ratting");
		//double dnum1 = Double.parseDouble(Ratting);
		String Text= request.getParameter("Text");
	
			CommentRepository cr = new CommentRepository();
			Comment comment= new Comment(sesija,ID_Apartman,Ratting,Text,true);
			System.out.println(comment+"poslednje dodat");
			cr.addComment(comment);
			
			response.sendRedirect("/WebProjekat/");
	}

}
