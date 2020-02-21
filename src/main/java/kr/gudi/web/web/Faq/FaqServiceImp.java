package kr.gudi.web.web.Faq;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.gudi.web.web.Contactus.ContactusBean;

@Service
public class FaqServiceImp implements FaqService {
	
	@Autowired private FaqDao faqDao;

	@Override
	public Map<String, Object> getFaq(Map<String, Object> paramMap) {
		Map<String, Object> ResultMap = new HashMap<String, Object>();
		ResultMap.put("result", faqDao.getFaq(paramMap));
		return ResultMap;
	}

	@Override
	public Map<String, Object> setFaq(ContactusBean CB) {
		Map<String, Object> ResultMap = new HashMap<String, Object>();
		ResultMap.put("result", faqDao.setFaq(CB));
		System.out.println("faqserviceimp");
		System.out.println(CB);
		return ResultMap;
	}

	@Override
	public List<ContactusBean> Faqlist(ContactusBean CB) {
		System.out.println("서비스~");
		System.out.println(CB);
		return faqDao.Faqlist(CB);
	}

}
