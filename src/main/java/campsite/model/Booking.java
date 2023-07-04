package campsite.model;

public class Booking {
	private int bookingid;
	private String startdate;
	private String finishdate;
	private String arrivaltime;
	private String departuretime;
	private String orgname;
	private String soundeq;
	private boolean tnc;
	private int siteid;
	private int custid;
	
	public Booking() {}

	public int getBookingid() {
		return bookingid;
	}

	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
	}

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getFinishdate() {
		return finishdate;
	}

	public void setFinishdate(String finishdate) {
		this.finishdate = finishdate;
	}

	public String getArrivaltime() {
		return arrivaltime;
	}

	public void setArrivaltime(String arrivaltime) {
		this.arrivaltime = arrivaltime;
	}

	public String getDeparturetime() {
		return departuretime;
	}

	public void setDeparturetime(String departuretime) {
		this.departuretime = departuretime;
	}

	public String getOrgname() {
		return orgname;
	}

	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}

	public boolean isTnc() {
		return tnc;
	}

	public void setTnc(boolean tnc) {
		this.tnc = tnc;
	}

	public String getSoundeq() {
		return soundeq;
	}

	public void setSoundeq(String soundeq) {
		this.soundeq = soundeq;
	}

	public int getSiteid() {
		return siteid;
	}

	public void setSiteid(int siteid) {
		this.siteid = siteid;
	}

	public int getCustid() {
		return custid;
	}

	public void setCustid(int custid) {
		this.custid = custid;
	}
}
