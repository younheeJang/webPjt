package ver4_1;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Driver {
	public static void main(String[] args) {
		
		ApplicationContext ctx = 
				new GenericXmlApplicationContext
				("ver3/applicationContext.xml");
		
		Car mycar =ctx.getBean("benz", Car.class);
		Tire t = ctx.getBean("koreaTire", Tire.class);
		mycar.setTire(t);
		mycar.printCarInfo();
		
	}
}
