package campsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import campsite.connection.ConnectionManager;
import campsite.model.Staff;

public class StaffDAO {
	static Connection con = null;
	static ResultSet rs = null;
	static PreparedStatement ps = null;
	static Statement stmt = null;
	
	private int staffid, userid;
	private String staffname, staffaddress, staffphone;
	
	// add staff
	public void addStaff(Staff bean)
	{
		// get staff
		staffname = bean.getStaffname();
		staffaddress = bean.getStaffaddress();
		staffphone = bean.getStaffphone();
		userid = bean.getUserid();
		
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "INSERT INTO staff(staffname, staffaddress, staffphone, userid) VALUES(?, ?, ?, ?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, staffname);
			ps.setString(2, staffaddress);
			ps.setString(3, staffphone);
			ps.setInt(4, userid);
			
			//4. execute query
			ps.executeUpdate();

			//5. close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// register staff
		public void register(Staff bean)
		{
			// get staff
			staffid = bean.getStaffid();
			staffname = bean.getStaffname();
			staffaddress = bean.getStaffaddress();
			staffphone = bean.getStaffphone();
			userid = bean.getUserid();
			
			try {

				//call getConnection() method from ConnectionManager class			
				con = ConnectionManager.getConnection(); 

				//3. create statement
				String sql = "UPDATE staff SET staffname=?, staffaddress=?, staffphone=? WHERE userid=?";
				ps = con.prepareStatement(sql);
				ps.setString(1, staffname);
				ps.setString(2, staffaddress);
				ps.setString(3, staffphone);
				ps.setInt(4, userid);
				
				//4. execute query
				ps.executeUpdate();

				//5. close connection
				con.close();

			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	
	// get all staffs
	public static List<Staff> getAllStaff()
	{
		List<Staff> staffs = new ArrayList<Staff>();
		
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "SELECT * FROM staff ORDER BY staffid";
			stmt = con.createStatement();
			
			//4. execute query
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				Staff staff = new Staff();
				staff.setStaffid(rs.getInt("staffid"));
				staff.setStaffname(rs.getString("staffname"));
				staff.setStaffaddress(rs.getString("staffaddress"));
				staff.setStaffphone(rs.getString("staffphone"));
				staff.setUserid(rs.getInt("userid"));
				
				staffs.add(staff);
			}

			//5. close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return staffs;
	}
	
	// get staff by staffid
	public static Staff getStaffById(int staffid)
	{
		Staff staff = new Staff();
		
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "SELECT * FROM staff WHERE staffid=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, staffid);
			
			//4. execute query
			rs = ps.executeQuery();
			
			if(rs.next())
			{
				staff.setStaffid(rs.getInt("staffid"));
				staff.setStaffname(rs.getString("staffname"));
				staff.setStaffaddress(rs.getString("staffaddress"));
				staff.setStaffphone(rs.getString("staffphone"));
				staff.setUserid(rs.getInt("userid"));
			}

			//5. close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return staff;
	}
	
	// get staff by userid
	public static Staff getStaffId(int userid)
	{
		Staff staff = new Staff();
		
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "SELECT * FROM staff WHERE userid=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, userid);
			
			//4. execute query
			rs = ps.executeQuery();
			
			if(rs.next())
			{
				staff.setStaffid(rs.getInt("staffid"));
				staff.setStaffname(rs.getString("staffname"));
				staff.setStaffaddress(rs.getString("staffaddress"));
				staff.setStaffphone(rs.getString("staffphone"));
				staff.setUserid(rs.getInt("userid"));
			}

			//5. close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return staff;
	}
	
	// update staff
	public void updateStaff(Staff bean)
	{
		// get staff
		staffid = bean.getStaffid();
		staffname = bean.getStaffname();
		staffaddress = bean.getStaffaddress();
		staffphone = bean.getStaffphone();
		userid = bean.getUserid();
		
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "UPDATE staff SET staffname=?, staffaddress=?, staffphone=?, userid=? WHERE staffid=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, staffname);
			ps.setString(2, staffaddress);
			ps.setString(3, staffphone);
			ps.setInt(4, userid);
			ps.setInt(5, staffid);
			
			//4. execute query
			ps.executeUpdate();

			//5. close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// delete staff
	public void deleteStaff(int staffid)
	{
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "DELETE FROM staff WHERE staffid=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, staffid);
			
			//4. execute query
			ps.executeUpdate();

			//5. close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
