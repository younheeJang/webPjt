package ver7;

import java.util.Random;

import org.springframework.stereotype.Component;

@Component("name1")
public class Boy implements Person {

	@Override
	public void makeFood() throws Exception {
		

		System.out.println("get mango");
		if(new Random().nextBoolean()) {
			
			throw new Exception("fire");
		}

	}

}
