package ver7;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class MyAround {

	@Around("execution(void startRun())")

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
