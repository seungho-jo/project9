package customer;

public class Question {
	private String qcode;
	private String title;
	private String category;
	private String content;
	private String wdate;
	private String answer;
	private String id;
	public Question() {

	}
	public Question(String qcode, String title, String category, String content, String wdate, String answer,
			String id) {
		super();
		this.qcode = qcode;
		this.title = title;
		this.category = category;
		this.content = content;
		this.wdate = wdate;
		this.answer = answer;
		this.id = id;
	}
	public String getQcode() {
		return qcode;
	}
	public void setQcode(String qcode) {
		this.qcode = qcode;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
}
