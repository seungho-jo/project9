package bookmark;

public class Bookmark {
	private String classcode;
	private String id;
	private String status;
	public Bookmark(String classcode, String id, String status) {
		super();
		this.classcode = classcode;
		this.id = id;
		this.status = status;
	}
	public Bookmark() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getClasscode() {
		return classcode;
	}
	public void setClasscode(String classcode) {
		this.classcode = classcode;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
