package ver5;

import java.util.Random;

public class Girl implements Person {
	@Override
	public String makeFood(int a) throws Exception{
		
		
		System.out.println("get"+a+" strawberry");
		/*if(new Random().nextBoolean()) {
			throw new Exception("fire");
		}*/
		return "strawberry";
	}	
}
