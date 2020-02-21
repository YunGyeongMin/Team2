package kr.gudi.web.web.adminSL;

import java.util.Map;

public interface AdminSLServiceInterface {

	public Map<String, Object> listview(Map<String, Object> paramMap);
	public Map<String, Object> getUser(String CL_RWnum);
	public Map<String, Object> search(Map<String, Object> paramMap);

}
