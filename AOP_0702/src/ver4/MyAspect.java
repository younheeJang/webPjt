package ver4;

import org.aopalliance.intercept.Joinpoint;
import org.aspectj.lang.JoinPoint;

public class MyAspect {

	public void myBefore(JoinPoint joinpoint) {
		Object[] args = joinpoint.getArgs();
		int a = (Integer) args[0];
		System.out.println("runs :" + a);
	}

	public void myAfterReturning(String result) {
		System.out.println("run finished");
		System.out.println("which animal did you prefer running style?" + result);

	}

	public void myAfterThrowing(Throwable ex) {
		System.out.println("exception end on running time");
		System.out.println("exception message:" + ex.getMessage());
	}

	public void myAfter() {

		System.out.println("get own grade for running today");
	}

}
