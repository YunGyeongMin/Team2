package kr.gudi.web.web.Faq;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.gudi.web.web.Contactus.ContactusBean;
import kr.gudi.web.web.login.UserBean;

@Controller
@RequestMapping("/Faq")
public class FaqController {
	
	@Autowired private FaqService faqService;
	
	@RequestMapping(value="", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> getFaq(@RequestParam Map<String, Object> paramMap) {
		return faqService.getFaq(paramMap);
	}
	
	@RequestMapping(value="/setFaq", method = RequestMethod.POST)
	public @ResponseBody  Map<String, Object> setFaq(ContactusBean CB, HttpSession session) {
		Map<String, Object> resultMap = null;
		System.out.println("FAQ-CONTROLLER");
		System.out.println(CB);
		Object obj = session.getAttribute("USER");   //user의 빈은 map으로 받아올 수 없음   
	      if(obj != null) {
	    	 UserBean ub = (UserBean) obj; 
	    	 if("staff".equals(ub.getCL_membertype())) {
	    		 CB.setQnA_QID(ub.getCL_ID());
	    		 System.out.println(CB);
	    		 resultMap = faqService.setFaq(CB);
	    	 }
	      }
		return resultMap;
//	}
//      return null;
}
	
	 @RequestMapping(value = "/Faqlist" , method = RequestMethod.POST)
	   public @ResponseBody List<ContactusBean> Faqlist(@RequestBody ContactusBean CB) {
	     System.out.println("controller");
	     System.out.println(CB);
	      return faqService.Faqlist(CB);
	   }
	

}