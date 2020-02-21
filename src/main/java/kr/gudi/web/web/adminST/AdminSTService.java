package kr.gudi.web.web.adminST;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminSTService implements AdminSTServiceInterface {

	@Autowired
	AdminSTDaoInterface asd;
	
	@Override
	public Map<String, Object> stmtList(Map<String, Object> paramMap) {
		Map<String, Object> ResultMap = new HashMap<String, Object>();
		ResultMap.put("result", asd.stmtList(paramMap));
		return ResultMap;
	}
	
	@Override
	public Map<String, Object> graphview(Map<String, Object> paramMap) {
		Map<String, Object> ResultMap = new HashMap<String, Object>();
		ResultMap.put("result", asd.graphview(paramMap));
		return ResultMap;
	}
	

}
