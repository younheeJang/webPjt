package ver5;

import java.util.Random;

public class Turtle implements Animal{

	@Override
	public String startRun(int a) throws Exception {
		System.out.println("run slowly");
			if (new Random().nextBoolean()) {
				throw new Exception("get hurt");
			}
	return "turtle run";
		
	}

}
