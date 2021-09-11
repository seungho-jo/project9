package login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FindAccount
 */
@WebServlet(name = "find.do", urlPatterns = { "/find.do" })
public class FindAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CommonService service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindAccount() {
        super();
        service = new CommonService();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String phone = request.getParameter("phone");
		String id = request.getParameter("id");
		String newPass = request.getParameter("newPass");
		String choice = request.getParameter("choice");
		if(choice.equals("아이디찾기")) {
			if(phone!=null) {
				String findId = service.findId(phone);
				System.out.println(findId);
				if(findId!=null) {
					session.removeAttribute("id");
					session.removeAttribute("msg");
					session.setAttribute("id", findId);
				}else {
					session.removeAttribute("id");
					session.removeAttribute("msg");
					session.setAttribute("msg", "휴대폰 번호를 확인해주세요");
				}
			}
		}else if(choice.equals("비밀번호변경")) {
			String change = service.changePass(id, phone, newPass);
			System.out.println(change);
			if(newPass!=null) {
				if(change.equals("비밀변호 변경 완료")) {
					session.removeAttribute("msg");
					session.setAttribute("msg", service.changePass(id, phone, newPass));
					RequestDispatcher rd = request.getRequestDispatcher("findPass.jsp");
					rd.forward(request, response);
				}else if(change.equals("아이디,휴대폰 번호가 틀렸습니다")) {
					session.removeAttribute("msg");
					session.setAttribute("msg", service.changePass(id, phone, newPass));
					RequestDispatcher rd = request.getRequestDispatcher("findPass.jsp?id="+id+"&phone="+phone);
					rd.forward(request, response);
				}
				
			}
		}
	}

}
