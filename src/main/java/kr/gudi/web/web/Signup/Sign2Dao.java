package kr.gudi.web.web.Signup;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class Sign2Dao implements Sign2DaoIF {

	@Autowired
	SqlSession session;
	
	@Override
	public List<Map<String, Object>> select() {
		System.out.println("dao");
		return session.selectList("sign2.select");
	}
	
	@Override
	public Map<String, Object> insert(Map<String, Object> paramMap) {
		paramMap.put("result", session.insert("sign2.signinsert", paramMap));
		return paramMap;
	}
	
	@Override
	public int idchk(Map<String, Object> paramMap) {
		return session.selectOne("sign2.idchk", paramMap);
	}
	
	@Override
	public int emchk(Map<String, Object> paramMap) {
		return session.selectOne("sign2.emchk", paramMap);
	}
	
	
}
