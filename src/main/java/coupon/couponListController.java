package coupon;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class couponListController
 */
@WebServlet(name = "cLC.do", urlPatterns = { "/cLC.do" })
public class couponListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private coupon_service service;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public couponListController() {
        super();
        // TODO Auto-generated constructor stub
        service = new coupon_service();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		
		String page = "admin/admin_coupon.jsp";
		ArrayList<admin_coupon> clist = service.couponList();
		request.setAttribute("clist", clist);		// request.getParameter("") : 요청페이지에서 넘겨온 값을 받음,  request.setAttribute("key값", value값); 요청페이지로 값을 돌려보냄.
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
