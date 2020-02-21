package kr.gudi.web.web.adminST;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminSTDao implements AdminSTDaoInterface {

	@Autowired private
	SqlSession session;
	
	@Override
	public List<Map<String, Object>> stmtList(Map<String, Object> paramMap) {
		return session.selectList("adminST.stmtList", paramMap);
	}
	
	@Override
	public List<Map<String, Object>> graphview(Map<String, Object> paramMap) {
		return session.selectList("adminST.graphview", paramMap);
	}
	
	
}
