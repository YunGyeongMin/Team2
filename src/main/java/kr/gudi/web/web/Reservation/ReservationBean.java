package kr.gudi.web.web.Reservation;

public class ReservationBean {
	
	int RV_rsvNo;
	String CL_RWnum;
	int H_num;
	int RV_room;
	int RV_adult;
	int RV_child;
	int RV_baby;
	int RV_total;
	int RV_point;
	String RV_hotelname;
	int RI_RoomNo;
	String RV_checkin;
	String RV_checkout;
	public int getRV_rsvNo() {
		return RV_rsvNo;
	}
	public void setRV_rsvNo(int rV_rsvNo) {
		RV_rsvNo = rV_rsvNo;
	}
	public String getCL_RWnum() {
		return CL_RWnum;
	}
	public void setCL_RWnum(String cL_RWnum) {
		CL_RWnum = cL_RWnum;
	}
	public int getH_num() {
		return H_num;
	}
	public void setH_num(int h_num) {
		H_num = h_num;
	}
	public int getRV_room() {
		return RV_room;
	}
	public void setRV_room(int rV_room) {
		RV_room = rV_room;
	}
	public int getRV_adult() {
		return RV_adult;
	}
	public void setRV_adult(int rV_adult) {
		RV_adult = rV_adult;
	}
	public int getRV_child() {
		return RV_child;
	}
	public void setRV_child(int rV_child) {
		RV_child = rV_child;
	}
	public int getRV_baby() {
		return RV_baby;
	}
	public void setRV_baby(int rV_baby) {
		RV_baby = rV_baby;
	}
	public int getRV_total() {
		return RV_total;
	}
	public void setRV_total(int rV_total) {
		RV_total = rV_total;
	}
	public int getRV_point() {
		return RV_point;
	}
	public void setRV_point(int rV_point) {
		RV_point = rV_point;
	}
	public String getRV_hotelname() {
		return RV_hotelname;
	}
	public void setRV_hotelname(String rV_hotelname) {
		RV_hotelname = rV_hotelname;
	}
	public int getRI_RoomNo() {
		return RI_RoomNo;
	}
	public void setRI_RoomNo(int rI_RoomNo) {
		RI_RoomNo = rI_RoomNo;
	}
	public String getRV_checkin() {
		return RV_checkin;
	}
	public void setRV_checkin(String rV_checkin) {
		RV_checkin = rV_checkin;
	}
	public String getRV_checkout() {
		return RV_checkout;
	}
	public void setRV_checkout(String rV_checkout) {
		RV_checkout = rV_checkout;
	}
	@Override
	public String toString() {
		return "ReservationBean [RV_rsvNo=" + RV_rsvNo + ", CL_RWnum=" + CL_RWnum + ", H_num=" + H_num + ", RV_room="
				+ RV_room + ", RV_adult=" + RV_adult + ", RV_child=" + RV_child + ", RV_baby=" + RV_baby + ", RV_total="
				+ RV_total + ", RV_point=" + RV_point + ", RV_hotelname=" + RV_hotelname + ", RI_RoomNo=" + RI_RoomNo
				+ ", RV_checkin=" + RV_checkin + ", RV_checkout=" + RV_checkout + "]";
	}
	
	
	

}
