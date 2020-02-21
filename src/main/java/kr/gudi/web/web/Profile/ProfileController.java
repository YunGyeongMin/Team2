package kr.gudi.web.web.Profile;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.gudi.web.web.Profile.ProfileServiceIF;
import kr.gudi.web.web.login.UserBean;

@Controller
public class ProfileController {
	
	@Autowired
	ProfileServiceIF psi;
	
	@RequestMapping(value="/Delete", method = RequestMethod.POST)
	public @ResponseBody List<Map<String, Object>> select(@RequestBody Map<String, Object> paramMap) throws Exception {
		return psi.select();
	}
	
	@RequestMapping(value="/Update", method = RequestMethod.PATCH)
	public @ResponseBody int update(@RequestBody Map<String, Object> paramMap, HttpSession session) throws Exception {
		System.out.println(paramMap);
		session.setAttribute("USER", paramMap);
		return psi.update(paramMap);
	}
	
	@RequestMapping(value="/Delete", method = RequestMethod.DELETE)
	public @ResponseBody int delete(HttpSession session) {
		Object obj = session.getAttribute("USER");
		if(obj != null) {
			UserBean ub = (UserBean) obj;
			return psi.delete(ub);
		}
		session.invalidate();
		return -1;
	}
	


}
