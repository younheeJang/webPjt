package ver2_1;

public class Driver {
	public static void main(String[] args) {
		Tire t = new ChinaTire();
		//Tire t = new KoreaTire();
		Car mycar = new Car(t);
		mycar.printCarInfo();
	}
}
