package login;

import javax.servlet.http.HttpServletRequest;

import com.google.gson.Gson;

public class CommonService {
	private Login_Join_Dao dao;
	private Gson gson;
	// 
	public CommonService() {
		dao = new Login_Join_Dao();
		gson = new Gson();
	}
	// 로그인
	public Member login(String id,String pass) {
		return dao.login(id, pass);
	}
	// 회원가입
	public void join(HttpServletRequest request) {
		dao.join(request);
	}
}
