package controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	
	@RequestMapping("/test.do")
	public ModelAndView helloSDS(String name) {
		String sampleData1 = "Hello"+name+"First Spring Web!!";
		Date sampleData2 = new Date();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("sampleData1", sampleData1);
		mv.addObject("sampleData2", sampleData2);
		mv.setViewName("hello");
		return mv;
		
	}

}
