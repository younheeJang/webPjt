package ver5;
import org.springframework.stereotype.Component;
@Component
public class Car {
	private Tire tire;

	public void setTire(Tire tire) {
		this.tire = tire;
	}

	public void printCarInfo() {
		System.out.println("current" + tire.getModel());
	}
}
