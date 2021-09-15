package mypage_user;

public class Myos_user {
	private String id;
	private String oscode;
	private String title;
	private String budget;
	private String taxinvoice;
	private String datepicker;
	private String dday;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOscode() {
		return oscode;
	}
	public void setOscode(String oscode) {
		this.oscode = oscode;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBudget() {
		return budget;
	}
	public void setBudget(String budget) {
		this.budget = budget;
	}
	public String getDatepicker() {
		return datepicker;
	}
	public void setDatepicker(String datepicker) {
		this.datepicker = datepicker;
	}

	public String getTaxinvoice() {
		return taxinvoice;
	}
	public void setTaxinvoice(String taxinvoice) {
		this.taxinvoice = taxinvoice;
	}
	public String getDday() {
		return dday;
	}
	public void setDday(String dday) {
		this.dday = dday;
	}
	
	
	
	public Myos_user(String id, String oscode, String title, String budget, String taxinvoice, String datepicker,
			String dday) {
		super();
		this.id = id;
		this.oscode = oscode;
		this.title = title;
		this.budget = budget;
		this.taxinvoice = taxinvoice;
		this.datepicker = datepicker;
		this.dday = dday;
	}
	public Myos_user() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

