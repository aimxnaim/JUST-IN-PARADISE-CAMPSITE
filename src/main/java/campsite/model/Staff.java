package campsite.model;

public class Staff {
	private int staffid;
	private String staffname;
	private String staffaddress;
	private String staffphone;
	private int userid;
	
	public Staff() {}

	public int getStaffid() {
		return staffid;
	}

	public void setStaffid(int staffid) {
		this.staffid = staffid;
	}

	public String getStaffname() {
		return staffname;
	}

	public void setStaffname(String staffname) {
		this.staffname = staffname;
	}

	public String getStaffaddress() {
		return staffaddress;
	}

	public void setStaffaddress(String staffaddress) {
		this.staffaddress = staffaddress;
	}

	public String getStaffphone() {
		return staffphone;
	}

	public void setStaffphone(String staffphone) {
		this.staffphone = staffphone;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}
}
