package classlist;

public class Classlist {
	private String classcode;
	private String nickname;
	private String title;
	private String price;
	private String category;
	private String id;
	private String formimg;
	private String profile;
	public String getClasscode() {
		return classcode;
	}
	public void setClasscode(String classcode) {
		this.classcode = classcode;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFormimg() {
		return formimg;
	}
	public void setFormimg(String formimg) {
		this.formimg = formimg;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public Classlist(String classcode, String nickname, String title, String price, String category, String id,
			String formimg, String profile) {
		super();
		this.classcode = classcode;
		this.nickname = nickname;
		this.title = title;
		this.price = price;
		this.category = category;
		this.id = id;
		this.formimg = formimg;
		this.profile = profile;
	}
	public Classlist() {
		super();
		// TODO Auto-generated constructor stub
	}

}
