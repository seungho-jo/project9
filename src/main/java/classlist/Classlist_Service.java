package classlist;

import java.util.ArrayList;

import com.google.gson.Gson;

public class Classlist_Service {
	private Classlist_Dao dao;
	private Gson gson;
	
	public Classlist_Service() {
		dao = new Classlist_Dao();
		gson = new Gson();
	}
	public ArrayList<Classlist> classlist(String category) {
		ArrayList<Classlist> list = dao.classlist_cate(category);
		return list;
	}
	
	public ArrayList<Classlist> best_classlist() {
		ArrayList<Classlist> blist = dao.classlist_best();
		return blist;
	}
	
	
	// 클래스 상세정보
	public Detailgosu detailproduct(String classcode) {
		Detailgosu de = dao.detailproduct(classcode);
		return de;
	}
}
