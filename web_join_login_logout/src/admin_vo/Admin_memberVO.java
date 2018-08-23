package admin_vo;

public class Admin_memberVO {

	private String memberId;
	private String memberPw;
	private String phone;
	private String email;

	public Admin_memberVO(String memberId, String memberPw, String phone, String email) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.phone = phone;
		this.email = email;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Admin_memberVO [memberId=" + memberId + ", memberPw=" + memberPw + ", phone=" + phone + ", email="
				+ email + "]";
	}

	public Admin_memberVO() {

	}
}
