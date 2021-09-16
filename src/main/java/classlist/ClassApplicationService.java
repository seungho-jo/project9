package classlist;

import com.google.gson.Gson;

public class ClassApplicationService {
	private ClassApplicationDao dao;
	private Gson gson;
	
	public ClassApplicationService() {
		dao = new ClassApplicationDao();
		gson = new Gson();
	}
	
	// 클래스 신청 체크
	public boolean classAp_check(String classcode) {
		return dao.classAp_check(classcode);
	}
	// 클래스 신청
	public void classAp(String id,String classcode) {
		dao.classAp(id, classcode);
	}
}
