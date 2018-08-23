package ver2_2;

public class Driver {
	public static void main(String[] args) {
		Tire t = new ChinaTire();
		// Tire t = new KoreaTire();
		Car mycar = new Car();
		mycar.setTire(t);
		mycar.printCarInfo();
	}
}
