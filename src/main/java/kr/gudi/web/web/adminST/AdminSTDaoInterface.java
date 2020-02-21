package kr.gudi.web.web.adminST;

import java.util.List;
import java.util.Map;

public interface AdminSTDaoInterface {

	public List<Map<String, Object>> stmtList(Map<String, Object> paramMap);
	
	public List<Map<String, Object>> graphview(Map<String, Object> paramMap);


	

}
