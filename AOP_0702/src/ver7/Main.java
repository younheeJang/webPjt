package ver7;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Main {

	public static void main(String[] args) throws Exception {
		ApplicationContext ctx = new GenericXmlApplicationContext("ver7/applicationContext.xml");
		Animal ani = ctx.getBean("rabbit", Animal.class);
		ani.startRun();

	}

}
