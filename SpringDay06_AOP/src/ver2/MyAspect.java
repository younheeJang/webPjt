package ver2;

public class MyAspect {

	public void beforeFood() {
		System.out.println("hungry");
	}
	
	public void afterFood() {
		System.out.println("eat");
	}
	
	public void foodFire() {
		System.out.println("call 911");
	}
	
	public void allFinished() {
		System.out.println("wash dishes");
	}
}
