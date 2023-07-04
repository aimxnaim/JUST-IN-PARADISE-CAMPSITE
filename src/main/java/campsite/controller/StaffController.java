package campsite.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import campsite.dao.StaffDAO;
import campsite.dao.UserDAO;
import campsite.model.Staff;
import campsite.model.User;

/**
 * Servlet implementation class StaffController
 */
@WebServlet("/StaffController")
public class StaffController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StaffDAO dao;
	String action = "";
	String forward = "";
	RequestDispatcher view;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StaffController() {
        super();
        dao = new StaffDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("viewStaff"))
		{
			forward = "viewStaff.jsp";
			int staffid = Integer.parseInt(request.getParameter("staffid"));
			request.setAttribute("staff", StaffDAO.getStaffById(staffid));
		}
		if(action.equalsIgnoreCase("listStaff"))
		{
			forward = "listStaffs.jsp";
			request.setAttribute("staffs", StaffDAO.getAllStaff());
		}
		if(action.equalsIgnoreCase("deleteStaff"))
		{
			forward = "listStaffs.jsp";
			int staffid = Integer.parseInt(request.getParameter("staffid"));
			dao.deleteStaff(staffid);
			request.setAttribute("staffs", StaffDAO.getAllStaff());
		}
		if(action.equalsIgnoreCase("updateStaff"))
		{
			forward = "updateStaff.jsp";
			int staffid = Integer.parseInt(request.getParameter("staffid"));
			System.out.println(staffid);
			request.setAttribute("staff", StaffDAO.getStaffById(staffid));
		}
		if(action.equalsIgnoreCase("backHome"))
		{
			forward = "homeStaff.jsp";
		}
		
		view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Staff staff = new Staff();
		staff.setStaffname(request.getParameter("staffname"));
		staff.setStaffaddress(request.getParameter("staffaddress"));
		staff.setStaffphone(request.getParameter("staffphone"));
		staff.setUserid(Integer.parseInt(request.getParameter("userid")));
		
		String staffid = request.getParameter("staffid");
		System.out.println(staffid);
		if(staffid == null || staffid.isEmpty())
		{
			dao.addStaff(staff);
			System.out.println("Add");
		}
		else
		{
			staff.setStaffid(Integer.parseInt(staffid));
			dao.updateStaff(staff);			
			System.out.println("Update");
		}	
		
		request.setAttribute("staff", StaffDAO.getStaffById(Integer.parseInt(staffid)));
		view = request.getRequestDispatcher("homeStaff.jsp");
		view.forward(request, response);
	}

}
