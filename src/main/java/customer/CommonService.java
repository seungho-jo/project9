package customer;

import java.util.ArrayList;

import com.google.gson.Gson;

public class CommonService {
	private Question_Dao dao;
	private Coupon_Dao dao2;
	private Gson gson;
	 
	public CommonService() {
		dao = new Question_Dao();
		dao2 = new Coupon_Dao();
		gson = new Gson();
	}
	// 조회 리스트
	public ArrayList<Question> qList(String id,int start,int end){
		ArrayList<Question> qlist = dao.qList(id,start,end);
		for(Question qt: qlist) {
			String wdate = qt.getWdate();
			qt.setWdate(wdate.substring(0,10));
		}
		return qlist;
	}
	// 총 계시물 수
	public int questionNum(String id) {
		return dao.questiontot(id);
	}
	// 상세정보
	public Question showQs(String id,String qcode) {
		Question qs = dao.showQs(id, qcode);
		String wdate = qs.getWdate();
		qs.setWdate(wdate.substring(0,10));
		return qs;
	}
	// 문의 작성
	public void writeQs(Question qs) {
		dao.writeQs(qs);
	}
	// 문의 삭제
	public void deleteQs(Question qs) {
		dao.deleteQs(qs);
	}
	// 문의 수정
	public void updateQs(Question qs) {
		dao.updateQs(qs);
	}
	// 쿠폰 조회
	public ArrayList<Coupon> cp_list(String id){
		return dao2.cp_list(id);
	}
	// 쿠폰 총 갯수
	public int totalCp(String id) {
		return dao2.totalCp(id);
	}
	// 쿠폰 확인
	public boolean cp_check(String couponnumber) {
		return dao2.cp_check(couponnumber);
	}
	// 쿠폰 등록
	public void cp_enrollment(String id,String couponnumber) {
		dao2.cp_enrollment(id, couponnumber);
	}
}
