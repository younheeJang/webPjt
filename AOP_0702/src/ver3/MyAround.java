package ver3;

import org.aspectj.lang.ProceedingJoinPoint;

public class MyAround {

	public void myAround(ProceedingJoinPoint joinPoint) {
		System.out.println("ready");
		try {
			joinPoint.proceed();
			System.out.println("finish");
		} catch (Throwable e) {
			e.printStackTrace();
			System.out.println("call Ambullance");
		}finally {
			System.out.println("get own grade for racing today");
		}
	}

}
