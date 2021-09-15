package mypage_user;

import java.util.ArrayList;

import com.google.gson.Gson;

public class Myclass_user_Service {
	private Myclass_user_Dao dao;
	private Gson gson;
	
	public Myclass_user_Service() {
		dao = new Myclass_user_Dao();
		gson = new Gson();
	}
	
	public ArrayList<Myclass_user> classlist(String id) {
		ArrayList<Myclass_user> list = dao.classlist_user(id);
		return list;
	} 
	
}
