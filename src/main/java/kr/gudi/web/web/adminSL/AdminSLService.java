package kr.gudi.web.web.adminSL;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminSLService implements AdminSLServiceInterface {

	@Autowired
	AdminSLDaoInterface asd;

	@Override
	public Map<String, Object> listview(Map<String, Object> paramMap) {
		Map<String, Object> ResultMap = new HashMap<String, Object>();
		ResultMap.put("result", asd.listview(paramMap));
		return ResultMap;
	}

	@Override
	public Map<String, Object> getUser(String CL_RWnum) {
		return asd.getUser(CL_RWnum);
	}
	
	@Override
	public Map<String, Object> search(Map<String, Object> paramMap) {
		System.out.println("Service1");
		Map<String, Object> ResultMap = new HashMap<String, Object>();
		System.out.println("Service2");
		ResultMap.put("result", asd.search(paramMap));
		System.out.println("Service3");
		return ResultMap;
	}
	
	
}
