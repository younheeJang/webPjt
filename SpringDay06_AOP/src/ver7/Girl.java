package ver7;

import java.util.Random;

import org.springframework.stereotype.Component;

@Component("name2")
public class Girl implements Person {
	@Override
	public void makeFood() throws Exception{
		
		
		System.out.println("get strawberry");
		/*if(new Random().nextBoolean()) {
			
			throw new Exception("fire");
		}*/
		
	}	
}
