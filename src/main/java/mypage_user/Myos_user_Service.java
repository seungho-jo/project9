package mypage_user;

import java.util.ArrayList;

import com.google.gson.Gson;

public class Myos_user_Service {
	private Myos_user_Dao dao;
	private Gson gson;
	
	public Myos_user_Service() {
		dao = new Myos_user_Dao();
		gson = new Gson();
	}
	
	public ArrayList<Myos_user> myoslist(String id) {
		ArrayList<Myos_user> list = dao.myoslist_user(id);
		return list;
	}
}
