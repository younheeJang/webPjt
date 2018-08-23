package ver5;

import org.aopalliance.intercept.Joinpoint;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

public class MyAround {

	public void myAround(ProceedingJoinPoint joinpoint) {
		Object[] args = joinpoint.getArgs();
		int a = (Integer) args[0];
		System.out.println("runs :" + a);

		try {
			String result = (String) joinpoint.proceed();
			System.out.println("runs:" + result);
		} catch (Throwable e) {
			e.printStackTrace();
			System.out.println("call Ambullance" + e.getMessage());
		} finally {
			System.out.println("get own grade for racing today");
		}
	}

}
