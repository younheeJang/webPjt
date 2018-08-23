package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import repository.MemberDAO;
import service.MemberService;
import vo.MemberVO;

@Controller
public class MemberController {

	@Autowired
	private MemberService service;

	@RequestMapping("/joinForm.do")
	public String joinForm() {

		return "join_form";
	}

	@RequestMapping("/join.do")
	public String join(MemberVO vo) {

		boolean result = service.join(vo);
		if (result) {
			return "join_success";
		} else {
			return "join_fail";
		}

	}

	@RequestMapping("/loginForm.do")
	public String loginForm() {

		return "login_form";
	}

	@RequestMapping("/login.do")
	public String login(String id, String pw, HttpSession session) {
		MemberVO vo = new MemberVO();
		boolean result = service.loginCheck(id, pw);
		if (result) {
			if(id.equals("admin")) {
				session.setAttribute("loginId", id);
				return "admin_login_page";	
			}else {
			session.setAttribute("loginId", id);
			return "login_success";
			}
		} else {
			return "login_fail";
		}
	}

	@RequestMapping("/logoutForm.do")
	public String logoutForm() {

		return "logout_form";
	}

	@RequestMapping("/logout.do")
	public String logout(String pw, HttpSession session) {
		String loginId = (String) session.getAttribute("loginId");

		if (loginId == null) {
			return "logout_fail";
		}

		boolean result = service.logoutCheck(loginId, pw);
		if (result) {
			session.invalidate();
			return "logout_success";
		} else {
			return "logout_fail";
			
		}
	}

	/*
	 * @RequestMapping("/logout") public class LogoutController {
	 * 
	 * @RequestMapping(method=RequestMethod.POST) public String logout(HttpSession
	 * session) { session.invalidate(); return "redirect:/login"; } }
	 */
}
