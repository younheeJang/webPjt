package ver1;

import java.util.Random;

public class Girl implements Person {
	@Override
	public void makeFood() {
		
		System.out.println("hungry");
		
	try {
		System.out.println("get strawberry");
		if(new Random().nextBoolean()) {
			
			throw new Exception("fire");
		}
		System.out.println("eat");
			
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("call911");
	}finally {
		System.out.println("wash dishes");
	}
	}	
}
