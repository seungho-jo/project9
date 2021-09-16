package classlist;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bookmark.Bookmark;
import bookmark.CommonService;
import login.Member;

/**
 * Servlet implementation class Detailgosu_Ctrl
 */
@WebServlet(name = "detail.do", urlPatterns = { "/detail.do" })
public class Detailgosu_Ctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Classlist_Service service;
    private CommonService service2;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Detailgosu_Ctrl() {
        super();
        service = new Classlist_Service();
        service2 = new CommonService();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		
		//고수와 고수 클래스 정보
		String classcode = request.getParameter("classcode");

		
		Detailgosu de = service.detailproduct(classcode);
		request.setAttribute("detail", de);
		
		Member mem = (Member)session.getAttribute("mem");
		String id = null;
		if(mem!=null) {
			id = mem.getId(); // 클래스고수아이디
		}
		if(id!=null) {
			Bookmark bm = service2.bookmarkInfo(id, classcode);
			request.setAttribute("bookmark", bm.getStatus());
		}
		RequestDispatcher rd = request.getRequestDispatcher("detailgosu.jsp");
		rd.forward(request, response);
	}

}
