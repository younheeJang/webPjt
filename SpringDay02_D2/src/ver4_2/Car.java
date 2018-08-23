package ver4_2;

public class Car {
	private Tire tire;
	private String model;
	public void setTire(Tire tire) {
		this.tire = tire;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public void printCarInfo() {
		System.out.println("current" + tire.getModel());
	}
}
