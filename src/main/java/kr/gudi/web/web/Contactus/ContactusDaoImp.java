package kr.gudi.web.web.Contactus;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ContactusDaoImp implements ContactusDao {
	
	@Autowired private SqlSession session;

	@Override
	public int setContactus(ContactusBean CB) {
		return session.insert("Contactus.setContactus", CB);
	}

}
