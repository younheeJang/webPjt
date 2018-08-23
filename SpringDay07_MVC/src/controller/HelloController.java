package controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class HelloController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userName = request.getParameter("name");
		String sampleData1 = "Hello"+userName+"First Spring Web!!";
		Date sampleData2 = new Date();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("sampleData1", sampleData1);
		mv.addObject("sampleData2", sampleData2);
		mv.setViewName("hello");
		return mv;
	}

}
