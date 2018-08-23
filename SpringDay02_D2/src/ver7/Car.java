package ver7;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

public class Car {
	@Autowired
	@Qualifier("koreaTire")
	private Tire tire;

	public void setTire(Tire tire) {
		this.tire = tire;
	}

	public void printCarInfo() {
		System.out.println("current" + tire.getModel());
	}
}
