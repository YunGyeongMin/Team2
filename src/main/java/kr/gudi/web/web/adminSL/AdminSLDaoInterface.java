package kr.gudi.web.web.adminSL;

import java.util.List;
import java.util.Map;

public interface AdminSLDaoInterface {
	
	public List<Map<String, Object>> listview(Map<String, Object> paramMap);
	public Map<String, Object> getUser(String CL_RWnum);	
	public List<Map<String, Object>> search(Map<String, Object> paramMap);
}
