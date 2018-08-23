package ver3;

import org.aspectj.lang.ProceedingJoinPoint;

public class MyAround {

	public void myAround(ProceedingJoinPoint joinPoint) {
		System.out.println("hungry");
		try {
			joinPoint.proceed();
			System.out.println("eat");
		} catch (Throwable e) {
			e.printStackTrace();
			System.out.println("call 911s");
		} finally {
			System.out.println("wash dishes");
		}
	}

}
