package customer;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import login.Member;

/**
 * Servlet implementation class QuestionListCtrl
 */
@WebServlet(name = "qlist.do", urlPatterns = { "/qlist.do" })
public class QuestionListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CommonService service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionListCtrl() {
        super();
        service = new CommonService();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("mem");
		String id = mem.getId();
		String startS = request.getParameter("start");
		String endS = request.getParameter("end");
		String paging = request.getParameter("paging");
		if(paging==null) {
			if(startS==null&&endS==null) {
				startS = "1";
				endS = "10";
			}
			int start = Integer.parseInt(startS);
			int end = Integer.parseInt(endS);
			ArrayList<Question> list;
			int totPage;
			if(id!=null) {
				list = service.qList(id,start,end);
				totPage = service.questionNum(id);
				if(list!=null) {
					request.removeAttribute("qlist");
					request.setAttribute("qlist", list);
					request.setAttribute("totPage", totPage);
				}else {
					request.setAttribute("qlist", "등록된 문의가 없습니다");
				}
			}
			RequestDispatcher rd = request.getRequestDispatcher("question.jsp");
			rd.forward(request, response);
		}else {
			if(startS==null&&endS==null) {
				startS = "1";
				endS = "10";
			}
			int start = Integer.parseInt(startS);
			int end = Integer.parseInt(endS);
			ArrayList<Question> list;
			int totPage;
			if(id!=null) {
				list = service.qList(id,start,end);
				totPage = service.questionNum(id);
				if(list!=null) {
					Gson gson = new Gson();
					String json = gson.toJson(list);
					response.getWriter().print(json);
				}else {
					request.setAttribute("qlist", "등록된 문의가 없습니다");
				}
			}
		}
	}

}
