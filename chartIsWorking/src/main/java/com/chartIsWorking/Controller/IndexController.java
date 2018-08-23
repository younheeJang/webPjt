package com.chartIsWorking.Controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class IndexController {

	@RequestMapping("/")
	public String curiousJaeger(Map<String, Object> model) {
		model.put("message", "curiousJaeger");
		return "index";
	}

	/*@RequestMapping("/getChart")
	public String getChart(Map<String, Object> model) {
		model.put("message", "getChart");
		return "getChart";
	}
	*/
	
}
