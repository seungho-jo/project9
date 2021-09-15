package os;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Osdetail_Ctrl
 */
@WebServlet(name = "osdetail.do", urlPatterns = { "/osdetail.do" })
public class Osdetail_Ctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Osform_Service service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Osdetail_Ctrl() {
        super();
        service = new Osform_Service();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		
		String oscode = request.getParameter("oscode");
		
		OsDetail de = service.os_detail(oscode);
		request.setAttribute("detail", de);
		RequestDispatcher rd = request.getRequestDispatcher("os_detail.jsp");
		rd.forward(request, response);
	}



}
