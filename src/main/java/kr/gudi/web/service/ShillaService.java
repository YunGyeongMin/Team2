package kr.gudi.web.service;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.gudi.web.dao.ShillaDao;

@Service
public class ShillaService implements ShillaServiceInterface {
		
		@Autowired
		ShillaDao sd;
		
		@Override
		public int insert(Map<String, Object> paramMap) {
			return sd.setInsert(paramMap);
		}
}
