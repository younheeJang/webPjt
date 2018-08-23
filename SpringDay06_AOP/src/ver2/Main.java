package ver2;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Main {
	public static void main(String[] args) throws Exception {
		ApplicationContext ctx = new GenericXmlApplicationContext("ver2/applicationContext.xml");
		Person p = ctx.getBean("name1", Person.class);
		p.makeFood();
	}
}
