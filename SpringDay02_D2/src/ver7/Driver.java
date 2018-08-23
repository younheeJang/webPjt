package ver7;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.GenericApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Driver {
	
	public static void main(String[] args) {
		
		ApplicationContext ctx = 
				new AnnotationConfigApplicationContext(BeanConfig.class);
		Car mycar =ctx.getBean("benz", Car.class);
		/*Tire t = ctx.getBean("koreaTire", Tire.class);
		mycar.setTire(t);*/
		mycar.printCarInfo();
		
	}
}
