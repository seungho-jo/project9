package mypage_gosu;

import java.util.ArrayList;

import com.google.gson.Gson;

public class Myclass_gosu_Service {
	private Myclass_gosu_Dao dao;
	private Gson gson;
	
	public Myclass_gosu_Service() {
		dao = new Myclass_gosu_Dao();
		gson = new Gson();
	}
	
	public ArrayList<Myclass_gosu> classlist_gosu(String id) {
		ArrayList<Myclass_gosu> list = dao.classlist_gosu(id);
		return list;
	} 
	
}
