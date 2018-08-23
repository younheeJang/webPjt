package vo;

public class CakeVO {
	
	private int pNum;
	private String name;
	private int stock;
	private int price;
	private String exDate;
	private String details;
	
	public int getpNum() {
		return pNum;
	}




	public void setpNum(int pNum) {
		this.pNum = pNum;
	}




	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public int getStock() {
		return stock;
	}




	public void setStock(int stock) {
		this.stock = stock;
	}




	public int getPrice() {
		return price;
	}




	public void setPrice(int price) {
		this.price = price;
	}




	public String getExDate() {
		return exDate;
	}




	public void setExDate(String exDate) {
		this.exDate = exDate;
	}




	public String getDetails() {
		return details;
	}




	public void setDetails(String details) {
		this.details = details;
	}




	public CakeVO() {
	
	}




	public CakeVO(int pNum, String name, int stock, int price, String exDate, String details) {
		super();
		this.pNum = pNum;
		this.name = name;
		this.stock = stock;
		this.price = price;
		this.exDate = exDate;
		this.details = details;
	}




	@Override
	public String toString() {
		return "CakeVO [pNum=" + pNum + ", name=" + name + ", stock=" + stock + ", price=" + price + ", exDate="
				+ exDate + ", details=" + details + "]";
	}
	
	
	
}
