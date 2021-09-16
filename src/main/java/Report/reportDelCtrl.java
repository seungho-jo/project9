package Report;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coupon.admin_coupon;

/**
 * Servlet implementation class reportDelCtrl
 */
@WebServlet(name = "reportDel.do", urlPatterns = { "/reportDel.do" })
public class reportDelCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private reportService service;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reportDelCtrl() {
        super();
        // TODO Auto-generated constructor stub
        service = new reportService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html; charset=UTF-8");
		String[] checked = request.getParameterValues("checked");
		
		String page = "admin/admin_report.jsp";
		if(checked!=null) {
			for(int i =0; i<checked.length;i++) {
				System.out.println(checked[i]);
				service.delete(checked[i]);
			}

			request.removeAttribute("clist");
			ArrayList<admin_report> clist = service.reportList();
			request.setAttribute("clist", clist);
			
		}else {
			ArrayList<admin_report> clist = service.reportList();
			request.setAttribute("clist", clist);
		}
		
		RequestDispatcher rd1 = request.getRequestDispatcher(page);
		rd1.forward(request, response);
	}

}
