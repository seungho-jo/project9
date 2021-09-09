package gosuform;

import com.google.gson.Gson;

public class Gosuform_Service {
	private Gosuform_Dao dao;
	private Gson gson;
	
	public Gosuform_Service() {
		dao = new Gosuform_Dao();
		gson = new Gson();
	}
	
	//고수신청
	public void insGosuformJson(Gosuform gosuform) {
		dao.Gosuform(gosuform);
	}


}
