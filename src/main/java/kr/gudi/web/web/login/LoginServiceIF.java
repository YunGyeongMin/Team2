package kr.gudi.web.web.login;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

public interface LoginServiceIF {
	
	public Map<String, Object> getUser(UserBean ub, HttpSession session);
	public List<UserBean> getUserList(UserBean ub);	

}
