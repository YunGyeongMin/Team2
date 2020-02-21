package kr.gudi.web.web.adminCL;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminCLDao implements AdminCLDaoInterface {

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
	public List<Map<String, Object>> listview_Mgrade(String CL_Mgrade) {
		return session.selectList("adminCL.listview_Mgrade", CL_Mgrade);
	}

	@Override
	public List<Map<String, Object>> search(Map<String, Object> paramMap) {
		System.out.println("Dao");
		return session.selectList("adminCL.listview", paramMap);
	}

	
	
	
}
