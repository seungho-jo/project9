package coupon;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class couponController
 */
@WebServlet(name = "coupon.do", urlPatterns = { "/coupon.do" })
public class couponController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private coupon_service service;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public couponController() {
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
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String cName = request.getParameter("couponName");
		String cNum1 = request.getParameter("cNum1");
		String cNum2 = request.getParameter("cNum2");
		String cNum3 = request.getParameter("cNum3");
		String cNum4 = request.getParameter("cNum4");
		String cNumber = cNum1.concat(cNum2).concat(cNum3).concat(cNum4);
		String discountS = request.getParameter("discount");
		String page = "admin_coupon.jsp";
		if(discountS!=null) {
			
			int discount = Integer.parseInt(discountS);
			if(service.createCoupon(cName,cNumber,discount)) {
				
				page = "cLC.do";
				
		
			}else {
				page = "cLC.do";
			}
		}		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}
	

}
