package ver2_1;

public class Car {
	private Tire tire;

	public Car(Tire tire) {
		this.tire = tire;
	}

	public void printCarInfo() {
		System.out.println("current" + tire.getModel());
	}
}
