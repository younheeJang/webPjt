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

	@Pointcut("execution(void makeFood())")
	public void myPoint() {}
	
	@Before("myPoint()")
	public void beforeFood() {
		System.out.println("hungry");
	}
	
	@AfterReturning("myPoint()")
	public void afterFood() {
		System.out.println("eat");
	}
	
	@AfterThrowing("myPoint()")
	public void foodFire() {
		System.out.println("call 911");
	}
	
	@After("myPoint()")
	public void allFinished() {
		System.out.println("wash dishes");
	}
}
