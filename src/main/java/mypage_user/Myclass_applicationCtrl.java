package mypage_user;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gosuform.Gosuform;
import login.Member;

/**
 * Servlet implementation class Myclass_application
 */
@WebServlet(name = "myclass_ap.do", urlPatterns = { "/myclass_ap.do" })
public class Myclass_applicationCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    Myclass_applicationService service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Myclass_applicationCtrl() {
        super();
        service = new Myclass_applicationService();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("mem");
		String id = mem.getId();
		ArrayList<Gosuform> list = service.myClassAp(id);
		request.setAttribute("myaplist", list);
		RequestDispatcher rd = request.getRequestDispatcher("myclass_app_user.jsp");
		rd.forward(request, response);
	}

}
