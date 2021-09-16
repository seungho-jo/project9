package admin;

public class admin_Member {
	private String id;
	private String pass;
	
	public admin_Member() {
		
	}
	
	public admin_Member(String id, String pass) {
		super();
		this.id = id;
		this.pass = pass;
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

	
}

