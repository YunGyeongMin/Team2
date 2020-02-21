package kr.gudi.web.web.Signup;

import java.util.List;
import java.util.Map;

public interface Sign2DaoIF {
	
	public List<Map<String, Object>> select();
	public Map<String, Object> insert(Map<String, Object> paramMap);
	public int idchk(Map<String, Object> paramMap);
	public int emchk(Map<String, Object> paramMap);
}
