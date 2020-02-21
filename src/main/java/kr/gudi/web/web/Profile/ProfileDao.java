package kr.gudi.web.web.Profile;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.gudi.web.web.login.UserBean;

@Repository
public class ProfileDao implements ProfileDaoIF {

	@Autowired
	SqlSession session;

	@Override
	public List<Map<String, Object>> select() {
		return session.selectList("Profile.select");
	}
	
	@Override
	public int delete(UserBean ub) {
		return session.delete("Profile.delete", ub);
	}
	
	@Override
	public int update(Map<String, Object> paramMap)  {
		return session.update("Profile.update", paramMap);
	}
	
}
