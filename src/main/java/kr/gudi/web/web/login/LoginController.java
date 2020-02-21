package kr.gudi.web.web.login;


import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping("/")
public class LoginController {
	
	@Autowired private LoginServiceIF loginService;
	
	@RequestMapping(value="Login", method=RequestMethod.POST)
	public @ResponseBody Map<String, Object> login(UserBean ub, HttpSession session) {
		System.out.println(ub);
		return loginService.getUser(ub, session);
	}
	
	@RequestMapping(value="Logout", method=RequestMethod.GET)
	public RedirectView logout(HttpSession session) {
		session.invalidate();
		return new RedirectView("/");
	}
}
