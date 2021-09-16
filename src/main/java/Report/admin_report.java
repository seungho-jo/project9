package Report;

public class admin_report {
	private String classCode;
	private String id;
	private String title;
	private String cDate;
	private int status;
	private String statusS;
	public admin_report() {
		super();
		// TODO Auto-generated constructor stub
	}
	public admin_report(String classCode, String id, String title, String cDate, int status) {
		super();
		this.classCode = classCode;
		this.id = id;
		this.title = title;
		this.cDate = cDate;
		this.status = status;
	}
	
	
	public String getStatusS() {
		return statusS;
	}
	public void setStatusS(String statusS) {
		this.statusS = statusS;
	}
	public String getClassCode() {
		return classCode;
	}
	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getcDate() {
		return cDate;
	}
	public void setcDate(String cDate) {
		this.cDate = cDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
