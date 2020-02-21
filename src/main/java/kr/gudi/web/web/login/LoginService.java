package kr.gudi.web.web.login;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService implements LoginServiceIF {

	@Autowired private LoginDaoIF loginDao;

	@Override
	public Map<String, Object> getUser(UserBean ub, HttpSession session) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("CD", 0);
		UserBean ub2 = loginDao.getUser(ub);
		System.out.println(ub2);
		if(ub2 == null) {
			System.out.println("해당 ID가 없다");
			resultMap.put("MSG", "입력하신 신라리워즈 번호 또는 아이디가 잘못되었습니다.");
		} else {
			
			if("Y".equals(ub2.getCL_retireYN())) {
				resultMap.put("MSG", "비활성화 된 정보입니다. 활성화를 원하시면 고객센터로 문의 바랍니다.");
			} else {
			
				System.out.println("해당 ID는 찾았다");
				if(ub.getCL_PW().equals(ub2.getCL_PW())) {
					System.out.println("해당 사용자를 찾았다");
					resultMap.put("CD", 1);
					session.setAttribute("USER", ub2);
				} else {
					System.out.println("해당 PW가 없다");
					resultMap.put("MSG", "입력하신 비밀번호가 잘못되었습니다.");
				}
			
			}
		}		
		return resultMap; 
	}

	@Override
	public List<UserBean> getUserList(UserBean ub) {
		return loginDao.getUserList(ub);
	}
	
}
