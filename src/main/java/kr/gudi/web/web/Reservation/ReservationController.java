package kr.gudi.web.web.Reservation;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.gudi.web.web.Contactus.ContactusBean;
import kr.gudi.web.web.login.UserBean;

@Controller
public class ReservationController {

	@Autowired private ReservationService reservationService;
	
	@GetMapping("/Reservation_Select")
	public String getReservation(@RequestParam("choice") String RV_hotelname, Model model) {
		System.out.println("컨트롤러 : " + RV_hotelname);
		if(RV_hotelname != null) {
			ReservationBean Rb = new ReservationBean();
			Rb.setRV_hotelname(RV_hotelname);
			System.out.println(Rb);
			model.addAttribute("data", reservationService.getReservation_Select(Rb));
			model.addAttribute("RV_hotelname", RV_hotelname);
		}
	    return "Reservation_Select";
	}

	@GetMapping("/Reservation_Payment/{RI_RoomNo}")
	public String Reservation_Payment(@PathVariable("RI_RoomNo") String no, Model model, HttpSession session) {
		System.out.println("String : " + no);
		try {
			int RI_RoomNo = Integer.parseInt(no);
			System.out.println("int : " + RI_RoomNo);
			
			Object obj = session.getAttribute("USER");
			if(obj != null) {
				UserBean ub = (UserBean) obj;
				System.out.println(ub);
				ReservationBean Rb = new ReservationBean();
				Rb.setRI_RoomNo(RI_RoomNo);
				System.out.println(Rb);
				model.addAttribute("data", reservationService.getReservation_Payment(Rb));
				model.addAttribute("user", ub);
				return "Reservation_Payment";
			} else {
				return "redirect:/Login";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/Reservation";
		}
	}
	
	@RequestMapping(value = "/Rewards_RV" , method = RequestMethod.POST)
	  public @ResponseBody Map<String, Object> setReservation_Payment( ReservationBean Rb ,Model model ,HttpSession session) {
	     System.out.println("controller: " + Rb);
	 
	   
	
	     
	     
	     return reservationService.setReservation_Payment(Rb);
//	   
	}
	
}
