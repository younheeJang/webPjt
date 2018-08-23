package ver6;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class MyAspect {

	@Pointcut("execution(void startRun())")
	public void myPoint() {
	}

	@Before("myPoint()")
	public void beforeRun() {
		System.out.println("ready");
	}

	@AfterReturning("myPoint()")
	public void afterReturning() {
		System.out.println("finish");
	}

	@AfterThrowing("myPoint()")
	public void afterThrowning() {
		System.out.println("call Ambullance");
	}

	@After("myPoint()")
	public void afterRun() {
		System.out.println("get own grade for racing today");
	}
}
