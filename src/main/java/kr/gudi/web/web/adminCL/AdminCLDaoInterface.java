package kr.gudi.web.web.adminCL;

import java.util.List;
import java.util.Map;

public interface AdminCLDaoInterface {
	
	public List<Map<String, Object>> listview(Map<String, Object> paramMap);
	public Map<String, Object> getUser(String CL_RWnum);
	public List<Map<String, Object>> listview_Mgrade(String CL_Mgrade);
	public List<Map<String, Object>> search(Map<String, Object> paramMap);

	
}
