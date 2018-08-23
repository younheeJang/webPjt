package spring_db;

public class Board1VO {

	
	private int num;
	private String pass;
	private String name;
	private String email;
	private String title;
	private String content;
	public Board1VO() {
	
	}
	
	public Board1VO(int num, String pass, String name, String email, String title, String content) {
		super();
		this.num = num;
		this.pass = pass;
		this.name = name;
		this.email = email;
		this.title = title;
		this.content = content;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "Board1VO [num=" + num + ", pass=" + pass + ", name=" + name + ", email=" + email + ", title=" + title
				+ ", content=" + content + "]";
	}
}
