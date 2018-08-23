package ver5;

import java.util.Random;

public class Boy implements Person {

	@Override
	public String makeFood(int a) throws Exception {

		System.out.println("get " + a + "mango");
		if (new Random().nextBoolean()) {
			throw new Exception("fire");
		}
		return "mango";
	}

}
