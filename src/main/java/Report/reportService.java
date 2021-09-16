package Report;

import java.util.ArrayList;

import com.google.gson.Gson;

public class reportService {
	private reportDAO dao;
	private Gson gson;

public reportService() {
	super();
	dao = new reportDAO();
	gson = new Gson();
}
// 문의리스트 출력
public ArrayList<admin_report> reportList(){
	ArrayList<admin_report> rlist = dao.reportList();
	for(admin_report adr : rlist) {
		if(adr.getStatus()==1) {
			adr.setStatusS("답변 대기 중");
		}else {
			adr.setStatusS("답변 완료");
		}
	}
	return rlist;
}


// 문의삭제
public void delete(String classCode) {
	dao.delete(classCode);
}
}

