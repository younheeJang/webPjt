package ver3;

import java.util.Random;

public class Rabbit implements Animal {

	@Override
	public void startRun() throws Exception {


			System.out.println("run fast");
			/*if (new Random().nextBoolean()) {
				throw new Exception("get hurt");
			}*/
	}

}
