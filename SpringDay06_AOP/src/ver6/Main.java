package ver6;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Main {
	public static void main(String[] args) throws Exception {
		ApplicationContext ctx = new GenericXmlApplicationContext("ver6/applicationContext.xml");
		Person p = ctx.getBean("name2", Person.class);
		p.makeFood();
	}
}
