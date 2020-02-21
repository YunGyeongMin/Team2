package kr.gudi.web.web.Profile;

import java.util.List;
import java.util.Map;

import kr.gudi.web.web.login.UserBean;

public interface ProfileDaoIF {
	
	public List<Map<String, Object>> select();
	public int update(Map<String, Object> paramMap);
	public int delete(UserBean ub);

}
