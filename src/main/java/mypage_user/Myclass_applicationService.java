package mypage_user;

import java.util.ArrayList;

import com.google.gson.Gson;

import gosuform.Gosuform;

public class Myclass_applicationService {
	private Myclass_applicationDao dao;
	private Gson gson;
	
	public Myclass_applicationService() {
		dao = new Myclass_applicationDao();
		gson = new Gson();
	}
	// 내 수강신청 현황
	public ArrayList<Gosuform> myClassAp(String id){
		ArrayList<Gosuform> list = dao.myClassAp(id);
		for(Gosuform gf: list) {
			if(gf.getStatus()==1) {
				gf.setStatusS("승인대기");
			}else {
				gf.setStatusS("승인완료");
			}
		}
		return list;
	}
}
