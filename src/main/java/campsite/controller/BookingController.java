package campsite.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import campsite.dao.BookingDAO;
import campsite.dao.CustomerDAO;
import campsite.dao.StaffDAO;
import campsite.model.Booking;
import campsite.model.Customer;
import campsite.model.Staff;

/**
 * Servlet implementation class BookingController
 */
@WebServlet("/BookingController")
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BookingDAO dao;
	String action = "";
	String forward = "";
	RequestDispatcher view;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingController() {
        super();
        dao = new BookingDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("viewBooking"))
		{
			forward = "receiptOrder.jsp";
			int custid = Integer.parseInt(request.getParameter("custid"));
			int bookingid = Integer.parseInt(request.getParameter("bookingid"));
			request.setAttribute("customer", CustomerDAO.getCustomerById(custid));
			request.setAttribute("booking", BookingDAO.getBookingById(bookingid));
			request.setAttribute("site", BookingDAO.getCampsiteByBookingID(bookingid));
			request.setAttribute("price", BookingDAO.getTotalPrice(bookingid));
		}
		if(action.equalsIgnoreCase("viewBookingByStaff"))
		{
			forward = "viewBookingStaff.jsp";
			int bookingid = Integer.parseInt(request.getParameter("bookingid"));
			request.setAttribute("booking", BookingDAO.getBookingById(bookingid));
			request.setAttribute("cust", BookingDAO.getCustomerByBookingID(bookingid));
		}
		if(action.equalsIgnoreCase("pastBooking"))
		{
			forward = "historyBooking.jsp";
			int custid = Integer.parseInt(request.getParameter("custid"));
			request.setAttribute("customer", CustomerDAO.getCustomerById(custid));
			request.setAttribute("bookings", BookingDAO.getAllBookingsByCust(custid));
		}
		if(action.equalsIgnoreCase("listBooking"))
		{
			forward = "listBookings.jsp";
			request.setAttribute("bookings", BookingDAO.getAllBookings());
			
		}
		if(action.equalsIgnoreCase("listBookingHome"))
		{
			int staffid = Integer.parseInt(request.getParameter("staffid"));
			Staff staff = StaffDAO.getStaffById(staffid);
			
			if(staff.getStaffname().isEmpty() && staff.getStaffaddress().isEmpty() && staff.getStaffphone().isEmpty())
			{
				forward = "incompleteS.jsp";
				request.setAttribute("staff", StaffDAO.getStaffById(staffid));
			}
			else
			{
				forward = "listBookings.jsp";
				request.setAttribute("staff", StaffDAO.getStaffById(staffid));
				request.setAttribute("bookings", BookingDAO.getAllBookings());
			}
		}
		if(action.equalsIgnoreCase("deleteBooking"))
		{
			forward = "historyBooking.jsp";
			int bookingid = Integer.parseInt(request.getParameter("bookingid"));
			int custid = BookingDAO.getCustomerByBookingID(bookingid).getCustid();
			dao.deleteBooking(bookingid);
			request.setAttribute("customer", CustomerDAO.getCustomerById(custid));
			request.setAttribute("bookings", BookingDAO.getAllBookingsByCust(custid));
		}
		if(action.equalsIgnoreCase("deleteBookingByStaff"))
		{
			forward = "listBookings.jsp";
			int bookingid = Integer.parseInt(request.getParameter("bookingid"));
			dao.deleteBooking(bookingid);

			request.setAttribute("bookings", BookingDAO.getAllBookings());
		}
		if(action.equalsIgnoreCase("updateBooking"))
		{
			forward = "updateBooking.jsp";
			int bookingid = Integer.parseInt(request.getParameter("bookingid"));
			int custid = Integer.parseInt(request.getParameter("custid"));
			System.out.println(bookingid);
			request.setAttribute("customer", CustomerDAO.getCustomerById(custid));
			request.setAttribute("booking", BookingDAO.getBookingById(bookingid));
		}
		if(action.equalsIgnoreCase("addBooking"))
		{
			int custid = Integer.parseInt(request.getParameter("custid"));
			Customer cust = CustomerDAO.getCustomerById(custid);
			
			if(cust.getCustname().isEmpty() && cust.getCustaddress().isEmpty() && cust.getCustphone().isEmpty())
			{
				forward = "incomplete.jsp";
				request.setAttribute("customer", CustomerDAO.getCustomerById(custid));
			}
			else
			{
			forward = "booking.jsp";
			request.setAttribute("customer", CustomerDAO.getCustomerById(custid));
			}
		}
		if(action.equalsIgnoreCase("backHome"))
		{
			forward = "homeStaff.jsp" ;
		}
		
		view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Booking booking = new Booking();
		booking.setStartdate(request.getParameter("startdate"));
		booking.setFinishdate(request.getParameter("finishdate"));
		booking.setArrivaltime(request.getParameter("arrivaltime"));
		booking.setDeparturetime(request.getParameter("departuretime"));
		booking.setOrgname(request.getParameter("orgname"));
		booking.setTnc(Boolean.parseBoolean(request.getParameter("tnc")));
		booking.setSoundeq(request.getParameter("soundeq"));
		booking.setSiteid(Integer.parseInt(request.getParameter("siteid")));
		booking.setCustid(Integer.parseInt(request.getParameter("custid")));
		
		String bookingid = request.getParameter("bookingid");

		if(bookingid == null || bookingid.isEmpty())
		{
			forward = "homeCustomer.jsp" ;
			dao.addBooking(booking);
			int custid = Integer.parseInt(request.getParameter("custid"));
			request.setAttribute("customer", CustomerDAO.getCustomerById(custid));
		}
		else
		{
			forward = "listBookings.jsp" ;
			booking.setBookingid(Integer.parseInt(bookingid));
			dao.updateBooking(booking);	

			request.setAttribute("bookings", BookingDAO.getAllBookings()) ;
				
		}
		
		view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

}
