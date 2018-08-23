package ver2;

import java.util.Random;

public class Turtle implements Animal{

	@Override
	public void startRun() throws Exception {
		System.out.println("run slowly");
			if (new Random().nextBoolean()) {
				throw new Exception("get hurt");
			}
	
		
	}

}
