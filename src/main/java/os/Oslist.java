package os;

public class Oslist {
	private String oscode;
	private String id;
	private String title;
	private String category;
	private String budget;
	private String explain;
	private String datepicker;
	
	
	public String getDatepicker() {
		return datepicker;
	}
	public void setDatepicker(String datepicker) {
		this.datepicker = datepicker;
	}
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
	public String getBudget() {
		return budget;
	}
	public void setBudget(String budget) {
		this.budget = budget;
	}
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	public Oslist() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Oslist(String oscode, String id, String title, String category, String budget, String explain,
			String datepicker) {
		super();
		this.oscode = oscode;
		this.id = id;
		this.title = title;
		this.category = category;
		this.budget = budget;
		this.explain = explain;
		this.datepicker = datepicker;
	}
	
	
	
	
}
