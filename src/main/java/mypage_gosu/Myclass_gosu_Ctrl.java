package mypage_gosu;

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
 * Servlet implementation class Myclass_user_Ctrl
 */
@WebServlet(name = "myclassgosu.do", urlPatterns = { "/myclassgosu.do" })
public class Myclass_gosu_Ctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private Myclass_gosu_Service service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Myclass_gosu_Ctrl() {
        super();
        service = new Myclass_gosu_Service();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String page = "myclass_gosu.jsp";
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("mem");
		String id = mem.getId();
		if(id!=null) {
			ArrayList<Myclass_gosu> list;
			list = service.classlist_gosu(id);
			request.setAttribute("classgosulist", list);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(page);
			dispatcher.forward(request, response);
		}
	}

}
