package com.foreign;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebController {

	@RequestMapping("/")
	  public String home(Map<String, Object> model) {
        model.put("message", "Finally in jsp page in spring boots-gradle combi !!");
        return "index";
    }

	  @RequestMapping("/next")
	    public String next(Map<String, Object> model) {
	        model.put("message", "hello, curious jager!!");
	        return "next";
	    }


}
