package com.chartIsWorking.Controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	@RequestMapping("/getChart1")
	public String getChart1(Map<String, Object> model) {
		model.put("message", "curiousJaeger");
		return "getChart1";
	}

}
