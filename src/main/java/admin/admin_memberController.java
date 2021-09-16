package admin;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class admin_memberController
 */
@WebServlet(name = "admin.do", urlPatterns = { "/admin.do" })
public class admin_memberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CommonService service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_memberController() {
        super();
        service = new CommonService();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		System.out.println("id"+id);
		String pass = request.getParameter("pass");
		System.out.println("pass"+pass);
		String page = "admin_login.jsp";
		HttpSession session = request.getSession();
		
		if(id!=null&&pass!=null) {
			admin_Member mem = service.login(id, pass);
			if(mem!=null) {
				session.setAttribute("mem", mem);
				page = "admin/userinfo.jsp";
			}
		}
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
