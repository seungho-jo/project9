package classlist;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import login.Member;

/**
 * Servlet implementation class Detailgosu_Ctrl
 */
@WebServlet(name = "detail.do", urlPatterns = { "/detail.do" })
public class Detailgosu_Ctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Classlist_Service service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Detailgosu_Ctrl() {
        super();
        service = new Classlist_Service();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		
		
		//고수와 고수 클래스 정보
		String classcode = request.getParameter("classcode");
		String id = request.getParameter("id"); // 클래스고수아이디
		String nickname = request.getParameter("nickname");
		String info = request.getParameter("info");
		String history = request.getParameter("history");
		String title = request.getParameter("title");
		String sns = request.getParameter("sns");
		String category = request.getParameter("category");
		String ftf = request.getParameter("ftf");
		String loc = request.getParameter("loc");
		String price = request.getParameter("price");
		String classtime = request.getParameter("classtime");
		String formimg = request.getParameter("formimg");
		String profile = request.getParameter("profile");
		
		
		Detailgosu de = service.detailproduct(classcode);
		request.setAttribute("detail", de);
		RequestDispatcher rd = request.getRequestDispatcher("detailgosu.jsp");
		rd.forward(request, response);
	}

}
