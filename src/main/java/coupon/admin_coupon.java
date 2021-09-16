package coupon;

public class admin_coupon {
	private String couponName;
	private String couponNumber;
	private int discount;
	private String cDay;
	private int status;
	private String statusS;

	public String getStatusS() {
		return statusS;
	}

	public void setStatusS(String statusS) {
		this.statusS = statusS;
	}

	public admin_coupon() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public admin_coupon(String couponName, int discount) {
		super();
		this.couponName = couponName;
		this.discount = discount;
	}
	
	public admin_coupon(String couponName, String couponNumber, int discount) {
		super();
		this.couponName = couponName;
		this.couponNumber = couponNumber;
		this.discount = discount;
	}
	
	
	public String getCouponName() {
		return couponName;
	}
	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}
	public String getCouponNumber() {
		return couponNumber;
	}
	public void setCouponNumber(String couponNumber) {
		this.couponNumber = couponNumber;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public String getcDay() {
		return cDay;
	}
	public void setcDay(String cDay) {
		this.cDay = cDay;
	}
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
}
