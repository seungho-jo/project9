package admin;

import com.google.gson.Gson;

public class CommonService {
	private adminDAO dao;
	private Gson gson;
	
	public CommonService() {
		dao = new adminDAO();
		gson = new Gson();
	}
	
	// 관리자 로그인
	public admin_Member login(String id, String pass) {
		return dao.login(id, pass);
	}
	
}
