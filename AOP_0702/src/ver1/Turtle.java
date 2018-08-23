package ver1;

import java.util.Random;

public class Turtle implements Animal{

	@Override
	public void startRun() {
		System.out.println("ready");
		try {
			System.out.println("run slowly");
			if (new Random().nextBoolean()) {
				throw new Exception("get hurt");
			}
			System.out.println("finish");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("call embullance");
		} finally {
			System.out.println("get own grade for racing today");
		}


		
	}

}
