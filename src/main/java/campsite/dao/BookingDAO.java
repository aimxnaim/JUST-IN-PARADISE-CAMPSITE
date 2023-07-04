package campsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import campsite.connection.ConnectionManager;
import campsite.model.Booking;
import campsite.model.Campsite;
import campsite.model.Customer;

public class BookingDAO {
	
	static Connection con = null;
	static ResultSet rs = null;
	static PreparedStatement ps = null;
	static Statement stmt = null;
	
	private int bookingid, siteid, custid;
	private String startdate, finishdate, arrivaltime, departuretime, orgname, soundeq;
	private boolean tnc;
	
	// add booking
	public void addBooking(Booking bean)
	{
		// get Booking
		startdate = bean.getStartdate();
		finishdate = bean.getFinishdate();
		arrivaltime = bean.getArrivaltime();
		departuretime = bean.getDeparturetime();
		orgname = bean.getOrgname();
		siteid = bean.getSiteid();
		custid = bean.getCustid();
		tnc = bean.isTnc();
		soundeq = bean.getSoundeq();
		
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "INSERT INTO booking(startdate, finishdate, arrivaltime, departuretime, orgname, siteid, custid, tnc, soundeq) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, startdate);
			ps.setString(2, finishdate);
			ps.setString(3, arrivaltime);
			ps.setString(4, departuretime);
			ps.setString(5, orgname);
			ps.setInt(6, siteid);
			ps.setInt(7, custid);
			ps.setBoolean(8, tnc);
			ps.setString(9, soundeq);
			
			//4. execute query
			ps.executeUpdate();

			//5. close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// get all bookings
	public static List<Booking> getAllBookings()
	{
		List<Booking> bookings = new ArrayList<Booking>();
		
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "SELECT * FROM booking ORDER BY bookingid";
			stmt = con.createStatement();
			
			//4. execute query
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				Booking booking = new Booking();
				booking.setBookingid(rs.getInt("bookingid"));
				booking.setStartdate(rs.getString("startdate"));
				booking.setFinishdate(rs.getString("finishdate"));
				booking.setArrivaltime(rs.getString("arrivaltime"));
				booking.setDeparturetime(rs.getString("departuretime"));
				booking.setOrgname(rs.getString("orgname"));
				booking.setTnc(rs.getBoolean("tnc"));
				booking.setSoundeq(rs.getString("soundeq"));
				booking.setCustid(rs.getInt("custid"));
				booking.setSiteid(rs.getInt("siteid"));
				
				bookings.add(booking);
			}

			//5. close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return bookings;
	}
	
	// get all bookings by customerid
		public static List<Booking> getAllBookingsByCust(int custid)
		{
			List<Booking> bookings = new ArrayList<Booking>();
			
			try {

				//call getConnection() method from ConnectionManager class			
				con = ConnectionManager.getConnection(); 

				//3. create statement
				String sql = "SELECT * FROM booking WHERE custid=? ORDER BY bookingid";
				ps = con.prepareStatement(sql);
				ps.setInt(1, custid);
				
				//4. execute query
				rs = ps.executeQuery();
				
				while(rs.next())
				{
					Booking booking = new Booking();
					booking.setBookingid(rs.getInt("bookingid"));
					booking.setStartdate(rs.getString("startdate"));
					booking.setFinishdate(rs.getString("finishdate"));
					booking.setArrivaltime(rs.getString("arrivaltime"));
					booking.setDeparturetime(rs.getString("departuretime"));
					booking.setOrgname(rs.getString("orgname"));
					booking.setTnc(rs.getBoolean("tnc"));
					booking.setSoundeq(rs.getString("soundeq"));
					booking.setCustid(rs.getInt("custid"));
					booking.setSiteid(rs.getInt("siteid"));
					
					bookings.add(booking);
				}

				//5. close connection
				con.close();

			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return bookings;
		}
	
	// get booking by bookid
		public static Booking getBookingById(int bookingid)
		{
			Booking booking = new Booking();
			
			try {

				//call getConnection() method from ConnectionManager class			
				con = ConnectionManager.getConnection(); 

				//3. create statement
				String sql = "SELECT * FROM booking WHERE bookingid=?";
				ps = con.prepareStatement(sql);
				ps.setInt(1, bookingid);
				
				//4. execute query
				rs = ps.executeQuery();
				
				if(rs.next())
				{
					booking.setBookingid(rs.getInt("bookingid"));
					booking.setStartdate(rs.getString("startdate"));
					booking.setFinishdate(rs.getString("finishdate"));
					booking.setArrivaltime(rs.getString("arrivaltime"));
					booking.setDeparturetime(rs.getString("departuretime"));
					booking.setOrgname(rs.getString("orgname"));
					booking.setTnc(rs.getBoolean("tnc"));
					booking.setSoundeq(rs.getString("soundeq"));
					booking.setCustid(rs.getInt("custid"));
					booking.setSiteid(rs.getInt("siteid"));
				}

				//5. close connection
				con.close();

			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return booking;
		}
	
	// get Booking by custid
	public static Booking getBookingId(int custid)
	{
		Booking booking = new Booking();
		
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "SELECT * FROM booking WHERE custid=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, custid);
			
			//4. execute query
			rs = ps.executeQuery();
			
			if(rs.next())
			{
				booking.setBookingid(rs.getInt("bookingid"));
				booking.setStartdate(rs.getString("startdate"));
				booking.setFinishdate(rs.getString("finishdate"));
				booking.setArrivaltime(rs.getString("arrivaltime"));
				booking.setDeparturetime(rs.getString("departuretime"));
				booking.setOrgname(rs.getString("orgname"));
				booking.setTnc(rs.getBoolean("tnc"));
				booking.setSoundeq(rs.getString("soundeq"));
				booking.setCustid(rs.getInt("custid"));
				booking.setSiteid(rs.getInt("siteid"));
			}

			//5. close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return booking;
	}
	
	// get customer by bookingid
	public static Customer getCustomerByBookingID(int bookingid)
	{
		Customer customer = new Customer();
		
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "SELECT c.custid, c.custname, c.custaddress, c.custphone, c.userid FROM customer c INNER JOIN booking b WHERE c.custid=b.custid AND b.bookingid=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, bookingid);
			
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
	
	// get campsite by bookingid
		public static Campsite getCampsiteByBookingID(int bookingid)
		{
			Campsite site = new Campsite();
			
			try {

				//call getConnection() method from ConnectionManager class			
				con = ConnectionManager.getConnection(); 

				//3. create statement
				String sql = "SELECT cs.siteid, cs.sitepackage, cs.siteprice FROM campsite cs INNER JOIN booking b WHERE cs.siteid=b.siteid AND b.bookingid=?";
				ps = con.prepareStatement(sql);
				ps.setInt(1, bookingid);
				
				//4. execute query
				rs = ps.executeQuery();
				
				if(rs.next())
				{
					site.setSiteid(rs.getInt("siteid"));
					site.setSitepackage(rs.getString("sitepackage"));
					site.setSiteprice(rs.getFloat("siteprice"));
				}

				//5. close connection
				con.close();

			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return site;
		}
		
		// get total price by bookingid
				public static float getTotalPrice(int bookingid)
				{
					Booking booking = new Booking();
					Campsite site = new Campsite();
					float totalPrice = 0;
					
					try {

						//call getConnection() method from ConnectionManager class			
						con = ConnectionManager.getConnection(); 

						//3. create statement
						String sql = "SELECT * from booking b INNER JOIN campsite c WHERE b.siteid = c.siteid AND b.bookingid=?;";
						ps = con.prepareStatement(sql);
						ps.setInt(1, bookingid);
						
						//4. execute query
						rs = ps.executeQuery();
						
						if(rs.next())
						{
							booking.setBookingid(rs.getInt("bookingid"));
							booking.setStartdate(rs.getString("startdate"));
							booking.setFinishdate(rs.getString("finishdate"));
							booking.setArrivaltime(rs.getString("arrivaltime"));
							booking.setDeparturetime(rs.getString("departuretime"));
							booking.setOrgname(rs.getString("orgname"));
							booking.setTnc(rs.getBoolean("tnc"));
							booking.setSoundeq(rs.getString("soundeq"));
							booking.setCustid(rs.getInt("custid"));
							booking.setSiteid(rs.getInt("siteid"));
							site.setSiteid(rs.getInt("siteid"));
							site.setSitepackage(rs.getString("sitepackage"));
							site.setSiteprice(rs.getFloat("siteprice"));
						}
						
						totalPrice = site.getSiteprice();
						
						if(booking.getSoundeq().equals("Yes"))
							totalPrice += 150;

						//5. close connection
						con.close();

					}catch(Exception e) {
						e.printStackTrace();
					}
					
					return totalPrice;
				}
	
	// update Booking
	public void updateBooking(Booking bean)
	{
		// get Booking
		bookingid = bean.getBookingid();
		startdate = bean.getStartdate();
		finishdate = bean.getFinishdate();
		arrivaltime = bean.getArrivaltime();
		departuretime = bean.getDeparturetime();
		orgname = bean.getOrgname();
		siteid = bean.getSiteid();
		custid = bean.getCustid();
		tnc = bean.isTnc();
		soundeq = bean.getSoundeq();
		
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "UPDATE booking SET startdate=?, finishdate=?, arrivaltime=?, departuretime=?, orgname=?, siteid=?, custid=?, tnc=?, soundeq=? WHERE bookingid=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, startdate);
			ps.setString(2, finishdate);
			ps.setString(3, arrivaltime);
			ps.setString(4, departuretime);
			ps.setString(5, orgname);
			ps.setInt(6, siteid);
			ps.setInt(7, custid);
			ps.setBoolean(8, tnc);
			ps.setString(9, soundeq);
			ps.setInt(10, bookingid);
			
			//4. execute query
			ps.executeUpdate();

			//5. close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// delete Booking
	public void deleteBooking(int bookingid)
	{
		try {

			//call getConnection() method from ConnectionManager class			
			con = ConnectionManager.getConnection(); 

			//3. create statement
			String sql = "DELETE FROM booking WHERE bookingid=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, bookingid);
			
			//4. execute query
			ps.executeUpdate();

			//5. close connection
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
