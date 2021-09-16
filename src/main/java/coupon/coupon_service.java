package coupon;

import java.util.ArrayList;


import com.google.gson.Gson;

public class coupon_service {
	private couponDAO dao;
	private Gson gson;
	
	public coupon_service() {
		super();
		dao = new couponDAO();
		gson = new Gson();
		// TODO Auto-generated constructor stub
	}
	
	// 쿠폰생성
	public boolean createCoupon(String couponName, String couponNumber, int discount ) {
		return dao.create(couponName,couponNumber, discount);
	}
	
	// 쿠폰조회
	public ArrayList<admin_coupon> couponList(){
		ArrayList<admin_coupon> clist = dao.view();
		for(admin_coupon cp : clist) {
			if(cp.getStatus() ==1) {
				cp.setStatusS("관리자 등록");
			}else if(cp.getStatus() == 2) {
				cp.setStatusS("손님등록");
			}else {
				cp.setStatusS("사용됨");
			}
		}
		return clist;
	}
	
	
	// 쿠폰삭제
	public void delete(String couponNumber) {
		dao.delete(couponNumber);
	}
}
