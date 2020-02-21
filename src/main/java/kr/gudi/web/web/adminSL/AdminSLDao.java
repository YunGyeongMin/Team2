package kr.gudi.web.web.adminSL;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminSLDao implements AdminSLDaoInterface {

	@Autowired private
	SqlSession session;

	@Override
	public List<Map<String, Object>> listview(Map<String, Object> paramMap) {
		return session.selectList("adminCL.listview", paramMap);
	}

	@Override
	public Map<String, Object> getUser(String CL_RWnum) {
		return session.selectOne("adminCL.getUser", CL_RWnum);
	}
	
	@Override
	public List<Map<String, Object>> search(Map<String, Object> paramMap) {
		System.out.println("Dao");
		return session.selectList("adminCL.listview", paramMap);
	}


}
