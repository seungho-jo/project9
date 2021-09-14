package customer;

public class Coupon {
	private String couponnumber;
	private String cday;
	private String couponname;
	private int discount;
	private int status;
	private String id;
	private int cnt;
	public Coupon() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Coupon(String couponnumber, String cday, String couponname, int discount, int status, String id, int cnt) {
		super();
		this.couponnumber = couponnumber;
		this.cday = cday;
		this.couponname = couponname;
		this.discount = discount;
		this.status = status;
		this.id = id;
		this.cnt = cnt;
	}
	public String getCouponnumber() {
		return couponnumber;
	}
	public void setCouponnumber(String couponnumber) {
		this.couponnumber = couponnumber;
	}
	public String getCday() {
		return cday;
	}
	public void setCday(String cday) {
		this.cday = cday;
	}
	public String getCouponname() {
		return couponname;
	}
	public void setCouponname(String couponname) {
		this.couponname = couponname;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
}
