package vo;

public class BookVO {

	private int bookNum;
	private String title;
	private String writer;
	private int price;

	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}

	public int getBookNum() {
		return bookNum;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "BookVO [bookNum=" + bookNum + ", title=" + title + ", writer=" + writer + ", price=" + price + "]";
	}

	public BookVO(int bookNum, String title, String writer, int price) {
		super();
		this.bookNum= bookNum;
		this.title = title;
		this.writer = writer;
		this.price = price;
	}

	public BookVO() {

	}
}
