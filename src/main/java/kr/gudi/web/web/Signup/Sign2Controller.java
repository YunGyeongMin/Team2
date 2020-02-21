package kr.gudi.web.web.Signup;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/Sign2")
public class Sign2Controller {
	
	@Autowired
	Sign2ServiceIF ssi;

	@RequestMapping(value="", method = RequestMethod.POST)
	public @ResponseBody List<Map<String, Object>> select(@RequestBody Map<String, Object> paramMap) throws Exception {
		return ssi.select();
	}
	
	@RequestMapping(value="/pageCheck", method=RequestMethod.POST)
	public @ResponseBody String pageCheck(HttpSession session, @Param("point") String point) {
		session.setAttribute("sign", point);
		return point;
	}
	
	@RequestMapping(value="", method = RequestMethod.PUT)
	public @ResponseBody Object insert(@RequestBody Map<String, Object> paramMap, HttpSession session) throws Exception {
		System.out.println(paramMap.get("CL_Kname"));
		session.setAttribute("CL_Kname", paramMap.get("CL_Kname"));
		session.setAttribute("CL_ID", paramMap.get("CL_ID"));
		Map<String, Object> resultMap = ssi.insert(paramMap);
		System.out.println(resultMap);
		System.out.println(resultMap.get("CL_RWnum"));
		session.setAttribute("CL_RWnum", paramMap.get("CL_RWnum"));
		session.setAttribute("sign", "2");
		return resultMap.get("result");
	}

	@RequestMapping(value="", method = RequestMethod.PATCH)
	public @ResponseBody int idCheck(@RequestBody Map<String, Object> paramMap) throws Exception {
		System.out.println("id 체크");
		return ssi.idchk(paramMap);
	}
	
	@RequestMapping(value="/emchk", method = RequestMethod.PATCH)
	public @ResponseBody int emCheck(@RequestBody Map<String, Object> paramMap) throws Exception {
		System.out.println("email 체크");
		return ssi.emchk(paramMap);
	}
}
