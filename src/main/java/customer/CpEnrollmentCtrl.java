package customer;

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
 * Servlet implementation class CpEnrollmentCtrl
 */
@WebServlet(name = "cpEnroll.do", urlPatterns = { "/cpEnroll.do" })
public class CpEnrollmentCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CommonService service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CpEnrollmentCtrl() {
        super();
        service = new CommonService();
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
		String id = null;
		if(mem!=null) {
			id = mem.getId();
		}
		String num1 = request.getParameter("code1");
		String num2 = request.getParameter("code2");
		String num3 = request.getParameter("code3");
		String num4 = request.getParameter("code4");
		String couponnumber = num1+num2+num3+num4;
		String page;
		if(id!=null) {
			boolean check = service.cp_check(couponnumber);
			if(check) {
				service.cp_enrollment(id, couponnumber);
				page = "coupons.do";
			}else {
				page = "couponEnrollment.jsp";
				request.removeAttribute("msg");
				request.setAttribute("msg", "등록되지 않은 쿠폰입니다");
			}
		}else {
			page = "login.jsp";
			request.removeAttribute("msg");
			request.setAttribute("msg", "로그인을 진행해주세요");
		}
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
