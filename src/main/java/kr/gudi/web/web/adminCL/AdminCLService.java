package kr.gudi.web.web.adminCL;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminCLService implements AdminCLServiceInterface {

	@Autowired private
	AdminCLDaoInterface acd;

	@Override
	public Map<String, Object> listview(Map<String, Object> paramMap) {
		Map<String, Object> ResultMap = new HashMap<String, Object>();
		ResultMap.put("result", acd.listview(paramMap));
		return ResultMap;
	}

	@Override
	public Map<String, Object> getUser(String CL_RWnum) {
		return acd.getUser(CL_RWnum);
	}

	@Override
	public Map<String, Object> listview_Mgrade(String CL_Mgrade) {
		Map<String, Object> ResultMap = new HashMap<String, Object>();
		ResultMap.put("result", acd.listview_Mgrade(CL_Mgrade));
		return ResultMap;
	}

	@Override
	public Map<String, Object> search(Map<String, Object> paramMap) {
		System.out.println("Service1");
		Map<String, Object> ResultMap = new HashMap<String, Object>();
		System.out.println("Service2");
		ResultMap.put("result", acd.search(paramMap));
		System.out.println("Service3");
		return ResultMap;
	}

	
}
