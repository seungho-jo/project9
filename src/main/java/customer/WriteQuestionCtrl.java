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
 * Servlet implementation class WriteQuestion
 */
@WebServlet(name = "write.do", urlPatterns = { "/write.do" })
public class WriteQuestionCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CommonService service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WriteQuestionCtrl() {
        super();
        service = new CommonService();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		String category = request.getParameter("category");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		Member mem = (Member)session.getAttribute("mem");
		String id = mem.getId();
		String choice = request.getParameter("choice");
		if(choice.equals("작성")) {
			Question qs = new Question();
			qs.setQcode("q");
			qs.setCategory(category);
			qs.setTitle(title);
			qs.setContent(content);
			qs.setAnswer("N");
			qs.setId(id);
			System.out.println(qs.getAnswer());
			System.out.println(qs.getCategory());
			System.out.println(qs.getContent());
			System.out.println(qs.getId());
			System.out.println(qs.getQcode());
			System.out.println(qs.getTitle());
			service.writeQs(qs);
			RequestDispatcher rd = request.getRequestDispatcher("qlist.do");
			rd.forward(request, response);
		}else if(choice.equals("삭제")) {
			String qcode = request.getParameter("qcode");
			Question qs = new Question();
			qs.setQcode(qcode);
			qs.setId(id);
			service.deleteQs(qs);
			request.removeAttribute("qcode");
			request.removeAttribute("paging");
			request.removeAttribute("start");
			request.removeAttribute("end");
			RequestDispatcher rd = request.getRequestDispatcher("question.jsp");
			rd.forward(request, response);
		}else if(choice.equals("수정")) {
			String qcode = request.getParameter("qcode");
			Question qs = new Question();
			qs.setCategory(category);
			qs.setTitle(title);
			qs.setContent(content);
			qs.setId(id);
			qs.setQcode(qcode);
			System.out.println(content);
			service.updateQs(qs);
			request.removeAttribute("paging");
			request.removeAttribute("start");
			request.removeAttribute("end");
			RequestDispatcher rd = request.getRequestDispatcher("qlist.do");
			rd.forward(request, response);
		}
	}

}
