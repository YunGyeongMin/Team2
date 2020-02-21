package kr.gudi.web.web.Profile;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.gudi.web.web.Profile.ProfileDaoIF;
import kr.gudi.web.web.login.UserBean;

@Service
public class ProfileService implements ProfileServiceIF {

	@Autowired
	ProfileDaoIF pdi;
	
	@Override
	public List<Map<String, Object>> select() {
		return pdi.select();
	}
	
	@Override
	public int update(Map<String, Object> paramMap) {
		return pdi.update(paramMap);
	}
	
	@Override
	public int delete(UserBean ub) {
		return pdi.delete(ub);
	}
	

}
