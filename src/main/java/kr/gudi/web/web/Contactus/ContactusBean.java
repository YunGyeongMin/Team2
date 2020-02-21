package kr.gudi.web.web.Contactus;

public class ContactusBean {
	
	
	int QnA_No;
	String QnA_title;
	String QnA_main;
	String QnA_QID;
	String QnA_Qdate;
	String QnA_Answer;
	String QnA_YN;
	
	public int getQnA_No() {
		return QnA_No;
	}
	public void setQnA_No(int qnA_No) {
		QnA_No = qnA_No;
	}
	public String getQnA_title() {
		return QnA_title;
	}
	public void setQnA_title(String qnA_title) {
		QnA_title = qnA_title;
	}
	public String getQnA_main() {
		return QnA_main;
	}
	public void setQnA_main(String qnA_main) {
		QnA_main = qnA_main;
	}
	public String getQnA_QID() {
		return QnA_QID;
	}
	public void setQnA_QID(String qnA_QID) {
		QnA_QID = qnA_QID;
	}
	public String getQnA_Qdate() {
		return QnA_Qdate;
	}
	public void setQnA_Qdate(String qnA_Qdate) {
		QnA_Qdate = qnA_Qdate;
	}
	public String getQnA_Answer() {
		return QnA_Answer;
	}
	public void setQnA_Answer(String qnA_Answer) {
		QnA_Answer = qnA_Answer;
	}
	public String getQnA_YN() {
		return QnA_YN;
	}
	public void setQnA_YN(String qnA_YN) {
		QnA_YN = qnA_YN;
	}
	
	@Override
	public String toString() {
		return "ContactusBean [QnA_No=" + QnA_No + ", QnA_title=" + QnA_title + ", QnA_main=" + QnA_main + ", QnA_QID="
				+ QnA_QID + ", QnA_Qdate=" + QnA_Qdate + ", QnA_Answer=" + QnA_Answer + ", QnA_YN=" + QnA_YN + "]";
	}
	
	
	
}