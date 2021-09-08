package login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class IdCheckCtrl
 */
@WebServlet(name = "idcheck.do", urlPatterns = { "/idcheck.do" })
public class IdCheckCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CommonService service;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdCheckCtrl() {
        super();
        service = new CommonService();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		if(id!=null) {
			boolean result = service.idCheck(id);
			if(result) {
				response.setContentType("text/html; charset=utf-8");
				response.getWriter().print("이 아이디는 사용 가능합니다");
			}else {
				response.setContentType("text/html; charset=utf-8");
				response.getWriter().print("이 아이디는 사용 불가능합니다");
			}
		}else {
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().print("아이디를 입력해주세요");
		}
	}

}
