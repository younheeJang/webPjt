package io.spring.boot.start;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@SpringBootApplication
public class SpringBootStartTestProjectApplication {

	@RequestMapping("/")
	@ResponseBody
	public String yeah() {
		return "yeah";
	}
	
	public static void main(String[] args) {
		SpringApplication.run(SpringBootStartTestProjectApplication.class, args);
	}
}
