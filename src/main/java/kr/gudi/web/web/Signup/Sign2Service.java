package kr.gudi.web.web.Signup;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class Sign2Service implements Sign2ServiceIF {

	@Autowired
	Sign2DaoIF sdi;

	@Override
	public List<Map<String, Object>> select() {
		return sdi.select();
	}
	
	@Override
	public Map<String, Object> insert(Map<String, Object> paramMap) {
		return sdi.insert(paramMap);
	}
	
	@Override
	public int idchk(Map<String, Object> paramMap) {
		return sdi.idchk(paramMap);
	}
	
	@Override
	public int emchk(Map<String, Object> paramMap) {
		return sdi.emchk(paramMap);
	}


}
