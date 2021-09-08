package login;

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
	// 아이디 체크
	public boolean idCheck(String id) {
		return dao.idCheck(id);
	}
	// 회원가입
	public void join(Member m) {
		dao.join(m);
	}
	// 회원정보 업데이트
	public void updateMember(Member m) {
		dao.updateMember(m);
	}
	// 회원탈퇴
	public void deleteMember(String id) {
		dao.deleteMember(id);
	}
}
