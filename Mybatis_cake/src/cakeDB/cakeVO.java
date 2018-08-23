package cakeDB;

public class cakeVO {

	private int pNum;
	private String name;
	private int stock;
	private int price;
	private String exDate;
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
	
	
	public cakeVO() {
	
	}
	public cakeVO(int pNum, String name, int stock, int price, String exDate) {
		super();
		this.pNum = pNum;
		this.name = name;
		this.stock = stock;
		this.price = price;
		this.exDate = exDate;
	}
	@Override
	public String toString() {
		return "cakeVO [pNum=" + pNum + ", name=" + name + ", stock=" + stock + ", price=" + price + ", exDate="
				+ exDate + "]";
	}
	
	
	
	
	
}
