package kr.gudi.web.web.Reservation;

import java.util.List;
import java.util.Map;

public interface ReservationDao {

	public List<Map<String, Object>> getReservation_Select(ReservationBean Rb);
	public Map<String, Object> getReservation_Payment(ReservationBean Rb);
	public int setReservation_Payment(ReservationBean Rb);
	
}
