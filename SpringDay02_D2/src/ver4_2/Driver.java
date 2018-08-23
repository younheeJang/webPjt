package ver4_2;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Driver {
	public static void main(String[] args) {

		ApplicationContext ctx = 
				new GenericXmlApplicationContext("ver4_2/applicationContext.xml");
		Car mycar = ctx.getBean("benz", Car.class);
		mycar.printCarInfo();

	}
}
