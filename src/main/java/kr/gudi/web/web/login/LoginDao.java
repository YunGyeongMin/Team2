package kr.gudi.web.web.login;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDao implements LoginDaoIF {
	
	@Autowired
	SqlSession session;

	@Override
	public UserBean getUser(UserBean ub) {
		return session.selectOne("login.getUser", ub);
	}

	@Override
	public List<UserBean> getUserList(UserBean ub) {
		return session.selectList("user.getUser", ub);
	}
	
}
