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
 * Servlet implementation class ClassApplicationCtrl
 */
@WebServlet(name = "application.do", urlPatterns = { "/application.do" })
public class ClassApplicationCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ClassApplicationService service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClassApplicationCtrl() {
        super();
        service = new ClassApplicationService();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String classcode = request.getParameter("classcode");
		Member mem = (Member)session.getAttribute("mem");
		String id = mem.getId();
		String page = "detail.do?classcode="+classcode;
		if(classcode!=null) {
			boolean result = service.classAp_check(classcode);
			if(result) {
				service.classAp(id,classcode);
				request.removeAttribute("msg");
				request.setAttribute("msg", "신청완료");
			}else {
				request.removeAttribute("msg");
				request.setAttribute("msg", "이미 신청한 클래스입니다");
			}
		}
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
