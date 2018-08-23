package ver5;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

public class MyAround {

	public void myAround(ProceedingJoinPoint joinPoint) {
		Object[] args = joinPoint.getArgs();
		int a = (Integer) args[0];
		System.out.println("hungry");
		try {
			String result = (String) joinPoint.proceed();
			System.out.println("eat" + result);
		} catch (Throwable e) {
			e.printStackTrace();
			System.out.println("call 911" + e.getMessage());
		} finally {
			System.out.println("wash dishes");
		}

	}

}
