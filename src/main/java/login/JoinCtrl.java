package login;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class JoinCtrl
 */
@WebServlet(name = "join.do", urlPatterns = { "/join.do" })
public class JoinCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CommonService service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinCtrl() {
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
		// 업로드 파일 올리기위한 작업
		String SAVEFOLDER = "C:\\javaexp\\workspacce\\project9\\src\\main\\webapp\\upload";
		String ENCTYPE = "UTF-8";
		int MAXSIZE = 5*1024*1024;
		MultipartRequest multi = null;
		String filename = null;
		File file = new File(SAVEFOLDER);
		if (!file.exists())
			file.mkdirs();
		multi = new MultipartRequest(request, SAVEFOLDER, MAXSIZE, ENCTYPE, new DefaultFileRenamePolicy());
		if (multi.getFilesystemName("profile") != null) {
			filename = multi.getFilesystemName("profile");
		}
		Member mem = new Member(
					multi.getParameter("id"),
					multi.getParameter("pass"),
					multi.getParameter("name"),
					multi.getParameter("phone"),
					multi.getParameter("zipcode"),
					multi.getParameter("addr1"),
					multi.getParameter("addr2"),
					filename
				);
		// 회원가입
		if(multi.getParameter("choice").equals("회원가입")) {
			service.join(mem);
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		// 회원정보 수정
		}else if(multi.getParameter("choice").equals("회원정보수정")) {
			Member mem2 = (Member)session.getAttribute("mem");
			if(multi.getParameter("pass_check").equals(mem2.getPass())) {
				service.updateMember(mem);
				session.invalidate();
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			}else {
				session.removeAttribute("msg");
				session.setAttribute("msg", "비밀번호가 틀렸습니다. 다시 확인해주세요");
				RequestDispatcher rd = request.getRequestDispatcher("edit_mem_info.jsp");
				rd.forward(request, response);
			}
		// 회원탈퇴
		}else if(multi.getParameter("choice").equals("회원탈퇴")) {
			Member mem2 = (Member)session.getAttribute("mem");
			if(multi.getParameter("pass_check").equals(mem2.getPass())) {
				service.deleteMember(mem2.getId());
				session.invalidate();
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			}else {
				session.removeAttribute("msg");
				session.setAttribute("msg", "비밀번호가 틀렸습니다. 다시 확인해주세요");
				RequestDispatcher rd = request.getRequestDispatcher("edit_mem_info.jsp");
				rd.forward(request, response);
			}
		}
	}

}
