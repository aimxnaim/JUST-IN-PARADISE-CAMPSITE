package campsite.dao;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import campsite.connection.ConnectionManager;
import campsite.model.User;

public class UserDAO {
	
	static Connection con = null;
	static ResultSet rs = null; 
	static PreparedStatement ps = null;
	static Statement stmt = null;
	static int userid;
	static String useremail, userpassword, userrole;
	static String query;
	
	// method for login
	public static User login(User bean) throws NoSuchAlgorithmException{
		//get email and password
		useremail = bean.getUseremail();
		userpassword = bean.getUserpassword();

		//convert the password to MD5
		MessageDigest md = MessageDigest.getInstance("MD5");
		md.update(userpassword.getBytes());

		byte byteData[] = md.digest();

		//convert the byte to hex format
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < byteData.length; i++) {
			sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
		}

		try {
			//call getConnection() method //3. create statement  //4. execute query
			con = ConnectionManager.getConnection();
			
			//3. create statement
			stmt = con.createStatement();
			query = "select * from user where useremail='" + useremail + "'AND userpassword='" + sb.toString() + "'";
		    
			//4. execute query
			rs = stmt.executeQuery(query);
			boolean more = rs.next();

			// if user exists set the isValid variable to true
			if (more) {
				bean.setUserid(rs.getInt("userid"));
				bean.setUseremail(rs.getString("useremail"));
				bean.setUserrole(rs.getString("userrole"));
				
				bean.setValid(true);
			}
			// if user does not exist set the isValid variable to false
			else if (!more) {
				bean.setValid(false);
			}

			//5. close connection
			con.close();
		}catch(Exception e) {
			e.printStackTrace();		
		}

		return bean;
	}

	// add new user (sign-up)
	public void add(User bean) throws NoSuchAlgorithmException{
		//get email and password
		
		useremail = bean.getUseremail();
		userpassword = bean.getUserpassword();
		userrole = bean.getUserrole();

		MessageDigest md = MessageDigest.getInstance("MD5");
		md.update(userpassword.getBytes());

		byte byteData[] = md.digest();

		//convert the byte to hex format
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < byteData.length; i++) {
			sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
		}
		String pass = sb.toString();

		try {
			//call getConnection() method 
			con = ConnectionManager.getConnection();
			
			//3. create statement  
			ps = con.prepareStatement("insert into user(useremail, userpassword, userrole) values(?,?,?)");
			ps.setString(1, useremail);
			ps.setString(2, pass);
			ps.setString(3, userrole);
			
			//4. execute query
			ps.executeUpdate();			
			
			//5. close connection
			con.close();
		}catch(Exception e) {
			e.printStackTrace();		
		}
	}
	
	
	//method to get user
		public static User getUser(User bean)  {   
			//get email
			useremail = bean.getUseremail();
			String searchQuery = "select * from user where useremail='" + useremail + "'";
			try {
				//call getConnection() method 
				con = ConnectionManager.getConnection();
				//3. create statement  
				stmt = con.createStatement();
				//execute statement
				rs = stmt.executeQuery(searchQuery);

				boolean more = rs.next();

				// if user exists set the isValid variable to true
				if (more) {
					String useremail = rs.getString("useremail");
					bean.setUseremail(useremail);
					bean.setValid(true);
				}
				// if user does not exist set the isValid variable to false
				else if (!more) {
					bean.setValid(false);
				}
				//5. close connection
				con.close();	
			}catch(Exception e) {
				e.printStackTrace();		
			}
			return bean;
		}

		//get user by email
		public static User getUserByEmail(String useremail) {
			User us = new User();
			try {
				//call getConnection() method 
				con = ConnectionManager.getConnection();
				//3. create statement  
				ps=con.prepareStatement("select * from user where useremail=?");
				ps.setString(1, useremail);
				//4. execute query
				rs = ps.executeQuery();

				if (rs.next()) {	            
					us.setUserid(rs.getInt("userid"));
					us.setUseremail(rs.getString("useremail"));				
					us.setUserpassword(rs.getString("userpassword"));

				}
				//5. close connection
				con.close();
			}catch(Exception e) {
				e.printStackTrace();		
			}

			return us;
		}

		//get user by id
		public static User getUserById(int userid) {
			User us = new User();
			try {
				//call getConnection() method 
				con = ConnectionManager.getConnection();
				//3. create statement  
				ps=con.prepareStatement("select * from user where userid=?");
				ps.setInt(1, userid);
				//4. execute query
				rs = ps.executeQuery();

				if (rs.next()) {
					us.setUserid(rs.getInt("userid"));
					us.setUseremail(rs.getString("useremail"));				
					us.setUserpassword(rs.getString("userpassword"));

				}
				//5. close connection
				con.close();
			}catch(Exception e) {
				e.printStackTrace();		
			}

			return us;
		}
		

		public static List<User> getUserId() {
			List<User> users = new ArrayList<User>();
			try {
				//call getConnection() method 
				con = ConnectionManager.getConnection();
				//3. create statement  
				stmt = con.createStatement();
				//4. execute query
				rs = stmt.executeQuery("select userid, useremail from user");

				while (rs.next()) {
					User us = new User();
					us.setUserid(rs.getInt("userid"));
					us.setUseremail(rs.getString("useremail"));
					users.add(us);

				}
				//5. close connection
				con.close();
			}catch(Exception e) {
				e.printStackTrace();		
			}

			return users;
		}
		
		/*public static List<User> getUserSupplier() {
			List<User> users = new ArrayList<User>();
			try {
				//call getConnection() method 
				con = ConnectionManager.getConnection();
				//3. create statement  
				stmt = con.createStatement();
				//4. execute query
				rs = stmt.executeQuery("SELECT * FROM user u INNER JOIN supplier s ON u.id = s.id");

				while (rs.next()) {
					User us = new User();
					us.setUserid(rs.getInt("userid"));
					us.setUseremail(rs.getString("useremail"));
					us.setSupplier(SupplierDAO.getSupplierId(rs.getInt("id")));
					users.add(us);

				}
				//5. close connection
				con.close();
			}catch(Exception e) {
				e.printStackTrace();		
			}

			return users;
		}*/
		
		/*public static List<User> getUserStaff() {
			List<User> users = new ArrayList<User>();
			try {
				//call getConnection() method 
				con = ConnectionManager.getConnection();
				//3. create statement  
				stmt = con.createStatement();
				//4. execute query
				ResultSet rs = stmt.executeQuery("SELECT * FROM users u INNER JOIN staff s ON u.id = s.id");

				while (rs.next()) {
					User us = new User();
					us.setId(rs.getInt("id"));
					us.setuseremail(rs.getString("useremail"));
					us.setStaff(StaffDAO.getStaffId(rs.getInt("id")));
					users.add(us);

				}
				//5. close connection
				con.close();
			}catch(Exception e) {
				e.printStackTrace();		
			}

			return users;
		} */
			
		//delete staff and supplier from table users
		public void deleteUser(int userid) {
			try {
				//call getConnection() method 
				con = ConnectionManager.getConnection();
				//3. create statement  
				ps=con.prepareStatement("delete from user where userid=?");
				ps.setInt(1, userid);
				//4. execute query
				ps.executeUpdate();

				//5. close connection
				con.close();
			}catch(Exception e) {
				e.printStackTrace();		
			}
		}
}
