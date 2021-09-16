package os;

import java.util.ArrayList;

import com.google.gson.Gson;

import classlist.Detailgosu;

public class Osform_Service {
	private Osform_Dao dao;
	private Gson gson;
	
	public Osform_Service() {
		dao = new Osform_Dao();
		gson = new Gson();
	}
	
	//외주신청
	public void insosformJson(Osform osform) {
		dao.osform(osform);
	}

	//외주리스트
	public ArrayList<Oslist> oslist(String category) {
		ArrayList<Oslist> list = dao.oslist_cate(category);
		return list;
	}
	
	//외주상세정보
	public OsDetail os_detail(String oscode) {
		OsDetail de = dao.os_detail(oscode);
		return de;
	}
	
}
