package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LonginController {

	@RequestMapping("loginForm.do")
	public String loginForm() {

		return "loginForm";
	}

	@RequestMapping("login.do")
	public ModelAndView loginProcess(String id, String pass) {
		ModelAndView mv = new ModelAndView();

		if (id.equals("admin")) {
			if (pass.equals("1234")) {

				mv.setViewName("login");

			}

		}

		return mv;
	}
}
