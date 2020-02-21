package kr.gudi.web.web.Faq;

import java.util.List;
import java.util.Map;

import kr.gudi.web.web.Contactus.ContactusBean;

public interface FaqService {
	
	public Map<String, Object> getFaq(Map<String, Object> paramMap);
	
	public Map<String, Object> setFaq(ContactusBean CB);
	
	public List<ContactusBean > Faqlist(ContactusBean CB); 

}
