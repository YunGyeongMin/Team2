package kr.gudi.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ViewController {
	
	@GetMapping("/")
	public String base() {
		return "Main";
	}
	
	@GetMapping("/Main")
	public String main() {
		return "Main";
	}
	
	@GetMapping("/Admin_CL")
	public String Admin1() {
		return "Admin_CL";
	}
	
	@GetMapping("/Admin_SL")
	public String Admin4() {
		return "Admin_SL";
	}
	
	@GetMapping("/Admin_CM")
	public String Admin2() {
		return "Admin_CM";
	}
	
	@GetMapping("/Admin_ST")
	public String Admin3() {
		return "Admin_ST";
	}
	@GetMapping("/Contactus")
	public String Contactus() {
		return "Contactus";
	}
	
	@GetMapping("/Contactus_Add")
	public String Contactus2() {
		return "Contactus_Add";
	}
	
	@GetMapping("/Faq")
	public String Faq() {
		return "Faq";
	}
	
	@GetMapping("/Faq2")
	public String Faq2() {
		return "Faq2";
	}
	@GetMapping("/Login")
	public String Login() {
		return "Login";
	}
	
	@GetMapping("/Overview_Intro")
	public String Overview_I() {
		return "Overview_Intro";
	}
	
	@GetMapping("/Overview_Jeju")
	public String Overview_J() {
		return "Overview_Jeju";
	}
	
	@GetMapping("/Overview_Seoul")
	public String Overview_S() {
		return "Overview_Seoul";
	}
	
	@GetMapping("/Reservation")
	public String Reservation() {
		return "Reservation";
	}
	
	@GetMapping("/Rewards_BN")
	public String Rewards_B() {
		return "Rewards_BN";
	}
	
	@GetMapping("/Rewards_BN_POP")
	public String Rewards_BP() {
		return "Rewards_BN_POP";
	}
	@GetMapping("/Rewards_MS")
	public String Rewards_MS(){
		return "Rewards_MS";
	}
	
	@GetMapping("/Rewards_RV")
	public String Rewards_RV() {
		return "Rewards_RV";
	}
	
	@GetMapping("/SearchHotel")
	public String SearchH() {
		return "SearchHotel";
	}
	
	@GetMapping("/Sign1")
	public String Sign1() {
		return "Sign1";
	}
	@GetMapping("/Sign2")
	public String Sign2(HttpSession session) {
		Object sign = session.getAttribute("sign");
		if(sign != null) {
			if("1".equals(sign)) {
				return "Sign2";
			} else {
				return "redirect:/Sign3";
			}
		} else {
			return "redirect:/Sign1";
		}
	}
	
	@GetMapping("/Sign3")
	public String Sign3(HttpSession session) {
		Object sign = session.getAttribute("sign");
		if(sign != null) {
			if("2".equals(sign)) {
				session.removeAttribute("sign");
				return "Sign3";
			} else {
				return "redirect:/Sign2";
			}
		} else {
			return "redirect:/Sign1";
		}
	}
	
//	@GetMapping("/Reservation_Select")
//	public String Reservation_Select() {
//	return "redirect:/Reservation";
//	}
	   
//	@GetMapping("/Reservation_Payment/{RI_RoomNo}")
//	public String Reservation_Payment(@PathVariable("RI_RoomNo") String no) {
//		System.out.println("String : " + no);
//		try {
//			int RI_RoomNo = Integer.parseInt(no);
//			System.out.println("int : " + RI_RoomNo);
//			return "Reservation_Payment";
//		} catch (Exception e) {
//			e.printStackTrace();
//			return "redirect:/Reservation";
//		}
//	}
	
	@GetMapping("/header")
	public String header() {
		System.out.println("header");
	return "page/header";
	}

	@GetMapping("/Profile")
	public String profile(HttpSession session) {
		Object obj = session.getAttribute("USER");
		if(obj != null) {
			return "Profile";
		}
		return "redirect:/Login";
	}
	
}
