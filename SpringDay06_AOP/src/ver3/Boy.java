package ver3;

import java.util.Random;

public class Boy implements Person {

	@Override
	public void makeFood() throws Exception {
		

		System.out.println("get mango");
		if(new Random().nextBoolean()) {
			
			throw new Exception("fire");
		}

	}

}
