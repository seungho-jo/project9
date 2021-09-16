package login;

public class Member {
	private String id;
	private String pass;
	private String name;
	private String phone;
	private String zipcode;
	private String address1;
	private String address2;
	private String profile;
	private String gosuCheck;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Member(String id, String pass, String name, String phone, String zipcode, String address1, String address2,
			String profile) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.phone = phone;
		this.zipcode = zipcode;
		this.address1 = address1;
		this.address2 = address2;
		this.profile = profile;
	}

	public Member(String id, String pass, String name, String phone, String zipcode, String address1, String address2,
			String profile, String gosuCheck) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.phone = phone;
		this.zipcode = zipcode;
		this.address1 = address1;
		this.address2 = address2;
		this.profile = profile;
		this.gosuCheck = gosuCheck;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getGosuCheck() {
		return gosuCheck;
	}
	public void setGosuCheck(String gosuCheck) {
		this.gosuCheck = gosuCheck;
	}
	
}
