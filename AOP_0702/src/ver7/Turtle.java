package ver7;

import java.util.Random;

import org.springframework.stereotype.Component;

@Component("turtle")
public class Turtle implements Animal{

	@Override
	public void startRun() throws Exception {
		System.out.println("run slowly");
			if (new Random().nextBoolean()) {
				throw new Exception("get hurt");
			}
	
		
	}

}
