package kr.gudi.web.web.adminST;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/Admin_ST")
public class AdminSTController {

	@Autowired private AdminSTServiceInterface ass;
	
	@RequestMapping(value="", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> stmtList(@RequestBody Map<String, Object> paramMap, HttpSession session) {
		if(session.getAttribute("result") != null) {
			session.removeAttribute("result");
		}
		return ass.stmtList(paramMap);
	}
	
	@RequestMapping(value="/graphview", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> graphview(@RequestBody Map<String, Object> paramMap, HttpSession session) {
		if (session.getAttribute("result") != null) {
			 session.removeAttribute("result");
		}
		return ass.graphview(paramMap);
	}
	
	
	
}
