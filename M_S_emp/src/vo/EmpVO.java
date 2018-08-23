package vo;

public class EmpVO {

	private int eNum;
	private String eName;
	private String ePhone;
	private String eMail;
	private String eDepartment;
	private String eJob;
	
	public EmpVO() {
		// TODO Auto-generated constructor stub
	}

	public int geteNum() {
		return eNum;
	}

	public void seteNum(int eNum) {
		this.eNum = eNum;
	}

	public String geteName() {
		return eName;
	}

	public void seteName(String eName) {
		this.eName = eName;
	}

	public String getePhone() {
		return ePhone;
	}

	public void setePhone(String ePhone) {
		this.ePhone = ePhone;
	}

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}

	public String geteDepartment() {
		return eDepartment;
	}

	public void seteDepartment(String eDepartment) {
		this.eDepartment = eDepartment;
	}

	public String geteJob() {
		return eJob;
	}

	public void seteJob(String eJob) {
		this.eJob = eJob;
	}

	@Override
	public String toString() {
		return "EmpVO [eNum=" + eNum + ", eName=" + eName + ", ePhone=" + ePhone + ", eMail=" + eMail + ", eDepartment="
				+ eDepartment + ", eJob=" + eJob + "]";
	}

	public EmpVO(int eNum, String eName, String ePhone, String eMail, String eDepartment, String eJob) {
		super();
		this.eNum = eNum;
		this.eName = eName;
		this.ePhone = ePhone;
		this.eMail = eMail;
		this.eDepartment = eDepartment;
		this.eJob = eJob;
	}
	
	
}
