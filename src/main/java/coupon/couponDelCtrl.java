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
 * Servlet implementation class couponDelCtrl
 */
@WebServlet(name = "couponDel.do", urlPatterns = { "/couponDel.do" })
public class couponDelCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private coupon_service service;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public couponDelCtrl() {
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
		String[] checked = request.getParameterValues("checked");
	
		String page = "admin/admin_coupon_del.jsp";
		if(checked!=null) {
			for(int i =0; i<checked.length;i++) {
				System.out.println(checked[i]);
				service.delete(checked[i]);
			}

			request.removeAttribute("clist");
			ArrayList<admin_coupon> clist = service.couponList();
			request.setAttribute("clist", clist);
			
		}else {
			request.removeAttribute("clist");
			ArrayList<admin_coupon> clist = service.couponList();
			request.setAttribute("clist", clist);
		}
		
		RequestDispatcher rd1 = request.getRequestDispatcher(page);
		rd1.forward(request, response);
	}
}
