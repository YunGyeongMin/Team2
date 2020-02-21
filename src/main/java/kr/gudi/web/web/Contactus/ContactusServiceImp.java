package kr.gudi.web.web.Contactus;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContactusServiceImp implements ContactusService {

	
	@Autowired private ContactusDao contactusDao;
	
	@Override
	public Map<String, Object> setContactus(ContactusBean CB) {
		Map<String, Object> ResultMap = new HashMap<String, Object>();
		ResultMap.put("result", contactusDao.setContactus(CB));
		return ResultMap;
	}

}
