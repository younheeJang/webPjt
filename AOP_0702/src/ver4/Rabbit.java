package ver4;

import java.util.Random;

public class Rabbit implements Animal {

	@Override
	public String startRun(int a) throws Exception {

		System.out.println("run fast");
		/*if (new Random().nextBoolean()) {
			throw new Exception("get hurt");

		}
*/		return "rabbit run";
	}

}
