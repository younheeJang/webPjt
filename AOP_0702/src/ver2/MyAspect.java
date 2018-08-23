package ver2;

public class MyAspect {

	public void beforeRun(){
		System.out.println("ready");
	}
	
	public void afterReturning() {
		System.out.println("finish");
	}
	
	public void afterThrowning() {
		System.out.println("call Ambullance");
	}
	
	public void afterRun() {
		System.out.println("get own grade for racing today");
	}
}
