package ver3;

public class Car {
	private Tire tire;

	public void setTire(Tire tire) {
		this.tire = tire;
	}

	public void printCarInfo() {
		System.out.println("current" + tire.getModel());
	}
}
