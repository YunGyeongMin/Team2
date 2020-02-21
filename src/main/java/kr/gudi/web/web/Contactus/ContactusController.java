package kr.gudi.web.web.Contactus;


import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.gudi.web.web.login.UserBean;


@Controller
@RequestMapping("/Contactus")
public class ContactusController {
	
	@Autowired private ContactusService contactusService;
	
	@RequestMapping(value="", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> setContactus(ContactusBean cb, HttpSession session) {
	     System.out.println(cb);
		 Object obj = session.getAttribute("USER");   //user의 빈은 map으로 받아올 수 없음   
	      if(obj != null) {
	    	 UserBean ub = (UserBean) obj; 
	         cb.setQnA_QID(ub.getCL_ID());
	         System.out.println(cb);
	         return contactusService.setContactus(cb);
	      }
	      return null;
	}
	
}
