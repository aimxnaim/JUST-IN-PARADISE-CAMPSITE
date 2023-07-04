package campsite.model;

public class Customer {
	private int custid;
	private String custname;
	private String custaddress;
	private String custphone;
	private int userid;
	
	public Customer() {}

	public int getCustid() {
		return custid;
	}

	public void setCustid(int custid) {
		this.custid = custid;
	}

	public String getCustname() {
		return custname;
	}

	public void setCustname(String custname) {
		this.custname = custname;
	}

	public String getCustaddress() {
		return custaddress;
	}

	public void setCustaddress(String custaddress) {
		this.custaddress = custaddress;
	}

	public String getCustphone() {
		return custphone;
	}

	public void setCustphone(String custphone) {
		this.custphone = custphone;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}
}
