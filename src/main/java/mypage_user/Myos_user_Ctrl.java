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

import login.Member;

/**
 * Servlet implementation class Myos_user_Ctrl
 */
@WebServlet(name = "osuser.do", urlPatterns = { "/osuser.do" })
public class Myos_user_Ctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private Myos_user_Service service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Myos_user_Ctrl() {
        super();
        // TODO Auto-generated constructor stub
        service = new Myos_user_Service();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		String page = "myclass_os_user.jsp";
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("mem");
		String id = mem.getId();
		
		if(id == null) {
			page = "login.jsp";
		} else {
			ArrayList<Myos_user> list;
			list = service.myoslist(id);
			request.setAttribute("oslist", list);
			System.out.println(id);
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
