package kr.gudi.web.web.Faq;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.gudi.web.web.Contactus.ContactusBean;

@Repository
public class FaqDaoImp implements FaqDao {
	
	@Autowired private SqlSession session;

	@Override
	public List<Map<String, Object>> getFaq(Map<String, Object> paramMap) {
		System.out.println("------");
		return session.selectList("Faq.getFaq", paramMap);
	}

	@Override
	public int setFaq(ContactusBean CB) {
		System.out.println("Daofaqimp");
		System.out.println(CB);
		return session.update("Faq.setFaq", CB);
	}

	@Override
	public List<ContactusBean> Faqlist(ContactusBean CB) {
		System.out.println("dao~");
		System.out.println(CB);
		return session.selectList("Faq.FaqSearch");
	}


}
