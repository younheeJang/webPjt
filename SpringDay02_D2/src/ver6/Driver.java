package ver6;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Driver {
	public static void main(String[] args) {
		
		ApplicationContext ctx = 
				new GenericXmlApplicationContext
				("ver5/applicationContext.xml");
		
		Car mycar =ctx.getBean("car", Car.class);
		Tire t = ctx.getBean("koreaTire", Tire.class);
		mycar.setTire(t);
		mycar.printCarInfo();
		
	}
}
