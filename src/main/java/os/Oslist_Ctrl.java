package os;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classlist.Classlist;

/**
 * Servlet implementation class Oslist_Ctrl
 */
@WebServlet(name = "oslist.do", urlPatterns = { "/oslist.do" })
public class Oslist_Ctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Osform_Service service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Oslist_Ctrl() {
        super();
        // TODO Auto-generated constructor stub
        service = new Osform_Service();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String page = "os_list.jsp";
		String category = request.getParameter("category");
		
		ArrayList<Oslist> list;
		list = service.oslist(category);
		request.setAttribute("oslist", list);	

		
		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		dispatcher.forward(request, response);
	}
	

}
