package ver7;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class BeanConfig {

	@Bean
	public Tire koreaTire() {
		return new KoreaTire();
	}

	@Bean
	public Tire chinaTire() {
		return new ChinaTire();
	}

	@Bean
	public Car benz() {
		/*Car c = new Car();
		c.setTire(koreaTire());
		return c;*/
		return new Car();
	}
}
