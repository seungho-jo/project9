package classlist;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Classlist_Ctrl
 */
@WebServlet(name = "blist.do", urlPatterns = { "/blist.do" })
public class Classlist_best_Ctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Classlist_Service service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Classlist_best_Ctrl() {
        super();
        // TODO Auto-generated constructor stub
        service = new Classlist_Service();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
			String title = request.getParameter("title");
			
			ArrayList<Classlist> blist;
			System.out.println(title);
			blist = service.best_classlist();
			request.setAttribute("bestlist", blist);	

		
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}

}
