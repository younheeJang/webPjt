package ver6;

import java.util.Random;

import org.springframework.stereotype.Component;

@Component("rabbit")
public class Rabbit implements Animal {

	@Override
	public void startRun() throws Exception {


			System.out.println("run fast");
		/*	if (new Random().nextBoolean()) {
				throw new Exception("get hurt");
			}*/
	}

}
