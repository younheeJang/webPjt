package ver4;

import org.aspectj.lang.JoinPoint;

public class MyAspect {

	public void myBefore(JoinPoint joinPoint) {
		Object[] args = joinPoint.getArgs();
		int a = (Integer) args[0];
		System.out.println("myBefore:" + a);
	}

	public void myAfterReturning(String result) {
		System.out.println("work for cooking end well");
		System.out.println("myAfter:" + result);

	}

	public void myAfterThrowing(Throwable ex) {
		System.out.println("exception end on cooking time");
		System.out.println("exception message:" + ex.getMessage());
	}

}
