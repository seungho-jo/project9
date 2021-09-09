package gosuform;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Gosuform_Ctrl
 */
@WebServlet(name = "insGosuform.do", urlPatterns = { "/insGosuform.do" })
public class Gosuform_Ctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Gosuform_Service service2;

    
 /**
  * @see HttpServlet#HttpServlet()
  */
    public Gosuform_Ctrl() {
        super();
        service2 = new Gosuform_Service();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		String page = "login.jsp";
		HttpSession session = request.getSession();		
		
		String id = request.getParameter("id"); //hidden
		String pass = request.getParameter("pass");
		
		String nickname = request.getParameter("nickname");
		String info = request.getParameter("info");
		String history = request.getParameter("history");
		String sns = request.getParameter("sns");
		String category = request.getParameter("category");
		String ftf = request.getParameter("ftf");
		String loc = request.getParameter("loc");
		String price = request.getParameter("price");
		String classtime = request.getParameter("classtime");
		
		System.out.println(id);
		System.out.println("123");
		if (id != null) {
				
				Gosuform gosu = new Gosuform();
				gosu.setId(id);
				gosu.setNickname(nickname);
				gosu.setInfo(info);
				gosu.setHistory(history);
				gosu.setSns(sns);
				gosu.setCategory(category);
				gosu.setFtf(ftf);
				gosu.setLoc(loc);
				gosu.setPrice(price);
				gosu.setClasstime(classtime);
//				System.out.println(mem.getId());
				service2.insGosuformJson(gosu);
				
				page = "index.jsp";
			
		} else {
			page = "gosuform.jsp";
			
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
