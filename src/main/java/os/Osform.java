package os;

public class Osform {
	private String oscode;
	private String id;
	private String title;
	private String category;
	private String ftf;
	private String loc;
	private String budget;
	private String datepicker;
	private String taxinvoice;
	private String explain;
	private String osfile;
	
	
	public String getOscode() {
		return oscode;
	}
	public void setOscode(String oscode) {
		this.oscode = oscode;
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getFtf() {
		return ftf;
	}
	public void setFtf(String ftf) {
		this.ftf = ftf;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
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
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	public String getOsfile() {
		return osfile;
	}
	public void setOsfile(String osfile) {
		this.osfile = osfile;
	}
	public Osform(String oscode, String id, String title, String category, String ftf, String loc, String budget,
			String datepicker, String taxinvoice, String explain, String osfile) {
		super();
		this.oscode = oscode;
		this.id = id;
		this.title = title;
		this.category = category;
		this.ftf = ftf;
		this.loc = loc;
		this.budget = budget;
		this.datepicker = datepicker;
		this.taxinvoice = taxinvoice;
		this.explain = explain;
		this.osfile = osfile;
	}
	public Osform() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}

//oscode varchar2(50) PRIMARY KEY,
//id VARCHAR2(20),
//title varchar2(200), 
//category varchar2(50),
//ftf varchar2(50), --대면비대면여부
//loc varchar2(50),
//budget varchar2(50), -- 외주 예산
//datepicker date,
//taxinvoice varchar2(50),
//explain varchar2(4000),
//osfile VARCHAR2(2000)
