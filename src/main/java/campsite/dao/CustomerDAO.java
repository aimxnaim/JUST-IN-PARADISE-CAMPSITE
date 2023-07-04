package campsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import campsite.connection.ConnectionManager;
import campsite.model.Customer;

public class CustomerDAO {
	static Connection con = null;
	static ResultSet rs = null;
	static PreparedStatement ps = null;
	static Statement stmt = null;
	
	private int custid, userid;
	private String custname, custaddress, custphone;
	
	// add customer
	public void addCustomer(Customer bean)
	{
		// get customer
		custname = bean.getCustname();
		custaddress = bean.getCustaddress();
		custphone = bean.getCustphone();
		userid = bean.getUserid();
		
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "INSERT INTO customer(custname, custaddress, custphone, userid) VALUES(?, ?, ?, ?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, custname);
			ps.setString(2, custaddress);
			ps.setString(3, custphone);
			ps.setInt(4, userid);
			
			//4. execute query
			ps.executeUpdate();

			//5. close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// register customer
		public void register(Customer bean)
		{
			// get customer
			custid = bean.getCustid();
			custname = bean.getCustname();
			custaddress = bean.getCustaddress();
			custphone = bean.getCustphone();
			userid = bean.getUserid();
			
			try {

				//call getConnection() method from ConnectionManager class			
				con = ConnectionManager.getConnection(); 

				//3. create statement
				String sql = "UPDATE customer SET custname=?, custaddress=?, custphone=? WHERE userid=?";
				ps = con.prepareStatement(sql);
				ps.setString(1, custname);
				ps.setString(2, custaddress);
				ps.setString(3, custphone);
				ps.setInt(4, userid);
				
				//4. execute query
				ps.executeUpdate();

				//5. close connection
				con.close();

			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	
	// get all customers
	public static List<Customer> getAllCustomers()
	{
		List<Customer> customers = new ArrayList<Customer>();
		
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "SELECT * FROM customer ORDER BY custid";
			stmt = con.createStatement();
			
			//4. execute query
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				Customer customer = new Customer();
				customer.setCustid(rs.getInt("custid"));
				customer.setCustname(rs.getString("custname"));
				customer.setCustaddress(rs.getString("custaddress"));
				customer.setCustphone(rs.getString("custphone"));
				customer.setUserid(rs.getInt("userid"));
				
				customers.add(customer);
			}

			//5. close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return customers;
	}
	
	// get customer by custid
		public static Customer getCustomerById(int custid)
		{
			Customer customer = new Customer();
			
			try {

				//call getConnection() method from ConnectionManager class			
				con = ConnectionManager.getConnection(); 

				//3. create statement
				String sql = "SELECT * FROM customer WHERE custid=?";
				ps = con.prepareStatement(sql);
				ps.setInt(1, custid);
				
				//4. execute query
				rs = ps.executeQuery();
				
				if(rs.next())
				{
					customer.setCustid(rs.getInt("custid"));
					customer.setCustname(rs.getString("custname"));
					customer.setCustaddress(rs.getString("custaddress"));
					customer.setCustphone(rs.getString("custphone"));
					customer.setUserid(rs.getInt("userid"));
				}

				//5. close connection
				con.close();

			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return customer;
		}
	
	// get customer by userid
	public static Customer getCustomerId(int userid)
	{
		Customer customer = new Customer();
		
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "SELECT * FROM customer WHERE userid=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, userid);
			
			//4. execute query
			rs = ps.executeQuery();
			
			if(rs.next())
			{
				customer.setCustid(rs.getInt("custid"));
				customer.setCustname(rs.getString("custname"));
				customer.setCustaddress(rs.getString("custaddress"));
				customer.setCustphone(rs.getString("custphone"));
				customer.setUserid(rs.getInt("userid"));
			}

			//5. close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return customer;
	}
	
	// update customer
	public void updateCustomer(Customer bean)
	{
		// get customer
		custid = bean.getCustid();
		custname = bean.getCustname();
		custaddress = bean.getCustaddress();
		custphone = bean.getCustphone();
		userid = bean.getUserid();
		
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "UPDATE customer SET custname=?, custaddress=?, custphone=?, userid=? WHERE custid=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, custname);
			ps.setString(2, custaddress);
			ps.setString(3, custphone);
			ps.setInt(4, userid);
			ps.setInt(5, custid);
			
			//4. execute query
			ps.executeUpdate();

			//5. close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// delete customer
	public void deleteCustomer(int custid)
	{
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "DELETE FROM customer WHERE custid=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, custid);
			
			//4. execute query
			ps.executeUpdate();

			//5. close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
