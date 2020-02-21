package kr.gudi.web.web.adminSL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/Admin_SL")
public class AdminSLController {

	@Autowired private AdminSLServiceInterface ass;
	
	@RequestMapping(value="", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> listview(@RequestBody Map<String, Object> paramMap, HttpSession session) {
		if(session.getAttribute("result") != null) {
			session.removeAttribute("result");
		}
		return ass.listview(paramMap);
	}
	
	@RequestMapping(value="/detail", method=RequestMethod.POST)
	public String adminSL_Detail(HttpServletRequest req, HttpSession session) throws Exception {
		if(req.getParameter("CL_RWnum") == null) {
			return "redirect:/Admin_SL";
		} else {
			session.setAttribute("result", ass.getUser(req.getParameter("CL_RWnum")));
		}
		return "/Admin_CM";
	}
	
	@RequestMapping(value="/detailData", method=RequestMethod.POST)
	public @ResponseBody Map<String, Object> adminSL_Detail(HttpSession session) throws Exception {
		Object obj = session.getAttribute("result");
		if(obj != null) {
			return (Map<String, Object>) obj;
		}
		return new HashMap<String, Object>();
	}
	
	@RequestMapping(value="/Search", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> search(@RequestParam Map<String, Object> paramMap) {
		System.out.println("Controller");
		System.out.println(paramMap);
		return ass.search(paramMap);
	}
	
}