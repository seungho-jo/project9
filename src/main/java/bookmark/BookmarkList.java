package bookmark;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import login.Member;

/**
 * Servlet implementation class BookmarkList
 */
@WebServlet(name = "bmlist.do", urlPatterns = { "/bmlist.do" })
public class BookmarkList extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CommonService service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookmarkList() {
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
		String id = mem.getId();
		ArrayList<BookmarkInfo> bmlist = service.bookmarkList(id);
		request.setAttribute("bmlist", bmlist);
		RequestDispatcher rd = request.getRequestDispatcher("bookmark.jsp");
		rd.forward(request, response);
	}

}
