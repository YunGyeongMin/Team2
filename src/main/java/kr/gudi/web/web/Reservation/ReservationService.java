package kr.gudi.web.web.Reservation;

import java.util.Map;

public interface ReservationService {
	
	public Map<String, Object> getReservation_Select(ReservationBean Rb);
	public Map<String, Object> getReservation_Payment(ReservationBean Rb);
	public Map<String, Object> setReservation_Payment(ReservationBean Rb);

}
