package os;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

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
 * Servlet implementation class Osform_Ctrl
 */
@WebServlet(name = "insOsform.do", urlPatterns = { "/insOsform.do" })
public class Osform_Ctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Osform_Service service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Osform_Ctrl() {
        super();
        service = new Osform_Service();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String page = "index.jsp";
		
		String SAVEFOLDER = "D:\\javaexp\\workspace\\project9\\src\\main\\webapp\\upload";
		String ENCTYPE = "UTF-8";
		int MAXSIZE =  1024 * 1024 *100;
		MultipartRequest multi = null;
		String filename = null;
		File file = new File(SAVEFOLDER);
		if (!file.exists())
			file.mkdirs();
		multi = new MultipartRequest(request, SAVEFOLDER, MAXSIZE, ENCTYPE, new DefaultFileRenamePolicy());
		if (multi.getFilesystemName("osfile") != null) {
			filename = multi.getFilesystemName("osfile");
		}
		
		String pass = request.getParameter("pass");
		
		
		String oscode = multi.getParameter("oscode");
		String id = multi.getParameter("id");
		String title = multi.getParameter("title");
		String category = multi.getParameter("category");
		String ftf = multi.getParameter("ftf");
		String loc = multi.getParameter("loc");
		String budget = multi.getParameter("budget");
		String datepicker = multi.getParameter("datepicker");
		String taxinvoice = multi.getParameter("taxinvoice");
		String explain = multi.getParameter("explain");
		
		System.out.println(id);
		if(id!=null) {
			Osform os = new Osform();

			os.setId(id);
			os.setTitle(title);
			os.setCategory(category);
			os.setFtf(ftf);
			os.setLoc(loc);
			os.setBudget(budget);
			os.setDatepicker(datepicker);
			os.setTaxinvoice(taxinvoice);
			os.setExplain(explain);
			os.setOsfile(filename);
			
			service.insosformJson(os);
			page = "index.jsp";
			
		} else {
			page = "os_form.jsp";
		}
		
		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
