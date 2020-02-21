package kr.gudi.web.web.Reservation;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationServiceImp implements ReservationService {
	
	@Autowired private ReservationDao reservationDao;

	@Override
	public Map<String, Object> getReservation_Select(ReservationBean Rb) {
		System.out.println("서비스셀렉트입니다.");
		System.out.println(Rb);
		Map<String, Object> ResultMap = new HashMap<String, Object>();
		ResultMap.put("result", reservationDao.getReservation_Select(Rb));
		return ResultMap;
	}

	@Override
	public Map<String, Object> getReservation_Payment(ReservationBean Rb) {
		System.out.println("서비스겟입니다.");
		System.out.println(Rb);
		Map<String, Object> ResultMap = new HashMap<String, Object>();
		ResultMap.put("result", reservationDao.getReservation_Payment(Rb));
		return ResultMap;
	}

	@Override
	public Map<String, Object> setReservation_Payment(ReservationBean Rb) {
		System.out.println("서비스세트입니다.");
		System.out.println(Rb);
		Map<String, Object> ResultMap = new HashMap<String, Object>();
		ResultMap.put("result", reservationDao.setReservation_Payment(Rb));
		return ResultMap;
	}

}
