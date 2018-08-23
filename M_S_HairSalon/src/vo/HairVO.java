package vo;

public class HairVO {

	private int serviceNum;
	private String service;
	private int price;
	private String discount;
	private String serviceManager;
	private String member;
	private int memberNum;

	public int getServiceNum() {
		return serviceNum;
	}

	public void setServiceNum(int serviceNum) {
		this.serviceNum = serviceNum;
	}

	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

	public String getServiceManager() {
		return serviceManager;
	}

	public void setServiceManager(String serviceManager) {
		this.serviceManager = serviceManager;
	}

	public String getMember() {
		return member;
	}

	public void setMember(String member) {
		this.member = member;
	}

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public HairVO() {

	}

	public HairVO(int serviceNum, String service, int price, String discount, String serviceManager, String member,
			int memberNum) {
		super();
		this.serviceNum = serviceNum;
		this.service = service;
		this.price = price;
		this.discount = discount;
		this.serviceManager = serviceManager;
		this.member = member;
		this.memberNum = memberNum;
	}

	@Override
	public String toString() {
		return "HairVO [serviceNum=" + serviceNum + ", service=" + service + ", price=" + price + ", discount="
				+ discount + ", serviceManager=" + serviceManager + ", member=" + member + ", memberNum=" + memberNum
				+ "]";
	}

}
