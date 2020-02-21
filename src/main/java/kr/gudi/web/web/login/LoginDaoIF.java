package kr.gudi.web.web.login;

import java.util.List;

public interface LoginDaoIF {
	
	public UserBean getUser(UserBean ub);
	public List<UserBean> getUserList(UserBean ub);	

}
