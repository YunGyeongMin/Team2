package kr.gudi.web.web.Reservation;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class ReservationDaoImp implements ReservationDao {
	
	@Autowired private SqlSession session;

	@Override
	public List<Map<String, Object>> getReservation_Select(ReservationBean Rb) {
		System.out.println("Dao셀렉트");
		System.out.println(Rb);
		return session.selectList("Reservation.getReservation", Rb);
	}

	@Override
	public Map<String, Object> getReservation_Payment(ReservationBean Rb) {
		System.out.println("Dao겟");
		System.out.println(Rb);
		return session.selectOne("Reservation.getReservation_Payment", Rb);
	}

	@Override
	public int setReservation_Payment(ReservationBean Rb) {
		System.out.println("Dao세트");
		System.out.println(Rb);
		return session.insert("Reservation.setReservation_Payment", Rb);
	}




	

		

}
